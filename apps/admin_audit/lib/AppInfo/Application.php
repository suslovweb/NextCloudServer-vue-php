<?php

declare(strict_types=1);

/**
 * @copyright Copyright (c) 2017 Joas Schilling <coding@schilljs.com>
 *
 * @author Arthur Schiwon <blizzz@arthur-schiwon.de>
 * @author Bjoern Schiessle <bjoern@schiessle.org>
 * @author Christoph Wurst <christoph@winzerhof-wurst.at>
 * @author Daniel Kesselberg <mail@danielkesselberg.de>
 * @author GrayFix <grayfix@gmail.com>
 * @author Joas Schilling <coding@schilljs.com>
 * @author Morris Jobke <hey@morrisjobke.de>
 * @author Roeland Jago Douma <roeland@famdouma.nl>
 * @author Tiago Flores <tiago.flores@yahoo.com.br>
 *
 * @license GNU AGPL version 3 or any later version
 *
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Affero General Public License as
 * published by the Free Software Foundation, either version 3 of the
 * License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Affero General Public License for more details.
 *
 * You should have received a copy of the GNU Affero General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 *
 */
namespace OCA\AdminAudit\AppInfo;

use Closure;
use OC\Files\Filesystem;
use OC\Files\Node\File;
use OC\Group\Manager as GroupManager;
use OC\User\Session as UserSession;
use OCA\AdminAudit\Actions\AppManagement;
use OCA\AdminAudit\Actions\Auth;
use OCA\AdminAudit\Actions\Console;
use OCA\AdminAudit\Actions\Files;
use OCA\AdminAudit\Actions\GroupManagement;
use OCA\AdminAudit\Actions\Security;
use OCA\AdminAudit\Actions\Sharing;
use OCA\AdminAudit\Actions\Trashbin;
use OCA\AdminAudit\Actions\UserManagement;
use OCA\AdminAudit\Actions\Versions;
use OCA\AdminAudit\Listener\CriticalActionPerformedEventListener;
use OCP\App\ManagerEvent;
use OCP\AppFramework\App;
use OCP\AppFramework\Bootstrap\IBootContext;
use OCP\AppFramework\Bootstrap\IBootstrap;
use OCP\AppFramework\Bootstrap\IRegistrationContext;
use OCP\Authentication\TwoFactorAuth\IProvider;
use OCP\Console\ConsoleEvent;
use OCP\IConfig;
use OCP\IGroupManager;
use OCP\IPreview;
use OCP\IServerContainer;
use OCP\IUserSession;
use OCP\Log\Audit\CriticalActionPerformedEvent;
use OCP\Log\ILogFactory;
use OCP\Share;
use OCP\Util;
use Psr\Log\LoggerInterface;
use Symfony\Component\EventDispatcher\EventDispatcherInterface;
use Symfony\Component\EventDispatcher\GenericEvent;

class Application extends App implements IBootstrap {

	/** @var LoggerInterface */
	protected $logger;

	public function __construct() {
		parent::__construct('admin_audit');
	}

	public function register(IRegistrationContext $context): void {
		$context->registerEventListener(CriticalActionPerformedEvent::class, CriticalActionPerformedEventListener::class);
	}

	public function boot(IBootContext $context): void {
		/** @var LoggerInterface $logger */
		$logger = $context->injectFn(
			Closure::fromCallable([$this, 'getLogger'])
		);

		/*
		 * TODO: once the hooks are migrated to lazy events, this should be done
		 *       in \OCA\AdminAudit\AppInfo\Application::register
		 */
		$this->registerHooks($logger, $context->getServerContainer());
	}

	private function getLogger(IConfig $config,
							   ILogFactory $logFactory): LoggerInterface {
		$auditType = $config->getSystemValueString('log_type_audit', 'file');
		$defaultTag = $config->getSystemValueString('syslog_tag', 'Nextcloud');
		$auditTag = $config->getSystemValueString('syslog_tag_audit', $defaultTag);
		$logFile = $config->getSystemValueString('logfile_audit', '');

		if ($auditType === 'file' && !$logFile) {
			$default = $config->getSystemValue('datadirectory', \OC::$SERVERROOT . '/data') . '/audit.log';
			// Legacy way was appconfig, now it's paralleled with the normal log config
			$logFile = $config->getAppValue('admin_audit', 'logfile', $default);
		}

		return $logFactory->getCustomPsrLogger($logFile, $auditType, $auditTag);
	}

	/**
	 * Register hooks in order to log them
	 */
	private function registerHooks(LoggerInterface $logger,
									 IServerContainer $serverContainer): void {
		$this->userManagementHooks($logger, $serverContainer->get(IUserSession::class));
		$this->groupHooks($logger, $serverContainer->get(IGroupManager::class));
		$this->authHooks($logger);

		/** @var EventDispatcherInterface $eventDispatcher */
		$eventDispatcher = $serverContainer->get(EventDispatcherInterface::class);
		$this->consoleHooks($logger, $eventDispatcher);
		$this->appHooks($logger, $eventDispatcher);

		$this->sharingHooks($logger);

		$this->fileHooks($logger, $eventDispatcher);
		$this->trashbinHooks($logger);
		$this->versionsHooks($logger);

		$this->securityHooks($logger, $eventDispatcher);
	}

	private function userManagementHooks(LoggerInterface $logger,
										 IUserSession $userSession): void {
		$userActions = new UserManagement($logger);

		Util::connectHook('OC_User', 'post_createUser', $userActions, 'create');
		Util::connectHook('OC_User', 'post_deleteUser', $userActions, 'delete');
		Util::connectHook('OC_User', 'changeUser', $userActions, 'change');

		assert($userSession instanceof UserSession);
		$userSession->listen('\OC\User', 'postSetPassword', [$userActions, 'setPassword']);
		$userSession->listen('\OC\User', 'assignedUserId', [$userActions, 'assign']);
		$userSession->listen('\OC\User', 'postUnassignedUserId', [$userActions, 'unassign']);
	}

	private function groupHooks(LoggerInterface $logger,
								IGroupManager $groupManager): void {
		$groupActions = new GroupManagement($logger);

		assert($groupManager instanceof GroupManager);
		$groupManager->listen('\OC\Group', 'postRemoveUser', [$groupActions, 'removeUser']);
		$groupManager->listen('\OC\Group', 'postAddUser', [$groupActions, 'addUser']);
		$groupManager->listen('\OC\Group', 'postDelete', [$groupActions, 'deleteGroup']);
		$groupManager->listen('\OC\Group', 'postCreate', [$groupActions, 'createGroup']);
	}

	private function sharingHooks(LoggerInterface $logger): void {
		$shareActions = new Sharing($logger);

		Util::connectHook(Share::class, 'post_shared', $shareActions, 'shared');
		Util::connectHook(Share::class, 'post_unshare', $shareActions, 'unshare');
		Util::connectHook(Share::class, 'post_unshareFromSelf', $shareActions, 'unshare');
		Util::connectHook(Share::class, 'post_update_permissions', $shareActions, 'updatePermissions');
		Util::connectHook(Share::class, 'post_update_password', $shareActions, 'updatePassword');
		Util::connectHook(Share::class, 'post_set_expiration_date', $shareActions, 'updateExpirationDate');
		Util::connectHook(Share::class, 'share_link_access', $shareActions, 'shareAccessed');
	}

	private function authHooks(LoggerInterface $logger): void {
		$authActions = new Auth($logger);

		Util::connectHook('OC_User', 'pre_login', $authActions, 'loginAttempt');
		Util::connectHook('OC_User', 'post_login', $authActions, 'loginSuccessful');
		Util::connectHook('OC_User', 'logout', $authActions, 'logout');
	}

	private function appHooks(LoggerInterface $logger,
							  EventDispatcherInterface $eventDispatcher): void {
		$eventDispatcher->addListener(ManagerEvent::EVENT_APP_ENABLE, function (ManagerEvent $event) use ($logger) {
			$appActions = new AppManagement($logger);
			$appActions->enableApp($event->getAppID());
		});
		$eventDispatcher->addListener(ManagerEvent::EVENT_APP_ENABLE_FOR_GROUPS, function (ManagerEvent $event) use ($logger) {
			$appActions = new AppManagement($logger);
			$appActions->enableAppForGroups($event->getAppID(), $event->getGroups());
		});
		$eventDispatcher->addListener(ManagerEvent::EVENT_APP_DISABLE, function (ManagerEvent $event) use ($logger) {
			$appActions = new AppManagement($logger);
			$appActions->disableApp($event->getAppID());
		});
	}

	private function consoleHooks(LoggerInterface $logger,
								  EventDispatcherInterface $eventDispatcher): void {
		$eventDispatcher->addListener(ConsoleEvent::EVENT_RUN, function (ConsoleEvent $event) use ($logger) {
			$appActions = new Console($logger);
			$appActions->runCommand($event->getArguments());
		});
	}

	private function fileHooks(LoggerInterface $logger,
							   EventDispatcherInterface $eventDispatcher): void {
		$fileActions = new Files($logger);
		$eventDispatcher->addListener(
			IPreview::EVENT,
			function (GenericEvent $event) use ($fileActions) {
				/** @var File $file */
				$file = $event->getSubject();
				$fileActions->preview([
					'path' => mb_substr($file->getInternalPath(), 5),
					'width' => $event->getArguments()['width'],
					'height' => $event->getArguments()['height'],
					'crop' => $event->getArguments()['crop'],
					'mode' => $event->getArguments()['mode']
				]);
			}
		);

		Util::connectHook(
			Filesystem::CLASSNAME,
			Filesystem::signal_post_rename,
			$fileActions,
			'rename'
		);
		Util::connectHook(
			Filesystem::CLASSNAME,
			Filesystem::signal_post_create,
			$fileActions,
			'create'
		);
		Util::connectHook(
			Filesystem::CLASSNAME,
			Filesystem::signal_post_copy,
			$fileActions,
			'copy'
		);
		Util::connectHook(
			Filesystem::CLASSNAME,
			Filesystem::signal_post_write,
			$fileActions,
			'write'
		);
		Util::connectHook(
			Filesystem::CLASSNAME,
			Filesystem::signal_post_update,
			$fileActions,
			'update'
		);
		Util::connectHook(
			Filesystem::CLASSNAME,
			Filesystem::signal_read,
			$fileActions,
			'read'
		);
		Util::connectHook(
			Filesystem::CLASSNAME,
			Filesystem::signal_delete,
			$fileActions,
			'delete'
		);
	}

	private function versionsHooks(LoggerInterface $logger): void {
		$versionsActions = new Versions($logger);
		Util::connectHook('\OCP\Versions', 'rollback', $versionsActions, 'rollback');
		Util::connectHook('\OCP\Versions', 'delete', $versionsActions, 'delete');
	}

	private function trashbinHooks(LoggerInterface $logger): void {
		$trashActions = new Trashbin($logger);
		Util::connectHook('\OCP\Trashbin', 'preDelete', $trashActions, 'delete');
		Util::connectHook('\OCA\Files_Trashbin\Trashbin', 'post_restore', $trashActions, 'restore');
	}

	private function securityHooks(LoggerInterface $logger,
								   EventDispatcherInterface $eventDispatcher): void {
		$eventDispatcher->addListener(IProvider::EVENT_SUCCESS, function (GenericEvent $event) use ($logger) {
			$security = new Security($logger);
			$security->twofactorSuccess($event->getSubject(), $event->getArguments());
		});
		$eventDispatcher->addListener(IProvider::EVENT_FAILED, function (GenericEvent $event) use ($logger) {
			$security = new Security($logger);
			$security->twofactorFailed($event->getSubject(), $event->getArguments());
		});
	}
}

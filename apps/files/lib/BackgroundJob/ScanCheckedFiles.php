<?php
/**
 *
 * @author kjh
 *
 * @license AGPL-3.0
 *
 * 
 */

namespace OCA\Files\BackgroundJob;

use OC\Files\Utils\Scanner;
use OCP\DB\QueryBuilder\IQueryBuilder;
use OCP\EventDispatcher\IEventDispatcher;
use OCP\IConfig;
use OCP\IDBConnection;
use OCP\ILogger;

/**
 * 
 * @package OCA\Files\BackgroundJob
 */
class ScanCheckedFiles extends \OC\BackgroundJob\TimedJob {
	/** @var IConfig */
	private $config;
	/** @var IEventDispatcher */
	private $dispatcher;
	/** @var ILogger */
	private $logger;
	private $connection;

	/** Amount of users that should get scanned per execution */
	public const USERS_PER_SESSION = 50;

	/**
	 * @param IConfig $config
	 * @param IEventDispatcher $dispatcher
	 * @param ILogger $logger
	 * @param IDBConnection $connection
	 */
	public function __construct(
		IConfig $config,
		IEventDispatcher $dispatcher,
		ILogger $logger,
		IDBConnection $connection
	) {
		// Run once per 10 minutes
		$this->setInterval(60 * 1);

		$this->config = $config;
		$this->dispatcher = $dispatcher;
		$this->logger = $logger;
		$this->connection = $connection;
	}

	/**
	 * @param string $user
	 */
	protected function runScanner(string $user) {
		try {
			// save newly added file to publish table
			$this->getFilelist($user);
			// scan checked file
			$filelist = scandir($_SERVER['DOCUMENT_ROOT'].'/after');
			foreach($filelist as $k => $v) {
				$query = $this->connection->getQueryBuilder();
				$query->select('origin_path')
					->from('publish')
					->where($query->expr()->eq('unique_name', $query->createNamedParameter($v)))
					->setMaxResults(1);
				
				$origin_path = $query->execute()->fetchOne();
				rename ($_SERVER['DOCUMENT_ROOT'].'/after/'.$v, $_SERVER['DOCUMENT_ROOT'].'/data/'.$origin_path);
				// update db field
				$query = $this->connection->getQueryBuilder();
				$query->update('publish')
				->where($query->expr()->eq('origin_path', $query->createNamedParameter($origin_path)))
				->set('is_checked', $query->createNamedParameter(true))
				->execute();

			}


		} catch (\Exception $e) {
			$this->logger->logException($e, ['app' => 'files']);
		}
		\OC_Util::tearDownFS();
	}

	/**
	 * Find a storage which have unindexed files and return a user with access to the storage
	 *
	 * @return string|false
	 */
	private function getUserToScan() {
		$query = $this->connection->getQueryBuilder();
		$query->select('user_id')
			->from('filecache', 'f')
			->innerJoin('f', 'mounts', 'm', $query->expr()->eq('storage_id', 'storage'))
			->where($query->expr()->lt('size', $query->createNamedParameter(0, IQueryBuilder::PARAM_INT)))
			->andWhere($query->expr()->gt('parent', $query->createNamedParameter(-1, IQueryBuilder::PARAM_INT)))
			->setMaxResults(1);

		return $query->execute()->fetchOne();
	}

	// get filelist for a user
	private function getFilelist($user) {
		// get file list to check
		$filelist =[];
        if ($file = fopen($_SERVER['DOCUMENT_ROOT'].'/before/'.$user, "r")) {
            while(!feof($file)) {
                $line = fgets($file);
              array_push($filelist,$line);
            }
            fclose($file);
        } 
		// reset file list
		file_put_contents($_SERVER['DOCUMENT_ROOT'].'/before/'.$user, '', FILE_APPEND | LOCK_EX);
		// save to db
		foreach($filelist as $k => $v) {
			if(!$v) continue;
			$info = json_decode($v);
		
			$qb = $this->dbConnection->getQueryBuilder();
			$qb->insert('publish')
				->setValue('origin_path', $qb->createNamedParameter($info['origin_path']))
				->setValue('filename', $qb->createNamedParameter($info['filename']))
				->setValue('unique_name', $qb->createNamedParameter($info['unique_name']))
				->setValue('is_checked', $qb->createNamedParameter($info['is_checked']))
				->setValue('timestamp', $qb->createNamedParameter($info['timestamp']))
				->setValue('uid', $qb->createNamedParameter($info['uid']));

			$qb->execute();
		}
	}

	/**
	 * @param $argument
	 * @throws \Exception
	 */
	protected function run($argument) {

		$usersScanned = 0;
		$lastUser = '';
		$user = $this->getUserToScan();
		while ($user && $usersScanned < self::USERS_PER_SESSION && $lastUser !== $user) {
			$this->runScanner($user);
			$lastUser = $user;
			$user = $this->getUserToScan();
			$usersScanned += 1;
		}

		if ($lastUser === $user) {
			$this->logger->warning("User $user still has unscanned files after running background scan, background scan might be stopped prematurely");
		}
	}
}

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

use OCP\DB\QueryBuilder\IQueryBuilder;
use OCP\IDBConnection;
use OCP\ILogger;
use Sabre\Uri;
/**
 * 
 * @package OCA\Files\BackgroundJob
 */
class ScanCheckedFiles extends \OC\BackgroundJob\TimedJob {
	
	/** @var ILogger */
	private $logger;
	private $connection;

	/** Amount of users that should get scanned per execution */
	public const USERS_PER_SESSION = 500;

	/**
	 * @param ILogger $logger
	 * @param IDBConnection $connection
	 */
	public function __construct(
		ILogger $logger,
		IDBConnection $connection
	) {
		// Run once per 1 minutes
		$this->setInterval(60 * 1);

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
			// get server path
			$path = $this->getServerPath();
			// scan checked file
			$filelist = scandir($path.'/after');
			foreach($filelist as $k => $v) {
				if($k < 2 ) continue;
				if(!$v) continue;
				$query = $this->connection->getQueryBuilder();
				$query->select('*')
					->from('publish')
					->where($query->expr()->eq('unique_name', $query->createNamedParameter($v)))
					->setMaxResults(1);
				
				$fileInfo = $query->execute()->fetch();
				rename ($path.'/after/'.$v, $path.'/data/'.$fileInfo['origin_path']);
				// update db field
				$query = $this->connection->getQueryBuilder();
				$query->update('publish')
				->where($query->expr()->eq('origin_path', $query->createNamedParameter($fileInfo['origin_path'])))
				->set('is_checked', $query->createNamedParameter(true))
				->execute();
				// update publish_check field in filecache table
				$query = $this->connection->getQueryBuilder();
				$query->update('filecache')
				->where($query->expr()->eq('etag', $query->createNamedParameter($fileInfo['uid'])))
				->set('publish_check', $query->createNamedParameter(1))
				->execute();
			}


		} catch (\Exception $e) {
			// $this->logger->logException($e, ['app' => 'files']);
		}
		\OC_Util::tearDownFS();
	}

	/**
	 * Find and return a user with access to the storage
	 *
	 * @return string|false
	 */
	private function getUserToScan($userlist) {
		$query = $this->connection->getQueryBuilder();
		$query->select('uid')
			->from('users')
			->where($query->expr()->notIn('uid', $query->createNamedParameter($userlist, IQueryBuilder::PARAM_STR_ARRAY)))
			->setMaxResults(1);

		return $query->execute()->fetchOne();
	}

	// get server path
	private function getServerPath() {
		// replace $_SERVER['PATH_TRANSLATED'] with full path of the server hosting folder
		list($serverPath,$cronFile) = Uri\split($_SERVER['PATH_TRANSLATED']);
		return $serverPath;
	}

	// get filelist for a user
	private function getFilelist($user) {
		// get file list to check
		$filelist =[];
		$serverPath = $this->getServerPath();
		$path = $serverPath.'/filelists/'.$user;

        if ($file = fopen($path, "r")) {
            while(!feof($file)) {
                $line = fgets($file);
              	array_push($filelist,$line);
            }
            fclose($file);
	
			// save to db
			foreach($filelist as $k => $v) {
				if(!$v) continue;
				$info = json_decode($v,true);
			
				$qb = $this->connection->getQueryBuilder();
				$qb->insert('publish')
					->setValue('origin_path', $qb->createNamedParameter($info['origin_path']))
					->setValue('filename', $qb->createNamedParameter($info['filename']))
					->setValue('unique_name', $qb->createNamedParameter($info['unique_name']))
					->setValue('is_checked', $qb->createNamedParameter($info['is_checked']))
					->setValue('timestamp', $qb->createNamedParameter($info['timestamp']))
					->setValue('uid', $qb->createNamedParameter($info['uid']));

				$qb->execute();

				// update publish_check field in filecache table
				$qb = $this->connection->getQueryBuilder();
				$qb->update('filecache')
					->set('publish_check', $qb->createNamedParameter(0))
					->where($qb->expr()->eq('etag', $qb->createNamedParameter($info['uid'])))
					->execute();
			}

			// reset file list
			file_put_contents($path, '', LOCK_EX);
		}
	}

	/**
	 * @param $argument
	 * @throws \Exception
	 */
	protected function run($argument) {

		$usersScanned = 0;
		$usersScannedList = ['firstInitValue'];
		$lastUser = '';
		$user = $this->getUserToScan($usersScannedList);
		while ($user && $usersScanned < self::USERS_PER_SESSION && $lastUser !== $user) {
			$this->runScanner($user);
			$lastUser = $user;
			array_push($usersScannedList,$user);
			$user = $this->getUserToScan($usersScannedList);
			$usersScanned += 1;
		}

		if ($lastUser === $user) {
			// $this->logger->warning("User $user still has unscanned files after running background scan, background scan might be stopped prematurely");
		}
	}
}

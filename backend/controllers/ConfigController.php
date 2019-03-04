<?php
namespace backend\controllers;

use Yii;
use backend\controllers\base\BaseController;
use yii\helpers\FileHelper;
use yii\db\Query;

/**
* 配置类
*/
class ConfigController extends BaseController
{
	public $config = [];
	public $dataPath = '';
	public $sqlPath = '';
	public $initial = '';
	public function init()
	{
		parent::init();

		$this->config = require(Yii::getAlias('@common/config/template/db.php'));
		$this->dataPath = Yii::getAlias('@backend/web/backup/data/');
		$this->initial = Yii::getAlias('@backend/web/backup/data/purchase_2018_07.sql');
		$this->sqlPath = Yii::getAlias('@backend/web/backup/sql/db.sql');
	}
	/**
	 * 配置页面
	 * @return [type] [description]
	 */
	public function actionIndex()
	{
		$query = new Query;
		$year = date('Y');
		$month = date('m');
		$day = date('d');
		$dbname = "purchase_{$year}_{$month}_{$day}";
		return $this->render('index', ['dbname' => $dbname]);
	}
	/**
	 * 更新/创建网站title
	 * @return [type] [description]
	 */
	public function actionUpdateTitle()
	{
		$req = Yii::$app->request;
		$title = $req->get('title', '');
		if (empty($title)) {
			return $this->sendError();
		}
		// 查询是否存在  
		$query = new Query;
		$result = $query
			->from('config')
			->where(['type' => 'title'])
			->one(Yii::$app->config);
		$time = time();
		if (!empty($result)) {
			Yii::$app->config->createCommand("UPDATE config SET content = '{$title}', update_time = {$time} WHERE type = 'title'")->execute();
		}else{
			Yii::$app->config->createCommand("INSERT INTO config (type, content, create_time) VALUES ('title', '{$title}', {$time})")->execute();
		}
		$dsn = Yii::$app->db->dsn;
		preg_match("/dbname=(.*)/", $dsn, $match);
		$dbname = $match[1];
		// 保存对应关系
		$historydb = $query
			->from('historydb')
			->where(['db_name' => $dbname])
			->one(Yii::$app->config);

		if ($historydb) {
			// 更新
			Yii::$app->config->createCommand("UPDATE historydb SET title = '{$title}', update_at = {$time} WHERE db_name = '{$dbname}'")->execute();
		}else{
			// 添加  
			Yii::$app->config->createCommand("INSERT INTO historydb (title, db_name, create_at) VALUES ('{$title}', '{$dbname}', {$time})")->execute();
		}
		return $this->sendSucc([]);
	}
	/**
	 * 更新图片信息
	 * @return [type] [description]
	 */
	public function actionUpdateImgInfo()
	{
		$req = Yii::$app->request;
		$url = $req->get('url', '');
		$path = $req->get('path', '');
		if (empty($url) || empty($path)) {
			return $this->sendError();
		}

		// 查询是否存在  
		$query = new Query;
		$result = $query
			->from('config')
			->where(['type' => 'img'])
			->one(Yii::$app->config);
		$time = time();
		if (!empty($result)) {
			Yii::$app->config->createCommand("UPDATE config SET content = '{$url}', remark = '$path', update_time = {$time} WHERE type = 'img'")->execute();
		}else{
			Yii::$app->config->createCommand("INSERT INTO config (type, content, remark, create_time) VALUES ('img', '{$url}', '{$path}', {$time})")->execute();
		}
		return $this->sendSucc([]);
	}
	/**
	 * 更新季节
	 * @return [type] [description]
	 */
	public function actionUpdateSeason()
	{
		$req = Yii::$app->request;
		$jijie = $req->get('jijie', '');
		if (empty($jijie)) {
			return $this->sendError();
		}

		// 查询是否存在  
		$query = new Query;
		$result = $query
			->from('config')
			->where(['type' => 'season'])
			->one(Yii::$app->config);
		$time = time();
		if (!empty($result)) {
			Yii::$app->config->createCommand("UPDATE config SET content = '{$jijie}', update_time = {$time} WHERE type = 'season'")->execute();
		}else{
			Yii::$app->config->createCommand("INSERT INTO config (type, content, create_time) VALUES ('season', '{$jijie}', {$time})")->execute();
		}
		return $this->sendSucc([]);
	}
	/**
	 * 配置清缓存的项目地址
	 * @return [type] [description]
	 */
	public function actionCacheUrl()
	{
		$req = Yii::$app->request;
		$urls = $req->post('projectUrl', '');
		if (empty($urls)) {
			return $this->sendError();
		}
		// 查询是否存在  
		$query = new Query;
		$result = $query
			->from('config')
			->where(['type' => 'cache'])
			->one(Yii::$app->config);
		foreach ($urls as $key => $url) {
			if (empty($url)) {
				unset($urls[$key]);
			}
		}
		$time = time();
		$json = json_encode($urls);
		if (!empty($result)) {
			Yii::$app->config->createCommand("UPDATE config SET remark = '{$json}', update_time = {$time} WHERE type = 'cache'")->execute();
		}else{
			Yii::$app->config->createCommand("INSERT INTO config (type, remark, create_time) VALUES ('cache', '{$json}', {$time})")->execute();
		}
		$session = Yii::$app->session;
		$session->setFlash('cache', '更新成功');
		return $this->redirect('/config/index');
	}
	/**
	 * 创建新的数据库
	 * 1.备份
	 * 2.创建库
	 * 3.重新生成数据库配置文件
	 * @return [type] [description]
	 */
	public function actionCreateDb()
	{
		$req = Yii::$app->request;
		$db = $req->get('dbname', '');
		if (empty($db)) {
			return $this->sendError();
		}
		$user = $this->config['username'];
		$pass = $this->config['password'];
		$source = $this->sqlPath;
		preg_match("/=(.*);/", $this->config['dsn'], $temp);
		$host = $temp[1];
		
		// 备份数据  
		$query = new Query;
		$result = $query->select(['content'])
			->from('config')
			->where(['type' => 'db'])
			->one(Yii::$app->config);
		// 如果存在则备份
		if (!empty($result)) {
			$dbname = $result['content'];
			$source = $target = $this->dataPath.$dbname.'_backup'.date("Y-m-d-H-i-s").'.sql';
			$this->_backupDbData($dbname, $user, $pass, $target, $host);
		}else{
			$source = $this->initial;
		}

		// 创建数据库
		Yii::$app->db->createCommand("CREATE DATABASE {$db} DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;")->execute();

		// 导入表结构  
		// $this->_importSql($db, $user, $pass, $source, $host);
		
		// 还是导入所有数据，然后清空需要清空的表  
		$this->_importDb($db, $user, $pass, $source, $host);
		// 清空表
		$clears = ['meet_customer', 'meet_order', 'meet_order_items', 'meet_order_log', 'meet_pchange_log', 'meet_product', ];
		$newDb = Yii::createObject([
			'class' => 'yii\db\Connection',
		    'dsn' => "mysql:host={$host};dbname={$db}",
		    'username' => $user,
		    'password' => $pass,
		    'charset' => 'utf8',
		]);
		foreach ($clears as $key => $table) {
			$newDb->createCommand("TRUNCATE TABLE {$table}")->execute();
		}

		// 保存数据库名  
		$time = time();
		if (!empty($result)) {
			Yii::$app->config->createCommand("UPDATE config SET content = '{$db}', update_time = {$time} WHERE type = 'db'")->execute();
		}else{
			Yii::$app->config->createCommand("INSERT INTO config (type, content, create_time) VALUES ('db', '{$db}', {$time})")->execute();
		}

		// 重新生成配置文件
		$this->_generate($db);

		$this->_flushCahce();
		return $this->sendSucc([]);
	}
	
	/**
	 * 备份数据库表结构
	 * @return [type] [description]
	 */
	public function actionBackupSql()
	{
		// $db = 'fecshop_test';
		// $user = 'fecshop_test';
		// $pass = '888888';
		// $path = "D:\Desktop\\";
		// $host = '118.25.38.240';
		// $target = $path.$db.'-sql-'.date("Y-m-d").'_backup.sql';
		// $this->_backupDbsql($db, $user, $pass, $target, $host);
	}
	/**
	 * 备份数据
	 * @return [type] [description]
	 */
	public function actionBackupData()
	{
		$user = $this->config['username'];
		$pass = $this->config['password'];
		preg_match("/=(.*);/", $this->config['dsn'], $temp);
		$host = $temp[1];
		// 备份数据  
		$query = new Query;
		$result = $query->select(['content'])
			->from('config')
			->where(['type' => 'db'])
			->one(Yii::$app->config);
		// 如果存在则备份
		if (!empty($result)) {
			$dbname = $result['content'];
			$target = $this->dataPath.$dbname.'_backup'.date("Y-m-d-H-i-s").'.sql';
			$this->_backupDbData($dbname, $user, $pass, $target, $host);
			return $this->sendSucc([]);
		}else{
			return $this->sendError('还没有数据库');
		}
	}
	/**
	 * 备份数据库数据
	 * @param  [type] $db     备份的数据库
	 * @param  [type] $user   用户名
	 * @param  [type] $pass   密码
	 * @param  [type] $target 要备份到的目标
	 * @return [type]         [description]
	 */
	private function _backupDbData($db, $user, $pass, $target, $host = '127.0.0.1')
	{
		$this->_exec("mysqldump {$db} -h{$host} -u{$user} -p{$pass} > {$target}");
	}
	/**
	 * 备份数据库表结构
	 * @param  [type] $db   要备份的数据库
	 * @param  [type] $user 用户名
	 * @param  [type] $pass 密码
	 * @param  [type] $target 要备份到的目标
	 * @return [type]       [description]
	 */
	private function _backupDbsql($db, $user, $pass, $target, $host = '127.0.0.1')
	{
		$this->_exec("mysqldump --opt -d {$db} -h{$host} -u{$user} -p{$pass} > {$target}");
	}
	/**
	 * 导入数据或结构
	 * @param  [type] $db     数据库
	 * @param  [type] $user   用户名
	 * @param  [type] $pass   密码
	 * @param  [type] $source 源文件  
	 * @return [type]         [description]
	 */
	private function _importDb($db, $user, $pass, $source, $host = '127.0.0.1')
	{
		echo $this->_exec("mysql -h{$host} -u{$user} -p{$pass} {$db} < {$source}");
	}
	/**
	 * 终端执行命令
	 * @param  [type] $command 要执行的命令
	 * @return [type]          [description]
	 */
	private function _exec($command)
	{
		return shell_exec($command);
	}

	/**
	 * 生成数据库配置文件
	 * @param  [type] $dbname 数据库名
	 * @return [type]         [description]
	 */
	private function _generate($dbname)
	{
		$path = Yii::getAlias('@common/config/template/db.php');
		$content = file_get_contents($path);
		$content = str_replace("dbname-here", $dbname, $content);
		$target = Yii::getAlias('@common/config/db.php');
		$target2 = Yii::getAlias('@common/config/db-local.php');
		file_put_contents($target, $content);
		file_put_contents($target2, $content);
	}
	private function _flushCahce()
	{
		// Yii::$app->cache->flush();
	}
}
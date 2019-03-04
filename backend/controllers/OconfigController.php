<?php
namespace backend\controllers;

use Yii;
use backend\controllers\base\BaseController;
use yii\helpers\FileHelper;
use yii\db\Query;
use common\models\ConfigModel;
/**
* 配置类-其他
*/
class OconfigController extends BaseController
{
	/**
	 * 静态页
	 * @return [type] [description]
	 */
	public function actionIndex()
	{
		$purchase = (new Query)
			->from('meet_purchase')
			->all();
		return $this->render('index', ['purchase' => $purchase]);
	}
	/**
	 * 清除所有缓存
	 * @return [type] [description]
	 */
	public function actionCache()
	{
		$res = ConfigModel::getAllCacheUrl();
        foreach ($res as $val) {
            file_get_contents($val . '/default/cache');
        }
        return $this->sendSucc([]);
	}
	/**
	 * 配置订货会名称
	 * @return [type] [description]
	 */
	public function actionPurchase()
	{
		$req = Yii::$app->request;
		$purchases = $req->post('purchase', []);
		if (empty($purchases)) {
			return $this->sendError();
		}
		foreach ($purchases as $key => $item) {
			Yii::$app->db->createCommand("UPDATE meet_purchase SET purchase_name = '{$item}' WHERE purchase_id = {$key}")->execute();
		}
		$session = Yii::$app->session;
		$session->setFlash('purchase', '更新成功');
		$this->redirect('/oconfig/index');
	}
}

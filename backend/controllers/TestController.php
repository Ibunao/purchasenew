<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Response;
use common\models\PublicModel;
use common\models\OrderModel;
/**
 * Site controller
 */
class TestController extends Controller
{
    /**
     * 删除缓存
     */
    public function actionCache()
    {
        Yii::$app->cache->flush();
        echo "清除缓存";
    }
    /**
     * 清除所有缓存
     * @return [type] [description]
     */
    public function actionCacheAll()
    {
    	PublicModel::flushCacheAll();
    }
    public function actionPassword()
    {
    	echo md5(md5('a12345'));
    }
    public function actionTest()
    {
        (new OrderModel)->updateOrderCostItem();
    }
}


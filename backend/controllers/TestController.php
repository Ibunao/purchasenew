<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Response;

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
}


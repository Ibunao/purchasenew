<?php

namespace backend\controllers;
use Yii;
use backend\controllers\base\BaseController;
use backend\models\TableModel;
use common\models\ConfigModel;
/**
 * 后台首页
 */
class DefaultController extends BaseController
{
    /**
     * 后台首页
     * @return string
     */
    public function actionIndex()
    {
        $table = new TableModel;
        //今日用户登陆
        $result['login_nums'] = $table->getAllNewLogin();
        //已经订货（包含提交和未提交的）未审核金额
        $result['all_orders'] = $table->getAllOrder('active', 'confirm');
        //已审核订单金额
        $result['confirm_orders'] = $table->getAllOrder('finish');
        //总订货指标
        $result['all_target'] = $table->getAllUserTarget();

        //加盟订货指标
        $result['jm_target'] = $table->getAllUserTarget('客户');
        //加盟已订货总金额
        $result['jm_orders'] = $table->getOrderNum('客户');
        //加盟已订货active状态的金额 已订货，未提交
        $result['jm_active'] = $table->getOrderNum('客户', 'active');
        //加盟已订货confirm状态的金额  已提交，未审核
        $result['jm_confirm'] = $table->getOrderNum('客户', 'confirm');
        //加盟已订货finish状态的金额    审核完成
        $result['jm_finish'] = $table->getOrderNum('客户', 'finish');

        //自营
        //直营订货指标
        $result['zy_target'] = $table->getAllUserTarget('直营');
        //直营已订货总金额
        $result['zy_orders'] = $table->getOrderNum('直营');
        //直营已订货active状态的金额 已订货，未提交
        $result['zy_active'] = $table->getOrderNum('直营', 'active');
        //直营已订货confirm状态的金额  已提交，未审核
        $result['zy_confirm'] = $table->getOrderNum('直营', 'confirm');
        //直营已订货finish状态的金额    审核完成
        $result['zy_finish'] = $table->getOrderNum('直营', 'finish');


        //总达成率  
        $result['all_target'] != 0 ? $result['all_target_rate'] = round($result['confirm_orders'] / $result['all_target']*100, 2) : $result['all_target_rate'] = 0;
        //加盟审核后达成率  
        $result['jm_target'] != 0 ? $result['jm_target_rate'] = round($result['jm_finish'] / $result['jm_target'] *100, 2) : $result['jm_target_rate'] = 0;
        //直营审核后达成率  
        $result['zy_target'] != 0 ? $result['zy_target_rate'] = round($result['zy_finish'] / $result['zy_target'] *100, 2) : $result['zy_target_rate'] = 0;

        return $this->render('index', ['res'=>$result]);
    }
    /**
     * 删除所有缓存，因为是文件缓存，要清除所有项目的缓存
     */
    public function actionCache()
    {
        Yii::$app->cache->flush();
        $routes = ConfigModel::getAllCacheUrl();
        foreach ($routes as $key => $item) {
            echo file_get_contents("{$item}/default/cache");
        }
        echo "清除缓存";
    }
}

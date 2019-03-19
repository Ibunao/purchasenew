<?php

namespace backend\controllers;
use Yii;
use backend\controllers\base\BaseController;
use backend\models\TableModel;
use common\models\ConfigModel;
use common\models\PublicModel;
use yii\db\Query;

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

        # 计算直营各指标情况  
        $customer_ids = (new Query)->from('meet_customer')
            ->select(['customer_id'])
            ->where(['type' => '直营'])
            ->column();

        $targets = (new Query)->from('meet_customer')
            ->select(['sum(big_1) big_1', 'sum(big_2) big_2', 'sum(big_3) big_3', 'sum(big_4) big_4', 'sum(big_6) big_6'])
            ->where(['type' => '直营'])
            ->groupBy('type')
            ->one();

        $orderItem = (new Query)->from('meet_order o')
            ->select(['p.cat_b', 'sum(amount) total'])
            ->leftJoin('meet_order_items oi', 'o.order_id = oi.order_id')
            ->leftJoin('meet_product p', 'p.product_id = oi.product_id')
            ->where(['oi.disabled' => 'false', 'o.customer_id' => $customer_ids])
            ->groupBy('p.cat_b')
            ->all();
        $orderCatSum = [];
        foreach ($orderItem as $key => $item) {
            $orderCatSum[$item['cat_b']] = $item['total'];
        }
        foreach ([1, 2, 3, 4, 6] as $key => $item) {
            if (!isset($orderCatSum[$item])) {
                $orderCatSum[$item] = 0;
            }
        }
        ksort($orderCatSum);
        $ztargetChart = [
            'targets' => array_values($targets), 
            'orderCatSum' => array_values($orderCatSum)
        ];

        # 计算客户各指标情况  
        $customer_ids = (new Query)->from('meet_customer')
            ->select(['customer_id'])
            ->where(['type' => '客户'])
            ->column();

        $targets = (new Query)->from('meet_customer')
            ->select(['sum(big_1) big_1', 'sum(big_2) big_2', 'sum(big_3) big_3', 'sum(big_4) big_4', 'sum(big_6) big_6'])
            ->where(['type' => '客户'])
            ->groupBy('type')
            ->one();

        $orderItem = (new Query)->from('meet_order o')
            ->select(['p.cat_b', 'sum(amount) total'])
            ->leftJoin('meet_order_items oi', 'o.order_id = oi.order_id')
            ->leftJoin('meet_product p', 'p.product_id = oi.product_id')
            ->where(['oi.disabled' => 'false', 'o.customer_id' => $customer_ids])
            ->groupBy('p.cat_b')
            ->all();
        $orderCatSum = [];
        foreach ($orderItem as $key => $item) {
            $orderCatSum[$item['cat_b']] = $item['total'];
        }
        foreach ([1, 2, 3, 4, 6] as $key => $item) {
            if (!isset($orderCatSum[$item])) {
                $orderCatSum[$item] = 0;
            }
        }
        ksort($orderCatSum);
        $ktargetChart = [
            'targets' => array_values($targets), 
            'orderCatSum' => array_values($orderCatSum)
        ];


        # 计算总的各指标情况  
        $customer_ids = (new Query)->from('meet_customer')
            ->select(['customer_id'])
            ->column();

        $targets = (new Query)->from('meet_customer')
            ->select(['sum(big_1) big_1', 'sum(big_2) big_2', 'sum(big_3) big_3', 'sum(big_4) big_4', 'sum(big_6) big_6'])
            ->groupBy('purchase_id')
            ->one();

        $orderItem = (new Query)->from('meet_order o')
            ->select(['p.cat_b', 'sum(amount) total'])
            ->leftJoin('meet_order_items oi', 'o.order_id = oi.order_id')
            ->leftJoin('meet_product p', 'p.product_id = oi.product_id')
            ->where(['oi.disabled' => 'false', 'o.customer_id' => $customer_ids])
            ->groupBy('p.cat_b')
            ->all();
        $orderCatSum = [];
        foreach ($orderItem as $key => $item) {
            $orderCatSum[$item['cat_b']] = $item['total'];
        }
        foreach ([1, 2, 3, 4, 6] as $key => $item) {
            if (!isset($orderCatSum[$item])) {
                $orderCatSum[$item] = 0;
            }
        }
        ksort($orderCatSum);
        $atargetChart = [
            'targets' => array_values($targets), 
            'orderCatSum' => array_values($orderCatSum)
        ];



        return $this->render('index', [
            'res'=>$result, 
            'ktargetChart' => $ktargetChart,
            'ztargetChart' => $ztargetChart,
            'atargetChart' => $atargetChart,
        ]);
    }
    /**
     * 清除后台缓存
     * @return [type] [description]
     */
    public function actionCache()
    {
        Yii::$app->cache->flush();
        echo "清除后台缓存";
    }
    /**
     * 清除所有缓存
     * @return [type] [description]
     */
    public function actionCacheAll()
    {
        if (PublicModel::flushCacheAll()) {
            
            return $this->sendSucc([]);
        }
        echo "清除缓存失败";
    }
}

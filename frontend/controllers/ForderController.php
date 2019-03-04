<?php
namespace frontend\controllers;

use Yii;
use frontend\controllers\base\FBaseController;
use common\models\OrderModel;
use common\models\ProductModel;
use common\models\ConfigModel;
/**
* ce
*/
class ForderController extends FBaseController
{
	public $wave;
    // public $orderState = 'active';
	/**
     *  ajax 预订
     */
    public function actionGetAllPrice()
    {

        $orderItem = isset($_POST['dt']) ? $_POST['dt'] : '非法访问';
        // var_dump($_POST);exit;
        // array (size=1)
        // 'dt' => string '|7_4|8_|9_|10_2|11_|12_'
        $orderItem = substr($orderItem, 1);
        $arr = explode("|", $orderItem);
        foreach ($arr as $k => $v) {
            $result[] = explode("_", $v);
        }
        $orderModel = new OrderModel();
        if($orderModel->addAjax($result, $this->purchaseId, $this->customerId, $this->username)){
            $order = $orderModel->getCustomerOrdered($this->customerId);

            echo json_encode(array('code'=>'200','data'=>$order, 'msg'=>'订货成功'));

        }else{
            echo json_encode(array('code'=>'400', 'msg'=>'订货失败'));
        }

    }
    /**
     * 季节汇总、订单统计
     */
    public function actionBycount()
    {
        header("Content-Type:text/html;charset=utf-8");

        $page = Yii::$app->request->get('page', 1);
        $orderModel = new OrderModel();
        $productModel = new ProductModel();
        $order = $orderModel->orderItems($this->purchaseId, $this->customerId);
        $result = $productModel->orderSprandSumItems($order['item_list']);
// var_dump(array('list' => $result['list'], 'result' => $result));exit;
        //图形数据
        $charts['bing'] = [];
        $charts[ConfigModel::getSeasonInfo()['season_one_name']] = 0;
        $charts[ConfigModel::getSeasonInfo()['season_two_name']] = 0;
        $charts['其他'] = 0;
        $oneCatArr = [];
        $twoCatArr = [];
        // var_dump($result['list']);exit;
        foreach ($result['list'] as $k => $v) {
            $charts[ConfigModel::getSeasonInfo()['season_one_name']] += $v['season_id_1'];
            $charts[ConfigModel::getSeasonInfo()['season_two_name']] += $v['season_id_2'];
            $charts['其他'] += $v['season_id_3'];
            if ($v['season_id_1'] != 0) {
                $oneCatArr['cat'][] = urlencode($v['b_name']);
                $oneCatArr['value'][] = $v['season_id_1'];
            }
            // else{
            //     $oneCatArr['cat'][] = urlencode($v['b_name']);
            //     $oneCatArr['value'][] = 0;
            // }
            if ($v['season_id_2'] != 0) {
                $twoCatArr['cat'][] = urlencode($v['b_name']);
                $twoCatArr['value'][] = $v['season_id_2'];
            }
            // else{
            //     $twoCatArr['cat'][] = urlencode($v['b_name']);
            //     $twoCatArr['value'][] = 0;
            // }

        }
        $oneCatArr['cat'] = urldecode(json_encode(isset($oneCatArr['cat'])?$oneCatArr['cat']:''));
        $oneCatArr['value'] = json_encode(isset($oneCatArr['value'])?$oneCatArr['value']:0);
        $twoCatArr['cat'] = urldecode(json_encode(isset($twoCatArr['cat'])?$twoCatArr['cat']:''));
        $twoCatArr['value'] = json_encode(isset($twoCatArr['value'])?$twoCatArr['value']:0);
        $charts['bing'][] = ['value'=>$charts[ConfigModel::getSeasonInfo()['season_one_name']], 'name' => urlencode(ConfigModel::getSeasonInfo()['season_one_name'])];
        $charts['bing'][] = ['value'=>$charts[ConfigModel::getSeasonInfo()['season_two_name']], 'name' => urlencode(ConfigModel::getSeasonInfo()['season_two_name'])];
        $charts['bing'][] = ['value'=>$charts['其他'], 'name' => urlencode('其他')];
        $charts['bing'] = json_encode($charts['bing']);



        // var_dump(json_encode($charts['bing']));exit;
        return $this->render('bycount', array('list' => $result['list'], 'result' => $result, 'bing' => urldecode($charts['bing']), 'onecat' => $oneCatArr['cat'], 'onevalue' => $oneCatArr['value'], 'twocat' => $twoCatArr['cat'], 'twovalue' => $twoCatArr['value']));
    }

    /**
     * 价格汇总
     */
    public function actionByprice()
    {
        $page = Yii::$app->request->get('page', 1);
        $orderModel = new OrderModel();
        $productModel = new ProductModel();
        $order = $orderModel->orderItems($this->purchaseId, $this->customerId);//已经购买的产品
        $result = $productModel->orderJiaGeDaiItems($order['item_list']);
        // var_dump($result['list'][1]['dpj']);exit;
        $bing = [];
        $zhu = [];
        if (empty($result['list'])) {
            $arr = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'l'];
            foreach ($arr as $v) {
                $zhu[$v][] = '';
            }
        }
        foreach ($result['list'] as $k => $v) {
            $bing['name'][] = urlencode($v['b_name']);
            $bing['amount'][] = ['value' => $v['amount'], 'name' => urlencode($v['b_name'])];
            // $zhu['0-99']
            if (isset($v['dpj']['0-99'])) {
                $zhu['a'][] = $v['dpj']['0-99']['nums'];
            }else{
                $zhu['a'][] = '';
            }
            // $zhu['100-199']
            if (isset($v['dpj']['100-199'])) {
                $zhu['b'][] = $v['dpj']['100-199']['nums'];
            }else{
                $zhu['b'][] = '';
            }
            // $zhu['200-299']
            if (isset($v['dpj']['200-299'])) {
                $zhu['c'][] = $v['dpj']['200-299']['nums'];
            }else{
                $zhu['c'][] = '';
            }
            // $zhu['300-399']
            if (isset($v['dpj']['300-399'])) {
                $zhu['d'][] = $v['dpj']['300-399']['nums'];
            }else{
                $zhu['d'][] = '';
            }
            // $zhu['400-499']
            if (isset($v['dpj']['400-499'])) {
                $zhu['e'][] = $v['dpj']['400-499']['nums'];
            }else{
                $zhu['e'][] = '';
            }
            // $zhu['500-999']
            if (isset($v['dpj']['500-999'])) {
                $zhu['f'][] = $v['dpj']['500-999']['nums'];
            }else{
                $zhu['f'][] = '';
            }
            // $zhu['1000-1499']
            if (isset($v['dpj']['1000-1499'])) {
                $zhu['g'][] = $v['dpj']['1000-1499']['nums'];
            }else{
                $zhu['g'][] = '';
            }
            // $zhu['1500-2000']
            if (isset($v['dpj']['1500-2000'])) {
                $zhu['h'][] = $v['dpj']['1500-2000']['nums'];
            }else{
                $zhu['h'][] = '';
            }
            // $zhu['2000以上']
            if (isset($v['dpj']['2000以上'])) {
                $zhu['l'][] = $v['dpj']['2000以上']['nums'];
            }else{
                $zhu['l'][] = '';
            }

        }
        foreach ($zhu as $k => $v) {
            $zhu[$k] = json_encode($v);
        }
        $bing['name'] = urldecode(json_encode(isset($bing['name'])?$bing['name']:''));
        $bing['amount'] = urldecode(json_encode(isset($bing['amount'])?$bing['amount']:0));
        return $this->render('byprice', array('list' => $result['list'], 'result' => $result, 'bingname' => $bing['name'], 'bingdata' => $bing['amount'],


            )+$zhu);
    }
    /**
     * 我的分销
     */
    public function actionBydownuser()
    {
        $orders = new OrderModel();
        $downUserInfo = $orders->getUserDownUsers($this->customerId);
        return $this->render('bydownuser',
            array(
                'downUserInfo' => $downUserInfo
            )
        );
    }

    /**
     * 订单提交
     */
    public function actionSubmit()
    {
        $orderModel = new OrderModel();
        $orderModel->orderSubmit($this->purchaseId, $this->customerId);

        $url = Yii::$app->request->getReferrer();
        $this->redirect($url);
    }
    /**
     *  订单明细
     */
    public function actionBydetail()
    {
        $page = Yii::$app->request->get('page', 1);
        $orderModel = new OrderModel();
        $productModel = new ProductModel();
        $this->wave = $productModel->tableValue('wave', 'wave_name', 'wave_id');
        $order = $orderModel->fOrderItemList($this->purchaseId, $this->customerId, $page);
        $model_items = array();
        $model_sn = array();
        $order_row = isset($order['order_row']) ? $order['order_row'] : array();
        $list = array();
        $product_num = array();
        if (isset($order['item_list']) && $order['item_list']) {
            $order_items = $order['item_list'];
            foreach ($order_items as $v) {
                if (isset($model_items[$v['model_sn']]))
                    $model_items[$v['model_sn']] += $v['nums'];
                else $model_items[$v['model_sn']] = $v['nums'];
                $product_num[$v['product_sn']] = $v['nums'];
                if (!in_array($v['model_sn'], $model_sn)) $model_sn[] = $v['model_sn'];
            }
        }
        if ($model_sn) {
            foreach ($model_sn as $v) {
                $list[] = $productModel->listModelCache($v);
            }
        }
        // var_dump($list);exit;
        return $this->render('bydetail', array('model_items' => $model_items, 'order_row' => $order_row, 'list' => $list, 'product_num' => $product_num, 'next' => $page + 1));
    }
    /**
     * 订单撤销验证
     */
    public function actionRepealcheck()
    {
        $orderModel = new OrderModel();
        $result = $orderModel->orderRepealCheck($this->purchaseId, $this->customerId);

        if ($result) echo '200';
        else echo '400';
    }
    /**
     * 订单撤销
     */
    public function actionRepeal()
    {
        $orderModel = new OrderModel();
        $orderModel->orderRepeal($this->purchaseId, $this->customerId);

        $url = Yii::$app->request->getReferrer();
        $this->redirect($url);
    }
    /**
     * ajax片段提交
     * 向下滚动bug ，拉倒最底下会一直请求数据
     */
    public function actionDetail()
    {
        $page = Yii::$app->request->get('page', 1);
        $orderModel = new OrderModel();
        $productModel = new ProductModel();
        $this->wave = $productModel->tableValue('wave', 'wave_name', 'wave_id');
        $order = $orderModel->fOrderItemList($this->purchaseId, $this->customerId, $page);
        $model_items = array();
        $model_sn = array();
        $order_row = isset($order['order_row']) ? $order['order_row'] : array();
        $list = array();
        $product_num = array();
        if (isset($order['item_list']) && $order['item_list']) {
            $order_items = $order['item_list'];
            foreach ($order_items as $v) {
                if (isset($model_items[$v['model_sn']]))
                    $model_items[$v['model_sn']] += $v['nums'];
                else $model_items[$v['model_sn']] = $v['nums'];
                $product_num[$v['product_sn']] = $v['nums'];
                if (!in_array($v['model_sn'], $model_sn)) $model_sn[] = $v['model_sn'];
            }
        }
        if ($model_sn) {
            foreach ($model_sn as $v) {
                $list[] = $productModel->listModelCache($v);
            }
        }
        // var_dump($list);exit;
        return $this->render('detail', array('model_items' => $model_items, 'order_row' => $order_row, 'list' => $list, 'product_num' => $product_num, 'next' => $page + 1));
    }
}

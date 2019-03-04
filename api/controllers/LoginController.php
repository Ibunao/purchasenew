<?php
namespace api\controllers;

use Yii;
use common\models\CustomerModel;
use common\models\ProductModel;
use api\controllers\base\ApiController;
use common\models\ConfigModel;
/**
 * 登陆
 */
class LoginController extends ApiController
{

    public function actionLogin()
    {
        $request = Yii::$app->request;
        $username = $request->post("username");
        $pass = $request->post("password");
        if (empty($username) || empty($pass)) {
            return ['code' => '400', 'msg' => '请输入用户名/密码'];
        }
        $user = new CustomerModel();
        $res = $user->login($username, $pass);

        if ($res) {
            $nowTime = time();
            $res->login = $nowTime;
            $res->save();
            $result['customer_id'] = $res->customer_id;
            $result['purchase_id'] = (string)$res->purchase_id;
            $result['name'] = $res->name;
            //检查该用户订单状态
            $orderModel = new ProductModel();
            $orderStatus = $orderModel->checkStatus($res->customer_id);
            $result['status'] = isset($orderStatus[0]['status'])?$orderStatus[0]['status']:0;
            $result['online'] = Yii::$app->params['is_online'];
            $result['is_change_url'] = Yii::$app->params['is_change_url'];
            $result['change_url'] = Yii::$app->params['change_url'];
            // 本地只用
            // $result['change_url'] = Yii::$app->params['change_url'];
            $result['is_distribution'] = $res['parent_id'] == 1 ? 'yes' : 'no';
            $result['purchase_name'] = $res['purchase_id'] == 1 ?
                Yii::$app->params['purchase_oct'] : ($res['purchase_id'] == 2 ? Yii::$app->params['purchase_uki']: Yii::$app->params['purchase_all']);
            $result['is_spring_summer'] = ConfigModel::getSeasonInfo()['season_title'] == '春夏' ? 'yes' : 'no';
            return ['code' => '200', 'data' => $result];
        } else {
            return ['code' => '400', 'msg' => '登录失败'];
        }
    }

    /**
     * 显示登陆的背景图片
     */
    public function actionBackgroundImage()
    {
        return [
            'code' => 200,
            'image' => Yii::$app->params['background_images'],//背景图片
            'btn_color' => Yii::$app->params['app_login_btn_color'], //登录按钮背景颜色
            'btn_font_color' => Yii::$app->params['app_login_btn_font_color'],//登录文字颜色
            'btn_x' => Yii::$app->params['app_login_frame_x'],
            'btn_y' => Yii::$app->params['app_login_frame_y'],
        ];
    }
}
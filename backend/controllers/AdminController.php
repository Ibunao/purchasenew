<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use common\models\AdminUsers;
/**
 * 后台登陆和退出
 */
class AdminController extends Controller
{
    //关闭csrf验证
    public $enableCsrfValidation = false;
    /**
     * 登陆
     *
     * @return mixed
     */
    public function actionLogin()
    {
        $this->layout = false;
        $session = Yii::$app->session;
        //已登陆的直接跳转首页
        $login = $session->get('backend_login_in');
        if (!empty($login)) {
            $this->redirect(['/default/index']);
        }
        $request = Yii::$app->request;
        if ($request->post('Desktopusers')) {
            $post = $request->post('Desktopusers');
            $name = $post['name'];
            $password = md5(md5($post['password']));
            $user = AdminUsers::find()
                ->where(['name'=>$name])
                ->andWhere(['password'=>$password])
                ->one();
            if ($user) {
                $loginInfo = [
                    'user_id'=>$user['user_id'],
                    'name' => $name,
                    // 'super'=>$user['super'],
                    // 'role'=>$user['role'],
                ];
                $session->set('backend_login_in',$loginInfo);
                $this->redirect(['/default/index']);

            } else {
                $session->setFlash('error', '账号或密码不正确');
            }
        }
        return  $this->render('login');
    }
    /**
     * 退出
     */
    public function actionLogout()
    {
        //必须先要开启
        Yii::$app->session->open();
        Yii::$app->session->destroy();
        $this->redirect(['admin/login']);
    }
}

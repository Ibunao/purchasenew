<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use backend\models\AdminUsers;
use backend\models\LoginForm;

/**
 * 后台登陆和退出
 */
class UserController extends Controller
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
        

        if (!Yii::$app->user->isGuest) {
            return $this->redirect(['/default/index']);
        }

        $model = new LoginForm();
        if ($model->load(Yii::$app->request->post(), 'Desktopusers') && $model->login()) {
            return $this->redirect(['/default/index']);
        } else {
            return $this->render('login', [
                'model' => $model,
            ]);
        }
    }
    /**
     * 退出
     */
    public function actionLogout()
    {
        Yii::$app->user->logout();
        $this->redirect(['user/login']);
    }
}

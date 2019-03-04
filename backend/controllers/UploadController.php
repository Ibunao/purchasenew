<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Response;
use common\models\ConfigModel;
/**
 * Site controller
 */
class UploadController extends Controller
{
    public $enableCsrfValidation = false;
    public function actionImage()
    {
        Yii::$app->response->format = Response::FORMAT_JSON;
        $path = Yii::$app->basePath.'/web'.ConfigModel::getImgPath();
        if (!file_exists($path)) mkdir($path,0777);
        $fileName = $_FILES['Filedata']['name'];
        $tmp = $_FILES['Filedata']['tmp_name'];
        $movePath = $path.$fileName;
        $sendPath = ConfigModel::getImgPath().$fileName;
        if (move_uploaded_file($tmp, $movePath)) {
            return ['code' => 200, 'msg' => '上传成功', 'path' => $sendPath];
        }
        return ['code' => 400];
    }
}

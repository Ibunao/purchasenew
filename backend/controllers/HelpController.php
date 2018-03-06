<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Response;
use yii\db\Query;
use common\helpers\File;
use common\helpers\IoXls;
/**
 * 辅助方法
 */
class HelpController extends Controller
{
    public $enableCsrfValidation = false;
    /**
     * 下载缺少的图片
     * @return [type] [description]
     */
    public function actionImage()
    {
        $result = (new Query)->select(['p.model_sn', 'c.color_no'])
            ->from('meet_product as p')
            ->leftJoin('meet_color as c', 'p.color_id = c.color_id')
            ->all();
        $checkArr = [];
        foreach ($result as $key => $item) {
            $checkArr[] = $item['model_sn'].'_'.$item['color_no'].'.jpg';
        }
        $root = Yii::$app->basePath.'/web'.Yii::$app->params['imagePath'];
        $result = File::checkHas($root, $checkArr);
        // $result = File::checkHas($root, ['18131501_103.jpg']);
        // var_dump($result);exit;
        $rews = [];
        $result = array_unique($result);
        foreach ($result as $key => $item) {
            $rews[] = ['A' => $item];
        }
        $keys = ['图片'];
        $filename = '缺少的图片结果';
        $export = new IoXls();
        $export->export_begin($keys, $filename, count($rews));
        $export->export_rows($rews);
        $export->export_finish();
        // return $this->render('image');
    }
    /**
     * 查看日志
     * @return [type] [description]
     */
    public function actionOrderLog()
    {
        $result = (new Query)
            ->from('meet_order_log')
            ->limit(50)
            ->all();
        // var_dump($result);exit;
        return $this->render('log', ['result' => $result]);
    }
}

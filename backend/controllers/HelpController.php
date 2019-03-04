<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Response;
use yii\db\Query;
use common\helpers\File;
use common\helpers\IoXls;
use yii\web\UploadedFile;
use common\models\UploadForm;
use common\models\AgentModel;
use PHPExcel;
use PHPExcel_IOFactory;
use common\models\ConfigModel;
/**
 * 辅助方法
 */
class HelpController extends Controller
{
    public $enableCsrfValidation = false;
    /**
     * 下载数据库商品缺少的图片
     * @return [type] [description]
     */
    public function actionImage()
    {
        $result = (new Query)->select(['p.model_sn', 'c.color_no'])
            ->from('meet_product as p')
            ->leftJoin('meet_color as c', 'p.color_id = c.color_id')
            ->where(['is_down' => 0])
            ->all();
        $checkArr = [];
        foreach ($result as $key => $item) {
            $checkArr[] = $item['model_sn'].'_'.$item['color_no'].'.jpg';
        }
        $root = Yii::$app->basePath.'/web'.ConfigModel::getImgPath();
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
    }
    /**
     * 临时
     * 将下面那个excel数据中的产品
     * @return [type] [description]
     */
    public function actionCopyImage()
    {
        $data = Yii::$app->cache->get('insert-getinfo-for-img-source-data');
        // 所有图片所在位置
        $root = Yii::$app->basePath.'/web/allImages/';
        $checkArr = [];
        foreach ($data as $key => $item) {
            $checkArr[] = $item[0].'_'.$item['1'].'.jpg';
        }
        $copyRoot = Yii::$app->basePath.'/web/useImages/';
        // 如果存在则复制
        $result = File::checkHas($root, $checkArr, true, $copyRoot);
        return;
        // 导出不存在的
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
    }
    /**
     * 临时 用来导入老产品的图片
     * 读取excel数据老产品的数据到缓存
     * 
     * @return [type] [description]
     */
    public function actionGetInfoExcel()
    {
        $model = new UploadForm();

        if (Yii::$app->request->isPost) {
            $model->xlsFile = UploadedFile::getInstance($model, 'xlsFile');
            if ($model->upload()) {
                $objPHPExcel = new PHPExcel();
                $objPHPExcel = PHPExcel_IOFactory::createReaderForFile($model->path);
                $objPHPExcel = PHPExcel_IOFactory::load($model->path);
                $result = $objPHPExcel->getActiveSheet()->toArray();
                unset($result[0]);
                // var_dump(count($result));
                Yii::$app->cache->set('insert-getinfo-for-img-source-data', $result);
                var_dump($result);
            }
        }

        return $this->render('upload', ['model' => $model]);
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

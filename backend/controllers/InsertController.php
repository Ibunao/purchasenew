<?php
namespace backend\controllers;

use Yii;
use yii\db\Query;
use yii\web\UploadedFile;
use yii\web\Controller;
use common\models\UploadForm;
use common\models\AgentModel;
use PHPExcel;
use PHPExcel_IOFactory;
use common\helpers\IoXls;
/**
 * 批量读取
 * 只能使用xls文件
 * @author        ding
 */
class InsertController extends Controller
{
	public function actionRelation()
	{
		$model = new UploadForm();

        if (Yii::$app->request->isPost) {
            $model->xlsFile = UploadedFile::getInstance($model, 'xlsFile');
            if ($model->upload()) {
            	$objPHPExcel = new PHPExcel();
            	$objPHPExcel = PHPExcel_IOFactory::createReaderForFile($model->path);
            	$objPHPExcel = PHPExcel_IOFactory::load($model->path);
            	$result = $objPHPExcel->getActiveSheet()->toArray();
            	$length = count($result);
            	$rows = [];
                for ($i=1; $i < $length; $i++) { 
                	$row = [$result[$i][0], $result[$i][1]];
                	$rows[] = $row;
                }
                Yii::$app->db->createCommand()->batchInsert(AgentModel::tableName(), ['agent_code','agent_name'], $rows)->execute();
                var_dump('添加成功');exit;
            }else{
            	var_dump($model);exit;
            }
        }

        return $this->render('upload', ['model' => $model]);
	}
    /**
     * 读取excel数据到缓存
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
                $length = count($result);
                $rows = [];
                unset($result[0]);
                // var_dump(count($result));
                $data = [];
                foreach ($result as $key => $item) {
                    if (!empty($item[0])) {
                        $data[] = $item[0];
                    }
                }
                Yii::$app->cache->set('insert-getinfo-source-data', $data);
            }
        }

        return $this->render('upload', ['model' => $model]);
    }
    /**
     * 根据款号获取老商品数据
     * @return [type] [description]
     */
    public function actionGetInfo()
    {
        $data = Yii::$app->cache->get('insert-getinfo-source-data');
        var_dump($data);exit;
        // $result = (new Query)->select(['product_sn', 'style_sn', 'model_sn', 'serial_num', 'name', 'img_url', 'color_id', 'size_id', 'brand_id', 'cat_b', 'cat_m', 'cat_s', 'season_id', 'level_id', 'wave_id', 'scheme_id', 'cost_price', 'price_level_id', 'memo', 'type_id', 'disabled', 'is_error', 'is_down'])->from('meet_product')
        // $result = (new Query)->select(['model_sn', 'memo', 'wave_name', 'level_name', 'type_name'])->from('meet_product p')
        $result = (new Query)->select('model_sn')->from('meet_product p')
            // ->leftJoin('meet_wave w', 'w.wave_id = p.wave_id')
            // ->leftJoin('meet_level l', 'l.level_id = p.level_id')
            // ->leftJoin('meet_type t', 't.type_id = p.type_id')
            ->where(['model_sn' => $data])
            ->groupBy('model_sn')
            // ->indexBy('model_sn')
            ->all();
            // var_dump(Yii::$app->db);exit;
        // 将已经查找过的删除
        foreach ($result as $key => $item) {
            foreach ($data as $kk => $value) {
                if ($value == $item['model_sn']) {
                    unset($data[$kk]);
                }
            }
        }
        // $begin = Yii::$app->cache->get('insert-getinfo-begin');

        // if (!$begin) {
        //     $begin = 2000;
        // }
        // $model_color = Yii::$app->cache->get('insert-getinfo-model-color');
        // if (!$model_color) {
        //     $model_color = [];
        // }
        
        // foreach ($result as $key => $item) {
        //     foreach ($data as $kk => $value) {
        //         if ($value == $item['model_sn']) {
        //             unset($data[$kk]);
        //         }
        //     }
        //     if (isset($model_color[$item['model_sn'].'-'.$item['color_id']])) {
        //         $item['serial_num'] = $model_color[$item['model_sn'].'-'.$item['color_id']];
        //     }else{
        //         $begin++;
        //         $model_color[$item['model_sn'].'-'.$item['color_id']] = $begin;
        //         $item['serial_num'] = $begin;
        //     }
        //     $result[$key] = $item;
        // }
        // Yii::$app->cache->set('insert-getinfo-begin', $begin);
        // Yii::$app->cache->set('insert-getinfo-model-color', $model_color);
        Yii::$app->cache->set('insert-getinfo-source-data', $data);
        // $keys = ['product_sn', 'style_sn', 'model_sn', 'serial_num', 'name', 'img_url', 'color_id', 'size_id', 'brand_id', 'cat_b', 'cat_m', 'cat_s', 'season_id', 'level_id', 'wave_id', 'scheme_id', 'cost_price', 'price_level_id', 'memo', 'disabled'];
        $keys = ['model_sn'];
        // var_dump($result);exit;
        $filename = 'bulaokuan0803';
        $export = new IoXls();
        $export->export_begin($keys, $filename, count($result));
        $export->export_rows($result);
        $export->export_finish();
        // var_dump(count($result));
        // for ($i=1; $i < $length; $i++) { 
        //     $row = [$result[$i][0], $result[$i][1]];
        //     $rows[] = $row;
        // }
        // Yii::$app->db->createCommand()->batchInsert(AgentModel::tableName(), ['agent_code','agent_name'], $rows)->execute();
        // var_dump('添加成功');exit;
        return;

    }
    /**
     * 插入旧数据
     * @return [type] [description]
     */
    public function actionInsert()
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
                $fields = ['product_sn', 'style_sn', 'model_sn', 'serial_num', 'name', 'img_url', 'color_id', 'size_id', 'brand_id', 'cat_b', 'cat_m', 'cat_s', 'season_id', 'level_id', 'wave_id', 'scheme_id', 'cost_price', 'price_level_id', 'memo', 'type_id', 'disabled', 'is_error', 'is_down'];
                var_dump($result);exit;
                // Yii::$app->db->createCommand()->batchInsert(AgentModel::tableName(), ['agent_code','agent_name'], $rows)->execute();
                var_dump('添加成功');exit;
            }else{
                var_dump($model);exit;
            }
        }

        return $this->render('upload', ['model' => $model]);
        
    }
    public function actionGetCache()
    {
        $data = Yii::$app->cache->get('insert-getinfo-source-data');
        var_dump(count($data), $data);exit;
        $keys = 'model_sn';
        // var_dump($result);exit;
        $filename = '数据库不存在的';
        $export = new IoXls();
        $export->export_begin($keys, $filename, count($data));
        $export->export_rows($data);
        $export->export_finish();
    }
}
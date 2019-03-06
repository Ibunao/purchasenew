<?php
namespace backend\controllers;

use Yii;
use backend\controllers\base\BaseController;
use yii\helpers\FileHelper;
use yii\db\Query;
use common\models\ConfigModel;
use common\models\PublicModel;
use common\helpers\File;
use common\helpers\IoXls;
use yii\web\UploadedFile;
use common\models\UploadForm;
use common\models\AgentModel;
use PHPExcel;
use PHPExcel_IOFactory;
/**
* 辅助功能
*/
class HelperController extends BaseController
{
	/**
	 * 静态页
	 * @return [type] [description]
	 */
	public function actionIndex()
	{
		return $this->render('index');
	}
	/**
	 * 清除所有缓存
	 * @return [type] [description]
	 */
	public function actionCache()
	{
		if (PublicModel::flushCacheAll()) {
			
        	return $this->sendSucc([]);
		}
		echo "清除缓存失败";
	}
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
}

<?php
namespace backend\controllers;

use Yii;
use yii\web\Controller;
use yii\web\Response;
use yii\db\Query;
use common\helpers\File;
use common\helpers\SimpleExcel;
use yii\web\UploadedFile;
use common\models\UploadForm;
use common\models\AgentModel;
use common\helpers\SimpleCsv;

/**
 * 临时使用
 */
class OtherController extends Controller
{
	public function actionIndex()
	{
		$result = (new Query)->from('sale_body')
			->where(['>', 'Intime', '2018-10-28'])
			->andWhere(['<=', 'Intime', '2018-10-29'])
			->all();
		$save = [];
		foreach ($result as $key => $item) {
			libxml_disable_entity_loader(true);
        	$content = json_decode(json_encode(simplexml_load_string($item['MessageBody'], 'SimpleXMLElement', LIBXML_NOCDATA)), true);
                $type = '';
        	// 如果不是 Delivery 类型的直接跳过 如 Return
        	if (isset($content['Body']['Delivery'])) {
        		$type = 'Delivery';
                        $typeNo = 'DeliveryNo';
                        $typeItem = 'DeliveryItem';
                        $typeItemNo = 'DeliveryItemNo';
        	}elseif (isset($content['Body']['Return'])) {
                        $type = 'Return';
                        $typeNo = 'ReturnNo';
                        $typeItem = 'ReturnItem';
                        $typeItemNo = 'ReturnItemNo';
                }else{
                        continue;
                }
        	// 如果一条只有一个数据的如jit  
        	if (isset($content['Body'][$type]['DeliveryItem'])) {
        		$temp = $content['Body'][$type];
        		$content['Body'][$type] = [];
        		$content['Body'][$type][] = $temp;
        	}
        	foreach ($content['Body'][$type] as $key => $iitem) {
        		if (!isset($iitem[$typeItem])) {
        			var_dump($content['Body'][$type]);exit;
        		}
        		// var_dump($iitem['@attributes']);
        		foreach ($iitem[$typeItem] as $iiitem) {
        			if (!isset($iiitem['@attributes'])) {
        				$iiitem['@attributes'] = $iiitem;
        			}
        			// if (!isset($iiitem['@attributes']['SpecValue'])) {
        			// 	var_dump($iiitem['@attributes']);exit;
        			// }
        			$save[] = [
        				'DeliveryNo' => $iitem['@attributes'][$typeNo],
        				'OrderNo' => $iitem['@attributes']['OrderNo'],
        				'ShopNo' => "'".$iitem['@attributes']['ShopNo'],
        				'ShopName' => $iitem['@attributes']['ShopName'],
        				'DeliveryItemNo' => $iiitem['@attributes'][$typeItemNo],
        				'ProductNo' => $iiitem['@attributes']['ProductNo'],
        				'ProductName' => $iiitem['@attributes']['ProductName'],
        				'GoodsNo' => $iiitem['@attributes']['GoodsNo'],
        				'SpecValue' => isset($iiitem['@attributes']['SpecValue'])?$iiitem['@attributes']['SpecValue']:'默认规格',
        				'SpecName' => $iiitem['@attributes']['SpecName'],
        				'Quantity' => $iiitem['@attributes']['Quantity'],
        				'Intime' => $item['InTime'],
        			];
        		}
        	}
		}
		// 下载的文件名
 		$filename = 'erp数据.csv';
 		// title行
 		$titles = [
 			'DeliveryNo',
 			'OrderNo',
 			'ShopNo',
 			'ShopName',
 			'DeliveryItemNo',
 			'ProductNo',
 			'ProductName',
 			'GoodsNo',
 			'SpecValue',
 			'SpecName',
 			'Quantity',
 			'Intime'
 		];
 		SimpleCsv::exportCsv($titles, $save, $filename);
	}
}
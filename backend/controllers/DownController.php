<?php

namespace backend\controllers;

use Yii;
use yii\db\Query;
use yii\web\Controller;
use common\config\ParamsClass;
use common\models\PurchaseModel;
use common\models\ProductModel;
use common\models\CustomerModel;
use common\models\CatBigModel;
use common\models\CatMiddleModel;
use common\models\CatSmallModel;
use common\models\SeasonModel;
use common\models\WaveModel;
use common\models\LevelModel;
use common\models\SchemeModel;
use common\models\TypeModel;
use common\models\OrderModel;
use common\helpers\IoXls;

/**
 * 下载订单
 * @author dingran
 * @date(2017.8.14)
 */
class DownController extends Controller
{
	public function actionIndex()
	{
		$query = new Query;
		$result = $query->select(['p.serial_num', 'p.style_sn', 'p.color_id', 'size_id', 'sum(oi.nums) as nums'])
			->from('meet_product as p')
			->leftJoin('meet_order_items as oi', 'p.product_id = oi.product_id')
			->where(['oi.disabled' => 'false'])
			->groupBy('oi.product_id')
			->all();
		var_dump($result);exit;
		$keys = ['流水号','款号','颜色','尺码','色号','订单量'];
		$filename = '商品导出筛选结果';
		$export = new IoXls();
	    $export->export_begin($keys, $filename, count($data));
	    $export->export_rows($data);
	    $export->export_rows($data2);
	    $export->export_finish();

	}
	/**
	 * 下载
	 * 大中小类，流水号，款号，商品名称，色号，颜色名称，尺码，波段，季节，商品等级，吊牌价，加盟订单数，直营订单数，总订单数
	 * date 2018-03-06
	 * @return [type] [description]
	 */
	public function actionProduct()
	{
		$attr = $this->Attribute();
		$query = new Query;
		$products = $query->select(['product_id', 'cat_b', 'cat_m', 'cat_s', 'serial_num', 'model_sn', 'name', 'color_id', 'size_id', 'wave_id', 'season_id', 'level_id', 'cost_price'])
			->from('meet_product')
			->indexBy('product_id')
			->all();
		$query = new Query;
		$sums = $query->select(['product_id', 'SUM(nums) nums', 'c.type'])
			->from('meet_order_items as oi')
			->leftJoin('meet_order as o', 'oi.order_id = o.order_id')
			->leftJoin('meet_customer as c', 'o.customer_id = c.customer_id')
			->where(['not in', 'c.code', ['ceshi', 'ceshi1', 'ceshi2', 'ceshi3', 'ceshi5']])
			->andWhere(['oi.disabled' => 'false'])
			->groupBy('oi.product_id, c.type')
			->all();
		foreach ($sums as $key => $item) {
			if ($item['type'] == '客户') {
				$products[$item['product_id']]['jiameng'] = $item['nums'];
			}
			if ($item['type'] == '直营') {
				$products[$item['product_id']]['zhiying'] = $item['nums'];
			}
		}
		$result = [];
		foreach ($products as $key => $item) {
			$rit['cat_b'] = $attr['cat_b'][$item['cat_b']]['name'];
			$rit['cat_m'] = $attr['cat_m'][$item['cat_m']]['name'];
			$rit['cat_s'] = $attr['cat_s'][$item['cat_s']]['name'];
			$rit['serial_num'] = $item['serial_num'];
			$rit['model_sn'] = $item['model_sn'];
			$rit['name'] = $item['name'];
			$rit['color_no'] = $attr['color'][$item['color_id']]['color_no'];
			$rit['color'] = $attr['color'][$item['color_id']]['name'];
			$rit['size'] = $attr['size'][$item['size_id']]['name'];
			$rit['wave'] = $attr['wave'][$item['wave_id']]['name'];
			$rit['season'] = $attr['season'][$item['season_id']]['name'];
			$rit['level'] = $attr['level'][$item['level_id']]['name'];
			$rit['cost_price'] = $item['cost_price'];
			if (!isset($item['jiameng'])) {
				$rit['jiameng'] = 0;
			}else{
				$rit['jiameng'] = $item['jiameng'];
			}
			if (!isset($item['zhiying'])) {
				$rit['zhiying'] = 0;
			}else{
				$rit['zhiying'] = $item['zhiying'];
			}
			// $products[$key] = $item;
			$result[] = $rit;
		}
		$keys = ['大类', '中类', '小类', '流水号', '款号', '商品名称', '色号', '颜色名称', '尺码', '波段', '季节', '商品等级', '吊牌价', '加盟订单数', '直营订单数'];
		$filename = '商品导出结果';
		$export = new IoXls();
	    $export->export_begin($keys, $filename, count($result));
	    $export->export_rows($result);
	    $export->export_finish();
	}
	/**
	 * 辅助属性值
	 */
	public function Attribute()
	{
		// 大类
		$query = new Query;
		$cat_b = $query->select(['big_id', 'cat_name as name'])
			->from('meet_cat_big')
			->indexBy('big_id')
			->all();
		// 中类
		$query = new Query;
		$cat_m = $query->select(['middle_id', 'cat_name as name'])
			->from('meet_cat_middle')
			->indexBy('middle_id')
			->all();
		// 中类
		$query = new Query;
		$cat_s = $query->select(['small_id', 'cat_name as name'])
			->from('meet_cat_small')
			->indexBy('small_id')
			->all();
		// 颜色
		$query = new Query;
		$color = $query->select(['color_id', 'color_no', 'color_name as name'])
			->from('meet_color')
			->indexBy('color_id')
			->all();
		// 尺码
		$query = new Query;
		$size = $query->select(['size_id', 'size_no', 'size_name as name'])
			->from('meet_size')
			->indexBy('size_id')
			->all();
		// 波段
		$query = new Query;
		$wave = $query->select(['wave_id', 'wave_no', 'wave_name as name'])
			->from('meet_wave')
			->indexBy('wave_id')
			->all();
		// 季节
		$query = new Query;
		$season = $query->select(['season_id', 'season_name as name'])
			->from('meet_season')
			->indexBy('season_id')
			->all();
		// 商品等级
		$query = new Query;
		$level = $query->select(['level_id', 'level_name as name'])
			->from('meet_level')
			->indexBy('level_id')
			->all();
		return ['cat_b' => $cat_b, 'cat_m' => $cat_m, 'cat_s' => $cat_s, 'color' => $color, 'size' => $size, 'wave' => $wave, 'season' => $season, 'level' => $level];
	}
}

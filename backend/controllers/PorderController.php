<?php

namespace backend\controllers;

use Yii;
use yii\db\Query;
use common\config\ParamsClass;
use backend\controllers\base\BaseController;
use common\models\PurchaseModel;
use common\models\ProductModel;
use common\models\CustomerModel;
use common\models\CatBigModel;
use common\models\CatMiddleModel;
use common\models\CatSmallModel;
use common\models\SeasonModel;
use common\models\WaveModel;
use common\models\ColorModel;
use common\models\BrandModel;
use common\models\LevelModel;
use common\models\SchemeModel;
use common\models\TypeModel;
use common\models\OrderModel;
use common\helpers\IoXls;

/**
 * 商品订单汇总 
 * @author dingran
 * @date(2017.7.28)
 */
class PorderController extends BaseController
{
    /**
     * 商品订单汇总
     * @return [type] [description]
     */
    public function actionIndex()
    {
        # 可选项，筛选条件
    	$select_option = Yii::$app->cache->get('b_product_select_option');

    	if(empty($select_option))
    	{
    	    $select_option = $this->tables();
    	}
    	$pageIndex = Yii::$app->request->get('page', 1);

    	$params= Yii::$app->request->get('param', []);

    	$params['page']= $pageIndex;
    	$order = new OrderModel();
    	// 订单的详细信息以及搜索功能
    	$result = $order->orderList($params);
        // var_dump($result);exit;
        //下载
        if(!empty($params['download'])){
            $data = [];
    	    if(!empty($result['item'])){
                // 波段
                $wave = new WaveModel;
                $waveArr = $wave->transWaveAll();
                // 颜色
                $color = new ColorModel;
                $colorArr = $color->transColorAll();
                // 品牌  
                $brand = new BrandModel;
                $brandArr = $brand->transBrandAll();
                // 季节  
                $season = new SeasonModel;
                $seasonArr = $season->transSeasonAll();

    	        $style_sn= [];

                foreach ($result['item'] as $item) {
                    $style_sn[] = $item['style_sn'];
                }
                $order_type = $order->customerOrderByStyleSnCount($style_sn, $params)['styleSnSizeArr'];
                $size = (new Query)->select(['size_id', 'size_name'])->from('meet_size')->indexBy('size_id')->all();
                foreach($result['item'] as $k=>$v){
                    $item = $result['item'][$k];

                    //加盟订货数
                    $item['customer'] = isset($order_type[$item['style_sn']][$item['size_id']]['客户'])?$order_type[$item['style_sn']][$item['size_id']]['客户']:0;
                    //自营订货数
                    $item['self'] = isset($order_type[$item['style_sn']][$item['size_id']]['直营'])?$order_type[$item['style_sn']][$item['size_id']]['直营']:0;

                    //id转换成name
                    $item['cat_big_name'] = $select_option['cat_big'][$v['cat_b']]['cat_name'];
                    $item['cat_middle_name'] = $select_option['cat_middle'][$v['cat_m']]['cat_name'];
                    $item['cat_small_name'] = $select_option['cat_small'][$v['cat_s']]['cat_name'];
                    $item['type_name'] = $select_option['ptype'][$v['type_id']]['type_name'];
                    $item['size_name'] = $size[$v['size_id']]['size_name'];

                    $result['item'][$k] = $item;
                    
                }


    	    }
            $keys = array('大类','中类','小类','款色','流水','商品类型', '吊牌价' ,'加盟订货','直营订货','总订货','尺寸', '波段', '商品款号', '商品名称', '色号', '颜色名称', '品牌', '季节');
            $data = [];
            foreach($result['item'] as $k=> $v){
                $data[$k]['A'] = $v['cat_big_name'];
                $data[$k]['B'] = $v['cat_middle_name'];
                $data[$k]['C'] = $v['cat_small_name'];
                $data[$k]['D'] = $v['style_sn'];
                $data[$k]['E'] = $v['serial_num'];
                $data[$k]['F'] = $v['type_name'];
                $data[$k]['G'] = $v['cost_price'];
                $data[$k]['H'] = $v['customer'];
                $data[$k]['I'] = $v['self'];
                $data[$k]['J'] = $v['nums'];
                $data[$k]['K'] = $v['size_name'];
                $data[$k]['l'] = $waveArr[$v['wave_id']]['wave_name'];
                $data[$k]['m'] = $v['model_sn'];
                $data[$k]['n'] = $v['name'];
                $data[$k]['o'] = $colorArr[$v['color_id']]['color_no'];
                $data[$k]['p'] = $colorArr[$v['color_id']]['color_name'];
                $data[$k]['q'] = $brandArr[$v['brand_id']]['brand_name'];
                $data[$k]['r'] = $seasonArr[$v['season_id']]['season_name'];
            }

    	    $data2 = [
    	        ['',''],
    	        ['订货数量汇总',empty($result['nums'])?0:$result['nums'] ],
    	        ['订货金额汇总',empty($result['amount'])?0:number_format($result['amount'],2) ],
    	    ];
    	    $filename = '商品导出筛选结果';
    	    $export = new IoXls();
    	    $export->export_begin($keys, $filename, count($data));
    	    $export->export_rows($data);
    	    $export->export_rows($data2);
    	    $export->export_finish();
    	}else{
        // 网页显示
    	    if(!empty($result['item'])){
    	        $product_id= [];

                foreach ($result['item'] as $key => $value) {
                    $styleSnArr[] = $value['style_sn'];
                }
                $order_type = $order->customerOrderByStyleSnCount($styleSnArr, $params)['styleSnArr'];
    	        foreach($result['item'] as $k=>$v){
                    $item = $result['item'][$k];
                    //加盟订货数
    	            $item['customer'] = isset($order_type[$item['style_sn']]['客户'])?$order_type[$item['style_sn']]['客户']:0;
                    //自营订货数
    	            $item['self'] = isset($order_type[$item['style_sn']]['直营'])?$order_type[$item['style_sn']]['直营']:0;
                    //id转换成name
                    $item['cat_big_name'] = $select_option['cat_big'][$v['cat_b']]['cat_name'];
                    $item['cat_middle_name'] = $select_option['cat_middle'][$v['cat_m']]['cat_name'];
                    $item['cat_small_name'] = $select_option['cat_small'][$v['cat_s']]['cat_name'];
                    $item['type_name'] = $select_option['ptype'][$v['type_id']]['type_name'];
                    $result['item'][$k] = $item;
                }
    	    }

    	    // var_dump($result);exit;
    	    if(empty($params['view'])){
    	        $view = 'index';
    	    }else{
    	        $view = 'indexwithpic';
    	    }

    	    return $this->render($view,[
    	        'result'=>$result,
    	        'params'=>$params,
    	        'selectOption'=>$select_option
    	    ]);
    	}
    }
    /**
     * 明细
     * @param  string $style_sn style_sn
     * @return [type]           [description]
     */
    public function actionDialogue($style_sn = '')
    {
        // 以json的格式输出
        Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;
        if(empty($style_sn)){
            return ['code'=>400];
        }
        // 产品详情
        $product = new ProductModel();
        $result = $product->getList($style_sn);
        // 各尺寸销售情况统计
        if(!empty($result)){
            $result['order_count'] = $product->getProductSizeOrder($style_sn);
        }
        return ['code'=>200, 'data'=>$result];
    }

    /**
     * 获取表的数据
     * @return [type] [description]
     */
    public function tables(){
        //订货会：
        $select_option['purchase'] = PurchaseModel::getPurchase();
        //（渠道）客户类型：
        $select_option['customer'] = CustomerModel::getList();
        //大类：
        $select_option['cat_big'] = (new CatBigModel)->getList('big_id');
        //中类：
        $select_option['cat_middle'] = (new CatMiddleModel)->getList('middle_id');
        //小类：
        $select_option['cat_small'] = (new CatSmallModel)->getList('small_id');
        //季节：
        $select_option['season'] = (new SeasonModel)->getList('season_id');
        //波段：
        $select_option['wave'] = (new WaveModel)->getList('wave_id');
        //等级：
        $select_option['level'] = (new LevelModel)->getList('level_id');
        //色系：
        $select_option['scheme'] = (new SchemeModel)->getList('scheme_id');
        //价格带：
        $select_option['price_level'] = ParamsClass::$priceLevel;
        //商品类型
        $select_option['ptype'] = (new TypeModel)->getList('type_id');

        Yii::$app->cache->set('b_product_select_option', $select_option, 60*60*24*5);
        return $select_option;
    }

}

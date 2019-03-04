<?php

namespace common\models;

use Yii;
use yii\base\Object;
use yii\db\Query;
/**
 * This is the model class for table "{{%color}}".
 *
 * @property integer $color_id
 * @property string $color_no
 * @property string $color_name
 * @property integer $scheme_id
 * @property integer $p_order
 */
class ConfigModel extends Object
{
	/**
	 * 获取网站的标题
	 * @return [type] [description]
	 */
	public static function getWebTitle()
	{
		// 查询是否存在  
		$query = new Query;
		$result = $query
			->from('config')
			->where(['type' => 'title'])
			->one(Yii::$app->config);
		if ($result) {
			return $result['content'];
		}
		return '2018十月妈咪春夏订货会';
	}
	/**
	 * 获取清除缓存的url
	 * @return [type] [description]
	 */
	public static function getAllCacheUrl()
	{
		// 查询是否存在  
		$query = new Query;
		$result = $query
			->from('config')
			->where(['type' => 'cache'])
			->one(Yii::$app->config);
		if ($result) {
			return json_decode($result['remark'], true);
		}
		return [
			'http://128.128.1.72',
	    	'http://128.128.1.74',
	        'http://128.128.1.75',
	        'http://128.128.1.79',
	        'http://fair.st.octmami.com',
		];
	}
	/**
	 * 获取图片url，也就是后台路径
	 * @return [type] [description]
	 */
	public static function getImgUrl()
	{
		// 查询是否存在  
		$query = new Query;
		$result = $query
			->from('config')
			->where(['type' => 'img'])
			->one(Yii::$app->config);
		if ($result) {
			return $result['content'];
		}
		return 'http://admin.dinghuo.com';
	}
	/**
	 * 上传图片的位置
	 * @return [type] [description]
	 */
	public static function getImgPath()
	{
		// 查询是否存在  
		$query = new Query;
		$result = $query
			->from('config')
			->where(['type' => 'img'])
			->one(Yii::$app->config);
		if ($result) {
			return $result['remark'];
		}
		return '/images/2018-07/';
	}
	/**
	 * 获取季节对应的信息
	 * @return [type] [description]
	 */
	public static function getSeasonInfo()
	{
		$season = 1;
		// 查询是否存在  
		$query = new Query;
		$result = $query
			->from('config')
			->where(['type' => 'season'])
			->one(Yii::$app->config);
		if ($result) {
			$season = $result['content'];
		}
		if ($season == 1) {
			return [
				// 春夏
				'season_one' => '1', //季节1ID ！【'1'(春) || '3'(秋)】
				'season_two' => '2', //季节2ID ！【'2'(夏) || '4'(冬)】
				'season_one_name' => '春', //季节1名称 【'春' || '秋'】
				'season_two_name' => '夏', //季节2名称 【'夏' || '冬'】
				'season_title' => '春夏',  //季节1、2 名称 【'春夏' || '秋冬'】
			];
		}
		return [
			// 秋冬
			'season_one' => '3', //季节1ID ！【'1'(春) || '3'(秋)】
			'season_two' => '4', //季节2ID ！【'2'(夏) || '4'(冬)】
			'season_one_name' => '秋', //季节1名称 【'春' || '秋'】
			'season_two_name' => '冬', //季节2名称 【'夏' || '冬'】
			'season_title' => '秋冬',  //季节1、2 名称 【'春夏' || '秋冬'】
		];
	}
}
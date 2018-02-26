<?php 
namespace common\behaviors;

use Yii;
use yii\base\Behavior;
/**
* 查询通用方法
*/
class PublicFind extends Behavior
{
	public $object;
	public function getList($index = '')
    {
    	// $key = strtolower(str_replace('\\', '_', get_class($this->object)));
    	// $result = Yii::$app->cache->get($key);
    	// if (empty($result)) {
    	// 	$result = $this->object->find()->asArray()->all();
    	// 	Yii::$app->cache->set($key, $result);
    	// }
        if (empty($index)) {
            $result = $this->object->find()->asArray()->all();
        }else{
            $result = $this->object->find()->indexBy($index)->asArray()->all();
        }
        return $result;
    }
}
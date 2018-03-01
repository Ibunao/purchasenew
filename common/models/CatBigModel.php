<?php

namespace common\models;

use Yii;
use yii\helpers\ArrayHelper;
use yii\db\Query;
/**
 * 大分类表
 * This is the model class for table "{{%cat_big}}".
 *
 * @property string $big_id
 * @property string $cat_name
 * @property string $p_order
 */
class CatBigModel extends \yii\db\ActiveRecord
{
    public function behaviors()
    {
        return  ArrayHelper::merge(parent::behaviors(),
        [
            [
                'class' => 'common\behaviors\PublicFind',
                'object' => $this,
            ],
        ]);
    }
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%cat_big}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['cat_name'], 'required'],
            [['p_order'], 'integer'],
            [['cat_name'], 'string', 'max' => 100],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'big_id' => 'Big ID',
            'cat_name' => 'Cat Name',
            'p_order' => 'P Order',
        ];
    }
    /**
     * 分类id对应name
     * @return [type] [description]
     */
    static function getCatBig()
    {
        $result = Yii::$app->cache->get('cat_big_id_name');
        if (empty($result)) {
            $result = self::find()->select(['big_id', 'cat_name'])->asArray()->all();
            Yii::$app->cache->set('cat_big_id_name', $result);
        }
        return $result;
    }
    /**
    * use
    * backend/morder/statistics
    */
    public function cat_big_small(){
        $cat = array();
        $sql = " select * from meet_cat_big";
        $big = self::find()
            ->asArray()
            ->all();
        foreach($big as $k=> $v){
            $small = (new Query)->select(['small_id', 'small_cat_name'])
                ->from('meet_cat_big_small')
                ->where(['big_id' => $v['big_id']])
                ->groupBy('small_id')
                ->all();
            if(!empty($small)){
                $cat[$v['big_id']]['big_cat_id'] =$v['big_id'];
                $cat[$v['big_id']]['big_cat_name'] =$v['cat_name'];
                $cat[$v['big_id']]['cat_small'] =$small;
            }
        }
        return  $cat ;
    }
}

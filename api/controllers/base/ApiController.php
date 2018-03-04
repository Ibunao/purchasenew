<?php

namespace api\controllers\base;

use Yii;
use yii\web\Controller;
use yii\base\InlineAction;
/**
 * app基础控制器
 */
class ApiController extends Controller
{
    public $enableCsrfValidation = false;
    public function init()
    {
        parent::init();
        Yii::$app->response->format = \yii\web\Response::FORMAT_JSON;

    }

    /**
     * request封装
     * @param string $val  字段名
     * @param string $type 字段类型
     * @return string
     */
    public function request($val,$type='str',$default=0){
        if ($type == 'str') {
            $data = isset($_REQUEST[$val])?$_REQUEST[$val]:'';
        } else if($type == 'int') {
            $data = isset($_REQUEST[$val])?$_REQUEST[$val]:$default;
        }
        return $this->_CheckAndQuote($data);
    }
/**
     * POST获取单个数据
     *
     * @param $val
     * @param string $type
     * @return string
     */
    public function post($val,$type='str')
    {
        $data = '';
        if ($type == 'str') {
            $data = isset($_POST[$val])?$_POST[$val]:'';
        } else if($type == 'int') {
            $data = isset($_POST[$val])?$_POST[$val]:0;
        }
        return $this->_CheckAndQuote($data);
    }
    /**
     * prevent from invalidate sql sentense is put in advanced
     *
     * @param  $value value of waiting for format
     * @return string formatted value
     */
    function _CheckAndQuote($value)
    {
        if (is_int($value) || is_float($value)) {
            return $value;
        }

        return htmlspecialchars(addslashes($value));
    }
    /**
     * 充血陆游规则
     * Desc:重写路由，处理访问控制器支持驼峰命名法
     * @param string $id
     * @return null|object|InlineAction
     */
    public function createAction($id)
    {
        if ($id === '') {
            $id = $this->defaultAction;
        }

        $actionMap = $this->actions();
        if (isset($actionMap[$id])) {
            return \Yii::createObject($actionMap[$id], [$id, $this]);
        } elseif (preg_match('/^[a-z0-9\\-_]+$/', $id) && strpos($id, '--') === false && trim($id, '-') === $id) {
            $methodName = 'action' . str_replace(' ', '', ucwords(implode(' ', explode('-', $id))));
            if (method_exists($this, $methodName)) {
                $method = new \ReflectionMethod($this, $methodName);
                if ($method->isPublic() && $method->getName() === $methodName) {
                    return new InlineAction($id, $this, $methodName);
                }
            }
            // 驼峰形式,支持第一个字母小写
            } else {
                $id = ucfirst($id);
                $methodName = 'action' . $id;
                if (method_exists($this, $methodName)) {
                    $method = new \ReflectionMethod($this, $methodName);
                    if ($method->isPublic() && $method->getName() === $methodName) {
                        return new InlineAction($id, $this, $methodName);
                    }
                }
            }
        return null;
    }
}

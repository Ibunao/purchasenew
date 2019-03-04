<?php

namespace backend\controllers\base;

use Yii;
use yii\web\Controller;
use yii\web\Response;
/**
 * 基础控制器
 */
class BaseController extends Controller
{

    public $layout = '/backend';
    //关闭csrf
    public $enableCsrfValidation = false;

	public function init()
	{
		parent::init();
	}
	/**
	 * 组装成功的响应数据
	 * @param  [type]  $data [description]
	 * @param  integer $code [description]
	 * @return [type]        [description]
	 */
	public function sendSucc($data, $code = 200)
	{
		Yii::$app->response->format = Response::FORMAT_JSON;
		return [
			'code' => $code,
			'data' => $data,
		];
	}
	/**
	 * 组装失败的响应数据
	 * @param  [type]  $data [description]
	 * @param  string  $msg  [description]
	 * @param  integer $code [description]
	 * @return [type]        [description]
	 */
	public function sendError($msg = '', $data = [], $code = 400)
	{
		Yii::$app->response->format = Response::FORMAT_JSON;
		return [
			'code' => $code,
			'msg' => $msg,
			'data' => $data,
		];
	}
}
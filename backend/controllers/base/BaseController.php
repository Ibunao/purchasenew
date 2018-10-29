<?php

namespace backend\controllers\base;

use Yii;
use yii\web\Controller;

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
}
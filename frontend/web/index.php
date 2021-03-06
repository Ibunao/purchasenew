<?php
// error_reporting(E_ALL);
// ini_set('display_errors', '1');
// ini_set('open_basedir', '/');
defined('YII_DEBUG') or define('YII_DEBUG', true);
defined('YII_ENV') or define('YII_ENV', 'dev');
// echo "string";
require(__DIR__ . '/../../vendor/autoload.php');
// echo __DIR__ . '/../../vendor/autoload.php';exit;
require(__DIR__ . '/../../vendor/yiisoft/yii2/Yii.php');
require(__DIR__ . '/../../common/config/bootstrap.php');
require(__DIR__ . '/../config/bootstrap.php');

$config = yii\helpers\ArrayHelper::merge(
    require(__DIR__ . '/../../common/config/main.php'),
    // require(__DIR__ . '/../../common/config/main-local.php'),
    require(__DIR__ . '/../config/main.php')
    // require(__DIR__ . '/../config/main-local.php')
);
if (!YII_ENV_TEST) {
    // configuration adjustments for 'dev' environment
    $config['bootstrap'][] = 'debug';
    $config['modules']['debug'] = [
        'class' => 'yii\debug\Module',
        // 'allowedIPs' => ['128.128.1.76', '127.0.0.1', '::1', '128.128.2.160']
        'allowedIPs' => ['*']
    ];

    $config['bootstrap'][] = 'gii';
    $config['modules']['gii'] = [
        'class' => 'yii\gii\Module',
    ];
}
(new yii\web\Application($config))->run();
//全局设置默认分页
// \Yii::$container->set('yii\widgets\LinkPager', [
//     'maxButtonCount' => 5,
// ]);

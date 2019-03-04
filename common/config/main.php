<?php
// 设置本地还是生产数据库
$env = '-local';

$db = require(__DIR__ . "/db{$env}.php");
$config = require(__DIR__ . "/config{$env}.php");
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'timeZone' => 'Asia/Shanghai',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'db' => $db,
        'config' => $config,
        // rbac
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
        ],
    ],
];

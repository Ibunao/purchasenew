<?php
// 正式库
// $db = require(__DIR__ . '/db.php');
// 本地库
$db = require(__DIR__ . '/db-local.php');
// $db2 = require(__DIR__ . '/db2.php');
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'db' => $db,
        // 'db2' => $db2,
        // rbac
        'authManager' => [
            'class' => 'yii\rbac\DbManager',
        ],
    ],
];

<?php
// $db = require(__DIR__ . '/db.php');
// $db2 = require(__DIR__ . '/db2.php');
$db = require(__DIR__ . '/db-local.php');
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'db' => $db,
        // 'db2' => $db2,
    ],
];

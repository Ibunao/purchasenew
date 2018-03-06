<?php
$db = require(__DIR__ . '/db.php');
// $db = require(__DIR__ . '/db-local.php');
return [
    'vendorPath' => dirname(dirname(__DIR__)) . '/vendor',
    'components' => [
        'cache' => [
            'class' => 'yii\caching\FileCache',
        ],
        'db' => $db,
    ],
];

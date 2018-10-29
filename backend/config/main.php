<?php
$params = array_merge(
    require(__DIR__ . '/../../common/config/params.php'),
    // require(__DIR__ . '/../../common/config/params-local.php'),
    require(__DIR__ . '/params.php')
    // require(__DIR__ . '/params-local.php')
);

return [
    'id' => 'app-backend',
    'basePath' => dirname(__DIR__),
    // 配置成中文，配置这个后将会根据国际化功能把英文映射成对应的中文  
    'language' => 'zh-CN',  
    'defaultRoute' => 'user/login',
    'controllerNamespace' => 'backend\controllers',
    'bootstrap' => ['log'],
    'modules' => [
        'admin' => [
            'class' => 'mdm\admin\Module',
            'layout' => 'left-menu', // yii2-admin的导航菜单
        ]
    ],
    'components' => [
        'request' => [
            'csrfParam' => '_csrf-backend',
            'cookieValidationKey' => 'shiyue',
        ],
        'user' => [
            'identityClass' => 'backend\models\AdminUsers',
            'enableAutoLogin' => true,
            'identityCookie' => ['name' => '_identity-backend', 'httpOnly' => true],
        ],
        'session' => [
            // this is the name of the session cookie used for login on the backend
            'name' => 'advanced-backend',
        ],
        'log' => [
            'traceLevel' => YII_DEBUG ? 3 : 0,
            'targets' => [
                [
                    'class' => 'yii\log\FileTarget',
                    'levels' => ['error', 'warning'],
                ],
            ],
        ],
        'errorHandler' => [
            'errorAction' => 'site/error',
        ],

        'urlManager' => [
            'enablePrettyUrl' => true,
            'showScriptName' => false,
            'rules' => [
            ],
        ],

    ],
    // 为app注册行为 这个是检验用户是否有权限进行访问的
    'as access' => [
        'class' => 'mdm\admin\components\AccessControl',
        # 配置不检查权限的路由
        'allowActions' => [
            'site/*',
            'user/*',
            'admin/*', //允许所有人访问admin节点及其子节点
        ]
    ],
    'params' => $params,
];

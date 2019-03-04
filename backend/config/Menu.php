<?php 
namespace backend\config;

/**
* 目录
*/
class Menu
{
public static $aclList = 
[
	'/'=>
	[
	    'name'=>'目录',
	    'ctl'=>
	    [
	        [
	            'name'=>'订单统计',
	            'list_ctl'=>['porder','morder','cache','manage','product'],
	            'act'=>
	            [
	                'porder'=>
	                [
	                    'name'=>'商品订单汇总',
	                    'default_id'=>'index',
	                    'list_act'=>[
	                    	'index'=>'商品订单汇总',
	                    	'update'=>'订单编辑',
	                    	'delete'=>'删除订单'
	                	]
	            	],
	                'morder'=>
	                [
	                    'name'=>'客户订单汇总',
	                    'default_id'=>'index',
	                    'list_act'=>
	                    [
	                    	'index'=>'客户订单汇总',
	                    	'check'=>'订单编辑',
	                    	'delete'=>'删除订单',
	                    	'import'=>'订单导入'
	                    ]
	                ],

	                'manage'=>
	                [
	                    'name'=>'客户管理',
	                    'default_id'=>'index',
	                    'list_act'=>
	                    [
	                    	'index'=>'客户管理',
	                    	'add'=>'客户添加'
	                    ]
	                ],
	                'product'=>
	                [
	                    'name'=>'商品管理',
	                    'default_id'=>'index',
	                    'list_act'=>
	                    [
	                    	'index'=>'商品管理',
	                    	'add'=>'商品添加'
	                    ]
	                ],
	            ],

	        ],
	        [
	            'name'=>'项目管理',
	            'list_ctl'=>['config'],
	            'act'=>
	            [
	                'config'=>
	                [
	                    'name'=>'初始化配置',
	                    'default_id'=>'index',
	                    'list_act'=>[
	                    	'index'=>'配置详情',
	                	]
	            	],
	            	'oconfig'=>
	                [
	                    'name'=>'额外配置',
	                    'default_id'=>'index',
	                    'list_act'=>[
	                    	'cache'=>'配置详情',
	                	]
	            	],
	            	'admin'=>
	                [
	                    'name'=>'权限设置',
	                    'default_id'=>'user',
	                    'list_act'=>[
	                    	'cache'=>'配置详情',
	                	]
	            	],
	            ],
	        ]
	    ]
	],
];
}
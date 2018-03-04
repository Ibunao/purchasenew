<?php
return [
    'web_sites_title' => '十月妈咪秋冬订货会', //前后台台网站title

    'is_latest_price' => true, //复制订单时是否为最新价格 是最新价格：true  不是最新：false

    'update_customer_info' => true,  //是否允许修改用户资料  允许：true， 不允许：false
    'customer_include' => true, //用户批量导入 允许：true, 不允许 ：false
    'product_include' => true, //商品批量导入 允许：true, 不允许 ：false
    //客户类型
    'customer_type' => array(
        '直营' => '直营',
        '客户' => '客户',
    ),
    'purchase_oct' => '2017OCT春夏订货会', //OCT订货会名称
    'purchase_uki' => '2017Weekend春夏订货会', //Weekend订货会名称
    'purchase_all' => '2018春夏订货会', //AB订货会名称

    //需要清空缓存的地址
    'flush_cache_url' => array(
    	'http://128.128.1.74',
        'http://128.128.1.75',
        'http://128.128.1.79',
    ),


    //创建文件图片文件夹，为了更好的分类，每次订货会要更改
    'imagePath' => '/images/2018-03/',

    //订货会基础数据相关配置
    'season_one' => '1', //季节1ID ！【'1'(春) || '3'(秋)】
    'season_two' => '2', //季节2ID ！【'2'(夏) || '4'(冬)】
    'season_one_name' => '春', //季节1名称 【'春' || '秋'】
    'season_two_name' => '夏', //季节2名称 【'夏' || '冬'】
    'season_title' => '春夏',  //季节1、2 名称 【'春夏' || '秋冬'】
    
    //图片地址
    'img_url' => 'http://128.128.1.79', //正式环境请 取消注释
    //'img_url' => 'http://fair.st.octmami.com',//给app审核 正式上线请注释
    
    //大区
    'customer_area' => array(
        '1' => '京苏赣鄂渝',
        '2' => '沪宁闽',
        '3' => '华南',
        '4' => '浙江',
        '5' => '成都',
        '6' => '京津辽',
        '7' => '东北',
        '8' => '苏皖',
        '9' => '河南',
        '10' => '京津冀蒙',
        '11' => '浙沪',
        '12' => '西南',
        '13' => '山东',
        '14' => '西北',
        '15' => '意向客户',
    ),
    //部门类别
    'customer_department' => array(
        '1' => '直营直属',
        '2' => '直营托管',
        '3' => '加盟部',
    ),
    //负责人
    'customer_leader' => array(
        '1' => '曾畅',
        '2' => '陈凌',
        '3' => '代娇',
        '4' => '刁华琴',
        '5' => '董艳',
        '6' => '顾叶萍',
        '7' => '郭勇',
        '8' => '胡晓岚',
        '9' => '赖兰英',
        '10' => '李海燕',
        '11' => '陆赟',
        '12' => '吕勇',
        '13' => '唐艳',
        '14' => '汪琦俊',
        '15' => '王珏',
        '16' => '王永华',
        '17' => '意向客户',
        '18' => '张国萍',
        '19' => '张雅琴',
        '20' => '郑美芬',
        '21' => '周莹',
        '22' => '朱伟丽',
        '23' => '杨紫珺',
        '24' => '丁云珍',
        '25' => '李凤琼',
        '26' => '代皎',
        '27' => '陈喆',
        '28' => '缪辉宇',
        '29' => '李珊珊',
        '30' => '张爱民',
        '31' => '陆娣',
        '32' => '袁芬'
    ),
    //省份
    'customer_province' => array(
        '1' => '北京',
        '2' => '上海',
        '3' => '天津',
        '4' => '重庆',
        '5' => '广东',
        '6' => '江苏',
        '7' => '山东',
        '8' => '浙江',
        '9' => '河南',
        '10' => '河北',
        '11' => '辽宁',
        '12' => '四川',
        '13' => '湖北',
        '14' => '湖南',
        '15' => '福建',
        '16' => '安徽',
        '17' => '内蒙古',
        '18' => '陕西',
        '19' => '江西',
        '20' => '广西',
        '21' => '黑龙江',
        '22' => '吉林',
        '23' => '云南',
        '24' => '山西',
        '25' => '新疆',
        '26' => '贵州',
        '27' => '甘肃',
        '28' => '海南',
        '29' => '宁夏',
        '30' => '青海',
        '31' => '西藏',
        '32' => '香港',
        '33' => '澳门',
        '34' => '台湾',
        '35' => '意向客户',
    ),
    //同时属于AB订货会的订货会id
    'purchaseAB' => 3,
];

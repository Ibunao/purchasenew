frontend  前台项目  
backend	  后台项目  
api		  app接口  
## 重新开启一个订货会
每次创建新的数据库，导入AllTables.sql文件  

// 每次订货会要改params.php中的这三个数据，要保证用户导入
'purchase_oct' => '2017OCT春夏订货会', //OCT订货会名称
'purchase_uki' => '2017Weekend春夏订货会', //Weekend订货会名称
'purchase_all' => '2018春夏订货会', //AB订货会名称








商品关系
一个流水号serial_num下只能有只能有一种颜色



上线记得开启
PublicModel::flushCacheAll()


meet_order中的 `cost_item` 字段不再使用，而是用订单详情中的计算

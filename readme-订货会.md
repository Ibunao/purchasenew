frontend  前台项目  
backend	  后台项目  
api		  app接口  

<!-- 商品关系
一个流水号serial_num下只能有只能有一种颜色 -->

<!-- meet_order中的 `cost_item` 字段不再使用，而是用订单详情中的计算   -->

## 前台登陆页图片更换   
由于图片再css文件中，使用替换图片的方式  
替换位置 `frontend/web/images/pic_bg_login_03.jpg`

## 前台预定界面，不能选的是已下架商品  
商品下架同一款号没有下架完的，所有的都会显示，但是不能购买了  

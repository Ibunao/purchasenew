app接口

## login/BackgroundImage  
新：`login/background-image`  
登陆页面信息  
```
{
    "code": 200,
    "image": "http://128.128.1.65/themes/b2c/background-1708.webp",
    "btn_color": "#0b2440",
    "btn_font_color": "#ffffff",
    "btn_x": "0.399953",
    "btn_y": "0.460912"
}
```
## login/login
登陆页面  
```
# 登陆成功  
{
    "code": "200",
    "data": {
        "customer_id": "10000001",
        "purchase_id": "1",
        "name": "ceshi",
        "status": "active",
        "online": "no",
        "is_change_url": "no",
        "change_url": "http://128.128.1.79/api.php?r=api%@",
        "is_distribution": "no",
        "purchase_name": "2018OCT春夏订货会A",
        "is_spring_summer": "yes"
    }
}
```
## default/index  
登陆的首页  

## default/OrderThisProduct
新：default/order-this-product  
预定按钮

## default/OrderProduct
新：default/order-product
添加商品  

## default/CheckSubmit
新：default/check-submit
检查是否提交

## OrderListSheet
订单汇总页面

## OrderDetail
订单详情  

## SubmitOrder
提交订单

## CancelOrder
撤销订单  


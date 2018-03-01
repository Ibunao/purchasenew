<?php
return [
    //图片地址
    'img_url' => 'http://128.128.1.79', //正式环境请 取消注释
    //'img_url' => 'http://fair.st.octmami.com',//给app审核 正式上线请注释
    /*
     * 如果订货会开始, 要使用接口了,请设置 is_online = yes
     * 如果未上线,设置 is_online = no 此时接口地址为 http://fair.st.octmami.com/api.php?r=api%@
     * 如果is_online = yes 并且 is_change_url = no, 此时接口地址为 http://128.128.1.75/api.php?r=api%@
     * 如果is_online = yes 并且 is_change_url = yes,则此时读取【change_url】的地址
     */
    'is_online' => 'yes',
    /*
     * 如果接口地址有变化，
     * 请更改 [is_change_url] 为 yes
     * 并且把 [change_url] 更新最新的url地址即可
     */
    'is_change_url' => 'no', //接口地址是否更改
    'change_url' => 'http://128.128.1.79/api.php?r=api%@', //更改后的接口地址的url
    //app登录页面配置
    'background_images' => 'http://128.128.1.79/themes/b2c/weibo.webp',//app显示登陆的背景图片
    'app_login_btn_color' => '#d73d5b', //app登录按钮背景颜色
    'app_login_btn_font_color' => '#ffffff', //app登录按钮的字体颜色
    'app_login_frame_x' => '0.229548', //app登录框的x轴
    'app_login_frame_y' => '0.460912', //app登录框的y轴

    

];

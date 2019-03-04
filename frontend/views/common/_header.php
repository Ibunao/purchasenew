<?php 
use common\models\PurchaseModel;
 ?>
<header class="hd_header w100">
    <div class="header_logo fl">
        <img class="header_logo_img" src="<?='/images/pic_logo_top_01.png?v=2'; ?>">
    </div>
    <div class="header_title fl">
<?php
    $purchaseId = $this->context->purchaseId;
    echo PurchaseModel::getIdPurchase()[$purchaseId];

?></div>
    <div class="header_info fr">
        <span class="header_info_title">客户代码:</span>
        <span class="header_info_dt word_green"><?= Yii::$app->session['code'];?></span>
        <span class="header_info_title">客户名称:</span>
        <span class="header_info_dt word_green"><?= $this->context->username;?></span>
    </div>
</header>
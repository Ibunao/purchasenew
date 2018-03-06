<?php
$this->params['breadcrumbs'] = [
    ['label' => '商品管理'],
    ['label' => '商品管理'],
    ['label' => '检查结果'],
];
?>
<style>
    .info p{
        font-size: 15px;
    }
    .info p b{
        font-size: 18px;
        color: red;
    }
    .info span{
        padding-right: 20px;
    }
</style>
<div class="info">
    <h3>下面是错误的问题，请根据下面提示修改EXCEL文件后再试</h3>
    <a href="/product/import"><button class="btn btn-sm btn-danger">点我重试</button></a>
    <?php if($warning){  echo $warning;  } ?>
</div>
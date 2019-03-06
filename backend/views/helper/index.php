<?php 
use yii\bootstrap\Alert;
 ?>
 <?php 
echo Alert::widget([
   'options' => ['class' => 'alert-info'],
   'body' => Yii::$app->session->getFlash('purchase'),
]);
 ?>
<div>
	<h3>清除缓存</h3>
	<button type="button" class="btn btn-primary" onclick="clearCache()">清除所有缓存</button>
</div>
<div>
	<h3>查看缺少的图片</h3>
	<a href="/helper/image">下载缺少的图片</a>
</div>

<script>
	/**
	 * 清除缓存
	 * @return {[type]} [description]
	 */
	function clearCache() {
		$.get("/helper/cache", function(data, status){
			if(status == 'success'){
				if (data.code == 200) {
					alert("清除成功")
					return
				}
			}
			alert('失败')
		    console.log(data, status);
		});
	}
</script>
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
	<form action="/oconfig/purchase" method="post">
		<h3>配置订货会名称</h3>
		<?php foreach ($purchase as $key => $item): ?>
			<label>订货会<?=$item['purchase_id'] ;?>名称:</label><input style="width:50%" type="text" name="purchase[<?=$item['purchase_id'] ;?>]" value="<?=$item['purchase_name'] ;?>"><br/>
			
		<?php endforeach ?>
		<button type="submit" class="btn btn-primary">保存</button>
	</form>
</div>

<script>
	/**
	 * 清除缓存
	 * @return {[type]} [description]
	 */
	function clearCache() {
		$.get("/oconfig/cache", function(data, status){
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
<?php 

use common\models\ConfigModel;
use yii\bootstrap\Alert;
 ?>
<style type="text/css">
	.my-banner-primary{
		background-color: #337ab7;
		width: 30%;
		margin:1%;
		padding: 10px;
	}
	.my-banner-success{
		background-color: #5cb85c;
		width: 30%;
		margin:1%;
		padding: 10px;
	}
	.my-banner-info{
		background-color: #5bc0de;
		width: 30%;
		margin:1%;
		padding: 10px;
	}
	.my-banner-warning{
		background-color: #f0ad4e;
		width: 30%;
		margin:1%;
		padding: 10px;
	}
	.my-banner-danger{
		background-color: #d9534f;
		width: 30%;
		margin:1%;
		padding: 10px;
	}
	.float-left{
		float: left;
	}

</style>
<?php 
echo Alert::widget([
   'options' => ['class' => 'alert-info'],
   'body' => Yii::$app->session->getFlash('cache'),
]);
 ?>
<div class="container">
	<h2>配置数据库</h2>
	<div class="my-banner-danger float-left">
		<h3>创建新库</h3>
		<p>info:每次启动新的订货会需要重新创建数据库，创建的之前会对上一个数据库进行备份，之前的数据库会进行保留, 生成后项目将会使用新数据库(首次使用或更改数据库地址需要更新配置文件模板)(注意：请耐心等待创建结果)</p>
		<div>
		    <div class="input-group">
		      <input id="dbname" type="text" class="form-control" placeholder="输入数据库名" value="<?=$dbname ;?>">
		      <span class="input-group-btn">
		        <button class="btn btn-primary" style="border-width: 0px;" type="button" onclick="createDb()">Go!</button>
		      </span>
		    </div><!-- /input-group -->
		</div><!-- /.col-lg-6 -->
	</div>
	<div class="my-banner-success float-left">
		<h3>备份数据</h3>
		<p>info:备份当前数据库数据</p>
		<button type="button" class="btn btn-primary" onclick="backupDb()">开始备份</button>
		<h5>下载备份数据</h5>
		<a href="/backup/data/">下载地址</a>
	</div>
	<div style="clear: both;"></div>
	<span style="color: red;">当前数据库信息：<?=Yii::$app->db->dsn;?></span>
</div>
<div class="container">
	<h2>配置参数</h2>
	<div>
		<h3>项目名称</h3>
		<span style="color: red;">显示的项目名称，一般只改春夏、秋冬,用来记录每次订货会和数据库的对应关系</span><br>
		<label>修改项目名称:</label><input id="web-title" style="width:50%" type="text" name="web-title" value="<?=ConfigModel::getWebTitle() ;?>">
		<button type="button" class="btn btn-primary" onclick="updateWebTitle()">保存</button>
	</div>
	<div>
		<h3>图片相关</h3>
		<span style="color: red;">图片url正常是后台的地址</span><br>
		<label>图片url(通常是后台地址):</label><input id="img-url" style="width:50%;" type="text" name="img-url" value="<?=ConfigModel::getImgUrl() ;?>"><br/>
		<span style="color: red;">一般只用修改年月，为了每次订货会图片更好的分类</span><br>
		<label>图片存放路径(如：/images/2018-07/):</label><input id="img-path" style="width:50%" type="text" name="web-title" value="<?=ConfigModel::getImgPath() ;?>"><br/>
		<button type="button" class="btn btn-primary" onclick="updateImgInfo()">保存</button>
	</div>
	<div>
		<h3>季节</h3>
		<span style="color: red;">前台表格统计用到</span><br>
		<label>选择季节:</label>
		<select id='jijie' name="jijie">
		  <option value ="1">春夏</option>
		  <option value ="2">秋冬</option>
		</select>
		<button type="button" class="btn btn-primary" onclick="updateSeason()">保存</button>
	</div>
	<div>
		<form action="/config/cache-url" method="post">
		<h3>项目地址(用来清缓存)</h3>
		<span style="color: red;">参考格式：http://128.128.1.79</span><br>
		<?php foreach (ConfigModel::getAllCacheUrl() as $key => $value): ?>
			<label>地址<?=$key ;?>:</label><input style="width:50%" type="text" name="projectUrl[]" value="<?=$value ;?>"><br/>
			
		<?php endforeach ?>
		<label>地址(额外添加):</label><input style="width:50%" type="text" name="projectUrl[]" value=""><br/>
		<button type="submit" class="btn btn-primary">保存</button>
		</form>
	</div>
</div>
<script>
	/**
	 * 创建数据库
	 * @return {[type]} [description]
	 */
	function createDb() {
		var conf = confirm('确定创建新库？')
		var dbname = $('#dbname').val()
		if (conf == true) {
			$.get("/config/create-db?dbname="+dbname, function(data, status){
				if(status == 'success'){
					if (data.code == 200) {
						alert("创建成功，去查看吧")
						return
					}else{
						alert('创建失败，联系开发')
					}
				}
			    console.log(data, status);
			});
		}
	}
	/**
	 * 备份数据库
	 * @return {[type]} [description]
	 */
	function backupDb() {
		$.get("/config/backup-data", function(data, status){
			if(status == 'success'){
				if (data.code == 200) {
					alert("备份成功，去下载吧")
					return
				}else{
					alert('备份失败，联系开发')
				}
			}
		    console.log(data, status);
		});
	}
	/**
	 * 创建/更新网站title
	 * @return {[type]} [description]
	 */
	function updateWebTitle() {
		var title = $('#web-title').val()

		$.get("/config/update-title?title="+title, function(data, status){
			if(status == 'success'){
				if (data.code == 200) {
					alert("更新成功，去查看吧")
					return
				}else{
					alert('更新失败，联系开发')
				}
			}
		    console.log(data, status);
		});

	}
	/**
	 * 更新图片信息
	 * @return {[type]} [description]
	 */
	function updateImgInfo() {
		var url = $('#img-url').val()
		var path = $('#img-path').val()

		$.get("/config/update-img-info?url="+url+"&path="+path, function(data, status){
			if(status == 'success'){
				if (data.code == 200) {
					alert("更新成功，去查看吧")
					return
				}else{
					alert('更新失败，联系开发')
				}
			}
		    console.log(data, status);
		});
	}
	/**
	 * 选择季节
	 * @return {[type]} [description]
	 */
	function updateSeason() {
		var jijie = $('#jijie').val()
		$.get("/config/update-season?jijie="+jijie, function(data, status){
			if(status == 'success'){
				if (data.code == 200) {
					alert("更新成功，去查看吧")
					return
				}else{
					alert('更新失败，联系开发')
				}
			}
		    console.log(data, status);
		});
	}
</script>
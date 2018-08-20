<?php
namespace common\helpers;
/**
* 文件相关的操作
*/
class File
{

	/**
	 * 创建文件夹,可以创建多层
	 * @param  [type]  $dir  目录
	 * @param  integer $mode 文件夹模式
	 */
	static function mk_dir($dir, $mode = 0777)
	{
	    if (is_dir($dir) || mkdir($dir, $mode, true)) return true;
	} 

	/**
	 * 检查文件是否存在
	 * @param  string  $root 路径 如 /user/images/
	 * @param  array  $path 文件名数组
	 * @return [type]       [description]
	 */
	static function checkHas($root, $paths = [], $copy = false, $copyRoot = '')
	{
		$lack = [];
		foreach ($paths as $img) {
			$path = $root . $img;
			if (!file_exists($path)) {
				$lack[] = substr(strrchr($path, '/'), 1);
			}else{
				if ($copy) {
					copy($path, $copyRoot.$img);
				}
			}
		}
		return $lack;
	}
}
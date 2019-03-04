<?php
namespace common\helpers;
/**
 *
 * // dome  
 * // 下载的文件名
 * $filename = 'test.csv';
 * // title行
 * $titles = ['title1', 'title2'];
 * $data = [
 *     ['1a', '1b'], // 第一行
 *     ['2a', '2b'], // 第二行
 *     # 加前引号，表示字符串格式的数据  
 *     ["'".'123456789999.00', '1234567899990000000.00'],
 * ];
 *
 * SimpleCsv::exportCsv($titles, $data, $filename);
 * // 上传数据
 * // 上传文件的文件名
 * $filename = './test.csv';
 * var_dump(SimpleCsv::importCsv($filename));
 *
 * csv 格式可以突破excel行数的限制，而且速度也相对较快  
 * 缺点就是如果需要excel的其他操作需要另存为excel
 */
class SimpleCsv
{
    /**
     * 导出csv文件
     * @param  Array  $csv_header title行
     * @param  Array  $data       数据
     * @param  string $filename   文件名 以 .csv 结尾
     * @return [type]             [description]
     */
    public static function exportCsv(Array $csv_header, Array $data, $filename='')
    {
        $filename =$filename?$filename:date('Ymd').'.csv'; //设置文件名
        header("Content-type:text/csv");
        header("Content-Disposition:attachment;filename=".$filename);
        header('Cache-Control:must-revalidate,post-check=0,pre-check=0');
        header('Expires:0');
        header('Pragma:public');
        foreach ($csv_header as $k => $v) {
            $csv_header[$k] = iconv('utf-8','gb2312',$v);
        }
        echo implode(',', $csv_header) . "\n";
        $str = '';
        foreach($data as $v){
            foreach ($v as $key => $col){
                $v[$key] = iconv('utf-8','gb2312//IGNORE',$col);
            }
            $abc = implode(',',$v);
            $str .= $abc. "\n";
        }
        echo $str;
        flush();
    }
    /**
     * 导入csv
     * @param $file
     * @internal param $filename
     * @return array|bool
     */
    public static function importCsv($file)
    {
        $handle = fopen($file, 'r');
        $result = self::inputCsv($handle); //解析csv
        fclose($handle);                                                //关闭指针
        return $result;
    }
    /**
     * 处理导入数据
     * @param $handle 	fopen($file, 'r')
     * @return array
     */
    private static function inputCsv($handle) {
        $out = array ();
        $n = 0;
        while ($data = fgetcsv($handle)) {
            $num = count($data);
            for ($i = 0; $i < $num; $i++) {
                $out[$n][$i] = mb_convert_encoding($data[$i],'UTF-8','GBK');
            }
            $n++;
        }
        return $out;
    }
}
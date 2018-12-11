<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesSjAction extends CommonAction{
	//考核装修表详情
    public function zxf_xq(){
        $list  = M('zxf')->order('id')->select();
        $this->assign('list',$list);
        $this->adminDisplay();
    }

    //考核表保存
    public function zxf_save(){
        if(!empty($_FILES)){
            //上传表格并导入数据
            $config = array(
                'exts' => array('xlsx', 'xls'),
                'maxSize' => 0,
                'rootPath' => "./Public/",
                'savePath' => 'Uploads/',
                'subName' => array('date', 'Ymd'),
            );

            $upload = new \Think\Upload($config);

            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }
            M('zxf')->where("1=1")->delete();
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];
            $arr['name'] = $info['excel']['name'];
            $arr['path'] = $file_name;
            $arr['add_time'] = date('Y-m-d H:i:s',time());
            $arr['table_name'] = 'zxf';
            M('file')->add($arr);

            vendor("PHPExcel.PHPExcel");// 引入phpexcel插件

            $inputFileType = \PHPExcel_IOFactory::identify($file_name);
            $objReader = \PHPExcel_IOFactory::createReader($inputFileType);
            // $objReader->setReadDataOnly(true);
            $objPHPExcel = $objReader->load($file_name);
            $sheet = $objPHPExcel->getSheet(0);// 取得默认第一张工作表
            $highestColumn = $sheet->getHighestColumn(); // 取得总列数
            $colsNum= \PHPExcel_Cell::columnIndexFromString($highestColumn); // 获取总列数(数字)
            $highestRow = $sheet->getHighestRow(); // 取得总行数
            $field = array();
            for($i=0;$i<$colsNum;$i++){
                $tmp =  $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).'3')->getValue();
                if ($tmp){
                    $field[] = $tmp;
                }
            }
            $list = array();
            $h = 0;
            for($j=5;$j<$highestRow+1;$j++){
                for($i=0;$i<$colsNum;$i++){
                    $cell =  $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();
                    if(substr($cell,0,1) == '='){
                        $cell = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getOldCalculatedValue();
                    }
                    $list[$h][] = $cell;
                }
                $h++;
            }
            $b_field = M()->query("SELECT COLUMN_NAME,column_comment from information_schema.COLUMNS where table_name = 'stjy_zxf' and table_schema ='stjy' and COLUMN_NAME != 'id'");
            $new_field = array();
            //获得数据表所需要的字段
            foreach($b_field as $val){
                $new_field[ array_search($val['column_comment'],$field) ] = $val['column_name'];
            }
            foreach($list as $vo){
                if($vo['0']){
                    $data = array();
                    foreach($vo as $kk=>$vv){
                        $temp = $new_field[ $kk ];
                        if ($temp){
                            if ($temp == 'jiesuanyf' && $vv){
                                $vv = date('Y-m-d',\PHPExcel_Shared_Date::ExcelToPHP($cell[ $zhiduan[$j] ]));
                            }
                            $data[$temp] = $vv;
                        }
                    }
                    M('zxf')->add($data);
                }
            }
            $this->success('导入成功');
        }
    }

    //利润分成
    public function lrfp_xq(){
        $list  = M('lrfp')->order('id')->select();
        $this->assign('list',$list);
        $this->adminDisplay();
    }

    //利润分成导入
     public function lrfp_save(){
        if(!empty($_FILES)){
            //上传表格并导入数据
            $config = array(
                'exts' => array('xlsx', 'xls'),
                'maxSize' => 0,
                'rootPath' => "./Public/",
                'savePath' => 'Uploads/',
                'subName' => array('date', 'Ymd'),
            );

            $upload = new \Think\Upload($config);

            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }
            M('lrfp')->where("1=1")->delete();
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];
            $arr['name'] = $info['excel']['name'];
            $arr['path'] = $file_name;
            $arr['add_time'] = date('Y-m-d H:i:s',time());
            $arr['table_name'] = 'lrfp';
            M('file')->add($arr);

            vendor("PHPExcel.PHPExcel");// 引入phpexcel插件

            $inputFileType = \PHPExcel_IOFactory::identify($file_name);
            $objReader = \PHPExcel_IOFactory::createReader($inputFileType);
            // $objReader->setReadDataOnly(true);
            $objPHPExcel = $objReader->load($file_name);
            $sheet = $objPHPExcel->getSheet(0);// 取得默认第一张工作表
            $highestColumn = $sheet->getHighestColumn(); // 取得总列数
            $colsNum= \PHPExcel_Cell::columnIndexFromString($highestColumn); // 获取总列数(数字)
            $highestRow = $sheet->getHighestRow(); // 取得总行数
            //数据库
            $zw_field = array();
            $field = array();
            $sz_field = array();
            $b_field = M()->query("SELECT COLUMN_NAME,column_comment from information_schema.COLUMNS where table_name = 'stjy_lrfp' and table_schema ='stjy' and COLUMN_NAME != 'id'");
            $field = array();
            foreach($b_field as $vo){
                $field[] = $vo['column_name'];
                if (!in_array($vo['column_comment'],$zw_field)){
                    $zw_field[] = $vo['column_comment'];
                }
            }

            
            for($i=0;$i<$colsNum;$i++){
                $tmp =  $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).'3')->getValue();
                $tmps = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).'1')->getValue();
                if ($tmp && in_array($tmp,$zw_field)){
                    $sz_field[] = $i;
                }
                if ($tmps && in_array($tmps,$zw_field)){
                    $sz_field[] = $i;
                }
            }
            $sz_field = array_unique($sz_field);
            $list = array();
            $h = 0;
            for($j=4;$j<$highestRow+1;$j++){
                for($i=0;$i<$colsNum;$i++){
                    $cell =  $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();
                    if(substr($cell,0,1) == '='){
                        $cell = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getOldCalculatedValue();
                    }
                    if ($cell !== null && in_array($i,$sz_field)){
                        $list[$h][] = $cell;
                    }
                }
                $h++;
            }
            $tsp = array();
            foreach($list as $val){
                foreach($val as $k=>$v){
                    $tsp[ $field[$k] ] = $v;
                }
                M('lrfp')->add($tsp);            
            }
            $this->success('导入成功');
        }
    }

    //在读人数
    public function zdxs_xq(){
        $list  = M('zdxs')->order('id')->select();
        $this->assign('list',$list);
        $this->adminDisplay();
    }
    
    //利润分成导入
     public function zdxs_save(){
        if(!empty($_FILES)){
            //上传表格并导入数据
            $config = array(
                'exts' => array('xlsx', 'xls'),
                'maxSize' => 0,
                'rootPath' => "./Public/",
                'savePath' => 'Uploads/',
                'subName' => array('date', 'Ymd'),
            );

            $upload = new \Think\Upload($config);

            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }
            M('zdxs')->where("1=1")->delete();
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];
            $arr['name'] = $info['excel']['name'];
            $arr['path'] = $file_name;
            $arr['add_time'] = date('Y-m-d H:i:s',time());
            $arr['table_name'] = 'zdxs';
            M('file')->add($arr);

            vendor("PHPExcel.PHPExcel");// 引入phpexcel插件

            $inputFileType = \PHPExcel_IOFactory::identify($file_name);
            $objReader = \PHPExcel_IOFactory::createReader($inputFileType);
            // $objReader->setReadDataOnly(true);
            $objPHPExcel = $objReader->load($file_name);
            $sheet = $objPHPExcel->getSheet(0);// 取得默认第一张工作表
            $highestColumn = $sheet->getHighestColumn(); // 取得总列数
            $colsNum= \PHPExcel_Cell::columnIndexFromString($highestColumn); // 获取总列数(数字)
            $highestRow = $sheet->getHighestRow(); // 取得总行数
            //数据库
            $field = array();
            $b_field = M()->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_zdxs' and table_schema ='stjy' and COLUMN_NAME != 'id'");
            $field = array();
            foreach($b_field as $vo){
                $field[] = $vo['column_name'];
            }

            $list = array();
            $h = 0;
            for($j=4;$j<$highestRow+1;$j++){
                for($i=0;$i<$colsNum;$i++){
                    $cell =  $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();
                    if(substr($cell,0,1) == '='){
                        $cell = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getOldCalculatedValue();
                    }
                    $list[$h][] = $cell;
                }
                $h++;
            }
            $tsp = array();
            foreach($list as $val){
                foreach($val as $k=>$v){
                    if ($field[$k]){
                        $tsp[ $field[$k] ] = $v;
                    }
                }
                M('zdxs')->add($tsp);            
            }
            $this->success('导入成功');
        }
    }

}

?>
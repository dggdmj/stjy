<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesSjAction extends CommonAction{

    // 列表页
    public function wageList(){
        $username = $_SESSION['username'];
        $temp = M('admin')->where('username ="'.$username.'"')->find();
        $uid = $temp['id'];
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');
        $sid = session('sid');
        $school_id = explode(",",$sid);
        $map['sid'] = array('in',$school_id);// 查询条件

        $tid = $_GET['tid'];//获取表格类型id
        $map['_string'] ? $map['_string'] .= " and tid = ".$tid : $map['_string'] .= " tid = ".$tid;
        $data = M('qishu_history'); // 实例化对象
        $count = $data->join('LEFT JOIN stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.xuhao')->join('LEFT JOIN stjy_admin ON stjy_qishu_history.uid=stjy_admin.id')->join('LEFT JOIN stjy_school ON stjy_qishu_history.sid=stjy_school.id')->where($map)->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->join('LEFT JOIN stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.xuhao')->join('LEFT JOIN stjy_admin ON stjy_qishu_history.uid=stjy_admin.id')->join('LEFT JOIN stjy_school ON stjy_qishu_history.sid=stjy_school.id')->field('stjy_qishu_history.*,stjy_admin.nicename,stjy_school.name as school_name,stjy_school.id as sid,stjy_table_name.name,stjy_table_name.table_name')->where($map)->order('stjy_qishu_history.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('get',$_GET);
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('tid',$tid);
        $this->adminDisplay();
    }

    //导入页面
    public function wageImport(){
        $tid = $_GET['tid'];    //对应数据表的序号tabel_name
        $table_info = M("table_name")->where("xuhao = ".$tid)->find();// 表明
        $qishu = M('qishu')->where('isuse = 1')->order('id desc')->select();// 期数
        $school = M('school')->where('isuse = 1')->select();// 可用校区
        $temp = M('admin')->where('username ="'.$_SESSION['username'].'"')->find();
        // $suoshuxq = $temp['school_id'];// 操作人的所属校区
        $suoshuxq = session('sid');
        $nicename =  $temp['nicename'];// 操作人昵称
        $suoshuxq = explode(',', $suoshuxq);
        foreach($suoshuxq as $v){
            foreach($school as $v1){
                if($v1['id'] == $v){
                    $data[$v]=$v1['name'];
                }
            }
        }
        if(count($_GET)>1){
            $extra['qishu'] = $_GET['qishu'];
            $extra['sid'] = $_GET['sid'];
            $this->assign("extra",$extra);
        }
        $this->assign("table_info",$table_info);
        $this->assign("qishu",$qishu);
        $this->assign("school",$data);
        $this->assign('nicename',$nicename);
        $this->adminDisplay('import');
    }

	//考核装修表详情
    public function zxf_xq(){
        $list  = M('zxf')->order('id')->select();
        $this->assign('list',$list);
        $this->adminDisplay();
    }

    //考核表保存
    public function zxf_save(){
        if(!empty($_FILES)){

            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人
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
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

            $_POST["filename"] = $file_name;
            // 查询是否已经存在该表格的导入
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            $res = M('qishu_history')->where($where)->find();
            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }
            $qishu_id = M("qishu_history")->add($_POST);

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
            $b_field = M()->query("SELECT COLUMN_NAME,column_comment from information_schema.COLUMNS where table_name = 'stjy_zxf' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj'");
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
                    $data['suoshudd'] =  $qishu_id;
                    if($data['fenxiao']){
                        M('zxf')->add($data);
                    }
                }
            }
            $this->success('导入成功',U('/wagesSj/wageList/tid/41'));
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
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];
            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

            $_POST["filename"] = $file_name;
            // 查询是否已经存在该表格的导入
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            $res = M('qishu_history')->where($where)->find();
            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }
            $qishu_id = M("qishu_history")->add($_POST);

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
            $b_field = M()->query("SELECT COLUMN_NAME,column_comment from information_schema.COLUMNS where table_name = 'stjy_lrfp' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj'");
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
                $tsp['suoshudd'] = $qishu_id;
                if($tsp['fenxiao']){
                    M('lrfp')->add($tsp);        
                }    
            }
            $this->success('导入成功',U('/wagesSj/wageList/tid/42'));
        }
    }

    //在读人数
    public function zdxs_xq(){
        $list  = M('zdxs')->order('id')->select();
        $this->assign('list',$list);
        $this->adminDisplay();
    }
    
    //在读学生导入
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
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];
            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

            $_POST["filename"] = $file_name;
            // 查询是否已经存在该表格的导入
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            $res = M('qishu_history')->where($where)->find();
            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }
            $qishu_id = M("qishu_history")->add($_POST);

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
            $b_field = M()->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_zdxs' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj'");
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
                $tsp['suoshudd'] = $qishu_id;
                if ($tsp['zhongxin']){
                    M('zdxs')->add($tsp);    
                }            
            }
            $this->success('导入成功',U('/wagesSj/wageList/tid/43'));
        }
    }

    //考核装修表详情
    public function jxzz_xq(){
        $list  = M('jxzz')->order('id')->select();
        $this->assign('list',$list);
        $this->adminDisplay();
    }

    //在读学生导入
     public function jxzz_save(){
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
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];
            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

            $_POST["filename"] = $file_name;
            // 查询是否已经存在该表格的导入
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            $res = M('qishu_history')->where($where)->find();
            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }
            $qishu_id = M("qishu_history")->add($_POST);

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
            $b_field = M()->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_jxzz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj'");
            $field = array();
            foreach($b_field as $vo){
                $field[] = $vo['column_name'];
            }

            $list = array();
            $h = 0;
            for($j=2;$j<$highestRow+1;$j++){
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
                $tsp['suoshudd'] = $qishu_id;
                if ($tsp['jiaoxuezz']){
                    M('jxzz')->add($tsp);    
                }            
            }
            $this->success('导入成功',U('/wagesSj/wageList/tid/48'));
        }
    }

    //删除
    public function del(){
        $where['qishu'] = $_GET['qishu'];
        $where['sid'] = $_GET['sid'];
        $where['tid'] = $_GET['tid'];

        $suoshudd = M('qishu_history')->where($where)->getField('id');
        if ($suoshudd) {
            $table_name = M('table_name')->where(array('id'=>$where['tid']))->getField('table_name');
            M($table_name)->where(array('suoshudd'=>$suoshudd))->delete();
            M('qishu_history')->where(array('id'=>$suoshudd))->delete();
        }
        $result['status'] = 1;
        $result['info'] = '删除成功';
        $this->ajaxReturn($result);
    }

    //一对一补课增值台账
     public function ydybkzztz_save(){
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
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];
            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

            $_POST["filename"] = $file_name;
            // 查询是否已经存在该表格的导入
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            $res = M('qishu_history')->where($where)->find();
            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }
            $qishu_id = M("qishu_history")->add($_POST);

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
            $b_field = M()->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_ydybkzztz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj'");
            $field = array();
            foreach($b_field as $vo){
                $field[] = $vo['column_name'];
            }
            $list = array();
            $h = 0;
            for($j=3;$j<$highestRow+1;$j++){
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
                $tsp['suoshudd'] = $qishu_id;
                if ($tsp['laoshixm']){
                    $tsp['riqi'] = date('Y-m-d',\PHPExcel_Shared_Date::ExcelToPHP($tsp['riqi']));
                    M('ydybkzztz')->add($tsp);   
                }     
            }
            $this->success('导入成功',U('/wagesSj/wageList/tid/45'));
        }
    }

    //教务奖励台账
     public function jwjltz_save(){
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
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];
            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }
            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

            $_POST["filename"] = $file_name;
            // 查询是否已经存在该表格的导入
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            $res = M('qishu_history')->where($where)->find();
            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }
            $qishu_id = M("qishu_history")->add($_POST);

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
            $b_field = M()->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_jwjltz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj'");
            $field = array();
            foreach($b_field as $vo){
                $field[] = $vo['column_name'];
            }

            $list = array();
            $h = 0;
            for($j=3;$j<$highestRow+1;$j++){
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
                $tsp['suoshudd'] = $qishu_id;
                if ($tsp['jingduls']){
                    $tsp['shangjiaogprq'] = date('Y-m-d',\PHPExcel_Shared_Date::ExcelToPHP($tsp['shangjiaogprq']));
                    M('jwjltz')->add($tsp);    
                }        
            }
            $this->success('导入成功',U('/wagesSj/wageList/tid/46'));
        }
    }

    //一对一补课增值
    public function ydybkzztz_xq(){
        $list  = M('ydybkzztz')->order('id')->select();
        $this->assign('list',$list);
        $this->adminDisplay();
    }

    //教务奖励台账
    public function jwjltz_xq(){
        $list  = M('jwjltz')->order('id')->select();
        $this->assign('list',$list);
        $this->adminDisplay();
    }

}

?>
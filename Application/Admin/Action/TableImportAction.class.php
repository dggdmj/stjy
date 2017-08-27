<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class TableImportAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '校管家表格',
            'description' => ' 管理网站数据总表',
        ),
            'menu' => array(
                array(
                    'name' => '数据总表',
                    'url' => url('TableImport/index'),
                    'icon' => 'list',
                ),
                array(
                        'name' => '学员信息表导入',
                        'url' => U('/TableImport/tableList/tid/1'),
                    ),
                array(
                        'name' => '班级信息表导入',
                        'url' => U('/TableImport/tableList/tid/2'),
                    ),
                array(
                    'name' => '班级学员信息表导入',
                    'url' => U('/TableImport/tableList/tid/3'),
                ),
                array(
                    'name' => '收据记录表导入',
                    'url' => U('/TableImport/tableList/tid/4'),
                ),
                array(
                    'name' => '课消明细表导入',
                    'url' => U('/TableImport/tableList/tid/5'),
                ),
                array(
                    'name' => '开班明细表导入',
                    'url' => U('/TableImport/tableList/tid/6'),
                ),
                array(
                    'name' => '学员费用预警表导入',
                    'url' => U('/TableImport/tableList/tid/7'),
                ),
                array(
                    'name' => '学习卡额度表导入',
                    'url' => U('/TableImport/tableList/tid/14'),
                ),
            ),
           // 'add' => array(
           //     array('name' => '添加文章',
           //         'url' => url('Article/article'),
           //     ),
           // )
        );
        return $data;
    }

	//数据总表
	public function index(){
        // 获取当前用户的角色
        $username = $_SESSION['username'];
        $temp = M('admin')->where('username ="'.$username.'"')->find();
        $uid = $temp['id'];
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');
        $school_id = explode(",",$temp['school_id']);
        $map['sid'] = array('in',$school_id);// 查询条件
        $data = M('sjzb'); // 实例化对象
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!查询条件可能需要完善!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        // !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
        //  or $_SESSION['superadmin'] == true,若需要用admin查看数据,把这个加入到if里面
         // $where[''] =
        if($rid == 2 or $rid == 3){
            $count = $data->where($map)->count();// 查询满足要求的总记录数
        }

        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        if($rid == 2 or $rid == 3 or $_SESSION['superadmin'] == true){
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where($map)->select();
        }

        // 获取表明与序号对应的一维数组
        $arr = $this->getTabelnames();

        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('rid',$rid);// 赋值角色id
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

    // 列表页
    public function tableList(){
        $tid = $_GET['tid'];//获取表格类型id
        $data = M('qishu_history'); // 实例化对象
        $count = $data->where("tid = ".$tid)->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->join('LEFT JOIN stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.xuhao')->join('LEFT JOIN stjy_admin ON stjy_qishu_history.uid=stjy_admin.id')->join('LEFT JOIN stjy_school ON stjy_qishu_history.sid=stjy_school.id')->field('stjy_qishu_history.*,stjy_admin.nicename,stjy_school.name as school_name,stjy_school.id as sid,stjy_table_name.name,stjy_table_name.table_name')->where("tid = ".$tid)->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('tid',$tid);
        $this->adminDisplay();
    }

    // 详情页
    public function table_xq(){
        $id = $_GET['id'];// 订单id
        $tid = $_GET['tid'];// 表格类型id
        $tablename = M("table_name")->where("id = ".$tid)->getField("table_name");
        $list = M($tablename)->where("suoshudd = ".$id)->select();
        $filedname = array_flip($this->getcomment($tablename));
        $this->assign('list',$list);// 赋值数据集
        $this->assign('filedname',$filedname);// 赋值数据集
        $this->adminDisplay();
    }

	//数据表导入
	public function import(){
	    $tid = $_GET['tid'];    //对应数据表的序号tabel_name
        $table_info = M("table_name")->where("xuhao = ".$tid)->find();// 表明
        $qishu = M('qishu')->where('isuse = 1')->order('id desc')->select();// 期数
        $school = M('school')->where('isuse = 1')->select();// 可用校区
        $temp = M('admin')->where('username ="'.$_SESSION['username'].'"')->find();
        $suoshuxq = $temp['school_id'];// 操作人的所属校区
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
		$this->adminDisplay();
	}

	//返回数据表中以注释为键，字段名为值的数组,例如： ["姓名" => string(8) "xingming"]
    public function getcomment($table_name){
        $temp = M($table_name)->query("SHOW FULL COLUMNS FROM stjy_".$table_name);
        foreach($temp as $v){
            $field[]=$v['field'];
            $comment[]=$v['comment'];
        }
        return array_combine($comment,$field);
    }

    //数据导入
    public function dataUpload() {
        if (!empty($_FILES)) {
            $tablename = $_POST["table_name"];  //excel表对应的数据表的表名
            // $_POST['suoshufx'] = M('school')->where('id ='.$_POST['suoshufx'])->getField('name');//所属校区
            $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人
            $tid = $_POST["tid"];  //表名对应的序号
            $config = array(
                'exts' => array('xlsx', 'xls'),
                'maxSize' => 3145728,
                'rootPath' => "./Public/",
                'savePath' => 'Uploads/',
                'subName' => array('date', 'Ymd'),
            );
            $upload = new \Think\Upload($config);
            if (!$info = $upload->upload()) {
                $this->error($upload->getError());}

            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];
            //在qishu_history中增加
            $_POST["filename"] = $file_name;
            $where['tid'] = $_POST['tid'];
            $where['qishu'] = $_POST['qishu'];
            $where['sid'] = $_POST['sid'];
            $where2['qishu'] = $_POST['qishu'];
            $where2['sid'] = $_POST['sid'];
            $sjzb['qishu'] = $_POST['qishu'];
            $sjzb['sid'] = $_POST['sid'];
            $sjzb[$tablename] = 2;
            // 查询是否已经存在该表格的导入
            $res = M('qishu_history')->where($where)->find();
            // 查询数据总表是否有该期数和分校
            $res2 = M('sjzb')->where($where2)->find();
            // 若查询到无记录则添加,否则就更新数据
            if(empty($res2)){
                M('sjzb')->add($sjzb);
            }else{
                M('sjzb')->where($where2)->save($sjzb);
            }
            // 如果已经导入,则导入失败
            if(!empty($res)){
                unlink($file_name);// 删除excel文档
                $this->error('已经存在该表格,请删除后再导入');
            }
            $qishu_id = M("qishu_history")->add($_POST);

            $type = M('table_name')->where('id = '.$tid)->getField('type');// 获取表格类型

            vendor("PHPExcel.PHPExcel");
            $inputFileType = \PHPExcel_IOFactory::identify($file_name);
            $objReader = \PHPExcel_IOFactory::createReader($inputFileType);
            // $objReader->setReadDataOnly(true);
            $objPHPExcel = $objReader->load($file_name);
            $sheet = $objPHPExcel->getSheet(0);// 取得默认第一张工作表
            $highestRow = $sheet->getHighestRow(); // 取得总行数
            $highestColumn = $sheet->getHighestColumn(); // 取得总列数
            $colsNum= \PHPExcel_Cell::columnIndexFromString($highestColumn); // 获取总列数(数字)
            // 获取excel里面注释和字段名拼接的数组
            $newTemp = $this->getcomment($tablename);
            if($type == 1){ // 表类型为1的导入表第一行为字段,2行及之后为数据
                // 获取excel里面的所有字段
                for($i=0;$i<$colsNum;$i++){
                    $cell_val = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).'1')->getValue();
                    // 开始格式化
                    if(is_object($cell_val)){
                        $cell_val= $cell_val->__toString();
                    }
                    $ziduan[] = $cell_val;
                }
                // 从第2行开始,到最后一行
                for ($j = 2; $j <= $highestRow; $j++) {
                    for($i=0;$i<count($ziduan);$i++){
                        if(array_key_exists($ziduan[$i], $newTemp)){
                            $temp1 = $ziduan[$i];
                            $temp2 = $newTemp[$temp1];
                            $data[$temp2] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();
                            // 如果所得的值开头为=则为公式,用getOldCalculatedValue()函数取得公式的值
                            if(substr($data[$temp2],0,1) == '='){
                                $data[$temp2] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getOldCalculatedValue();
                            }
                        }
                        $data['suoshudd'] = $qishu_id;  //所属订单id
                        $data['daorusj'] = date('Y-m-d H:i:s');
                    }
                    M($tablename)->add($data);
                }
            }elseif($type == 3){ // 表类型为3的日常表第二行为字段,3行及之后的为数据
                // 获取excel里面的所有字段
                for($i=0;$i<$colsNum;$i++){
                    $cell_val=$objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).'2')->getValue();
                    // 开始格式化
                    if(is_object($cell_val)){
                        $cell_val= $cell_val->__toString();
                    }
                    $ziduan[] = $cell_val;
                }
                for ($j = 3; $j <= $highestRow; $j++) {
                    switch($tid){
                        // 如果是学员信息表的姓名为空的行就跳过
                        case 1:
                            $col = $objPHPExcel->getActiveSheet()->getCell('B'.$j)->getValue();
                        break;
                        // 如果是班级信息表的班级为空的行就跳过
                        case 2:
                            $col = $objPHPExcel->getActiveSheet()->getCell('A'.$j)->getValue();
                        break;
                        // 如果是班级学员信息表的姓名为空就跳过
                        case 3:
                            $col = $objPHPExcel->getActiveSheet()->getCell('H'.$j)->getValue();
                        break;
                        // 如果是收据记录表的收据号为空就跳过
                        case 4:
                            $col = $objPHPExcel->getActiveSheet()->getCell('B'.$j)->getValue();
                        break;
                        // 如果是课消明细表的姓名为空就跳过
                        case 5:
                            $col = $objPHPExcel->getActiveSheet()->getCell('B'.$j)->getValue();
                        break;
                        // 如果是开班明细表的班级名称为空就跳过
                        case 6:
                            $col = $objPHPExcel->getActiveSheet()->getCell('A'.$j)->getValue();
                        break;
                        // 如果是学员费用预警表的姓名为空就跳过
                        case 7:
                            $col = $objPHPExcel->getActiveSheet()->getCell('B'.$j)->getValue();
                        break;
                        // 如果表格是学习卡额度表(对应tid为14),果姓名为空的行就跳过
                        case 14:
                            $col = $objPHPExcel->getActiveSheet()->getCell('E'.$j)->getValue();
                        break;
                    }
                    if(empty($col)){
                        continue;
                    }
                    for($i=0;$i<count($ziduan);$i++){
                        if(array_key_exists($ziduan[$i], $newTemp)){
                            $temp1 = $ziduan[$i];
                            $temp2 = $newTemp[$temp1];
                            // 自动判断单元格是时间格式
                            $cell = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j);
                            $value = $cell->getValue();

                            // $cell->getCoordinate()当前单元格,如A1

                            // 自动识别单元格为日期格式
                            if($cell->getDataType()==\PHPExcel_Cell_DataType::TYPE_NUMERIC){
                                $cellstyleformat=$objPHPExcel->getActiveSheet()->getStyle( $cell->getCoordinate() )->getNumberFormat();
                                $formatcode=$cellstyleformat->getFormatCode();
                                if (preg_match('/^([$[A-Z]*-[0-9A-F]*])*[hmsdy]/i', $formatcode)) {
                                    $value=gmdate("Y-m-d", \PHPExcel_Shared_Date::ExcelToPHP($value));
                                }else{
                                    $value=\PHPExcel_Style_NumberFormat::toFormattedString($value,$formatcode);
                                }
                            }
                            $data[$temp2] = $value;
                            // $data[$temp2] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();


                            // 如果开头是'='的数据就是公式,使用getOldCalculatedValue()函数读取公式后的值
                            if(substr($data[$temp2],0,1) == '='){
                                $data[$temp2] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getOldCalculatedValue();
                            }

                            if($tid == 14){
                                if($i == 3 || $i == 5){
                                    // D和F列为日期格式数据,使用common控制器的excelTime函数读取正确的日期数据
                                    $data[$temp2] = $this->excelTime($data[$temp2]);
                                }
                            }

                        }
                        $data['suoshudd'] = $qishu_id;  //所属订单id
                        $data['daorusj'] = date('Y-m-d H:i:s');
                    }
                    M($tablename)->add($data);
                }

            }
            $this->success('导入成功！',__CONTROLLER__.'/index');//获得成功跳转的链接
        } else {
            $this->error("请选择上传的文件");
        }
    }

    //彻底删除
    public function del() {
        $id=(int)$_GET['id'];
        $tid = $_GET['tid'];
        $where['qishu'] = $_GET['qishu'];
        $where['sid'] = $_GET['sid'];
        $status_xz = M('sjzb')->where($where)->getField('status_xz');
        if($status_xz == 2){
            $arr['status'] = false;
            $arr['info'] = '表格已提交,删除失败';
            $this->ajaxReturn($arr);
        }
        $filename = M('qishu_history')->where('id ='.$id)->getField('filename');
        $tablename = M("table_name")->where("id = ".$tid)->getField("table_name");
        $temp[$tablename] = 1;
        $res1 = M($tablename)->where("suoshudd = ".$id)->delete();
        $res2 = M("qishu_history")->delete($id);
        if($res1 && $res2) {
            unlink($filename);
            M('sjzb')->where($where)->save($temp);
            // $this->success('删除成功');
            $arr['status'] = true;
            $arr['info'] = '删除成功';
            $this->ajaxReturn($arr);
        }else {
            // $this->error('删除失败');
            $arr['status'] = false;
            $arr['info'] = '删除失败';
            $this->ajaxReturn($arr);
        }
    }
}
?>

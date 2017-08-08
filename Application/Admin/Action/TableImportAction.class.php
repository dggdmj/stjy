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
        $uid = M('admin')->where('username ="'.$username.'"')->getField('id');
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');

        $data = M('sjzb'); // 实例化对象
        if($rid == 2){
            $count = $data->count();// 查询满足要求的总记录数
        }else if($rid == 4){
            $count = $data->where('status_cw is not null')->count();
        }else{
            $count = $data->where('status_fxfzr is not null')->count();
        }

        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        if($rid == 2){
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->select();
        }else if($rid == 4){
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where('stjy_sjzb.status_cw is not null')->select();
        }else{
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where('stjy_sjzb.status_fxfzr is not null')->select();
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
        $list = $data->join('stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.id')->join('stjy_admin ON stjy_qishu_history.uid=stjy_admin.id')->join('stjy_school ON stjy_qishu_history.sid=stjy_school.id')->field('stjy_qishu_history.*,stjy_admin.nicename,stjy_school.name as school_name,stjy_table_name.name,stjy_table_name.table_name')->where("tid = ".$tid)->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        foreach ($list as $k=>$v){
            $list[$k]['name'] = M("table_name")->where("table_name = '".$v['table_name']."'")->getField("name");
        }
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
        $suoshuxq = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('school_id');// 操作人的所属校区
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
            $_POST['uid'] = M('admin')->where('username ="'.$_POST['caozuoren'].'"')->getField('id');//操作人
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
            vendor("PHPExcel.PHPExcel");
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

            $inputFileType = \PHPExcel_IOFactory::identify($file_name);
            $objReader = \PHPExcel_IOFactory::createReader($inputFileType);
            $objReader->setReadDataOnly(true);
            $objPHPExcel = $objReader->load($file_name);
            $sheet = $objPHPExcel->getSheet(0);
            $highestRow = $sheet->getHighestRow(); // 取得总行数
            $highestColumn = $sheet->getHighestColumn(); // 取得总列数
            $colsNum= \PHPExcel_Cell::columnIndexFromString($highestColumn); // 获取总列数(数字)
            // 获取excel里面的所有字段
            for($i=0;$i<$colsNum;$i++){
                $ziduan[]=$objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).'1')->getValue();
            }
            // 获取excel里面注释和字段名拼接的数组
            $newTemp = $this->getcomment($tablename);

            for($i=0;$i<count($ziduan);$i++){
                if(array_key_exists($ziduan[$i], $newTemp)){//查询excel表里面的字段是否存在于数据库中
                    $temp1 = $ziduan[$i];
                    $temp2 = $newTemp[$temp1];
                    $data[$temp2] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).'2')->getValue();
                }
            }
            for ($j = 2; $j <= $highestRow; $j++) {
                for($i=0;$i<count($ziduan);$i++){
                    if(array_key_exists($ziduan[$i], $newTemp)){
                        $temp1 = $ziduan[$i];
                        $temp2 = $newTemp[$temp1];
                        $data[$temp2] = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).$j)->getValue();
                    }
                    $data['suoshudd'] = $qishu_id;  //所属订单id
                    $data['daorusj'] = date('Y-m-d H:i:s');
                }
                M($tablename)->add($data);
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
        $filename = M('qishu_history')->where('id ='.$id)->getField('filename');
        $tablename = M("table_name")->where("id = ".$tid)->getField("table_name");
        $res1 = M($tablename)->where("suoshudd = ".$id)->delete();
        $res2 = M("qishu_history")->delete($id);
        if($res1 && $res2) {
            unlink($filename);
            $this->success('删除成功');
        }else {
            $this->error('删除失败');
        }
    }

    // ---------------------数据总表操作---------------------
    // 下载表格
    public function download(){
        $data = M('qishu_history')->join('stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.id')->join('stjy_school ON stjy_qishu_history.sid=stjy_school.id')->field('stjy_qishu_history.*,stjy_school.name as school_name,stjy_table_name.name')->where($_GET)->find();
        $file = $data['filename'];
        $filename = $data['qishu'].'-'.$data['school_name'].'-'.$data['name'];
        if (file_exists($file)) {
            header('Content-Description: File Transfer');
            header('Content-Type: application/octet-stream');
            header('Content-Disposition: attachment; filename='.$filename.'.xls');
            header('Content-Transfer-Encoding: binary');
            header('Expires: 0');
            header('Cache-Control: must-revalidate');
            header('Pragma: public');
            header('Content-Length: ' . filesize($file));
            ob_clean();
            flush();
            readfile($file);
            exit;
        }
    }

    // 通知财务
    public function tzcw(){
        $tablenames = $this->getTabelnames();// 获取序号和表明对应的一维数组
        $field = implode(',',$tablenames);// 组成筛选条件
        $data = M('sjzb')->field($field)->where($_GET)->find();// 获取表格导入情况
        // 若所有表格导入再进行操作
        $count = 0;
        $i = 1;
        foreach($data as $v){
           $count += $v[$tabelnames[$i]];
           $i++;
        }
        if($count == 14){
            $temp['status_xz'] = 2;
            $temp['status_cw'] = 1;
            $temp['xingzheng'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            M('sjzb')->where($_GET)->save($temp);
            $this->success('通知成功');
        }else{
            $this->error('请导入所有表格后再通知财务');
        }
    }

    // 退回行政
    public function thxz(){
        $temp['status_xz'] = 3;
        $temp['status_cw'] = null;
        M('sjzb')->where($_GET)->save($temp);
        $this->success('退回行政操作成功');
    }

    // 财务通过审核
    public function cwtgsh(){
        $temp['status_cw'] = 2;
        $temp['status_fxfzr'] = 1;
        $temp['caiwu'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
        M('sjzb')->where($_GET)->save($temp);
        $this->success('通过审核操作成功');
    }

}
?>

<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class ZijinAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
    	$this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '资金管理',
            'description' => '资金管理',
        ),
            // 'menu' => array(
            //     array('name' => '人事列表',
            //         'url' => url('Renshi/renshi'),
            //         'icon' => 'list',
            //     ),
                
            // ),
            // 'add' => array(
            //     array('name' => '添加人事',
            //         'url' => url('Renshi/renshi_add'),
            //     ),
            // ),
        );
        return $data;
    }

    public function index(){
        // echo '这是首页';
        $this->adminDisplay();
    }

    // 列表页
    public function tableList(){
        $username = $_SESSION['username'];
        $temp = M('admin')->where('username ="'.$username.'"')->find();
        $uid = $temp['id'];
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');
        $school_id = explode(",",$temp['school_id']);
        $map['sid'] = array('in',$school_id);// 查询条件

        $tid = $_GET['tid'];//获取表格类型id
        $data = M('qishu_history'); // 实例化对象
        $count = $data->where($map)->where("tid = ".$tid)->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->join('LEFT JOIN stjy_table_name ON stjy_qishu_history.tid=stjy_table_name.xuhao')->join('LEFT JOIN stjy_admin ON stjy_qishu_history.uid=stjy_admin.id')->join('LEFT JOIN stjy_school ON stjy_qishu_history.sid=stjy_school.id')->field('stjy_qishu_history.*,stjy_admin.nicename,stjy_school.name as school_name,stjy_school.id as sid,stjy_table_name.name,stjy_table_name.table_name')->where($map)->where("tid = ".$tid)->order('stjy_qishu_history.qishu desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('tid',$tid);
        $this->adminDisplay();
    }

    //数据表导入
	public function import(){
	    $tid = $_GET['tid'];    //对应数据表的序号tabel_name
        $table_info = M("table_name")->where("xuhao = ".$tid)->find();// 表名
        $qishu = M('qishu')->where('isuse = 1')->order('id desc')->select();// 可用期数
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

    public function dataUpload() {
        if (!empty($_FILES)) {
            dump($_FILES);die;
        }
    }

    //数据导入
    // public function dataUpload() {
    //     if (!empty($_FILES)) {
    //         dump($_FILES);die;
    //         $name = explode('.',$_FILES['excel']['name'])[0];// 获取上传excel文档的文档名
            
    //         $tablename = $_POST["table_name"];  //excel表对应的数据表的表名
    //         // dump($tablename);die;
    //         // 获取对应数据库里面注释(与excel字段相同)和字段名拼接的数组
    //         $newTemp = $this->getComment($tablename);// 如['学号'=>'xuehao',...]
    //         // dump($newTemp);die;
    //         $tablenames = $this->getTabelnames(2,[1,3,4]);// common控制器的方法,默认获取表明首字母拼音,2获取中文名
            
    //         $tid = $_POST["tid"];  //表名对应的序号

    //         $num = count(explode(explode('表',$tablenames[$tid])[0],$name));// 判断上传表格是否正确的条件,如果上传表名含有需要上传表格名的关键字段,即num>=2,若<2就是非正确的上传表名

    //         // $_POST['suoshufx'] = M('school')->where('id ='.$_POST['suoshufx'])->getField('name');//所属校区
    //         $_POST['uid'] = M('admin')->where('nicename ="'.$_POST['caozuoren'].'"')->getField('id');//操作人

    //         $config = array(
    //             'exts' => array('xlsx', 'xls'),
    //             'maxSize' => 3145728,
    //             'rootPath' => "./Public/",
    //             'savePath' => 'Uploads/',
    //             'subName' => array('date', 'Ymd'),
    //         );

    //         $upload = new \Think\Upload($config);
    //         $upload->autoSub = false;
    //         if (!$info = $upload->upload()) {
    //             $this->error($upload->getError());
    //         }

    //         $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

    //         // dump($num);
    //         // 判断上传的表格是否正确
    //         if($num < 2){
    //             unlink($file_name);// 删除excel文档
    //             $this->error('上传失败,请检查上传的文档是否正确');
    //         }

    //         if($_POST['tid'] == 3){
    //             $res_xyxxb = M('qishu_history')->where('qishu ='.$_POST['qishu'].' and sid ='.$_POST['sid'].' and tid=1')->find();
    //             if(empty($res_xyxxb)){
    //                 unlink($file_name);// 删除excel文档
    //                 $this->error('请先上传学员信息表后再上传班级学员信息表');
    //             }
    //         }

    //         // dump($tablename);die;

    //         //在qishu_history中增加
    //         $_POST["filename"] = $file_name;
    //         $where['tid'] = $_POST['tid'];
    //         $where['qishu'] = $_POST['qishu'];
    //         $where['sid'] = $_POST['sid'];
    //         $where2['qishu'] = $_POST['qishu'];
    //         $where2['sid'] = $_POST['sid'];
    //         $sjzb['qishu'] = $_POST['qishu'];
    //         $sjzb['sid'] = $_POST['sid'];
    //         $sjzb[$tablename] = 2;
    //         // 查询是否已经存在该表格的导入
    //         $res = M('qishu_history')->where($where)->find();
    //         // 查询数据总表是否有该期数和分校
    //         $res2 = M('sjzb')->where($where2)->find();
    //         // 若查询到无记录则添加,否则就更新数据
    //         if(empty($res2)){
    //             M('sjzb')->add($sjzb);
    //         }else{
    //             M('sjzb')->where($where2)->save($sjzb);
    //         }
    //         // 如果已经导入,则导入失败
    //         if(!empty($res)){
    //             unlink($file_name);// 删除excel文档
    //             $this->error('已经存在该表格,请删除后再导入');
    //         }
    //         $qishu_id = M("qishu_history")->add($_POST);

    //         // excel文档超大对应设置
    //         if($_FILES['excel']['size']>307200){
    //             ini_set('memory_limit', '512M');
    //         }



    //         vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
    //         $inputFileType = \PHPExcel_IOFactory::identify($file_name);
    //         $objReader = \PHPExcel_IOFactory::createReader($inputFileType);
    //         // $objReader->setReadDataOnly(true);
    //         $objPHPExcel = $objReader->load($file_name);
    //         $sheet = $objPHPExcel->getSheet(0);// 取得默认第一张工作表
    //         $highestRow = $sheet->getHighestRow(); // 取得最高行数,则总行数
    //         $highestColumn = $sheet->getHighestColumn(); // 取得最高列数,则总列数(英文)
    //         $colsNum= \PHPExcel_Cell::columnIndexFromString($highestColumn); // 获取总列数(数字)

    //         if($tid == 15){
    //             $excel_data = $this->getExcelData2($objPHPExcel,$highestRow,$colsNum,$qishu_id);
    //         }else{
    //             // 获取excel里面的所有字段
    //             $ziduan = $this->getExcelZiduan($objPHPExcel,$colsNum);
    //             // 检测必须列
    //             $cha = $this->checkBixu($tablename,$ziduan);
                
    //             if(!empty($cha)){
    //                 $notice = implode(',',$cha);

    //                 // 删除数据总表和期数的记录
    //                 // --------------删除操作执行开始--------------
    //                 M("qishu_history")->where("id = ".$qishu_id)->delete();// 从qishu_history删除记录
    //                 unset($where);
    //                 $where['qishu'] = $_POST['qishu'];// 期数
    //                 $where['sid'] = $_POST['sid'];// 学校id
    //                 // 对应数据总表的该字段状态改为1,就是未导入
    //                 $temp[$tablename] = 1;
    //                 M('sjzb')->where($where)->save($temp);
    //                 unlink($file_name);// 删除存放的excel表
    //                 // --------------删除操作执行结束--------------
    //                 $this->error('缺少必须列'.$notice);
    //             }
    //             // dump($cha);die;
    //             // 获取excel里面除字段以外的数据
    //             $excel_data = $this->getExcelData($objPHPExcel,$highestRow,$tid,$qishu_id,$ziduan,$newTemp);
    //         }
    //         // dump($excel_data);
    //         // die;
    //         // 将获取数组插入到数据库相应的表里面
    //         // $res = M($tablename)->addAll($excel_data);
    //         foreach($excel_data as $v){
    //             M($tablename)->add($v);
    //         }

    //         // 位置不能移动,要等班级学员信息表执行完才有其$id_bjxyxxb
    //         // 校验导入表格
    //         // *****完成之后要加删除原导入数据
    //         switch ($_POST['tid']) {
    //             case 1:
    //                 $res = $this->checkXyxxb($_POST);
    //                 if($res == 'error'){
    //                     return 'error';
    //                 }
    //             break;
    //             case 2:
    //                 $res = $this->checkBjxxb($_POST);
    //                 if($res == 'error'){
    //                     return 'error';
    //                 }
    //             break;
    //             case 3:
    //                 $res = $this->checkBjxyxxb($_POST);
    //                 if($res == 'error'){
    //                     return 'error';
    //                 }
    //             break;
    //             case 4:
    //                 $res = $this->checkSjjlb($_POST);
    //                 if($res == 'error'){
    //                     return 'error';
    //                 }
    //             break;
                
    //         }

    //         $this->success('导入成功！',__CONTROLLER__.'/index');//获得成功跳转的链接
    //     }else{
    //         $this->error("请选择上传的文件");
    //     }
    // }

}
?>

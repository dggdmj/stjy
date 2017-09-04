<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class SettingAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
    	$this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '网站设置',
            'description' => '网站设置',
        ),
            'menu' => array(
                array('name' => '校区列表',
                    'url' => url('Setting/school'),
                    'icon' => 'list',
                ),
                array('name' => '部门列表',
                    'url' => url('Setting/department'),
                    'icon' => 'list',
                ),
                array('name' => '期数列表',
                    'url' => url('Setting/qishu'),
                    'icon' => 'list',
                ),
                array('name' => '人事列表',
                    'url' => url('Setting/renshi'),
                    'icon' => 'list',
                ),
                array('name' => '班级编码',
                    'url' => url('Setting/banjibianhao'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加校区',
                    'url' => url('Setting/school_add'),
                ),
                array('name' => '添加部门',
                    'url' => url('Setting/department_add'),
                ),
                array('name' => '添加期数',
                    'url' => url('Setting/qishu_add'),
                ),
                array('name' => '添加人事',
                    'url' => url('Setting/renshi_add'),
                ),
            ),
        );
        return $data;
    }

	//校区列表页
	public function school(){
		$data = M('school'); // 实例化对象
		$list = $data->order('id desc')->select();
		$this->assign('list',$list);// 赋值数据集
		$this->adminDisplay();
	}

	//添加校区页面
	public function school_add(){
		$this->adminDisplay();
	}

    //添加校区
    public function addSchool(){
        if(empty($_GET['id'])) {
            if($bid=M('school')->add($_POST)) {
                $this->success('添加成功',U('School'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('school')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('School'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改校区
    public function editSchool() {
        $id = $_GET['id'];
        $this->list=D('School')->where(array('id'=>$id))->find();
        $this->adminDisplay('school_add');
    }

    //部门列表页
    public function department(){
        $data = M('department'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加校区页面
    public function department_add(){
        $this->adminDisplay();
    }

    //添加校区
    public function addDepartment(){
        if(empty($_GET['id'])) {
            if($bid=M('department')->add($_POST)) {
                $this->success('添加成功',U('Department'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('department')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('Department'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改校区
    public function editDepartment() {
        $id = $_GET['id'];
        $this->list=D('department')->where(array('id'=>$id))->find();
        $this->adminDisplay('department_add');
    }

    //期数列表页
    public function qishu(){
        $data = M('qishu'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加期数页面
    public function qishu_add(){
        $this->adminDisplay();
    }

    //添加期数
    public function addQishu(){
        if(empty($_GET['id'])) {
            if($bid=M('qishu')->add($_POST)) {
                $this->success('添加成功',U('qishu'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('qishu')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('qishu'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改期数
    public function editQishu() {
        $id = $_GET['id'];
        $this->list=D('qishu')->where(array('id'=>$id))->find();
        $this->adminDisplay('qishu_add');
    }

    //人事列表页
    public function renshi(){
        $data = M('renshi'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加人士页面
    public function renshi_add(){
        $school = M('school')->where('isuse = 1')->select();
        $this->assign('school',$school);
        $this->adminDisplay();
    }

    //添加人士
    public function addRenshi(){
        // $bitian = array('xingming'=>'姓名','zhiwu'=>'职务','leixing'=>'类型','xiaoqu'=>'校区','bumen'=>'部门','chushengrq'=>'出生日期','diyixl'=>'第一学历','diyixlyx'=>'第一学历院校','zuigaoxl'=>'最高学历','zuigaoxlyx'=>'最高学历院校','ruzhirq'=>'入职日期','hetongkssj'=>'合同开始时间','hetongdqsj'=>'合同到期时间');// 所有必填项目
        // foreach($bitian as $k=>$v){
        //     if(empty($_POST[$k])){
        //         $err[] = $v;
        //     }
        // }
        // if(!empty($err)){
        //     $notice = implode(',',$err);
        //     $this->error($notice.'没有填写');
        // }

        if(empty($_GET['id'])) {
            if($bid=M('renshi')->add($_POST)) {
                $this->success('添加成功',U('renshi'));
            } else {
                $this->error('添加失败');
            }
        }else {
            $bid=$_GET['id'];
            if(M('renshi')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('renshi'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改人士
    public function editRenshi() {
        $id = $_GET['id'];
        $this->list=D('renshi')->where(array('id'=>$id))->find();
        $this->adminDisplay('renshi_add');
        // view未套数据
    }

    //彻底删除
    public function delete() {
        $id=(int)$_GET['id'];
        $tablename = $_GET['table'];
        if(M($tablename)->delete($id)) {
            $this->success('删除成功');
        }else {
            $this->error('删除失败');
        }
    }

    //班级编号管理
    public function banjibianhao(){
        $res = M()->query("SELECT COLUMN_NAME,COLUMN_COMMENT FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = 'stjy_banjibianhao' AND TABLE_SCHEMA = 'stjy'");
        $fields = array();
        foreach ($res as $k=>$v){
            $fields[$v["column_name"]] = $v["column_comment"];
        }
        $list = M("banjibianhao")->select();
        $this->assign("list",$list);
        $this->assign("fields",$fields);
        $this->adminDisplay("banjibianhao");
    }

    //班级编号管理导入
    public function banjibianhao_import(){
        if (!empty($_FILES)) {
            M('banjibianhao')->where("1 = 1")->delete();// 清空班级编码表的数据
            $newTemp = $this->getComment('banjibianhao');// 获得班级编号表字段和备注一一对应的数组
            dump($newTemp);
            //上传表格并导入数据
            $config = array(
                'exts' => array('xlsx', 'xls'),
                'maxSize' => 3145728,
                'rootPath' => "./Public/",
                'savePath' => 'Uploads/',
                'subName' => array('date', 'Ymd'),
            );

            $upload = new \Think\Upload($config);

            if (!$info = $upload->upload()) {
                $this->error($upload->getError());
            }

            $file_name=$upload->rootPath.$info['excel']['savepath'].$info['excel']['savename'];

            vendor("PHPExcel.PHPExcel");// 引入phpexcel插件
            $inputFileType = \PHPExcel_IOFactory::identify($file_name);
            $objReader = \PHPExcel_IOFactory::createReader($inputFileType);
            // $objReader->setReadDataOnly(true);
            $objPHPExcel = $objReader->load($file_name);
            $sheet = $objPHPExcel->getSheet(0);// 取得默认第一张工作表
            $highestRow = $sheet->getHighestRow(); // 取得总行数
            $highestColumn = $sheet->getHighestColumn(); // 取得总列数
            $colsNum= \PHPExcel_Cell::columnIndexFromString($highestColumn); // 获取总列数(数字)

            // 获取excel里面的所有字段
            for($i=0;$i<$colsNum;$i++){// 从第一行获取所有字段
                $cell_val = $objPHPExcel->getActiveSheet()->getCell(\PHPExcel_Cell::stringFromColumnIndex($i).'1')->getValue();

                // 如果取出的obj,则转为string
                if(is_object($cell_val)){
                    $cell_val= $cell_val->__toString();
                }
                // echo $cell_val.'<br>';
                $ziduan[] = $cell_val;
            }
            dump($ziduan);
            // 从第2行开始,到最后一行
            for($j=2;$j<=$highestRow;$j++){
                for($i=0;$i<count($ziduan);$i++){
                    if(array_key_exists($ziduan[$i], $newTemp)){
                        $temp1 = $ziduan[$i];// 字段名称
                        $temp2 = $newTemp[$temp1];// 数组newTemp里面字段名称对应的拼音,则数据库对应表的字段名称

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
                    }
                }
                // dump($data);
                // die;
                M('banjibianhao')->add($data);
            }
            $this->success('导入成功！');//获得成功跳转的链接

            // dump($newTemp);die;
        }else{
            $this->error('请先上传文件');
        }
    }

    //班级编号管理清空
    public function banjibianhao_delete(){
        if(M('banjibianhao')->where("1 = 1")->delete()) {
            $this->success('删除成功');
        }else {
            $this->error('删除失败');
        }
    }
}
?>

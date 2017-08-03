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
                array('name' => '数据总表',
                    'url' => url('TableImport/index'),
                    'icon' => 'list',
                ),
            ),
//            'add' => array(
//                array('name' => '添加文章',
//                    'url' => url('Article/article'),
//                ),
//            )
        );
        return $data;
    }

	//列表页
	public function index(){
        $data = M('qishu_history'); // 实例化对象
        $count = $data->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        foreach ($list as $k=>$v){
            $list[$k]['name'] = M("table_name")->where("table_name = '".$v['table_name']."'")->getField("name");
        }
        $tableList = array('xyxxb'=>'学员信息表','bjxxb'=>'班级信息表','bjxyxxb'=>'班级学员信息表','sjjlb'=>'收据记录表','kxmxb'=>'课消明细表','kbmxb'=>'开班明细表','xyfyyjb'=>'学员费用预警表','scyjb'=>'市场业绩表');
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('tableList',$tableList);
        $this->adminDisplay();
	}

    // 列表页
    public function tableList(){
        $tid = $_GET['tid'];
        $data = M('qishu_history'); // 实例化对象
        $count = $data->where("tid = ".$tid)->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->where("tid = ".$tid)->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
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
        $id = $_GET['id'];
        $tid = $_GET['tid'];
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
        $table_info = M("table_name")->where("xuhao = ".$tid)->find();

        $this->assign("table_info",$table_info);
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
                if(array_key_exists($ziduan[$i], $newTemp)){
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
            $this->success('导入成功！',__CONTROLLER__.'/tableList/tid/'.$tid);//获得成功跳转的链接
        } else {
            $this->error("请选择上传的文件");
        }
    }


    //彻底删除
    public function delete() {
        $id=(int)$_GET['id'];
        $tid = $_GET['tid'];
        $tablename = M("table_name")->where("id = ".$tid)->getField("table_name");
        $res1 = M($tablename)->where("suoshudd = ".$id)->delete();
        $res2 = M("qishu_history")->delete($id);
        if($res1 && $res2) {
            $this->success('删除成功');
        }else {
            $this->error('删除失败');
        }
    }
}
?>

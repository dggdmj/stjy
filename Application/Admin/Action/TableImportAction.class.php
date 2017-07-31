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

	//文章列表页
	public function index(){
        echo "建设中。。";die;
		$data = M('article'); // 实例化Article对象
		$count = $data->where('del = 0')->count();// 查询满足要求的总记录数
		$Page = new \Think\Page($count,C('PAGE_NUM'));// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$show = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $data->order('id desc')->where('del = 0')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('list',$list);// 赋值数据集
		$this->assign('fpage',$show);// 赋值分页输出
		$this->adminDisplay();
	}

	//文章列表页
	public function xyxxb(){
		$data = M('qishu_history'); // 实例化对象
		$count = $data->where("tid = 1")->count();// 查询满足要求的总记录数
		$Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$show = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $data->where("tid = 1")->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		$this->assign('list',$list);// 赋值数据集
		$this->assign('fpage',$show);// 赋值分页输出
		$this->adminDisplay();
	}


	//数据表导入
	public function import(){
	    $tid = $_GET['tid'];    //对应数据表的序号tabel_name
        $table_info = M("table_name")->where("xuhao = ".$tid)->find();

        $this->assign("table_info",$table_info);
		$this->adminDisplay();
	}

    //数据导入
    function dataUpload() {
        if (!empty($_FILES)) {
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

            $extension = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));//判断导入表格后缀格式
            if ($extension == 'xlsx') {
                $objReader = \PHPExcel_IOFactory::createReader('Excel2007');
                $objPHPExcel = $objReader->load($file_name, $encode = 'utf-8');
            } else if ($extension == 'xls') {
                $objReader = \PHPExcel_IOFactory::createReader('Excel5');
                $objPHPExcel = $objReader->load($file_name, $encode = 'utf-8');
            }
            $sheet = $objReader->getSheet(0);
            $highestRow = $sheet->getHighestRow(); // 取得总行数
            $highestColumn = $sheet->getHighestColumn(); // 取得总列数

            for ($i = 2; $i <= $highestRow; $i++) {
                $data['xuehao'] = $objPHPExcel->getActiveSheet()->getCell("A" . $i)->getValue();
                $data['xingming'] = $objPHPExcel->getActiveSheet()->getCell("B" . $i)->getValue();
                $data['xingbie'] = $objPHPExcel->getActiveSheet()->getCell("C" . $i)->getValue();
                $data['shishengxin'] = $objPHPExcel->getActiveSheet()->getCell("D" . $i)->getValue();
                $data['shenfenzheng'] = $objPHPExcel->getActiveSheet()->getCell("E" . $i)->getValue();
                $data['chushengrq'] = $objPHPExcel->getActiveSheet()->getCell("F" . $i)->getValue();
                $data['nianling'] = $objPHPExcel->getActiveSheet()->getCell("G" . $i)->getValue();
                $data['shoujihm'] = $objPHPExcel->getActiveSheet()->getCell("H" . $i)->getValue();
                $data['zhaoshengly'] = $objPHPExcel->getActiveSheet()->getCell("I" . $i)->getValue();
                $data['laiyuanfx'] = $objPHPExcel->getActiveSheet()->getCell("J" . $i)->getValue();
                $data['baomingrq'] = $objPHPExcel->getActiveSheet()->getCell("K" . $i)->getValue();
                $data['xiaoqu'] = $objPHPExcel->getActiveSheet()->getCell("L" . $i)->getValue();
                $data['xueguanshi'] = $objPHPExcel->getActiveSheet()->getCell("M" . $i)->getValue();
                $data['fuqinxm'] = $objPHPExcel->getActiveSheet()->getCell("N" . $i)->getValue();
                $data['fuqindh'] = $objPHPExcel->getActiveSheet()->getCell("O" . $i)->getValue();
                $data['muqinxm'] = $objPHPExcel->getActiveSheet()->getCell("P" . $i)->getValue();
                $data['muqindh'] = $objPHPExcel->getActiveSheet()->getCell("Q" . $i)->getValue();
                $data['jiatingzz'] = $objPHPExcel->getActiveSheet()->getCell("R" . $i)->getValue();
                $data['qq'] = $objPHPExcel->getActiveSheet()->getCell("S" . $i)->getValue();
                $data['jiuduxx'] = $objPHPExcel->getActiveSheet()->getCell("T" . $i)->getValue();
                $data['nianji'] = $objPHPExcel->getActiveSheet()->getCell("U" . $i)->getValue();
                $data['banji'] = $objPHPExcel->getActiveSheet()->getCell("V" . $i)->getValue();
                $data['beizhu'] = $objPHPExcel->getActiveSheet()->getCell("W" . $i)->getValue();
                $data['jifen'] = $objPHPExcel->getActiveSheet()->getCell("X" . $i)->getValue();
                $data['leixing'] = $objPHPExcel->getActiveSheet()->getCell("Y" . $i)->getValue();
                $data['zhuangtai'] = $objPHPExcel->getActiveSheet()->getCell("Z" . $i)->getValue();
                $data['tuixuerq'] = $objPHPExcel->getActiveSheet()->getCell("AA" . $i)->getValue();
                $data['tuixueyy'] = $objPHPExcel->getActiveSheet()->getCell("AB" . $i)->getValue();
                $data['tuixuebz'] = $objPHPExcel->getActiveSheet()->getCell("AC" . $i)->getValue();
                $data['dianziqbye'] = $objPHPExcel->getActiveSheet()->getCell("AD" . $i)->getValue();
                $data['qianjiaoje'] = $objPHPExcel->getActiveSheet()->getCell("AE" . $i)->getValue();
                $data['shengyuxf'] = $objPHPExcel->getActiveSheet()->getCell("AF" . $i)->getValue();
                $data['zhanghuye'] = $objPHPExcel->getActiveSheet()->getCell("AG" . $i)->getValue();
                $data['shengao'] = $objPHPExcel->getActiveSheet()->getCell("AH" . $i)->getValue();

                $data['suoshudd'] = $qishu_id;  //所属订单id
                M('xyxxb')->add($data);
            }
            $this->success('导入成功！');
        } else {
            $this->error("请选择上传的文件");
        }
    }

}
?>

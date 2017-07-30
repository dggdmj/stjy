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
        $data = array('info' => array('name' => '文章列表',
            'description' => ' 管理网站文章列表',
        ),
            'menu' => array(
                array('name' => '文章列表',
                    'url' => url('Article/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加文章',
                    'url' => url('Article/article'),
                ),
            )
        );
        return $data;
    }
	
	//文章列表页
	public function xyxxb(){
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
	
	// 删除/还原
	public function toTrash(){
		$type=(int)$_GET['type'];
		$msg=$type?'删除':'还原';
		$update=array(
			'id'=>(int)$_GET['id'],
			'del'=>$type,
		);
		if(M('article')->save($update)) {
			$this->success($msg.'成功'); //转到文章列表页
		}else {
			$this->error($msg.'失败');
		}	

	}
	
	//添加文章页
	public function article(){
		$this->adminDisplay();
	}

    /**
     * 更新发布文章
     */
    public function updateArticl() {
    	$ids = I('id');
		$data = M("article")->where(array('id'=>array('in',$ids)))->setField('del',1);
		if ($data) {
			$this->success('文章批量删除成功!');
		} else {
			$this->error('文章批量删除失败');
		}
    }

	
	//添加文章
	public function addArticle(){
		$data=array(
			'editor'=>$_POST['editor'],
			'title'=>$_POST['title'],
			'content'=>htmlspecialchars_decode($_POST['content']),
			'summary'=>$_POST['summary'],
			'click'=>$_POST['click'],
			'important'=>$_POST['important'],
            'image'=>$_POST['image'],
			'time'=>time(),
			'cid'=>(int)$_POST['cid'],
		);

		if(empty($_GET['id'])) {
			
			if ($_POST['cid']==""){
				
				$this->error('请选择分类');
				exit();
			}
			if($bid=M('article')->add($data)) {
				if(isset($_POST['aid'])) {
					$sql='insert into one_article_attr (bid,aid) values ';
					foreach($_POST['aid'] as $v) {
						$sql.='('.$bid.','.$v.'),';
					}
					$sql=rtrim($sql,',');
					M('article_attr')->execute($sql);
				}
				$this->success('添加成功'.$msg,U('index'));
			} else {
				$this->error('添加失败'.$msg);
			}
		} 
		else {
			$bid=$_GET['id'];
			M('article_attr')->where(array('bid'=>$bid))->delete();
			if(M('article')->where(array('id'=>$bid))->save($data)) {
				if(isset($_POST['aid'])) {
					$sql='insert into one_article_attr (bid,aid) values ';
					foreach($_POST['aid'] as $v) {
						$sql.='('.$bid.','.$v.'),';
					}
					$sql=rtrim($sql,',');
					M('article_attr')->execute($sql);
				}
				$this->success('修改成功'.$msg,U('index'));
			} else {
				$this->error('修改失败'.$msg);
			}
		}
	}

	// 修改文章
	public function edit() {
		$id = $_GET['id'];
		$this->article=D('Article')->relation(true)->where(array('id'=>$id))->find();
		$cate=M('classify')->order('sort')->select();
		$this->cate=unlimitedForLevel($cate); //组合成一维数组
		$this->attr=M('attr')->select();
		$this->adminDisplay('article');
	}
	
	public function preview(){
		$id = $_GET['id'];
		$this->page=D('Article')->relation(true)->where(array('id'=>$id))->find();
		$this->display("Page/index");
	}

    function upload() {
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
            $file_name=$upload->rootPath.$info['photo']['savepath'].$info['photo']['savename'];
            $extension = strtolower(pathinfo($file_name, PATHINFO_EXTENSION));//判断导入表格后缀格式
            if ($extension == 'xlsx') {
                $objReader = \PHPExcel_IOFactory::createReader('Excel2007');
                $objPHPExcel = $objReader->load($file_name, $encode = 'utf-8');
            } else if ($extension == 'xls') {
                $objReader = \PHPExcel_IOFactory::createReader('Excel5');
                $objPHPExcel = $objReader->load($file_name, $encode = 'utf-8');
            }
            $sheet = $objPHPExcel->getSheet(0);
            $highestRow = $sheet->getHighestRow(); // 取得总行数
            $highestColumn = $sheet->getHighestColumn(); // 取得总列数
            for ($i = 2; $i <= $highestRow; $i++) {
                $data['product_id'] = $objPHPExcel->getActiveSheet()->getCell("A" . $i)->getValue();
                $data['title'] = $objPHPExcel->getActiveSheet()->getCell("B" . $i)->getValue();
                $data['img_url'] = $objPHPExcel->getActiveSheet()->getCell("C" . $i)->getValue();
                $data['price'] = $objPHPExcel->getActiveSheet()->getCell("D" . $i)->getValue();
                $data['product_url'] = $objPHPExcel->getActiveSheet()->getCell("E" . $i)->getValue();
                $data['long_url'] = $objPHPExcel->getActiveSheet()->getCell("F" . $i)->getValue();
                $data['input_time'] = time();
                $data['promotion_type'] = mt_rand(3, 5);
                M('product')->add($data);
            }
            $this->success('导入成功！');
        } else {
            $this->error("请选择上传的文件");
        }
    }

}
?>
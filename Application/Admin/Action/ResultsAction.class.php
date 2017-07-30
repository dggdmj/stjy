<?php
namespace Admin\Action;
use Think\Action;
class ResultsAction extends CommonAction {

    /**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info'  => array(
                'name' => '业绩管理',
                'description' => '管理网站业绩统计',
                ),
            'menu' => array(
                array('name' => '业绩列表',
                    'url' => url('Results/index'),
                    'icon' => 'list',
                    ),
                ),
            'add' => array(
                array('name' => '添加业绩',
                    'url' => url('Results/add'),
                    ),
                ),
            'edit' => array(
                array('name' => '修改业绩',
                    'url' => url('Results/edit'),
                ),
            ),
        );
    }

	public function search() {
		$start=$_POST['StartDate'] ? strtotime($_POST['StartDate']) : 0;
		$end=$_POST['EndDate'] ? strtotime($_POST['EndDate'])+24*60*60-1 : 0;
		
		$staff=$_POST['staff'];
		if(!empty($staff)) {
			$data=M('results')->order('id desc')->where(array('kf'=>$staff))->select();
		}else{
			$data=M('results')->order('id desc')->select();
		}
		
		$price=0;
		foreach ($data as $v) {
			if($v['currenttime']>=$start) {
				if(!$end) {
					$list[]=$v;
					$price=$price+$v['price'];
				}
				else if($v['currenttime']<=$end) {
					$list[]=$v;
					$price=$price+$v['price'];
				}
			}
		}
		
		$arr=array(
			'price'=>$price,
			'start'=>$_POST['StartDate'],
			'end'=>$_POST['EndDate'],
			'staff'=>$_POST['staff'],
		);
		
		$this->assign('arr',$arr);
		$this->assign('list',$list);
		$this->adminDisplay('index');
	}
	
	/**
	 * 业绩管理
	 */
	public function index() {
		$data = M('Results'); // 实例化User对象
		$count = $data->count();// 查询满足要求的总记录数
		$Page = new \Think\Page($count,10);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$show = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $data->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		
		//统计总价
		$price=0;
		foreach ($list as $v) {$price=$price+$v['price'];}  
		//传递数据
		$arr=array(
			'price'=>$price,
			'start'=>date('Y-m-d',time()),
			'end'=>date('Y-m-d',time()),
			'staff'=>'',
		);
		$this->assign('arr',$arr);
		
		$this->assign('list',$list);// 赋值数据集
		$this->assign('page',$show);// 赋值分页输出
		$this->adminDisplay();
	}

	/**
	 * 添加业绩
	 */
	public function add() {
		if (!IS_POST) {
			$this->assign('name','添加');
			$this->adminDisplay();
		} else {
			if (M('Results')->add($_POST)) {
				$this->success('添加业绩成功！');
			} else {
				$this->error('添加业绩失败！');
			}
		}
	}

    public function edit() {
        if (!IS_POST) {
            $this->assign('修改');
            $id = $_GET['id'];
            $info = M('Results')->find($id);
            $this->assign('info',$info);
            $this->adminDisplay();
        } else {
            if (M('Results')->save($_POST)) {
                $this->success('修改业绩功能！','Results/Index');
            } else {
                $this->error('修改业绩失败！');
            }
        }
    }

	/**
	 * 删除业绩
	 */
	public function del() {
		if (M('Results')->delete($_GET['id'])) {
			$this->success('删除业绩成功！');
		} else {
			$this->error('删除业绩失败！');
		}
	}
}
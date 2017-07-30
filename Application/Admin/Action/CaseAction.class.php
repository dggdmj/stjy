<?php
namespace Admin\Action;
use Think\Action;
class CaseAction extends CommonAction {
    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '作品管理',
            'description' => ' 管理网站上的作品信息',
        ),
            'menu' => array(
                array('name' => '作品列表',
                    'url' => url('case/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加作品',
                    'url' => url('case/add'),
                ),
            ),

        );
        return $data;
    }
	
    /**
     * 列表
     */
    public function index()
    {   
    	$userSelect .= "title like '%".$_POST['title']."%'";
    	$data = M('case'); // 实例化Article对象
		$count = $data->where($userSelect)->count();// 查询满足要求的总记录数
		$Page = new \Think\Page($count,12);// 实例化分页类 传入总记录数和每页显示的记录数(25)
		$show = $Page->show();// 分页显示输出
		// 进行分页数据查询 注意limit方法的参数要使用Page类的属性
		$list = $data->where($userSelect)->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
		
		foreach ($list as $key=>$value){

		
			$class_id= $value['class_id'];
			
			$type= M('CaseSort')->where(array('id='.$class_id))->select();
			
			$list[$key]['type']=$type;
			
		   	
		   }
					
		$this->assign('case',$list);// 赋值数据集
		$this->assign('pages',$show);// 赋值分页输出

		
        $this->adminDisplay();
    }


	/**
     * 添加
     */
	public function add(){
		$this->caseSort=M('caseSort')->order('sort')->select();
		
		$this->assign('case',$list);// 赋值数据集
       
	
        $this->adminDisplay();
	}
	public function runAdd(){
	    
	    $suit = $_POST['suit'];
	    $tem_suit = "";
	    foreach ($suit as $s) {
	       $tem_suit .= $s.",";
	    }
	    $notsuit = $_POST['notsuit'];
	    $tem_notsuit = "";
	    foreach ($notsuit as $n) {
	        $tem_notsuit .= $n.",";
	    }
		$data=array(	
		    'class_id'=>$_POST['class_id'],
		    'type'=>$_POST['type'],
		    'type_son'=>$_POST['type_son'],
			'title'=>$_POST['title'],
		    'image'=>$_POST['image'],	
		    'lxr'=>$_POST['lxr'],
			'content'=>$_POST['content'],
				'shuti'=>$_POST['shuti'],
				'guige'=>$_POST['guige'],
				'editor'=>$_POST['editor'],
		    
		);
		if (empty($_GET['uptime']) && $_GET['uptime']!=1) {
		    $data['time'] = time();
		}
		if (!empty($_POST['lunbo'])) {
			$data['photo'] = $_POST['lunbo'];
		}

		if(empty($_GET['id'])) {
			if($_POST['class_id']==""){
				
				$this->error('请选择分类');
				exit();
			}
			if(M('case')->add($data)) {
				$this->success('添加成功'.$msg,U('index'));
			} else {
				$this->error('添加失败'.$msg);
			}
		}
		else {
			if(M('case')->where(array('id'=>$_GET['id']))->save($data)) {
				$this->success('修改成功'.$msg,U('index'));
			}else {
				$this->error('修改失败'.$msg);
			}
		}
	}
	public function delete() {
		$id = $_GET['id'];
		if(M('case')->delete($id)) {
			$this->success('删除成功');
		} else {
			$this->error('删除失败');
		}
	}
	public function edit() {
		$case=M('case')->where(array('id'=>$_GET['id']))->find();
		$this->caseSort=M('caseSort')->select();		
		$photos = "";	// 图片集合
		$photo = "";	// 单一图片
		
		if (!empty($case['photo'])) {
		    $lastFuhao = substr($case['photo'],0,-1);   // 截取最后一个逗号
		    $photos = explode(',',$lastFuhao);
		}
		
		if (isset($photos)) {
		    foreach ($photos as $p) {
		        $photo .= '{
		            name: "'.$p.'",
		            size: 5453,
		            type: "image/jpg",
		            file: "'.__ROOT__.'/Uploads/Map/'.$p.'"
		        },';
		    }
		}
		
		$this->assign('photo',$photo);
		$this->assign('case',$case);
		$this->adminDisplay('add');
	}
	
	/**
	 * 图片删除
	 * @access protected
	 * @param string void
	 * @return void
	 */
	function RemoveUpluad($id,$file) {
	    if (IS_POST) {
	        $case = M('case')->where(array('id'=>$id))->find();
	        $current = strpos($case['photo'],$file);	// 获取图片位置长度
	        $first = substr($case['photo'], 0, $current);	// 截取0-$end长度
	        $last = substr($case['photo'], $current + strlen($file)+1); // 截取$end到末尾
	        M('case')->where(array('id'=>$id))->setField('photo',$first . $last);
	        return $first . $last;
	    }
	}
	
	public function yjdj(){
	    $this->case=M('case')->where(array('id'=>$_GET['id']))->find();
	    $this->user_list = M('admin')->field('password',true)->order("worknum")->select();
	    $this->caseSort=M('caseSort')->order('sort')->select();
	    $this->adminDisplay();
	}
	
	public function runYjdj(){
	    $sk_time = strtotime($_POST['sk_time']);
	    $data=array(
	        'hetong'=>$_POST['hetong'],
	        'tel'=>$_POST['tel'],
	        'tel2'=>$_POST['tel2'],//客户电话需进入业绩登录中填写
	        'tel_show'=>$_POST['tel_show'],
	        'skqk'=>$_POST['skqk'],
	        'yejiguishu'=>$_POST['yejiguishu'],
	        'sk_time'=>$sk_time,
	        'ssje'=>$_POST['ssje'],
	        'ksye'=>$_POST['ksye'],
	        'sk_type'=>$_POST['sk_type'],
	        'skr'=>$_POST['skr'],
	        'flag'=>$_POST['flag'],
	        'renzheng'=>$_POST['renzheng'],
	        'important'=>$_POST['important'],
	        'toutiao'=>$_POST['toutiao'],
	        'guanggao'=>$_POST['guanggao'],
	        'index_gg'=>$_POST['index_gg'],
	    );
	
	    if(empty($_GET['id'])) {
	        $this->error('添加失败');
	    }
	    else {
	        if(M('case')->where(array('id'=>$_GET['id']))->save($data)) {
	            $this->success('修改成功',U('index'));
	        }else {
	            $this->error('修改失败');
	        }
	    }
	}
	
	public function protectorCase(){
	    if($_SESSION['user_worknum']==null || $_SESSION['user_worknum']==""){
	        $this->error('您还没有工号，请先完善个人信息，并重新登录');
	    }
	        $favNum = M('case')->where("protector='".$_SESSION['user_worknum']."'")->count();
	        $favIsset = M('case')->where("protector='".$_SESSION['user_worknum']."' and id=".$_GET['id'])->count();
	        if($favNum >= 15){
	            $this->error('保护失败，保护的信息已达15个');
	        }
	        else if($favIsset > 0){
	            $this->error('您已保护该信息');
	        }
	        else{
	            if(M('case')->where("id=".$_GET['id'])->setField('protector',$_SESSION['user_worknum'])){
	                $this->success('保护成功');
	            } else {
	                $this->error('保护失败');
	            }
	        }
	}
	
	//取消保护
	public function protectorCaseDel() {
	    $id=(int)$_GET['id'];
	    if(M('case')->where("id=".$_GET['id'])->setField('protector','')) {
	        $this->success('取消保护成功');
	    }else {
	        $this->error('取消保护失败');
	    }
	}
	
	public function beizhu(){
	    $this->case=M('case')->where(array('id'=>$_GET['id']))->find();
	    $this->adminDisplay();
	}
	
	public function runBeizhu(){
	     
	    $data=array(
	        'flag'=>$_POST['flag'],
	        'beizhu'=>$_POST['beizhu'],
	    );
	    if($_POST['flash'] == 1)
	        $data['time'] = time();
	    if(empty($_GET['id'])) {
	        $this->error('添加失败');
	    }
	    else {
	        if(M('case')->where(array('id'=>$_GET['id']))->save($data)) {
	            $this->success('修改成功',U('index'));
	        }else {
	            $this->error('修改失败');
	        }
	    }
	}
}
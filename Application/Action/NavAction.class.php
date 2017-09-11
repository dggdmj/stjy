<?php
/**
 * Created by Lf.
 * User: Administrator
 * Date: 2015/8/4
 * Time: 15:17
 */
namespace Admin\Action;
use Think\Action;
class NavAction extends CommonAction {
    /**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $data = array('info' => array('name' => '导航管理',
            'description' => ' 导航管理',
        ),
            'menu' => array(
                array('name' => '导航列表',
                    'url' => url('Nav/index'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加导航',
                    'url' => url('Nav/addNav'),
                ),
            ),
        );
        return $data;
    }

    public function index() {
    	
    	$nav=M('Nav')->order('sort')->select();
    	
    	$this->assign('nav',$nav);
       
        $this->adminDisplay();
    }

    public function addNav() {
    	$case=M('Class')->order('sort')->select();
    	$caseSort=M('CaseSort')->order('sort')->select();
    	$this->assign('class',$case);// 文章分类
    	$this->assign('casesort',$caseSort);//作品分类
        $this->adminDisplay();
    }

    public function runAdd() {
    	
    	
    	if ($_POST['nav_name']==""){
    		
    		
    		$this->error('请输入导航名称');
    		exit();
    	}
    	
    	if ($_POST['link']==""){
    	
    	
    		$this->error('请选择菜单分类');
    		exit();
    	}
    	
    	$nav=M('Nav')->where(array('nav_name'=>$_POST['nav_name']))->find();
    	   	
    	if ($nav==NULL){
         if ($_POST['check_url']==""){
            if(M('Nav')->add($_POST)) {
                $this->success('添加成功');
            } else {
                $this->error('添加失败');
            }
         }else {
         	
         	$_POST['link']=$_POST['check_url'];
         	
         	if(M('Nav')->add($_POST)) {
         		$this->success('添加成功');
         	} else {
         		$this->error('添加失败');
         	}
         	
         }
    	}else {
    		
    		$this->error('导航名称已经存在');
    		
    	}
      
    }
   
    
    
    
    public function navedit() {
       $nav=M('Nav')->where('id='.$_GET['id'])->find();
      	$case=M('Class')->order('sort')->select();
    	$caseSort=M('CaseSort')->order('sort')->select();
    	$this->assign('class',$case);// 文章分类
    	$this->assign('casesort',$caseSort);//作品分类
       $this->assign('nav',$nav);
       
       
       //得到分类所在的模型
       
       
      $module=substr($nav['link'],0,1); //A代表文章 ，C代表 作品

          $module_ex=explode('/',$nav['link']); //所在类的id
       
      $module_id=$module_ex[3];
	
     if($module=='A'){
     	
     	$casename=M('Class')->where(array('id'=>$module_id))->field('name')->find();
     	$casename['m']='A';    
     	
     }else if ($module=='C') {
     	
     	
     	$casename=M('CaseSort')->where(array('id'=>$module_id))->field('name')->find();
     	
     	$casename['m']='C';     	    
     	
     }    
     $this->assign('m_name',$casename);
          
       
        $this->adminDisplay();
    }
   
    
    public  function edit(){
    	
    	
    	if ($_POST['nav_name']==""){
    		
    		
    		$this->error('请输入导航名称');
    		exit();
    	}
    	
    	if ($_POST['link']==""){
    	
    	
    		$this->error('请选择菜单分类');
    		exit();
    	}
    	
    	
        if (M('Nav')->save($_POST)){
        	
        	$this->success('修改成功');
        	
        }else {
        	
        	$this->error('修改失败');
        }
         
      
    }
    
    public function delete() {
        $id = $_GET['id'];
        if(M('Nav')->delete($id)) {
            $this->success('删除成功');
        } else {
            $this->error('删除失败');
        }
    }


}
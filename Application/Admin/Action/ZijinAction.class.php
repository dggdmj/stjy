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

    
}
?>

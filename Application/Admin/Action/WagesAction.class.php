<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '工资表总表',
            'description' => ' 查看数据总表',
        ),
            'menu' => array(
                array('name' => '工资表总表',
                    'url' => url('Wages/index'),
                    'icon' => 'list',
                ),
                array('name' => '行政部工资表',
                    'url' => url('Wages/xzbgzb'),
                    'icon' => 'list',
                ),
                array('name' => '教学部工资表',
                    'url' => url('Wages/jxbgzb'),
                    'icon' => 'list',
                ),
                array('name' => '市场部工资表',
                    'url' => url('Wages/scbgzb'),
                    'icon' => 'list',
                ),
                array('name' => '总监工资表',
                    'url' => url('Wages/zjgzb'),
                    'icon' => 'list',
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

    //工资表总表
    public function index(){
        
        $this->adminDisplay();
    }

    //行政部工资表
    public function xzbgzb(){
        echo "行政部工资表列表";
    }

    //市场部工资表
    public function scbgzb(){
        echo "市场部工资表列表";
    }

    public function jxbgzb(){
        echo "教学部工资表列表";
    }

    //总监工资表
    public function zjgzb(){
        echo "总监工资表列表";
    }
}



?>







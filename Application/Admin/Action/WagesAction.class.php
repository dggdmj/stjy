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
                    'url' => url('Wages/scbgzbx'),
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
        echo "这是总表";
    }

    //行政部工资表
    public function xzbgzb(){
        echo "行政部工资表";
    }

    public function jxbgzb(){
        echo "教学部工资表";
    }

    public function scbgzb_xq(){
        $qishu = $_GET['qishu']?$_GET['qishu']:'201707';
        $sid = $_GET['sid']?$_GET['sid']:6;
        $list = M("");
        $kecheng = M("kecheng")->order("paixu")->select();
        $this->assign("kecheng",$kecheng);
        $this->adminDisplay();
    }

    //总监工资表
    public function zjgzb(){
        echo "总监工资表";
    }
}
?>

<?php
namespace Admin\Action;
use Think\Action;
class SettingAction extends CommonAction {

	/**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info'  => array(
                'name' => '网站设置',
                'description' => '设置网站整体功能',
                ),
            'menu' => array(
                    array(
                        'name' => '站点信息',
                        'url' => url('Setting/site'),
                        'icon' => 'exclamation-circle',
                    ),
                   /* array(
                        'name' => '手机设置',
                        'url' => url('Setting/mobile'),
                        'icon' => 'mobile',
                    ),
                    array(
                        'name' => '模板设置',
                        'url' => url('Setting/tpl'),
                        'icon' => 'eye',
                    ),
                    array(
                        'name' => '性能设置',
                        'url' => url('Setting/performance'),
                        'icon' => 'dashboard',
                    ),
                    array(
                        'name' => '上传设置',
                        'url' => url('Setting/upload'),
                        'icon' => 'upload',
                    )*/
                )
        );
    }

	/*
	* 站点设置
	*/
	public function site() {
		if(!IS_POST){
            $this->assign('info',M('Config')->getField('name,data'));
            $this->adminDisplay();
        }else{

            $data = $_POST;
            if(empty($data)){
                $this->error = '数据创建失败！';
                return false;
            }
            foreach ($data as $key => $value) {
                $currentData = array();
                $currentData['data'] = $value;
                $where = array();
                $where['name'] = $key;
                $status = M('Config')->data($currentData)->where($where)->save();
                if($status === false){
                    $status = false;
                } else {
                    $status = true;
                }
            }

            if($status){
                $this->success('站点配置成功！');
            }else{
                $this->error('站点配置失败');
            }
        }


	}

	/*
	* 手机版设置 
	*/
	public function mobile() {
        $this->adminDisplay();
	}

	/*
	* 模板设置 
	*/
	public function tpl() {
        $this->adminDisplay();
	}

	/*
	* 性能设置 
	*/
	public function perfomance() {
        $this->adminDisplay();
	}

	/*
	* 上传设置  
	*/
	public function upload() {
        $this->adminDisplay();
	} 
}
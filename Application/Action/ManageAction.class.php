<?php
namespace Admin\Action;
use Think\Action;
class ManageAction extends CommonAction {

	/**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info'  => array(
                'name' => '网站管理',
                'description' => '管理网站基本功能',
                ),
            'menu' => array(
                    array(
                        'name' => '缓存管理',
                        'url' => url('Manage/cache'),
                        'icon' => 'exclamation-circle',
                    ),
                )
            );
    }
	
    /**
     * 站点设置
     */
    public function cache(){
        if(!IS_POST){
            $this->assign('list',$this->getCacheList());
            $this->adminDisplay();
        }else{
            $key = $_POST['cacheName'];
            if($this->delCache($key)){
                $this->success('缓存清空成功！');
            }else{
                $this->error('缓存清空失败！');
            }
            
        }
    }

    /**
     * 获取缓存列表
     * @param int $key 缓存key
     * @return array 用户信息
     */
    public function getCacheList($key = '')
    {
        $list = array(
                'homeTpl' => array('id'=>'homeTpl','name'=>'前台模板缓存', 'dir'=>RUNTIME_PATH.'Cache/Home', 'size'=>(dir_size(RUNTIME_PATH.'Cache/Home')%1024).'KB'),
                'admTpl' => array('id'=>'admTpl','name'=>'后台模板缓存', 'dir'=>RUNTIME_PATH.'Cache/Admin', 'size'=>(dir_size(RUNTIME_PATH.'Cache/Admin')%1024).'KB'),
                );
        if($key){
            return $list[$key];
        }
        return $list;
    }
    /**
     * 清空指定缓存
     * @param int $key 缓存key
     * @return array 用户信息
     */
    public function delCache($key)
    {
        $info = $this->getCacheList($key);
        if(empty($info)){
            return;
        }
        $file = $info['dir'];
        if(is_dir($file)){
            delDir($file);
        }elseif(is_file($file)){
            unlink($file);
        }
        return true;
    }


    
}
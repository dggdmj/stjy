<?php
/**
 * Created by Lf.
 * User: Administrator
 * Date: 2015/8/13
 * Time: 17:37
 */
namespace Admin\Action;
use Think\Action;
class MessageAction extends CommonAction {
    /**
     * 当前模块参数
     */
    protected function _infoModule(){
        return array(
            'info'  => array(
                'name' => '留言消息',
                'description' => '客户留言信息',
            ),
            'menu' => array(
                array(
                    'name' => '留言列表',
                    'url' => url('Message/index'),
                    'icon' => 'list',
                ),
            ),
        );
    }

    public function index() {
        $this->info=M('Message')->order('date desc')->select();
        $this->adminDisplay();
    }

    public function delete() {
        if (M('Message')->delete($_GET['id'])) {
            $this->success('删除留言成功！');
        } else {
            $this->error('删除留言失败！');
        }
    }
}
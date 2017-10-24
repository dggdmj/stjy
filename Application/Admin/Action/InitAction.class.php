<?php
namespace Admin\Action;
use Think\Action;
use Org\Util\Rbac;
class InitAction extends Action {
    protected function _initialize() {
        session(C('USER_AUTH_KEY'), 1);
        session(C('ADMIN_AUTH_KEY'),true);
        //读取用户权限
        RBAC::saveAccessList();


        $notAuth=in_array(MODULE_NAME,explode(',',C('NOT_AUTH_MODULE')))||in_array(ACTION_NAME,explode(',',C('NOT_AUTH_ACTION')));
        if(C('USER_AUTH_ON')&&!$notAuth) {
            RBAC::AccessDecision()||$this->error('没有权限');
        }
        if(!(APP_NAME == 'admin' && CONTROLLER_NAME == 'Login')){
            //赋值当前菜单
            if(method_exists($this,'_infoModule')){
                $this->infoModule = $this->_infoModule();
            }
        }
    }

    public function doduilie(){
        //如果消息队列中没有待处理的，直接返回
        $duilie = M("duilie")->where("status = 1")->find();
        if(!$duilie)
            return;
        //如果消息队列中有处理中的，直接返回
        $ischuli = M("duilie")->where("status = 3")->find();
        if($ischuli)
            return;

        //开始处理将此队列设置为处理中
        M("duilie")->where("id = ".$duilie['id'])->setField("status",3);

        $common = new \Admin\Action\CommonAction;
        $common->AlltoDb($duilie["qishu"],$duilie["sid"]);

        //处理完将此队列设置为已完成
        M("duilie")->where("id = ".$duilie['id'])->setField("status",2);
    }

    public function create(){
        $tablenames = $this->getTabelnames(1,[1,3,4]);// 获取序号和表明对应的一维数组
        $field = implode(',',$tablenames);// 组成筛选条件
        $data = M('sjzb')->field($field)->where($_GET)->find();// 获取表格导入情况

        // 查询学校是否需要上传社保明细表和公积金明细表
        $data2 = M('school')->field('isshebao,isgongjijin')->where('id = '.$_GET['sid'])->find();
        if($data2['isshebao'] == 1){
            $shebao = 2;
        }else{
            $shebao = 0;
        }
        if($data2['isgongjijin'] == 1){
            $gongjijin = 2;
        }else{
            $gongjijin = 0;
        }
        $need = 16 + $shebao + $gongjijin;
        // 若所有表格导入再进行操作
        $count = 0;
        $i = 1;
        // 计算出所有上传表格的状态,表格上传状态为2,若所有表格上传,即是2*7=14,所有$count=14是左右表格都上传的状态
        foreach($data as $v){
            $count += $v;
            $i++;
        }
        if($count == $need){
            $temp['time_xz'] = date('Y-m-d H:i:s');
            $temp['status_xz'] = 2;
            $temp['status_xzjl'] = 1;
            $temp['xingzheng'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            M('sjzb')->where($_GET)->save($temp);// 更新数据总表

            // 将生成表数据写入数据库并让表格可以下载
            // $uid = $this->getUid();// 获取生成表格的行政uid
            $qishu = $_GET['qishu'];
            $sid = $_GET['sid'];

            // 生成数据入库
            // $res = $this->AlltoDb($qishu,$sid);

            //生成消息队列
            $data['sid'] = $sid;
            $data['qishu'] = $qishu;
            $data['uid'] = $_SESSION['uid'];
            $res = M("duilie")->where("status = 1 or status = 3")->count();
            $list = M("duilie")->where($data)->find();
            if($list){
                $arr['status'] = false;
                $arr['info'] = '请勿重复提交！';
                $this->ajaxReturn($arr);
                die;
            }
            M("duilie")->add($data);
            $arr['status'] = true;
            if($res) {
                $arr['info'] = '您之前有' . $res . "个任务等待执行，请稍候！";
            }else{
                $arr['info'] = '执行中，请稍候！';
            }
            $this->ajaxReturn($arr);

        }else{
            // $this->error('请导入所有表格后再通知财务');
            $arr['status'] = false;
            $arr['info'] = '请导入所有表格后再通知财务';
            $this->ajaxReturn($arr);
        }
    }



    //生成业绩表队列
    public function waitNum(){
        $data['sid'] = $_GET['sid'];
        $data['qishu'] = $_GET['qishu'];
        $data['uid'] = $_SESSION['uid'];
        $list = M("duilie")->where($data)->find();
        if($list['status'] == 2){
            $arr['status'] = true;
            $arr['info'] = '执行成功，1秒后跳转！';
            $this->ajaxReturn($arr);
            die;
        }
        $res = M("duilie")->where("id < ".$list['id']." and (status = 1  or status = 3)")->count();
        $arr['status'] = false;
        if($res) {
            $arr['info'] = '您之前有' . $res . "个任务等待执行，请稍候！";
        }else{
            $arr['info'] = '执行中，请稍候！';
        }
        $this->ajaxReturn($arr);
    }
}

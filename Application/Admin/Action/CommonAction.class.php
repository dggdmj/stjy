<?php
namespace Admin\Action;
use Think\Action;
use Org\Util\Rbac;
class CommonAction extends Action {

	protected function _initialize() {
		/*
		if (!isset($_SESSION['uid']) || !isset($_SESSION['username'])) {
			$this->redirect('Admin/Login/index');
		}
		*/
		if(!isset($_SESSION[C('USER_AUTH_KEY')])) {
			$this->redirect('Login/index');
		}
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

	/**
     * 后台模板显示 调用内置的模板引擎显示方法，
     * @access protected
     * @param string $tpl 指定要调用的模板文件
     * @return void
     */
    protected function adminDisplay($tpl = '') {
        //复制当前URL
        $this->assign('self',__SELF__);
        $common = $this->fetch('Index/common');
        $tplArray = get_method_array($tpl);
        $tpl = $tplArray['controller'] . '/' . $tplArray['action'];
        $html = $this->fetch($tpl);
        echo str_replace('<!--common-->', $html, $common);
    }

    /**
     * 图片上传
     * @access protected
     * @param string void
     * @return void
     */
    function uploads() {
        $config = array(
            'maxSize' => 3145728,    // 设置附件上传大小
            'exts' => array('jpg', 'gif', 'png', 'jpeg'),    // 设置附件上传类型
        );
        $upload = new \Think\Upload($config);// 实例化上传类

        // 上传文件
        $info   =   $upload->uploadOne($_FILES['file']);
        if(!$info) {	// 上传错误提示错误信息
            $return['status'] = 0;
            $return['info'] = $this->Error();
        }else{	// 上传成功
            //$this->success('站点配置成功！');
            $return['status'] = 1;
            $return['path'] = $info['savepath'].$info['savename'];
        }
        $this->ajaxReturn($return);
    }


    // 获取表明与序号对应的一维数组
    public function getTabelnames(){
        $tablenames = M('table_name')->field('xuhao,table_name')->limit(7)->select();
        foreach($tablenames as $v){
            $id = $v['xuhao'];
            $arr[$id] = $v['table_name'];
        }
        return $arr;
    }

    // 获取当前操作用户的角色id
    public function getRid(){
        $username = $_SESSION['username'];// 从session获取用户名
        $uid = M('admin')->where('username ="'.$username.'"')->getField('id');// 获取admin表的用户id
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');// 获取角色id
        return $rid;
    }

    // -------------------总表操作-------------------
    // 生成业绩表
    public function create(){
        $tablenames = $this->getTabelnames();// 获取序号和表明对应的一维数组
        $field = implode(',',$tablenames);// 组成筛选条件
        $data = M('sjzb')->field($field)->where($_GET)->find();// 获取表格导入情况
        // 若所有表格导入再进行操作
        $count = 0;
        $i = 1;
        // 计算出所有上传表格的状态,表格上传状态为2,若所有表格上传,即是2*7=14,所有$count=14是左右表格都上传的状态
        foreach($data as $v){
           $count += $v[$tabelnames[$i]];
           $i++;
        }
        if($count == 14){
            $temp['time_xz'] = date('Y-m-d H:i:s');
            $temp['status_xz'] = 2;
            $temp['status_xzjl'] = 1;
            $temp['xingzheng'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            M('sjzb')->where($_GET)->save($temp);// 更新数据总表
            $arr['status'] = true;
            $arr['info'] = '操作成功';
            // 还需要将生成表数据写入数据库并让表格可以下载
            $this->ajaxReturn($arr);
        }else{
            // $this->error('请导入所有表格后再通知财务');
            $arr['status'] = false;
            $arr['info'] = '请导入所有表格后再通知财务';
            $this->ajaxReturn($arr);
        }
    }

    // 取消生成业绩表
    public function rollBack(){
        $temp['time_xz'] = date('Y-m-d H:i:s');
        $temp['status_xz'] = 4;
        $temp['status_xzjl'] = null;
        $temp['xingzheng'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
        M('sjzb')->where($_GET)->save($temp);// 更新数据总表
        $arr['status'] = true;
        $arr['info'] = '操作成功';
        $this->ajaxReturn($arr);
    }

    // 退回操作
    public function back(){
        $rid = $this->getRid();
        switch($rid){
            case 3:
                $temp['time_xzjl'] = date('Y-m-d H:i:s');
                $temp['status_xz'] = 3;// 行政状态变成被退回
                $temp['status_xzjl'] = 3;// 行政经理状态变成退回
                $temp['xingzhengjl'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            break;
            case 4:
                $temp['time_cw'] = date('Y-m-d H:i:s');
                $temp['status_xzjl'] = 4;// 行政经理状态变成被退回
                $temp['status_cw'] = 3;// 财务状态变成退回
                $temp['caiwu'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');// 获取财务昵称
            break;
        }
        M('sjzb')->where($_GET)->save($temp);// 更新数据总表
        $arr['status'] = true;
        $arr['info'] = '操作成功';
        $this->ajaxReturn($arr);
    }

    // 通过审核操作
    public function checked(){
        $rid = $this->getRid();
        switch($rid){
            case 3:
                $temp['time_xzjl'] = date('Y-m-d H:i:s');
                $temp['status_xzjl'] = 2;
                $temp['status_cw'] = 1;
                $temp['xingzhengjl'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            break;
            case 4:
                $temp['time_cw'] = date('Y-m-d H:i:s');
                $temp['status_cw'] = 2;
                $temp['status_fzr'] = 1;
                $temp['caiwu'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
                // 还需要将生成表数据写入数据库并让表格可以下载
                // 如果数据有误,负责人退回之后删除写入数据库的数据
            break;
        }
        M('sjzb')->where($_GET)->save($temp);// 更新数据总表
        $arr['status'] = true;
        $arr['info'] = '操作成功';
        // 还需要将生成表数据写入数据库并让表格可以下载
        $this->ajaxReturn($arr);
    }

    // 取消通过审核操作
    public function cancel(){
        $rid = $this->getRid();
        switch($rid){
            case 3:
                $temp['time_xzjl'] = date('Y-m-d H:i:s');
                $temp['status_xzjl'] = 5;
                $temp['status_cw'] = null;
                $temp['xingzhengjl'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            break;
            case 4:
                $temp['time_cw'] = date('Y-m-d H:i:s');
                $temp['status_cw'] = 4;
                $temp['status_fzr'] = null;
                $temp['caiwu'] = M('admin')->where('username ="'.$_SESSION['username'].'"')->getField('nicename');
            break;
        }
        M('sjzb')->where($_GET)->save($temp);// 更新数据总表
        $arr['status'] = true;
        $arr['info'] = '操作成功';
        $this->ajaxReturn($arr);
    }

    // 获取当前期数和校区
    public function getArr($qishu,$sid){
        $arr['year'] = substr($qishu,0,4);
        $arr['month'] = substr($qishu,4,2);
        $arr['school'] = M('school')->where('id ='.$sid)->getField('name');
        return $arr;
    }

    // 获取上一月或下一月
    // $sign默认为1,则得出上一个月,若想得出下一个月则设置为0
    public function getMonth($qishu,$sign=1){
        //切割出年份
        $tmp_year = substr($qishu,0,4);
        //切割出月份
        $tmp_mon = substr($qishu,4,2);

        if($tmp_mon == 12){
            $tmp_nextmonth = mktime(0,0,0,1,1,$tmp_year+1);
        }else{
            $tmp_nextmonth = mktime(0,0,0,$tmp_mon+1,1,$tmp_year);
        }
        if($tmp_mon == 1){
            $tmp_forwardmonth=mktime(0,0,0,12,1,$tmp_year-1);
        }else{
            $tmp_forwardmonth=mktime(0,0,0,$tmp_mon-1,1,$tmp_year);
        }

        if($sign==0){
            //得到当前月的下一个月
            return $fm_next_month=date("Ym",$tmp_nextmonth);
        }else{
            //得到当前月的上一个月
            return $fm_forward_month=date("Ym",$tmp_forwardmonth);
        }
    }
}

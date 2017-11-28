<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class RenshiAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
    	$this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '网站设置',
            'description' => '网站设置',
        ),
            'menu' => array(
                array('name' => '人事列表',
                    'url' => url('Renshi/renshi'),
                    'icon' => 'list',
                ),
                array('name' => '职务列表',
                    'url' => url('Renshi/zhiwu'),
                    'icon' => 'list',
                ),
                array('name' => '试用期提醒',
                    'url' => url('Renshi/shiyong'),
                    'icon' => 'list',
                ),
                array('name' => '合同到期提醒',
                    'url' => url('Renshi/hetong'),
                    'icon' => 'list',
                ),
                array('name' => '类型列表',
                    'url' => url('Renshi/leixing'),
                    'icon' => 'list',
                ),
                array('name' => '关联公司列表',
                    'url' => url('Renshi/company'),
                    'icon' => 'list',
                ),
                array('name' => '关联银行列表',
                    'url' => url('Renshi/bank'),
                    'icon' => 'list',
                ),
                array('name' => '签证类型列表',
                    'url' => url('Renshi/qianzhenglx'),
                    'icon' => 'list',
                ),
            ),
            'add' => array(
                array('name' => '添加人事',
                    'url' => url('Renshi/renshi_add'),
                ),
                array('name' => '添加职务',
                    'url' => url('Renshi/zhiwu_add'),
                ),
                array('name' => '添加类型',
                    'url' => url('Renshi/leixing_add'),
                ),
                array('name' => '添加关联公司',
                    'url' => url('Renshi/company_add'),
                ),
                array('name' => '添加关联银行',
                    'url' => url('Renshi/bank_add'),
                ),
                array('name' => '添加签证类型',
                    'url' => url('Renshi/qianzhenglx_add'),
                ),
            ),
        );
        return $data;
    }

    //人事列表页
    public function renshi(){
        $data = M('renshi'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加人事页面
    public function renshi_add(){
        $school = M('school')->where('isuse = 1')->select();
        $zhiwu = M('zhiwu')->where('isuse = 1')->select();
        $bumen = M('department')->where('isuse = 1')->select();
        $leixing = M('leixing')->where('isuse = 1')->select();
        $company = M('company')->where('isuse = 1')->select();
        $bank = M('bank')->where('isuse = 1')->select();
        $qianzhenglx = M('qianzhenglx')->where('isuse = 1')->select();
        $guoji = M('gbdmb')->select();
        $this->assign('school',$school);
        $this->assign('zhiwu',$zhiwu);
        $this->assign('bumen',$bumen);
        $this->assign('leixing',$leixing);
        $this->assign('company',$company);
        $this->assign('bank',$bank);
        $this->assign('qianzhenglx',$qianzhenglx);
        $this->assign('guoji',$guoji);
        $this->adminDisplay();
    }

    //添加人士
    public function addRenshi(){
        // $bitian = array('xingming'=>'姓名','zhiwu'=>'职务','leixing'=>'类型','xiaoqu'=>'校区','bumen'=>'部门','chushengrq'=>'出生日期','diyixl'=>'第一学历','diyixlyx'=>'第一学历院校','zuigaoxl'=>'最高学历','zuigaoxlyx'=>'最高学历院校','ruzhirq'=>'入职日期','hetongkssj'=>'合同开始时间','hetongdqsj'=>'合同到期时间');// 所有必填项目
        // foreach($bitian as $k=>$v){
        //     if(empty($_POST[$k])){
        //         $err[] = $v;
        //     }
        // }
        // if(!empty($err)){
        //     $notice = implode(',',$err);
        //     $this->error($notice.'没有填写');
        // }
        // $res = $this->checkRenshi($_POST);
        // $this->ajaxreturn($res);
        // die;

        $arr = array();
        $temp = array();
        // 判断是否必填字段
        $need = array('姓名'=>'xingming','身份证号码'=>'shenfenzhm','职务'=>'zhiwu','类型'=>'leixing','校区'=>'sid','部门'=>'bumen','入职日期'=>'ruzhirq','合同开始时间'=>'hetongkssj','合同到期时间'=>'hetongdqsj','第一学历'=>'diyixl','第一学历院校'=>'diyixlyx','最高学历'=>'zuigaoxl','最高学历院校'=>'zuigaoxlyx');// 必要字段加到此数组
        foreach($_POST as $k=>$v){
            if(in_array($k,$need) && empty($v)){
                $temp[] = array_flip($need)[$k];
            }
        }
        if(!empty($temp)){
            $arr['status'] = false;
            $i = 1;
            foreach($temp as $v){
                if($i == 1){
                    $str = $v;
                }else{
                    $str .= ','.$v;
                }
                $i++;
            }
            $arr['info'] = $str.'为必要字段';
             $this->ajaxreturn($arr);
        }
       

        // 判断身份证是否正确,提取出生日期和性别
        $res = preg_match('/^[1-9]\d{16}[\d|x|X]$/', $_POST['shenfenzhm']);
        if(!$res){
            $arr['status'] = false;
            $arr['info'] = '身份证号码输入有误';
            $this->ajaxreturn($arr);
        }

        // 判断联系电话是否正确
        $res = preg_match('/^1[34578]\d{9}$/', $_POST['lianxidh']);
        if(!$res){
            $arr['status'] = false;
            $arr['info'] = '联系电话输入有误';
            $this->ajaxreturn($arr);
        }
        
        

        $nian = substr($_POST['shenfenzhm'],6,4);
        $yue = substr($_POST['shenfenzhm'],10,2);
        $ri = substr($_POST['shenfenzhm'],12,2);
        $chushengrq = $nian.'-'.$yue.'-'.$ri;// 出生日期
        $xingbie_num = substr($_POST['shenfenzhm'],16,1);// 倒数第二位是判断性别的,奇数是男,偶数是女
        if($xingbie_num%2 == 0){
            $xingbie = "女";
        }else{
            $xingbie = "男";
        }
        
        $_POST['xingbie'] = $xingbie;
        $_POST['chushengrq'] = $chushengrq;

        if(empty($_GET['id'])) {
            // 如果该姓名已存在,则添加失败
            $res = M('renshi')->where('xingming ="'.$_POST['xingming'].'"')->find();
            if(!empty($res)){
                // $this->error('已存在该姓名');
                $arr['status'] = false;
                $arr['info'] = '已存在该姓名';
                $this->ajaxreturn($arr);
            }

            // 如果该身份证号码已存在,则添加失败
            $res = M('renshi')->where('shenfenzhm ="'.$_POST['shenfenzhm'].'"')->find();
            if(!empty($res)){
                // $this->error('已存在该身份证号码');
                $arr['status'] = false;
                $arr['info'] = '已存在该身份证号码';
                $this->ajaxreturn($arr);
            }

            if($bid=M('renshi')->add($_POST)) {
                // $this->success('添加成功',U('renshi'));
                $arr['status'] = true;
                $arr['info'] = '添加成功';
                $this->ajaxreturn($arr);
            } else {
                // $this->error('添加失败');
                $arr['status'] = false;
                $arr['info'] = '添加失败';
                $this->ajaxreturn($arr);
            }
        }else {
            $bid=$_GET['id'];
            $where['id'] = array('neq',$bid);
            $res = M('renshi')->field('xingming,shenfenzhm')->where($where)->select();
            foreach($res as $v){
                // 除了自己以外已经登录的名字和身份证号码
                $names[] = $v['xingming'];
                $ids[] = $v['shenfenzhm'];
            }
            // dump($names);
            // dump($_POST['xingming']);
            // dump($ids);
            // dump(in_array($_POST['xingming'],$names));
            // die;
            if(in_array($_POST['xingming'],$names)){
                // $this->error('已存在该姓名');
                $arr['status'] = false;
                $arr['info'] = '已存在该姓名';
                $this->ajaxreturn($arr);
            }
            if(in_array($_POST['shenfenzhm'],$ids)){
                // $this->error('已存在该身份证号码');
                $arr['status'] = false;
                $arr['info'] = '已存在该身份证号码';
                $this->ajaxreturn($arr);
            }
            
            if(M('renshi')->where(array('id'=>$bid))->save($_POST)) {
                // $this->success('修改成功',U('renshi'));
                $arr['status'] = true;
                $arr['info'] = '修改成功';
                $this->ajaxreturn($arr);
            } else {
                // $this->error('修改失败');
                $arr['status'] = false;
                $arr['info'] = '修改失败';
                $this->ajaxreturn($arr);
            }
        }
    }

    // 修改人士
    public function editRenshi() {
        $school = M('school')->where('isuse = 1')->select();
        $zhiwu = M('zhiwu')->where('isuse = 1')->select();
        $bumen = M('department')->where('isuse = 1')->select();
        $leixing = M('leixing')->where('isuse = 1')->select();
        $company = M('company')->where('isuse = 1')->select();
        $bank = M('bank')->where('isuse = 1')->select();
        $qianzhenglx = M('qianzhenglx')->where('isuse = 1')->select();
        $guoji = M('gbdmb')->select();
        $this->assign('school',$school);
        $this->assign('zhiwu',$zhiwu);
        $this->assign('bumen',$bumen);
        $this->assign('leixing',$leixing);
        $this->assign('company',$company);
        $this->assign('bank',$bank);
        $this->assign('qianzhenglx',$qianzhenglx);
        $this->assign('guoji',$guoji);
        $id = $_GET['id'];
        $this->list=D('renshi')->where(array('id'=>$id))->find();
        // dump($this->list);
        $this->adminDisplay('renshi_add');
        // view未套数据
    }

    //彻底删除
    public function delete() {
        $id=(int)$_GET['id'];
        $tablename = $_GET['table'];
        if(M($tablename)->delete($id)) {
            $this->success('删除成功');
        }else {
            $this->error('删除失败');
        }
    }

    //职务列表页
    public function zhiwu(){
        $data = M('zhiwu'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加职务页面
    public function zhiwu_add(){
        $this->adminDisplay();
    }

    //添加职务
    public function addZhiwu(){
        if(empty($_GET['id'])) {
            if($bid=M('zhiwu')->add($_POST)) {
                $this->success('添加成功',U('zhiwu'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('zhiwu')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('zhiwu'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改职务
    public function editZhiwu() {
        $id = $_GET['id'];
        $this->list=D('zhiwu')->where(array('id'=>$id))->find();
        $this->adminDisplay('zhiwu_add');
    }

    //试用期列表页
    public function shiyong(){
        $data = M('renshi'); // 实例化对象
        $time = time() - 86400*180;
        $list = $data->where("leixing = '试用期' and UNIX_TIMESTAMP(ruzhirq) < $time")->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //类型列表页
    public function leixing(){
        $data = M('leixing'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加类型页面
    public function leixing_add(){
        $this->adminDisplay();
    }

    //添加类型
    public function addLeixing(){
        if(empty($_GET['id'])) {
            if($bid=M('leixing')->add($_POST)) {
                $this->success('添加成功',U('leixing'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('leixing')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('leixing'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改类型
    public function editLeixing() {
        $id = $_GET['id'];
        $this->list=D('leixing')->where(array('id'=>$id))->find();
        $this->adminDisplay('leixing_add');
    }

    //关联公司列表页
    public function company(){
        $data = M('company'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加关联公司页面
    public function company_add(){
        $this->adminDisplay();
    }

    //添加关联公司
    public function addCompany(){
        if(empty($_GET['id'])) {
            if($bid=M('company')->add($_POST)) {
                $this->success('添加成功',U('company'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('company')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('company'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改关联公司
    public function editCompany() {
        $id = $_GET['id'];
        $this->list=D('company')->where(array('id'=>$id))->find();
        $this->adminDisplay('company_add');
    }

    //关联银行列表页
    public function bank(){
        $data = M('bank'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加关联银行页面
    public function bank_add(){
        $this->adminDisplay();
    }

    //添加关联银行
    public function addBank(){
        if(empty($_GET['id'])) {
            if($bid=M('bank')->add($_POST)) {
                $this->success('添加成功',U('bank'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('bank')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('bank'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改关联银行
    public function editBank() {
        $id = $_GET['id'];
        $this->list=D('bank')->where(array('id'=>$id))->find();
        $this->adminDisplay('bank_add');
    }

    //关联银行列表页
    public function qianzhenglx(){
        $data = M('qianzhenglx'); // 实例化对象
        $list = $data->order('id desc')->select();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }

    //添加关联银行页面
    public function qianzhenglx_add(){
        $this->adminDisplay();
    }

    //添加关联银行
    public function addQianzhenglx(){
        if(empty($_GET['id'])) {
            if($bid=M('qianzhenglx')->add($_POST)) {
                $this->success('添加成功',U('qianzhenglx'));
            } else {
                $this->error('添加失败');
            }
        }
        else {
            $bid=$_GET['id'];
            if(M('qianzhenglx')->where(array('id'=>$bid))->save($_POST)) {
                $this->success('修改成功',U('qianzhenglx'));
            } else {
                $this->error('修改失败');
            }
        }
    }

    // 修改关联银行
    public function editQianzhenglx() {
        $id = $_GET['id'];
        $this->list=D('qianzhenglx')->where(array('id'=>$id))->find();
        $this->adminDisplay('qianzhenglx_add');
    }

    // 查找学校
    public function searchSchool() {
        $name = $_POST['name'];
        $schools = M("ulist")->where("`name` like '%".$name."%'")->select();
        if($schools){
            $arr['status'] = true;
            $arr['data'] = $schools;
            $this->ajaxReturn($arr);
        }else{
            $arr['status'] = false;
            $arr['data'] = $schools;
            $this->ajaxReturn($arr);
        }
    }

    public function addDepartment(){
        // 如果是空值,就提示'请填写要添加的部门'
        if(empty($_POST['name'])){
            $arr['status'] = false;
            $arr['info'] = '请填写要添加的部门';
            $this->ajaxReturn($arr);
        }
        
        $res = M('department')->where('name ="'.$_POST['name'].'"')->find();
        if(!empty($res)){
             $arr['status'] = false;
             $arr['info'] = '已存在该部门';
        }else{
            $id = M('department')->add($_POST);
            $arr['status'] = true;
            $arr['id'] = $id;
            $arr['name'] = $_POST['name'];
            $arr['info'] = '添加成功';
        }
        $this->ajaxReturn($arr);
    }

    // 转正
    public function zhuanzheng() {
        $id = $_GET['id'];
        $res=M('renshi')->where(array('id'=>$id))->setField("leixing",'正式期');
        $arr = array();
        if($res){
            $arr['status'] = true;
            $arr['info'] = '修改成功';
        }else{
            $arr['status'] = false;
            $arr['info'] = '修改失败';
        }
        $this->ajaxReturn($arr);
    }

    //合同到期列表页
    public function hetong(){
        $data = M('renshi'); // 实例化对象
        $time = time() + 86400*30;
        $list = $data->where("UNIX_TIMESTAMP(hetongdqsj) < $time")->order('id desc')->select();
//        echo $data->getLastSql();
        $this->assign('list',$list);// 赋值数据集
        $this->adminDisplay();
    }
}
?>

<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class TableCountAction extends CommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '校管家表格计算',
            'description' => ' 查看数据总表',
        ),
            'menu' => array(
                array('name' => '市场业绩表',
                    'url' => url('TableCount/scyjb_xq'),
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

	//市场业绩总表
	public function index(){
        // 获取当前用户的角色
        $username = $_SESSION['username'];
        $uid = M('admin')->where('username ="'.$username.'"')->getField('id');
        $rid = M('role_user')->where('user_id ='.$uid)->getField('role_id');

        $data = M('sjzb'); // 实例化对象
        if($rid == 2){
            $count = $data->count();// 查询满足要求的总记录数
        }else if($rid == 4){
            $count = $data->where('status_cw is not null')->count();
        }else{
            $count = $data->where('status_fxfzr is not null')->count();
        }

        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        if($rid == 2){
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->select();
        }else if($rid == 4){
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where('stjy_sjzb.status_cw is not null')->select();
        }else{
            $list = $data->join('stjy_school ON stjy_sjzb.sid=stjy_school.id')->field('stjy_sjzb.*,stjy_school.name')->where('stjy_sjzb.status_fxfzr is not null')->select();
        }

        // 获取表明与序号对应的一维数组
        $arr = $this->getTabelnames();

        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->assign('rid',$rid);// 赋值角色id
        $this->assign('arr',$arr);
        $this->adminDisplay();
	}

    public function yejilist(){
        var_dump($_GET);
        $data = M('sjzb')->field('qishu,sid')->where('status_xz = 2')->select();
        var_dump($data);
        $count = M('sjzb')->where('status_xz = 2')->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
    }

	//市场业绩表
	public function scyjb(){
        $data = M('qishu'); // 实例化对象
        $count = $data->count();// 查询满足要求的总记录数
        $Page = new \Think\Page($count,15);// 实例化分页类 传入总记录数和每页显示的记录数(25)
        $show = $Page->show();// 分页显示输出
        // 进行分页数据查询 注意limit方法的参数要使用Page类的属性
        $list = $data->order('id desc')->limit($Page->firstRow.','.$Page->listRows)->select();
        $this->assign('list',$list);// 赋值数据集
        $this->assign('fpage',$show);// 赋值分页输出
        $this->adminDisplay();
	}

	//市场业绩表详情
	public function scyjb_xq(){
	    $list = $this->getScyjbData("201709","1");//获得统计数据
        dump($list);
        $this->assign("list",$list);
        $this->adminDisplay();
	}

	//市场占有率详情
	public function sczyl_xq(){
        $this->adminDisplay();
	}

	//新增明细详情
	public function xzmx_xq(){
        $this->adminDisplay();
	}

	//减少明细详情
	public function jsmx_xq(){
        $this->adminDisplay();
	}

	//经营数据表
	public function jysjb_xq(){
        $this->adminDisplay();
	}

	//经营数据表
	public function tuifei_xq(){
        $this->adminDisplay();
	}

    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
	public function getScyjbData($qishu,$sid){
	    //按照期数和分校查询出结果，并以表名为键拼接成一个数组
        $Model = M();
        $table_list = array();
	    $data = $Model->query("select * from stjy_qishu_history as h left join `stjy_table_name` as n on h.tid = n.id where h.qishu = '".$qishu."' and h.sid = $sid");
	    foreach ($data as $k => $v){
            $table_list[$v['table_name']] = $v;
        }
        //查询出签单人的名字
        $list = $Model->query("select yejigsr,beizhu from stjy_sjjlb where suoshudd = ".$table_list['sjjlb']['id']." and `yejigsr` != '' group by `yejigsr`");
        //过滤掉名字中的数据
        $filter_arr = array('(主签单人)','(03-客户接待员)','（金牌）','（会员学员）','金牌','金牌学员',' ');
        foreach ($list as $k=>$v){
            $list[$k]['yejigsr'] = $this->strFilter($v['yejigsr'],$filter_arr);     //业绩归属人
            $list[$k]['beizhu'] = $this->getBeizhu($v['beizhu']);   //根据备注信息获得备注数组

        }
	    return $list;
    }

    //过滤掉字符串中在的指定字符
    Public function strFilter($str,$arr)
    {
        //特殊字符的过滤方法
        foreach ($arr as $v){
            $str = str_replace($v, '', $str);
        }
        return $str;
    }

    //收据记录表中的备注替换
    public function getBeizhu($str){
        $arr = array();
	    //计算净人头
	    //把备注中第一个符合全角 ：替换为@
//        $str = preg_replace('/：/','@',$str,1);
        $pos_jrt_start = strpos($str, '：');     //截取第一个全角 ：的出现位置
        $pos_jrt_end = strpos($str, '）');
        $arr['jrt'] = substr($str,($pos_jrt_start+1),($pos_jrt_end-$pos_jrt_start));
        if($arr['jrt'] === false){
            $arr['jrt'] = 0;    //如果计算错误,净人头数返回 0
        }else{
            $arr['jrt'] = (double)$arr['jrt'];    //强制转换净人头数为数值
        }
        return $arr;
    }

    //收据记录表存在两人分业绩的情况处理 $data 这条收据记录的数据，返回一条负数金额的对冲，并按英文,分割数据
    public function yejiFenpei($data){

    }
}
?>

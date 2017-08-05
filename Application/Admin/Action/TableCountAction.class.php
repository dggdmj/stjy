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
	    $list = $this->getData("201709","1");//获得统计数据
        dump($list);
        $this->assign("list",$list);
        $this->adminDisplay();
	}

    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
	public function getData($qishu,$sid){
	    //按照期数和分校查询出结果，并以表名为键拼接成一个数组
        $Model = M();
        $table_list = array();
	    $data = $Model->query("select * from stjy_qishu_history as h left join `stjy_table_name` as n on h.tid = n.id where h.qishu = '".$qishu."' and h.sid = $sid");
	    foreach ($data as $k => $v){
            $table_list[$v['table_name']] = $v;
        }
        //查询出签单人的名字
        $list = $Model->query("select yejigsr from stjy_sjjlb where suoshudd = ".$table_list['sjjlb']['id']." and `yejigsr` != '' group by `yejigsr`");
        //过滤掉名字中的数据
        $filter_arr = array('(主签单人)','(03-客户接待员)','（金牌）','（会员学员）','金牌','金牌学员',' ');
        foreach ($list as $k=>$v){
            $list[$k]['yejigsr'] = $this->strFilter($v['yejigsr'],$filter_arr);
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
}
?>

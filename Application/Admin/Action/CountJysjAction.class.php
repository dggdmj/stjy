<?php
namespace Admin\Action;
use Think\Action;
class CountJysjAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getJysjbData($qishu,$sid){

        $where['qishu'] = $qishu;// 获取期数
        $whewe['sid'] = $sid;// 获取学校id
        $where['tid'] = 3;// 从班级学员信息表获取信息,它的tid是3
        $id = M('qishu_history')->where($where)->getField('id');// 获取对应qishu_history的id,也就是bjxyxxb里面的suoshudd的订单号

        // ------------以下所有数据都根据suoshudd的id号查询出------------
        // $heji是每个年级对应的合计数
        // $data是每个公立学校对应的每个年级的合计数
        // $res是返回的数据,$res = ['data'=>$data,'heji'=>$heji];

        // $heji
        $arr = M('bjxyxxb')->field('count(*) as count,nianji')->where('gonglixx is not null and banji != "游学会员" and suoshudd ='.$id)->group('nianji')->select();// 取得总人数合计数目
        $arr1 = M('bjxyxxb')->field('count(*) as count,nianji')->where('gonglixx is not null and banji != "游学会员" and suoshudd ='.$id.' and banji = "未进班"')->group('nianji')->select();// 取得未进班人数合计数目
        $arr2 = M('bjxyxxb')->field('count(*) as count,nianji')->where('gonglixx is not null and banji != "游学会员" and suoshudd ='.$id.' and banji = "停读"')->group('nianji')->select();// 取得停读人数合计数目
        $heji = $this->getHeji($arr);
        $weijinban = $this->getHeji($arr1);
        $tingdu = $this->getHeji($arr2);
        $res = ['heji'=>$heji,'weijinban'=>$weijinban,'tingdu'=>$tingdu];
        return $res;
    }

}

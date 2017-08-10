<?php
namespace Admin\Action;
use Think\Action;
class CountSczylAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getSczylbData($qishu,$sid){
        $where['qishu'] = $qishu;// 获取期数
        $whewe['sid'] = $sid;// 获取学校id
        $where['tid'] = 3;// 从班级学员信息表获取信息,它的tid是3
        $id = M('qishu_history')->where($where)->getField('id');// 获取对应qishu_history的id,也就是bjxyxxb里面的suoshudd的订单号

        // ------------以下所有数据都根据suoshudd的id号查询出------------
        // $heji是每个年级对应的合计数
        // $data是每个公立学校对应的每个年级的合计数
        // $res是返回的数据,$res = ['data'=>$data,'heji'=>$heji];

        // $heji
        $arr = M('bjxyxxb')->field('count(*) as count,nianji')->where('gonglixx is not null and suoshudd ='.$id)->group('nianji')->select();
        $heji['幼儿园'] = 0;
        foreach($arr as $v){
            if($v['nianji'] == '小班' or $v['nianji'] == '中班' or $v['nianji'] == '大班'){
                $heji['幼儿园'] += $v['count'];
            }else{
                $heji[$v['nianji']] = $v['count'];
            }
        }

        // $data
        $schools = M('bjxyxxb')->field('gonglixx')->where('gonglixx is not null and suoshudd ='.$id)->group('gonglixx')->select();// 得出所有公立学校的数组
        foreach($schools as $k=>$v){
            $temp = M('bjxyxxb')->field('count(*) as count,nianji,gonglixx')->where('gonglixx ="'.$v['gonglixx'].'" and suoshudd ='.$id)->group('nianji')->select();
            $youeryuan = 0;
            foreach($temp as $v1){
                switch($v1['nianji']){
                    case '小班':
                    case '中班':
                    case '大班':
                        $youeryuan += $v1['count'];
                        $data[$k+1]['youeryuan'] = $youeryuan;
                    break;
                    case '一年级':
                        $data[$k+1]['yinianji'] = $v1['count'];
                    break;
                    case '二年级':
                        $data[$k+1]['ernianji'] = $v1['count'];
                    break;
                    case '三年级':
                        $data[$k+1]['sannianji'] = $v1['count'];
                    break;
                    case '四年级':
                        $data[$k+1]['sinianji'] = $v1['count'];
                    break;
                    case '五年级':
                        $data[$k+1]['wunianji'] = $v1['count'];
                    break;
                    case '六年级':
                        $data[$k+1]['liunianji'] = $v1['count'];
                    break;
                    case '初一':
                        $data[$k+1]['chuyi'] = $v1['count'];
                    break;
                    case '初二':
                        $data[$k+1]['chuer'] = $v1['count'];
                    break;
                    case '初三':
                        $data[$k+1]['chusan'] = $v1['count'];
                    break;
                }
                $data[$k+1]['gonglixx'] = $v1['gonglixx'];
            }
        }
        $res = ['data'=>$data,'heji'=>$heji];
        // return $res;
        return $res;
    }

}

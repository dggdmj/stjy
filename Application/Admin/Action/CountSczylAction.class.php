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
        $id = $this->getQishuId($qishu,$sid,1);
        $xyxxb = $this->checkFenbiao($id,'xyxxb');//判断是否是分表
        $where = 'suoshudd ='.$id.' and xuehao != "" and jiuduxx != "" and (zhuangtai = "在读" or zhuangtai = "休学")';// 下面$arr获取数据的查询条件
        $schools = M($xyxxb)->field('jiuduxx,nianji,count(*) as count')->where($where)->group('jiuduxx,nianji')->select();
        //获取分校公立学校规模数
        $guimo = M("gonglixx")->where("sid = $sid")->select();
        $guimo_arr = array();
        foreach ($guimo as $g){
            $guimo_arr[$g['xuexiao']] = $g['xuexiaogms'];
        }

        $data = array();
        $nianji_arr = array("幼儿园"=>"youeryuan","一年级"=>"yinianji","二年级"=>"ernianji","三年级"=>"sannianji","四年级"=>"sinianji","五年级"=>"wunianji","六年级"=>"liunianji","初一"=>"chuyi","初二"=>"chuer","初二以上"=>"chuerys");

        foreach($schools as $k=>$v){
            switch($v['nianji']){
                case '小班':
                case '中班':
                case '大班':
                    $data[$v['jiuduxx']]['幼儿园'] += $v['count'];
                    break;
                case '一年级':
                case '二年级':
                case '三年级':
                case '四年级':
                case '五年级':
                case '六年级':
                case '初一':
                case '初二':
                    $data[$v['jiuduxx']][$v['nianji']] += $v['count'];
                    break;
                default:
                    $data[$v['jiuduxx']][$v['初二以上']] += $v['count'];
                    break;
            }
        }
        $arr = array();
        $i = 1;
        foreach ($data as $k=>$v){
            $arr[$i]['xuhao'] = $i;
            $arr[$i]['gonglixx'] = $k;
            $heji = 0;
            foreach ($nianji_arr as $m=>$n){
                if (array_key_exists($m,$v)){
                    $arr[$i][$n] = $v[$m];
                    $heji += $v[$m];
                }else{
                    $arr[$i][$n] = 0;
                }
            }
            $arr[$i]['heji'] = $heji;
            $arr[$i]['xuexiaogms'] = $guimo_arr[$k]?$guimo_arr[$k]:0;
            if($arr[$i]['xuexiaogms'] ==0){
                $arr[$i]['zhaoyoulv'] = 0;
            }else{
                $arr[$i]['zhaoyoulv'] = round($heji/$arr[$i]['xuexiaogms'],4);
            }
            $i++;
        }
        return $arr;
    }

    public function getSczylbData_bak($qishu,$sid){
        $where['qishu'] = $qishu;// 获取期数
        $where['sid'] = $sid;// 获取学校id
        $where['tid'] = 3;// 从班级学员信息表获取信息,它的tid是3
        $id = M('qishu_history')->where($where)->getField('id');// 获取对应qishu_history的id,也就是bjxyxxb里面的suoshudd的订单号

        // ------------以下所有数据都根据suoshudd的id号查询出------------
        // $heji是每个年级对应的合计数
        // $data是每个公立学校对应的每个年级的合计数
        // $res是返回的数据,$res = ['data'=>$data,'heji'=>$heji];

        // $heji
        unset($where);
        $bjxyxxb = $this->checkFenbiao($id,'bjxyxxb');//判断是否是分表
        $where = 'suoshudd ='.$id.' and ((xuehao !="" and beizhu = "") or banji = "停读" or banji = "未进班")';// 下面$arr获取数据的查询条件
        $arr = M($bjxyxxb)->field('count(*) as count,nianji')->where($where)->group('nianji')->select();
        $heji = $this->getHeji($arr);

        // $data
        $schools = M($bjxyxxb)->field('gonglixx')->where($where)->group('gonglixx')->select();// 得出所有公立学校的数组

        foreach($schools as $k=>$v){
            $temp = M($bjxyxxb)->field('count(*) as count,nianji,gonglixx')->where('gonglixx ="'.$v['gonglixx'].'" and suoshudd ='.$id.' and ((xuehao !="" and beizhu = "") or banji = "停读" or banji = "未进班")')->group('nianji')->select();
            $youeryuan = 0;
            $count = 0;
            foreach($temp as $v1){

                $count += $v1['count'];

                switch($v1['nianji']){
                    case '小班':
                    case '中班':
                    case '大班':
                        $data[$k+1]['youeryuan'] += $v1['count'];
                    break;
                    case '一年级':
                    case '二年级':
                    case '三年级':
                    case '四年级':
                    case '五年级':
                    case '六年级':
                    case '初一':
                    case '初二':
                        $data[$k+1][$this->encode($v1['nianji'],'all')] = $v1['count'];
                    break;
                    // case '一年级':
                    //     $data[$k+1]['yinianji'] = $v1['count'];
                    // break;
                    // case '二年级':
                    //     $data[$k+1]['ernianji'] = $v1['count'];
                    // break;
                    // case '三年级':
                    //     $data[$k+1]['sannianji'] = $v1['count'];
                    // break;
                    // case '四年级':
                    //     $data[$k+1]['sinianji'] = $v1['count'];
                    // break;
                    // case '五年级':
                    //     $data[$k+1]['wunianji'] = $v1['count'];
                    // break;
                    // case '六年级':
                    //     $data[$k+1]['liunianji'] = $v1['count'];
                    // break;
                    // case '初一':
                    //     $data[$k+1]['chuyi'] = $v1['count'];
                    // break;
                    // case '初二':
                    //     $data[$k+1]['chuer'] = $v1['count'];
                    // break;
                    default:
                        $data[$k+1]['chuerys'] += $v1['count'];
                    break;
                }
                $data[$k+1]['gonglixx'] = $v1['gonglixx'];
            }
            $data[$k+1]['heji'] = $count;
        }
        $res = ['data'=>$data,'heji'=>$heji];

        return $res;
    }

}

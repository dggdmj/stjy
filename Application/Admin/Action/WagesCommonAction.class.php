<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesCommonAction extends CommonAction{
    //计算绩效奖金
    public function getJxjj($data,$kecheng_arr){
        //去掉大于等于5%的
        $data = json_decode($data);
        if(empty($data)){
            return 0;
        }
        $total = 0;
        //提取比例
        $ticheng_arr = array();
        foreach ($kecheng_arr as $k => $v){
            //去掉5%以下的点位
            if($v >= 5){
                continue;
            }
            if(!in_array($v,$ticheng_arr)){
                $ticheng_arr[] = $v;
            }
        }
        rsort($ticheng_arr);    //按提成额度降序排列
        $new_ticheng_arr = array();
        foreach ($ticheng_arr as $k => $v){
            $new_ticheng_arr[$k]['dianwei'] = $v;
            $new_ticheng_arr[$k]['value'] = 0;
        }
        $total = 0;
        //找出各个提成比例的业绩累计
        foreach ($data as $k => $v){
            if(!empty($v)){
                $dianwei = $kecheng_arr[$k];
                foreach ($new_ticheng_arr as $m => $n){
                    if($n['dianwei'] == $dianwei){
                        $new_ticheng_arr[$m]['value'] += $v;
                    }
                }
            }
        }
        foreach ($new_ticheng_arr as $k=>$v){
            $total += $v['dianwei']*$v['value']/100;
        }

        return $total;
    }

    //计算学习卡结算
    public function getXxkjs($data,$jrt,$edu,$kecheng_arr,$huiyuanldxyye){
        //合并相同比例的业绩，大于等于5%的
        $data = json_decode($data);
        if(empty($data)){
            return 0;
        }
        $ticheng_arr = array();
        //提取比例
        foreach ($kecheng_arr as $k => $v){
            //去掉5%以下的点位
            if($v < 5){
                continue;
            }
            if(!in_array($v,$ticheng_arr)){
                $ticheng_arr[] = $v;
            }
        }
        rsort($ticheng_arr);    //按提成额度降序排列
        $new_ticheng_arr = array();
        $new_ticheng_arr_add = array();
        foreach ($ticheng_arr as $k => $v){
            $new_ticheng_arr[$k]['dianwei'] = $v;
            $new_ticheng_arr[$k]['value'] = 0;
            $new_ticheng_arr_add[$k]['dianwei'] = $v;
            $new_ticheng_arr_add[$k]['value'] = 0;
        }
        //找出各个提成比例的业绩累计
        foreach ($data as $k => $v){
            if(!empty($v)){
                $dianwei = $kecheng_arr[$k];
                foreach ($new_ticheng_arr as $m => $n){
                    if($n['dianwei'] == $dianwei){
                        $new_ticheng_arr[$m]['value'] += $v;
                    }
                }
            }
        }
        //计算各阶段比例的和值
        foreach ($new_ticheng_arr_add as $k=>$v){
            foreach ($new_ticheng_arr as $m => $n){
                if($v['dianwei'] <= $n['dianwei']){
                    $new_ticheng_arr_add[$k]['value'] += $n['value'];
                }
            }
        }
        $total = 0;
        $count = count($new_ticheng_arr_add);
            //计算所在的级数
        $jishu = -1;
        for($i = $count-1;$i>=0;$i--){
            if($edu > $new_ticheng_arr_add[$i]['value']){
                $jishu = $i;
                break;
            }
        }
        //计算各自的业绩额度
        if($jishu == -1){
            //如果小于最底额度累计
            foreach ($new_ticheng_arr as $m=>$n){
                if($m == 0){
                    $total += $edu*$new_ticheng_arr[0]['dianwei'];
                    $total += ($n['value'] - $edu)*$n['dianwei']*0.6;
                }
                $total += $n['value']*$n['dianwei']*0.6;
            }
        }elseif($jishu == ($count-1)){
            //如果大于最高额度累计
            foreach ($new_ticheng_arr as $m=>$n){
                $total += $n['value']*$n['dianwei'];
            }
        }else{
            //根据所在的位置判断算法
            foreach ($new_ticheng_arr as $m=>$n){
                if($m <= $jishu){
                    $total += $n['value']*$n['dianwei'];
                }
                if($m == $jishu+1){
                    $total += ($edu - $new_ticheng_arr_add[$jishu]['value'])*$n['dianwei'];
                    $total += ($new_ticheng_arr_add[($jishu+1)]['value'] - $edu)*$n['dianwei']*0.6;
                }
                if($m >= $jishu+2){
                    $total += $n['value']*$n['dianwei']*0.6;
                }
            }
        }
        $total = $total/100;
        //扣减老带新业绩
        $total = $total - $huiyuanldxyye*0.02;
        //根据净人头数返回不同的比例
        if($jrt < 2){
            $total = $total*0.85;
        }

        return $total;
    }

    public function object2array($object) {
        if (is_object($object)) {
            foreach ($object as $key => $value) {
                $array[$key] = $value;
            }
        }
        else {
            $array = $object;
        }
        return $array;
    }

    //获得退费金额
    public function getTuifei($qishu,$sid,$tid = 13,$name){
        $suoshudingdan = M("qishu_history")->where("tid = 13 and sid = $sid and qishu = $qishu")->getField("id");
        $tuifei1 = M("tfb")->where("suoshudd = $suoshudingdan and jingdulsxm = '".$name."'")->sum("jingdulsykje");
        $tuifei2 = M("tfb")->where("suoshudd = $suoshudingdan and fandulsxm = '".$name."'")->sum("fandulsykje");
        $tuifei3 = M("tfb")->where("suoshudd = $suoshudingdan and jiaoxuezzxm = '".$name."'")->sum("jiaoxuezzykje");
        $tuifei4 = M("tfb")->where("suoshudd = $suoshudingdan and jiaowuzrxm = '".$name."'")->sum("jiaowuzrykje");
        $tuifei5 = M("tfb")->where("suoshudd = $suoshudingdan and jiaoxuefxzxm = '".$name."'")->sum("jiaoxuefxzykje");
        $tuifei6 = M("tfb")->where("suoshudd = $suoshudingdan and zhaoshengzrxm = '".$name."'")->sum("zhaoshengzrykje");
        $tuifei7 = M("tfb")->where("suoshudd = $suoshudingdan and zhaoshengfxzxm = '".$name."'")->sum("zhaoshengfxzykje");
        $tuifei8 = M("tfb")->where("suoshudd = $suoshudingdan and dianzhangzjxm = '".$name."'")->sum("dianzhangzjykje");
        $tuifei9 = M("tfb")->where("suoshudd = $suoshudingdan and quyuzjxm = '".$name."'")->sum("quyuzjykje");

        $tuifei_total = (int)$tuifei1 + (int)$tuifei2 + (int)$tuifei3 + (int)$tuifei4 + (int)$tuifei5 + (int)$tuifei6 + (int)$tuifei7 + (int)$tuifei8 + (int)$tuifei9;

        return $tuifei_total;
    }

    public function downloadXzb(){
        dump($_GET);
    }
}

?>
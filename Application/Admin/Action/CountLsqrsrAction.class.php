<?php
namespace Admin\Action;
use Think\Action;
class CountLsqrsrAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getYjData($qishu='201812',$sid='25'){
        // 判断语句
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>30))->getField('id');//判断是否有生成历史
        if ($qishu_id){
            $newList = M('lsqrsr')->where(array('suoshudd'=>$qishu_id))->order('id')->select();
            $newList = $this->heji($newList);
            return $newList;
        }
        $qishu_id = $this->insertQishuHistory(30,$qishu,$sid);
        $yuefen = substr($qishu,4,2).'月';
        $nian = substr($qishu,0,4);
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        // 获取开班明细的订单id
        $kb_oid = $this->getQishuId($qishu,$sid,6);
        // 获取课消明细的订单id
        $kx_oid = $this->getQishuId($qishu,$sid,5);
        //判断是否有分表
        // $kbmxb = $this->checkFenbiao($kb_oid,'kbmxb');
        $kxmxb = $this->checkFenbiao($kx_oid,'kxmxb');

        $list = M($kxmxb.' as kx')
                ->join('LEFT JOIN stjy_kbmxb_'.$nian.' as kb on kb.banjimc=kx.banji')
                ->field('kb.jingjiangxs as jingduxs,kb.fanduxs,kb.waijiaoxs,kx.shangkels as jingduls,kx.banji,kx.kexiaoje,kx.shangkesj,kx.zhujiao')
                ->where("kx.suoshudd = '$kx_oid' and kb.suoshudd='$kb_oid'")
                ->order('kx.id')
                ->select();
        //班级编码
        $banjibm = M('banjibianhao')->field('jingdujb,bumen')->select();
        foreach($banjibm as $v){
            $bumen[ $v['jingdujb'] ] =  $v['bumen'];
        }

        //定义老师数组
        $laoshi = array();
       
        //定义出现次数
        $banjisj = array();
        foreach($list as $key=>$val){
            $tmp = explode(',', $list[$key]['zhujiao']);
            if (strlen($tmp['0']) > mb_strlen($tmp['0'],'utf-8')){
                $list[$key]['waijiaols'] = $tmp['1'];
                $list[$key]['fanduls'] = $tmp['0'];
            }else{ 
                $list[$key]['waijiaols'] = $tmp['0'];
                $list[$key]['fanduls'] = $tmp['1'];
            }
            $list[$key]['banji'] = ucwords( $list[$key]['banji']);
            $list[$key]['jingdujb'] = substr( $list[$key]['banji'],0,3);
            $list[$key]['bumen'] = $bumen[  $list[$key]['jingdujb'] ];
            $list[$key]['banjisj'] =  $list[$key]['banji']. $list[$key]['shangkesj'];
            if(in_array( $list[$key]['banjisj'],$banjisj)){
                $list[$key]['chuxiancs'] = 2;
            }else{
                $list[$key]['chuxiancs'] = 1;
                $banjisj[] =  $list[$key]['banjisj'];
            }
            if (!in_array( $list[$key]['jingduls'],$laoshi) &&   $list[$key]['jingduls'] != '' &&  $list[$key]['jingduls'] != '无'){
                $laoshi[] =  $list[$key]['jingduls'];
            }
            if (!in_array( $list[$key]['fanduls'],$laoshi) &&   $list[$key]['fanduls'] != '' &&  $list[$key]['fanduls'] != '无'){
                $laoshi[] =  $list[$key]['fanduls'];
            }
            if (!in_array( $list[$key]['waijiaols'],$laoshi) &&   $list[$key]['waijiaols'] != '' &&  $list[$key]['waijiaols'] != '无'){
                $laoshi[] =  $list[$key]['waijiaols'];
            }
        }
        $newList = array();
        $shumu = array();
        //组装数组
        foreach($laoshi as $k=>$v){
            //小学部
            $k = $k*2;
            $newList[$k]['xuhao'] = $k+1;
            $newList[$k]['yuefen'] = $yuefen;
            $newList[$k]['fenxiao'] = $school_name;
            $newList[$k]['bumen'] = '教学部';
            $newList[$k]['laoshi'] = $v;
            $newList[$k]['qianming'] = '';
            $newList[$k]['banxing'] = '小学部';
            $newList[$k]['shoukexs'] = 0;
            $newList[$k]['zongrencxs'] = 0;
            $newList[$k]['querensr'] = 0;
            $newList[$k]['suoshudd'] = $qishu_id;
            //初中部
            $newList[$k+1]['xuhao'] = $k+2;
            $newList[$k+1]['yuefen'] = $yuefen;
            $newList[$k+1]['fenxiao'] = $school_name;
            $newList[$k+1]['bumen'] = '教学部';
            $newList[$k+1]['laoshi'] = $v;
            $newList[$k+1]['qianming'] = '';
            $newList[$k+1]['banxing'] = '初中部';
            $newList[$k+1]['shoukexs'] = 0;
            $newList[$k+1]['zongrencxs'] = 0;
            $newList[$k+1]['querensr'] = 0;
            $newList[$k+1]['suoshudd'] = $qishu_id;

            foreach($list as $val){
                if ($val['bumen'] == '小学部'){
                    //计算授课小时
                    if($val['chuxiancs'] == 1){
                        //精讲
                        if($val['jingduls'] == $v){
                            $newList[$k]['shoukexs'] += $val['jingduxs'];
                        }
                        //泛读
                        if($val['fanduls'] == $v){
                            $newList[$k]['shoukexs'] += $val['fanduxs'];
                        }
                        //外教
                        if($val['waijiaols'] == $v){
                            $newList[$k]['shoukexs'] += $val['waijiaoxs'];
                        }
                    }

                    //计算总人次小时数
                    if($val['jingduls'] == $v){
                        $newList[$k]['zongrencxs'] += $val['jingduxs'];
                        $newList[$k]['querensr'] += number_format($val['jingduxs']/($val['jingduxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],8);
                    }
                    //泛读
                    if($val['fanduls'] == $v){
                        $newList[$k]['zongrencxs'] += $val['fanduxs'];
                        $newList[$k]['querensr'] += number_format($val['fanduxs']/($val['jingduxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],8);
                    }
                    //外教
                    if($val['waijiaols'] == $v){
                        $newList[$k]['zongrencxs'] += $val['waijiaoxs'];
                        $newList[$k]['querensr'] += number_format($val['waijiaoxs']/($val['jingduxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],8);
                    }
                }else if($val['bumen'] == '初中部'){
                    //计算授课小时
                    if($val['chuxiancs'] == 1){
                        //精讲
                        if($val['jingduls'] == $v){
                            $newList[$k+1]['shoukexs'] += $val['jingduxs'];
                        }
                        //泛读
                        if($val['fanduls'] == $v){
                            $newList[$k+1]['shoukexs'] += $val['fanduxs'];
                        }
                        //外教
                        if($val['waijiaols'] == $v){
                            $newList[$k+1]['shoukexs'] += $val['waijiaoxs'];
                        }
                    }

                    //计算总人次小时数
                    if($val['jingduls'] == $v){
                        $newList[$k+1]['zongrencxs'] += $val['jingduxs'];
                        $newList[$k+1]['querensr'] += number_format($val['jingduxs']/($val['jingduxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],8);

                    }
                    //泛读
                    if($val['fanduls'] == $v){
                        $newList[$k+1]['zongrencxs'] += $val['fanduxs'];
                        $newList[$k+1]['querensr'] += number_format($val['fanduxs']/($val['jingduxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],8);
                    }
                    //外教
                    if($val['waijiaols'] == $v){
                        $newList[$k+1]['zongrencxs'] += $val['waijiaoxs'];
                        $newList[$k+1]['querensr'] += number_format($val['waijiaoxs']/($val['jingduxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],8);
                    }
                }
            }

            M('lsqrsr')->add($newList[$k]);
            M('lsqrsr')->add($newList[$k+1]);
        }
        $newList = $this->heji($newList);
        return $newList;
    }

    //合计
    public function heji($list=array()){
        if (!$list){
            return $list;
        }
        $heji = array();
        foreach($list as $val){
            foreach($val as $key=>$v){
                if ($key == 'shoukexs' || $key == 'zongrencxs' || $key == 'querensr'){
                    $heji[$key] += $v;
                }
            }
        }
        $heji['laoshi'] = '小计';
        $heji['xuhao'] = '';
        array_push($list,$heji);
        return $list;
    }

}

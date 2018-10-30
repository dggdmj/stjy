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
    public function getYjData($qishu,$sid){
        //判断语句
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>30))->getField('id');//判断是否有生成历史
        if ($qishu_id){
            $newList = M('lsqrsr')->where(array('suoshudd'=>$qishu_id))->order('id')->select();
            $newList = $this->heji($newList);
            return $newList;
        }
        $qishu_id = $this->insertQishuHistory(30,$qishu,$sid);
        $yuefen = substr($qishu,4,2).'月';
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        // 获取开班明细的订单id
        $kb_oid = $this->getQishuId($qishu,$sid,6);
        // 获取课消明细的订单id
        $kx_oid = $this->getQishuId($qishu,$sid,5);
        //判断是否有分表
        $kbmxb = $this->checkFenbiao($kb_oid,'kbmxb');
        $kxmxb = $this->checkFenbiao($kx_oid,'kxmxb');

        $list = M($kbmxb.' as kb')
                    ->join('stjy_'.$kxmxb.' as kx on kx.banji=kb.banjimc')
                    ->field('kb.jingjiangxs,kb.fanduxs,kb.waijiaoxs,kb.jingjiangls,kb.fanduls,kb.waijiaols,kx.banji,kx.kexiaoje,kx.shangkesj')
                    ->where("kb.suoshudd = '$kb_oid' and kx.suoshudd = '$kx_oid'")
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

        foreach($list as &$val){
            $val['jingdujb'] = substr($val['banji'],0,3);
            $val['bumen'] = $bumen[ $val['jingdujb'] ];
            $val['banjisj'] = $val['banji'].$val['shangkesj'];
            if(in_array($val['banjisj'],$banjisj)){
                $val['chuxiancs'] = 2;
            }else{
                $val['chuxiancs'] = 1;
                $banjisj[] = $val['banjisj'];
            }
            if(!in_array($val['jingjiangls'],$laoshi)){
                $laoshi[] = $val['jingjiangls'];
            }
            if(!in_array($val['fanduls'],$laoshi)){
                $laoshi[] = $val['fanduls'];
            }
            if(!in_array($val['waijiaols'],$laoshi)){
                $laoshi[] = $val['waijiaols'];
            }
        }

        $newList = array();
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
                        if($val['jingjiangls'] == $v){
                            $newList[$k]['shoukexs'] += $val['jingjiangxs'];
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
                    if($val['jingjiangls'] == $v){
                        $newList[$k]['zongrencxs'] += $val['jingjiangxs'];
                        $newList[$k]['querensr'] += round($val['jingjiangxs']/($val['jingjiangxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],2);
                    }
                    //泛读
                    if($val['fanduls'] == $v){
                        $newList[$k]['zongrencxs'] += $val['fanduxs'];
                        $newList[$k]['querensr'] += round($val['jingjiangxs']/($val['jingjiangxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],2);
                    }
                    //外教
                    if($val['waijiaols'] == $v){
                        $newList[$k]['zongrencxs'] += $val['waijiaoxs'];
                        $newList[$k]['querensr'] += round($val['jingjiangxs']/($val['jingjiangxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],2);
                    }
                }else if($val['bumen'] == '初中部'){
                    //计算授课小时
                    if($val['chuxiancs'] == 1){
                        //精讲
                        if($val['jingjiangls'] == $v){
                            $newList[$k+1]['shoukexs'] += $val['jingjiangxs'];
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
                    if($val['jingjiangls'] == $v){
                        $newList[$k+1]['zongrencxs'] += $val['jingjiangxs'];
                        $newList[$k+1]['querensr'] += round($val['jingjiangxs']/($val['jingjiangxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],2);
                    }
                    //泛读
                    if($val['fanduls'] == $v){
                        $newList[$k+1]['zongrencxs'] += $val['fanduxs'];
                        $newList[$k+1]['querensr'] += round($val['jingjiangxs']/($val['jingjiangxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],2);
                    }
                    //外教
                    if($val['waijiaols'] == $v){
                        $newList[$k+1]['zongrencxs'] += $val['waijiaoxs'];
                        $newList[$k+1]['querensr'] += round($val['jingjiangxs']/($val['jingjiangxs']+$val['fanduxs']+$val['waijiaoxs'])*$val['kexiaoje'],2);
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

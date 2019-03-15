<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class WagesScbAction extends WagesCommonAction{
	/**
     * 当前模块参数
     */
    public function _infoModule()
    {
        $this->class = M('class')->order('id desc')->select();
        $data = array('info' => array('name' => '市场部工资表详情',
            'description' => '市场部工资表',
        ),
            'menu' => array(
                array('name' => '工资表总表',
                    'url' => url('Wages/index'),
                    'icon' => 'list',
                ),
                array('name' => '行政部工资表',
                    'url' => url('/wages/tableList/table/Xzb'),
                    'icon' => 'list',
                ),
                array('name' => '教学部工资表',
                    'url' => url('/wages/tableList/table/Jxb'),
                    'icon' => 'list',
                ),
                array('name' => '市场部工资表',
                    'url' => url('/wages/tableList/table/Scb'),
                    'icon' => 'list',
                ),
                array('name' => '总监工资表',
                    'url' => url('/wages/tableList/table/Zj'),
                    'icon' => 'list',
                ),
            ),
        );
        return $data;
    }

    public function index(){
        $uid = session('uid');
        $role_id = M('role_user')->where("user_id=$uid")->getField('role_id');
        //期数
        $qishu = $_GET['qishu']?$_GET['qishu']:'201810';
        //学校id
        $sid = $_GET['sid']?$_GET['sid']:15;
        $suoshudd = $this->getQishuId($qishu,$sid,19);
        $yuefen = substr($qishu,4,2).'月';
        $school_info = M('school')->where(array('id'=>$sid))->find();
        $school_name = $school_info['name'];
        $heji = array();//合计
        $fujia = array();//附加表
        $sjjlb_id = $this->getQishuId($qishu,$sid,4);
        $nian = substr($qishu,0,4);
        $ticheng = array();
        $data = array();
        $datas = array();//计算学习卡的
        $cplx = array();
        $chanpinlx = M('sjcplx')->field('xiangmu,tichengds,tichengdsfxxk,shifoucyedjs')->where("shifouqy='启用' and shifoutxyj='1' ")->select();
        //按提成点数从高到低排序
        $last_names = array_column($chanpinlx,'tichengds');
        array_multisort($last_names,SORT_DESC,$chanpinlx);

        foreach($chanpinlx as $key=>$vv){
            $vv['xiangmu'] = str_replace('(','（',$vv['xiangmu']);
            $vv['xiangmu'] = str_replace(')','）',$vv['xiangmu']);
            $chanpinlx[$key]['xiangmu'] = $vv['xiangmu'];
            $chanpinlx[$key]['field'] = $this->encode($vv['xiangmu']);
            // $chanpinlx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
            if (!in_array($chanpinlx[$key]['tichengds'],$ticheng) && $chanpinlx[$key]['field'] != 'laoshengxufei'){
                $cplx[$key]['ticheng'] = $chanpinlx[$key]['tichengds'];
                $ticheng[] = $chanpinlx[$key]['tichengds'];
                $cplx[$key]['tichengfxxk'] = $vv['tichengdsfxxk'] ? $vv['tichengdsfxxk'] : number_format($vv['tichengds'] * 0.8,2);
                $cplx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
                $cplx[$key]['tichengdsfxxk'] = is_numeric($cplx[$key]['tichengfxxk']) ? ( $cplx[$key]['tichengfxxk'] * 100 ).'%' : $cplx[$key]['tichengfxxk'];
                $cplx[$key]['name'] = $vv['xiangmu'];
            }
        }
        $cplx = array_values($cplx);
        $status = 0;
        if ($suoshudd){
            $list = M('scbgz')->where("suoshudd='$suoshudd'")->order('id')->select();
            $status = $list['0']['status']?$list['0']['status']:0;
            $list_pz = M('scbgz_pz')->where("qishu=$qishu and sid=$sid")->order('id')->select();
            $heji = $list[ count($list) - 1];
            unset($list[ count($list) - 1]);
            $fujia = M('fjb')->where("suoshudd='$suoshudd'")->getField('field,value');
            $scyjb_id = $this->getQishuId($qishu,$sid,8);
            $lists = M('scyjb')->field('id,json')->where("suoshudd=$scyjb_id and hejiyye != ''")->order('id')->select();
            foreach($lists as $key=>$val){
                $lists[$key]['json'] = json_decode($lists[$key]['json'],'true');
                foreach($lists[$key]['json'] as $k=>$v){
                    $lists[$key][$k] = $v;
                }
                $list[$key]['laoshengxufei'] = $lists[$key]['laoshengxufei'];
                $temp += $list[$key]['laoshengxufei'];
                foreach($chanpinlx as $kk=>$vv){
                    $tmp = str_replace('.','',$vv['tichengds']);
                    // $temps = $this->encode($vv['xiangmu']);
                    $temps = $vv['field'];
                    if ($temps != 'laoshengxufei'){
                        $data[$key]['field'.$tmp] += $lists[$key][$temps];
                        $tmp_arrs['field'.$tmp] = '';
                    }
                    if ($vv['shifoucyedjs'] == 1){
                        $datas[$key]['field'.$tmp] += $lists[$key][$temps];
                    }
                }
                unset($lists[$key]['json']);
            }
            $i = count($list) - count($lists);
            for($h=0;$h<$i;$h++){
                $data[] = $tmp_arrs;
            }
        }else{
            $chuqin_arr = $this->getChuqin($qishu,$sid);
            $yj_id = $this->getAllSdd($qishu,$sid);
            //本月秒杀清单
            $byms98 = M()->query("select shoujulx,shoujuhao,xuehao,yejigsr,jiaofeirq,count(*) as count from stjy_sjjlb_".$nian." where suoshudd in ($yj_id) and ( chanpinlx = '98元1期秒杀' or chanpinlx = '1期秒杀') and yejigsr != '' and shoukuanzh != '' and shoukuanzh !='结转学费' and shoukuanzh != '老带新返现'  group by xuehao");
            $yqms = M()->query("select shoujulx,shoujuhao,xuehao,yejigsr,jiaofeirq,count(*) as count from stjy_sjjlb_".$nian." where suoshudd = '$sjjlb_id' and chanpinlx = '1期秒杀' and yejigsr != '' and shoukuanzh != '' and shoukuanzh !='结转学费' and shoukuanzh != '老带新返现' group by xuehao ");
            $ms98 = M()->query("select shoujulx,shoujuhao,xuehao,yejigsr,jiaofeirq,count(*) as count from stjy_sjjlb_".$nian." where suoshudd in ($yj_id) and chanpinlx = '98元1期秒杀' and yejigsr != '' and shoukuanzh != '' and shoukuanzh !='结转学费' and shoukuanzh != '老带新返现'  group by xuehao");
            //查询是否是结算
            $shoufeilx = M('shoufeilx')->field('leixing')->where(array('is_jiesuan'=>1))->select();
            foreach($shoufeilx as $val){
                $shoufei_arr[] = $val['leixing'];
            }

            foreach($byms98 as $k=>$v){
                if (!in_array($v['shoujulx'],$shoufei_arr)){
                    unset($byms98[$k]);
                }
            }
            $xuehao = array();
            foreach($byms98 as $key=>$val){
                $tmp = explode('(', $val['yejigsr']);
                $byms98[$key]['yejigsr'] = $tmp['0'];
                if ($val['count'] == 1){
                    $xuehao[] = $val['xuehao'];
                }
            }
            //2
            foreach($yqms as $k=>$v){
                if (!in_array($v['shoujulx'],$shoufei_arr)){
                    unset($yqms[$k]);
                }
            }
            $xuehao = array();
            foreach($yqms as $key=>$val){
                $tmp = explode('(', $val['yejigsr']);
                $yqms[$key]['yejigsr'] = $tmp['0'];
                if ($val['count'] == 1){
                    $xuehao[] = $val['xuehao'];
                }
            }
            //3
            foreach($ms98 as $k=>$v){
                if (!in_array($v['shoujulx'],$shoufei_arr)){
                    unset($ms98[$k]);
                }
            }
            $xuehao = array();
            foreach($ms98 as $key=>$val){
                $tmp = explode('(', $val['yejigsr']);
                $ms98[$key]['yejigsr'] = $tmp['0'];
                if ($val['count'] == 1){
                    $xuehao[] = $val['xuehao'];
                }
            }

            $xyxxb_id = $this->getQishuId($qishu,$sid,1);
            if($xuehao){
                $xyxxb = M('xyxxb_'.$nian)->where(array('xuehao'=>array('in',$xuehao)))->getField('xuehao,shoucixfrq');
            }
            foreach($byms98 as $key=>$val){
                $byms98[$key]['shoucixfrq'] = $xyxxb[$val['xuehao']];
                if ($byms98[$key]['shoucixfrq']){
                    $byms98[$key]['jinbanyf'] = substr($byms98[$key]['shoucixfrq'],5,2);
                }else{
                    $byms98[$key]['jinbanyf'] = '';
                }
                $byms98[$key]['jiaofeiyf'] = substr($byms98[$key]['jiaofeirq'],5,2);
            }
            foreach($ms98 as $key=>$val){
                $ms98[$key]['shoucixfrq'] = $xyxxb[$val['xuehao']];
                if ($ms98[$key]['shoucixfrq']){
                    $ms98[$key]['jinbanyf'] = substr($ms98[$key]['shoucixfrq'],5,2);
                }else{
                    $ms98[$key]['jinbanyf'] = '';
                }
                $ms98[$key]['jiaofeiyf'] = substr($ms98[$key]['jiaofeirq'],5,2);
            }
            $yuefen2 = substr($qishu,4,2);
            
            $scyjb_id = $this->getQishuId($qishu,$sid,8);
            //实时计算
            $list = M('scyjb as yj')
                    ->field('rs.shenfenzhm,rs.xiaoqu,rs.bumen,rs.zhiwu as zhiwei,rs.gangweilx,rs.leixing as zaizhizt,rs.ruzhirq as ruzhisj,rs.erjibm,rs.ruzhinx as gongzuonx,yj.xingming,yj.json,xxk.zongbenjin as xuexikbj,yj.edu,yj.hejiyye,yj.jingrentou,rs.gongjijgrbf as gongjij,rs.shebaogrbf as gerensb')
                    ->join('LEFT JOIN stjy_rycb as rs on yj.xingming=rs.xingming')
                    ->join('LEFT JOIN stjy_school as ss on ss.name=rs.xiaoqu')
                    ->join('LEFT JOIN stjy_qishu_history as qh on qh.sid=ss.id')
                    ->join('LEFT JOIN stjy_xxkedb as xxk on xxk.xingming=yj.xingming')
                    ->where("yj.suoshudd='$scyjb_id' and yj.hejiyye != ''")
                    ->group('yj.id')
                    ->order('yj.id')
                    ->select();
            // dump($byms98);
            foreach($list as $key=>$val){
                if($val['bumen'] != '市场部' || $val['xiaoqu'] != $school_name){
                    $list[$key]['gongjij'] = 0;
                    $list[$key]['gerensb'] = 0;
                }
                if($val['xiaoqu'] != $school_name){
                    $list[$key]['zhiwei'] = '招生顾问';
                }
                $list[$key]['xuhao'] = $key+1;
                $list[$key]['yuefen'] = $yuefen;
                $list[$key]['fenxiao'] = $school_name;
                $list[$key]['yingchuqts'] = $chuqin_arr[$val['xingming']]['yingchuqts']?$chuqin_arr[$val['xingming']]['yingchuqts']:0;// 应出勤天数
                $list[$key]['shijicqts'] = $chuqin_arr[$val['xingming']]['chuqints']?$chuqin_arr[$val['xingming']]['chuqints']:0;// 实际出勤天数
                // $list[$key]['xuexikbj'] = '';//学习卡本金（补逻辑）
                $list[$key]['yiqims'] = 0;
                $list[$key]['xuexikbj'] = $list[$key]['xuexikbj'] ? $list[$key]['xuexikbj'] : 1;
                $list[$key]['edu'] = $list[$key]['edu'] ? $list[$key]['edu'] : 1;

                $list[$key]['json'] = json_decode($list[$key]['json'],'true');
                foreach($list[$key]['json'] as $k=>$v){
                    $list[$key][$k] = $v;
                }
                foreach($chanpinlx as $kk=>$vv){
                    $tmp = str_replace('.','',$vv['tichengds']);
                    // $temps = $this->encode($vv['xiangmu']);
                    $temps = $vv['field'];
                    if ($temps != 'laoshengxufei'){
                        $data[$key]['field'.$tmp] += $list[$key][$temps];
                        $tmp_arrs['field'.$tmp] = '';
                    }
                    if ($vv['shifoucyedjs'] == 1){
                        $datas[$key]['field'.$tmp] += $list[$key][$temps];
                    }else{
                         $list[$key]['nmp'] += $list[$key][$temps] * $vv['tichengds'];
                         // echo $list[$key]['xingming'].$list[$key][$temps].'*'.$vv['tichengds'].$temps.'<br>';
                    }
                }
                unset($list[$key]['json']);
                //招生副校长团队秒杀业绩
                if ($list[$key]['zhiwei'] == '招生副校长'){
                    $field1 = 0;
                    $field2 = 0;
                    $field3 = 0;
                    $field4 = 0;
                    foreach($byms98 as $vo){
                        if ($vo['jinbanyf'] == $yuefen2 && $vo['count'] == 1){
                            $field1 += 1;
                            if ($vo['xingming'] == $vo['yejigsr']){
                                $field2 += 1;
                            }
                        }
                        if ($vo['jiaofeiyf'] == $yuefen2 && $vo['count'] == 1){
                            $field3 += 1;
                            if ($vo['xingming'] == $vo['yejigsr']){
                                $field4 += 1;
                            }
                        }
                    }
                }
                $list[$key]['miaoshatc'] = 0;
                $list[$key]['yjs'] = 0;
                if($list[$key]['zhiwei'] == '招生副校长'){
                    foreach($byms98 as $vo){
                        if ($vo['jinbanyf'] == $yuefen2 && $vo['count'] == 1 && $val['xingming'] == $vo['yejigsr']){
                            $list[$key]['yjs'] += 1;
                            if ($list[$key]['yjs'] > 40){
                                $list[$key]['miaoshatc'] += 276*0.5;
                            }else{
                                $list[$key]['miaoshatc'] += 200*0.5;
                            }
                        }
                        if ($vo['count'] == 1 && $val['xingming'] == $vo['yejigsr'] && $vo['jiaofeiyf'] == $yuefen2){
                            $list[$key]['yjs'] += 1;
                            if ($list[$key]['yjs'] > 40){
                                $list[$key]['miaoshatc'] += 276*0.5;
                            }else{
                                $list[$key]['miaoshatc'] += 200*0.5;
                            }
                        }
                    }
                }else{
                    foreach($ms98 as $vo){
                        if ($vo['jinbanyf'] == $yuefen2 && $vo['count'] == 1 && $val['xingming'] == $vo['yejigsr']){
                            $list[$key]['yjs'] += 1;
                            if ($list[$key]['yjs'] > 40){
                                $list[$key]['miaoshatc'] += 276*0.5;
                            }else{
                                $list[$key]['miaoshatc'] += 200*0.5;
                            }
                        }
                        if ($vo['count'] == 1 && $val['xingming'] == $vo['yejigsr'] && $vo['jiaofeiyf'] == $yuefen2){
                            $list[$key]['yjs'] += 1;
                            if ($list[$key]['yjs'] > 40){
                                $list[$key]['miaoshatc'] += 276*0.5;
                            }else{
                                $list[$key]['miaoshatc'] += 200*0.5;
                            }
                        }
                    }
                    foreach($yqms as $vo){
                        if($vo['count'] == 1 && $val['xingming'] == $vo['yejigsr']){
                            $list[$key]['yjs'] += 1;
                            if ($list[$key]['yjs'] > 40){
                                $list[$key]['miaoshatc'] += 276;
                            }else{
                                $list[$key]['miaoshatc'] += 200;
                            }
                        }
                    }
                }
            }
            $lsss = array();
            foreach($list as $val){
                $lsss[] = $val['xingming'];
            }
            $sc_laoshi = M('rycb')->field('xingming,shenfenzhm,xiaoqu,bumen,zhiwu as zhiwei,gangweilx,leixing as zaizhizt,ruzhirq as ruzhisj,erjibm,ruzhinx as gongzuonx,gongjijgrbf as gongjij,shebaogrbf as gerensb')->where("xiaoqu='$school_name' and bumen = '市场部'")->select();
            foreach($sc_laoshi as $val){
                if(!in_array($val['xingming'],$lsss)){
                    $key++;
                    $val['xuhao'] = $key;
                    $val['yuefen'] = $yuefen;
                    $val['fenxiao'] = $school_name;
                    $list[] = $val;
                    $data[] = $tmp_arrs;
                }
            }
            $fujia['jibie'] = M('zxmc')->where(array('zhongxin'=>$school_name))->getField('jibie');
            $list[$key]['liushijtfjxjs'] = $this->getTuifei($qishu,$sid,13,$val['xingming']);
            //学习卡结算
            $new_data = array();
            $new_data2 = array();
            foreach($datas as $key=>$val){
                $datas[$key] = array_values($datas[$key]);
                foreach($datas[$key] as $ko=>$vo){
                    if($ko == 0){
                        $new_data[$key][$ko] = $vo;
                    }else{
                        $new_data[$key][$ko] = $new_data[$key][$ko -1] + $vo;
                    }
                    $new_data2[$key][$ko] = $vo;
                }
            }
            $temp = 0;
            //净人头考核
            $jingrentkh = M('school')->where(array('id'=>$sid))->getField('jingrentoukh');
            //学习卡额度计算(***????)
            foreach($list as $key=>$val){
                //招生副校长不算学习卡结算
                if($val['xiaoqu'] == $school_name && $val['zhiwei'] == '招生副校长'){
                    $list[$key]['xuexikjs'] = 0;
                }else{
                    if ($val['edu'] > $new_data[$key][ count($new_data[$key])-1 ] && $new_data[$key][ count($new_data[$key])-1 ] != 0){
                        for($i=1;$i<count($new_data[$key]);$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['ticheng'];
                            // echo $val['xingming'].":".$new_data2[$key][$i] ."*".$cplx[$i]['ticheng']."=".$new_data2[$key][$i] * $cplx[$i]['ticheng']."<br>";
                        }
                        $list[$key]['xuexikjs'] +=  $list[$key]['miaoshatc'];
                        // echo $val['xingming'].":"."定额计算:".$list[$key]['miaoshatc']."<br>";
                    }elseif($val['edu'] > $new_data[$key][ count($new_data[$key])-2 ] && $new_data[$key][ count($new_data[$key])-2 ] != 0){
                        for($i=1;$i<count($new_data[$key])-1;$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['ticheng'];
                        }
                        $list[$key]['xuexikjs'] += ($val['edu'] - $new_data[$key][$i-1]) * $cplx[$i-1]['ticheng'] + ($new_data[$key][$i] - $val['edu']) * $cplx[$i]['ticheng'];
                        $list[$key]['xuexikjs'] +=  $list[$key]['miaoshatc'];
                    }elseif($val['edu'] > $new_data[$key][ count($new_data[$key])-3 ]  && $new_data[$key][ count($new_data[$key])-3 ] != 0){
                        for($i=1;$i<count($new_data[$key])-2;$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['ticheng'];
                        }
                        $list[$key]['xuexikjs'] += ($val['edu'] - $new_data[$key][$i-1]) * $cplx[$i]['ticheng'] + ($new_data[$key][$i+1] - $val['edu']) * $cplx[$i+1]['ticheng'];
                        $list[$key]['xuexikjs'] +=  $list[$key]['miaoshatc'];
                        $i++;
                        for($i=$i;$i<count($new_data[$key]);$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['tichengfxxk'];
                        }
                    }elseif($val['edu'] > $new_data[$key][ count($new_data[$key])-4 ]  && $new_data[$key][ count($new_data[$key])-4 ] != 0){
                        for($i=1;$i<count($new_data[$key])-3;$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['ticheng'];
                        }
                        $list[$key]['xuexikjs'] += ($val['edu'] - $new_data[$key][$i-1]) * $cplx[$i]['ticheng'] + ($new_data[$key][$i+1] - $val['edu']) * $cplx[$i+1]['ticheng'];
                        $list[$key]['xuexikjs'] +=  $list[$key]['miaoshatc'];
                        $i++;
                        for($i=$i;$i<count($new_data[$key]);$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['tichengfxxk'];
                        }
                    }elseif($val['edu'] > $new_data[$key][ count($new_data[$key])-5 ] && $new_data[$key][ count($new_data[$key])-5 ] != 0){
                        for($i=1;$i<count($new_data[$key])-4;$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['ticheng'];
                        }
                        $list[$key]['xuexikjs'] += ($val['edu'] - $new_data[$key][$i-1]) * $cplx[$i]['ticheng'] + ($new_data[$key][$i] - $val['edu']) * $cplx[$i]['tichengfxxk'];
                        $list[$key]['xuexikjs'] +=  $list[$key]['miaoshatc'];
                        $i++;
                        for($i=$i;$i<count($new_data[$key]);$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['tichengfxxk'];
                        }
                    }elseif($val['edu'] > $new_data[$key][ count($new_data[$key])-6 ] && $new_data[$key][ count($new_data[$key])-6 ] != 0){
                        for($i=1;$i<count($new_data[$key])-5;$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['ticheng'];
                        }
                        $list[$key]['xuexikjs'] += ($val['edu'] - $new_data[$key][$i-1]) * $cplx[$i]['ticheng'] + ($new_data[$key][$i+1] - $val['edu']) * $cplx[$i+1]['ticheng'];
                        $list[$key]['xuexikjs'] +=  $list[$key]['miaoshatc'];
                        $i++;
                        for($i=$i;$i<count($new_data[$key]);$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['tichengfxxk'];
                        }
                    }elseif($val['edu'] > $new_data[$key][ count($new_data[$key])-7 ] && $new_data[$key][ count($new_data[$key])-7 ] != 0){
                        for($i=1;$i<count($new_data[$key])-6;$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['ticheng'];
                        }
                        $list[$key]['xuexikjs'] += ($val['edu'] - $new_data[$key][$i-1]) * $cplx[$i]['ticheng'] + ($new_data[$key][$i+1] - $val['edu']) * $cplx[$i+1]['ticheng'];
                        $list[$key]['xuexikjs'] +=  $list[$key]['miaoshatc'];
                        $i++;
                        for($i=$i;$i<count($new_data[$key]);$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['tichengfxxk'];
                        }
                    }elseif($val['edu'] > $new_data[$key][ count($new_data[$key])-8 ] && $new_data[$key][ count($new_data[$key])-8 ] != 0){
                        for($i=1;$i<count($new_data[$key])-7;$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['ticheng'];
                        }
                        $list[$key]['xuexikjs'] += ($val['edu'] - $new_data[$key][$i-1]) * $cplx[$i]['ticheng'] + ($new_data[$key][$i+1] - $val['edu']) * $cplx[$i+1]['ticheng'];
                        $list[$key]['xuexikjs'] +=  $list[$key]['miaoshatc'];
                        $i++;
                        for($i=$i;$i<count($new_data[$key]);$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['tichengfxxk'];
                        }
                    }else{
                        $zong = (is_nan($val['miaoshatc'] / ( 98 * $val['yjs'] )) ? 0 : $val['miaoshatc'] / ( 98 * $val['yjs'] ) )* $new_data[$key]['0'];
                        if ($zong > 0){
                            $list[$key]['xuexikjs'] = ($zong - $val['edu']) * 0.8 +  $val['edu'];
                        }else{
                            $list[$key]['xuexikjs'] = 0;
                        }
                        for($i=1;$i<count($new_data[$key]);$i++){
                            $list[$key]['xuexikjs'] +=$new_data2[$key][$i] * $cplx[$i]['tichengfxxk'];
                            // echo $val['xingming'].":".$new_data2[$key][$i] ."*".$cplx[$i]['tichengfxxk']."=".$new_data2[$key][$i] * $cplx[$i]['tichengfxxk']."<br>";
                        }
                    }
                    // echo $list[$key]['xingming'].$list[$key]['laoshengxufei'].'* 0.03'.'<br>';
                    // $list[$key]['xuexikjs'] += $list[$key]['laoshengxufei'] * 0.03;
                    $list[$key]['xuexikjs'] += $list[$key]['nmp'];
                    // echo $list[$key]['xingming'].$list[$key]['nmp'];
                    $temp += $val['laoshengxufei'];
                    // $list[$key]['xuexikjs'] = number_format($list[$key]['xuexikjs'],2);
                    $list[$key]['xuexikjs'] = $list[$key]['jingrentou'] >= $jingrentkh ? $list[$key]['xuexikjs'] : $list[$key]['xuexikjs'] * 0.85;
                }
                $hejiyye += $list[$key]['hejiyye'];
                $yiqims += $list[$key][$this->encode('1期秒杀') ];
                $jbyyiqms += $list[$key][$this->encode('98元1期秒杀') ];
            }
            foreach($list as $key=>$val){
                if ($list[$key]['zhiwei'] == '招生副校长'){
                    if($list[$key]['xiaoqu'] == $school_name){
                        $list[$key]['zhaoshengxztdmsyj'] = ($field1 - $field2) * 60 * 0.5 + ($field3 - $field4) * 60 * 0.5;
                        if ($hejiyye <= 600000){
                            $list[$key]['zhaoshengxztdyj'] = ( $hejiyye - $yiqims - $jbyyiqms) * 0.012;
                        }else{
                            $list[$key]['zhaoshengxztdyj'] = ( $hejiyye - $yiqims - $jbyyiqms) * 0.015;
                        }
                    }else{
                        $list[$key]['zhaoshengxztdmsyj'] = '';
                        $list[$key]['zhaoshengxztdyj'] = '';
                    }
                }
            }
        }

        $heji2 = array();
        foreach($data as $val){
            foreach($val as $kk=>$vv){
                $heji2[$kk] += $vv; 
            }
        }

        
        $tmp_arr['name'] = '老生续读';
        $tmp_arr['ticheng'] = '0.03';
        $tmp_arr['tichengfxxk'] = '0';
        $tmp_arr['tichengds'] = '3%';
        $tmp_arr['tichengdsfxxk'] = '0';
        $cplx[] = $tmp_arr;
        $heji2[] = $temp;

        $role = 0;
        switch ($status)
        {
            case 0:
                $role = 8;
                break;
            case 1:
                $role = 10;
                break;
            case 2:
                $role = 11;
                break;
            case 3:
                $role = 12;
                break;
            case 4:
                $role = 13;
                break;
            case 5:
                $role = 14;
                break;
            case 6:
                $role = 16;
                break;
            case 99:
                $role = 17;
                break;
        }
        $status_zt = $status;
        //重定义status判断是否可以进行修改
        $status = 0;
        if($role == $role_id || $role_id==1){
            $status = 1;
        }
        $c_data = count($data['0']);
        $role_name = M('role')->where(array('id'=>$role))->getField('name');
        $this->assign('role_id',$role_id);
        $this->assign('role_name',$role_name);
        $this->assign('c_data',$c_data);
        $this->assign('suoshudd',$suoshudd);
        $this->assign('status',$status);
        $this->assign('status_zt',$status_zt);
        $this->assign('data',$data);
        $this->assign('cplx',$cplx);
        $this->assign('chanpinlx',$chanpinlx);
        $this->assign('fujia',$fujia);
        $this->assign('heji',$heji);
        $this->assign('heji2',$heji2);
        $this->assign('school_name',$school_name);
        $this->assign('yuefen',$yuefen);
        $this->assign('nianyue',substr($qishu,0,4).'年'.substr($qishu,4,2).'月');
        $this->assign('qishu',$qishu);
        $this->assign('sid',$sid);
        $this->assign("list",$list);
        $this->assign("list_pz",$list_pz);
        $this->adminDisplay();
    }

    //市场部提交
    public function saves(){
        $data = json_decode($_POST['jsons'],true);
        $pz_json = json_decode($_POST['pz_json'],true); 
        $qishu = $_POST['qishu'];
        $sid = $_POST['sid'];
        $suoshudd = $this->getQishuId($qishu,$sid,19);
        if (!$suoshudd){
            $suoshudd = $this->insertQishuHistory(19,$qishu,$sid);
        }
        $fujia = $_POST;
        unset($fujia['sid'],$fujia['status'],$fujia['qishu'],$fujia['jsons'],$fujia['pz_json']);
        M('fjb')->where("suoshudd='$suoshudd'")->delete();
        foreach($fujia as $key=>$val){
            $tmp = array();
            $tmp['field'] = $key;
            $tmp['value'] = $val;
            $tmp['suoshudd'] = $suoshudd;
            M('fjb')->add($tmp);
        }
        M('scbgz')->where("suoshudd='$suoshudd'")->delete();
        M('scbgz_pz')->where("qishu=$qishu and sid=$sid")->delete();
        $cplx = array();
        $chanpinlx = M('sjcplx')->field('xiangmu,tichengds,tichengdsfxxk,shifoucyedjs')->where("shifouqy='启用' and shifoutxyj='1' ")->select();

        //按提成点数从高到低排序
        $last_names = array_column($chanpinlx,'tichengds');
        array_multisort($last_names,SORT_DESC,$chanpinlx);

        foreach($chanpinlx as $key=>$vv){
            $vv['xiangmu'] = str_replace('(','（',$vv['xiangmu']);
            $vv['xiangmu'] = str_replace(')','）',$vv['xiangmu']);
            $chanpinlx[$key]['field'] = $this->encode($vv['xiangmu']);
            // $chanpinlx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
            if (!in_array($chanpinlx[$key]['tichengds'],$ticheng) && $chanpinlx[$key]['field'] != 'laoshengxufei'){
                $cplx[$key]['ticheng'] = $chanpinlx[$key]['tichengds'];
                $ticheng[] = $chanpinlx[$key]['tichengds'];
                $cplx[$key]['tichengfxxk'] = $vv['tichengdsfxxk'] ? $vv['tichengdsfxxk'] : number_format($vv['tichengds'] * 0.8,2);
                $cplx[$key]['tichengds'] = is_numeric($vv['tichengds']) ? ( $vv['tichengds'] * 100 ).'%' : $vv['tichengds'];
                $cplx[$key]['tichengdsfxxk'] = is_numeric($cplx[$key]['tichengfxxk']) ? ( $cplx[$key]['tichengfxxk'] * 100 ).'%' : $cplx[$key]['tichengfxxk'];
                $cplx[$key]['name'] = $vv['xiangmu'];
            }
        }
        $cplx = array_values($cplx);

        foreach($data as $key=>$val){
            for($b=16;$b<15+count($cplx)+2;$b++){
                unset($data[$key][$b]);
            }
            $data[$key] = array_values($data[$key]);
        }
        foreach($pz_json as $key=>$val){
            for($b=16;$b<15+count($cplx)+2;$b++){
                unset($pz_json[$key][$b]);
            }
            $pz_json[$key] = array_values($pz_json[$key]);
        }
        $list = array();
        $field = M('')->query("SELECT COLUMN_NAME from information_schema.COLUMNS where table_name = 'stjy_scbgz' and table_schema ='stjy' and COLUMN_NAME != 'id' and COLUMN_NAME != 'suoshudd' and COLUMN_NAME != 'daorusj' and COLUMN_NAME != 'status'");
        $field2 = $field;
        foreach($data as $key=>$val){
            $j=0;
            // if ($val['0'] == '合计'){
                // for($i=0;$i<15;$i++){
                //     unset($field[$i]);
                // }
                // $list[ $key ]['fenxiao'] = '合计';
                // $j=1;
            // }
            foreach($field as $kk=>$vv){
                $list[ $key ][ $vv['column_name'] ] = $val[$j];
                $j++;
            }
            $list[$key]['suoshudd'] = $suoshudd;
            if ($list[$key]['fenxiao']){
                $list[$key]['status'] = $_POST['status'];
                $res = M('scbgz')->add($list[$key]);
            }
        }
        $list = array();
        foreach($pz_json as $key=>$val){
            if($val){
                $j=0;
                foreach($field2 as $kk=>$vv){
                    $list[ $key ][ $vv['column_name'] ] = $val[$j];
                    $j++;
                }
                // $list[$key]['suoshudd'] = $suoshudd;
                $list[$key]['qishu'] = $qishu;
                $list[$key]['sid'] = $sid;
                M('scbgz_pz')->add($list[$key]);
            }
        }
        $this->ajaxReturn(1);
        // $this->success('保存成功');
    }

    //查找本校区市场部中没有业绩的人员
    public function getScbrenyuan($sid,$scyj){
        $scbry_list = M("renshi")->field("xingming")->where("sid = ".$sid)->select();
        $suoyou = array();
        foreach ($scbry_list as $k=>$v){
            $suoyou[] = $v["xingming"];
        }
        $youyeji = array();
        foreach ($scyj as $k=>$v){
            $youyeji[] = $v['xingming'];
        }
        $arr = array_diff($suoyou,$youyeji);
        $meiyeji = array();
        foreach ($arr as $k=>$v){
            $meiyeji[]["xingming"] = $v;
        }
        return $meiyeji;
    }

    //根据身份证获取基本数据
    public function getSf(){
        $sfz = I('sfz','445221199109174590');
        $fenxiao = I('fenxiao');
        $info = M('rycb')->field('xingming,shenfenzhm,xiaoqu,bumen,zhiwu as zhiwei,gangweilx,leixing as zaizhizt,ruzhirq as ruzhisj,erjibm,ruzhinx as gongzuonx')->where("shenfenzhm='$sfz'")->find();
        if($info){
            $this->ajaxReturn($info);
        }else{
            $this->ajaxReturn(array());
        }
    }

    

}

?>
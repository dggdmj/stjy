<?php
namespace Admin\Action;
use Think\Action;
use Admin\Model;
class CountSrqkylbAction extends CommonAction {

    //市场业绩表汇总
	public function getSrqkylbData($qishu='',$sid=''){
        //获取学校名字
        $school_name = M('school')->where(array('id'=>$sid))->getField('name');
        //查出学员信息表所有相关的学员
        $xyxxb = $this->getXyxxb($qishu,$sid);
        $info['xuhao'] = 1;
        $info['xuexiao'] = $school_name;
        $info['zaibianrs'] = $xyxxb['tingkers']+$xyxxb['jinban']+$xyxxb['weijinban'];
        $info['jinban'] = $xyxxb['jinban'];
        $info['weijinban'] = $xyxxb['weijinban'];
        $info['tingkers'] = $xyxxb['tingkers'];

        $info['shangkecs'] = 4;//先写死
        $info['yingzongxfrc'] = $info['shangkecs'] * $info['zaibianrs'];
        //获取课消明细表的值
        $kexiao = $this->getKxmxb($qishu,$sid);
        $info['shijizxfrc'] = $kexiao['shuliang'];
        $info['zongrencxss'] = $kexiao['zongrencxss'];
        $info['querenxfsr'] = $kexiao['kexiaoje'];//总学费
        $info['pingjunkcdj'] = round(($info['querenxfsr'] / $info['shijizxfrc']),2);
        $info['pingjunxsdj'] = round($info['querenxfsr'] / $info['zongrencxss'],2);
        $info['jiaocaifei'] = $this->getJcf($qishu,$sid);
        $info['shijicqzrcxs'] = $kexiao['shijicqzrcxs'];
        //获取本校区的单价
        $danjia = M('gequybzdj')->where(array('xuexiaomc'=>$school_name))->getField('danjia');
        $info['biaozhunzsr'] = $info['shijicqzrcxs'] * $danjia;
        $info['zongshouru'] = $info['jiaocaifei'] + $info['querenxfsr'];
        $info['xueshengcql'] = (round($info['shijizxfrc'] / $info['yingzongxfrc'],2)*100).'%';
        //获取上个月的收入
        $last_time = date('Ym',strtotime((substr($qishu,0,4).'-'.substr($qishu,4,2)).' -1 month'));
        $last_kxmxb = $this->getKxmxb($last_time,$sid);
        $info['shouruhb'] = $info['querenxfsr'] - $last_kxmxb['querenxfsr'];//$info['querenxfsr'] - 上个月确认学费收入收入
        $info['kecidjhb'] = $info['pingjunkcdj'] - $last_kxmxb['pingjunkcdj'];
        $info['xiaoshidjhb'] = $info['pingjunxsdj'] - $last_kxmxb['pingjunxsdj'];
        $info['benyuezddcksr'] = $kexiao['benyuezddcksr'];
        $info['shijiskcs'] = round($info['querenxfsr'] / $info['benyuezddcksr'],2);
        $info['youxiaofkcddcksr'] =  $info['benyuezddcksr'];
        $info['shijiskcs2'] =  round($info['querenxfsr'] / $info['youxiaofkcddcksr'],2);

        //获取学员信息表的id
        $jysjb_id = $this->getQishuId($qishu,$sid,12);
        $jysjb = M('xsrsbdb')->where("suoshudd='$jysjb_id'")->getField('xiangmu,renshu');
        $info['qichu'] = $jysjb['本月初在册学生人数'];
        $info['xinsheng'] = $jysjb['本月新生人数'];
        $info['liushihl'] = $jysjb['流失回来学生'];
        $info['zhuangru'] = $jysjb['其他学校转入'];
        $info['liushi'] = $jysjb['本月流失学生人数'];
        $info['tuifei'] = $jysjb['本月退费学生'];
        $info['zhuangchu'] = $jysjb['转校学员'];
        $info['qimo'] = $jysjb['本月底在册学生人数'];
        $last_xyxxb = $this->getXyxxb($last_time,$sid);
        $info['qichuxy'] = $info['qichu']-$last_xyxxb['tingkers']-$last_xyxxb['jinban']-$last_xyxxb['weijinban'];
        $info['qimoxy'] =  $info['qimo'] - $info['zaibianrs'];
        return $info;
    }

    //获取学员信息表
    public function getXyxxb($qishu='',$sid=''){
        $xyxxb_id = $this->getQishuId($qishu,$sid,1);
        if (!$xyxxb_id){
            return array();
        }
        $xyxxb = $this->checkFenbiao($xyxxb_id,'xyxxb');
        $xyxxb_list = M($xyxxb)->field('zhuangtai,shoucixfrq')->where("suoshudd='$xyxxb_id' and ( zhuangtai='在读' or zhuangtai='休学' ) ")->select();
        $info['tingkers'] = 0;
        $info['jinban'] = 0;
        $info['weijinban'] = 0;
        foreach($xyxxb_list as $val){
            if ($val['zhuangtai'] == '休学'){
                $info['tingkers']+=1;
            }else{
                if ($val['shoucixfrq']){
                    $info['jinban'] += 1;
                }else{
                    $info['weijinban']+=1;
                }
            }
        }
        return $info;
    }

    //获取课消明细表的消费次数
    public function getKxmxb($qishu='',$sid=''){
        $kxmxb_id = $this->getQishuId($qishu,$sid,5);
        $data = array();
        if ($kxmxb_id){
            $kxmxb = $this->checkFenbiao($kxmxb_id,'kxmxb');
            $list = M($kxmxb)->field('shuliang,kexiaoje,jingduxs,fanduxs,waijiaoxs,shangkesc,shifoucq,xuehao,kexiaoje')->where(array('suoshudd'=>$kxmxb_id))->select();
            $xuehao = array();
            foreach($list as $val){
                $val['shuliang'] = substr($val['shuliang'],0,1);
                $data['shuliang'] += $val['shuliang'];
                $data['kexiaoje'] += $val['kexiaoje'];
                $data['zongrencxss'] += $val['jingduxs'];
                $data['zongrencxss'] += $val['fanduxs'];
                $data['zongrencxss'] += $val['waijiaoxs'];
                if ($val['shifoucq'] == '是'){
                    $data['shijicqzrcxs'] += substr($val['shangkesc'],0,-2);
                }
                if (!in_array($val['xuehao'],$xuehao)){
                    $xuehao[] = $val['xuehao'];
                    $data['benyuezddcksr'] += $val['kexiaoje'];
                }
            }
        }
        return $data;
    }

    //获取教材费
    public function getJcf($qishu='201808',$sid='1'){
        $jckmx_id = $this->getQishuId($qishu,$sid,34);
        $list = M('jckmx as jc')
                ->join('stjy_wupinqd as wp on wp.mingcheng=jc.mingcheng')
                ->field('jc.danjia,jc.riqi')
                ->where("jc.suoshudd = '$jckmx_id' and wp.leixing='教材'")
                ->select();
        $time = substr($qishu,0,4).'-'.substr($qishu,4,2);
        $qishu_time = strtotime($time);
        $qishu_last_month = strtotime($time.' +1 month');
        $jiaocaifei = 0;
        foreach($list as $val){
            if (strtotime($val['riqi']) >= $qishu_time && strtotime($val['riqi']) < $qishu_last_month){
                $jiaocaifei += $val['danjia'];
            }
        }
        return $jiaocaifei;
    }
    
    
}
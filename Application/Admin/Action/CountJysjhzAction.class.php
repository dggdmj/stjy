<?php
namespace Admin\Action;
use Think\Action;
class CountJysjhzAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getJysjbhzData($qishu='201810',$sid='15'){
        $suoshudd = $this->getQishuId($qishu,$sid,40);
        if (!$suoshudd){
            $suoshudd = $this->insertQishuHistory(40,$qishu,$sid);
        }
        //收入一览表
        $srylb_id = $this->getQishuId($qishu,$sid,39);
        $srylb = M('srylb')->where("suoshudd='$srylb_id'")->find();
        //经营数据表
        $jysjb_id = $this->getQishuId($qishu,$sid,12);
        //班级重要数据
        $bjzysj =  M('bjzysjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$jysjb_id)->order('id asc')->select();
        //获取学校信息
        $school = M('school')->field('name,classnum')->where("id=$sid")->find();
        //获取续费率数据
        $xfl_id = $this->getQishuId($qishu,$sid,37);
        $xfl = M('xfl')->field('fenmu,xufeixsrs,xufeilv')->where(array('suoshudd'=>$xfl_id,'xuhao'=>1,'type'=>1))->find();
        //获取上个月的汇总
        $last_qishu = date('Ym',strtotime(substr($qishu,0,4).'-'.substr($qishu,4,2).'-01 -1 month'));
        if(substr($qishu,0,4) == substr($last_qishu,0,4)){
            $last_jysjhz_id = $this->getQishuId($qishu,$sid,40);
            $last_jysjhz = M('jysjbhz')->field('xufeiqrs,xufeihrs')->where(array('suoshudd'=>$last_jysjhz_id))->find();
        }
        $info['fenxiao'] =  $school['name'];
        $info['yuechu'] = $srylb['qichu'];
        $info['yuedi'] = $srylb['zaibianrs'];
        $info['weijinban'] = $srylb['weijinban'];
        $info['tingdu'] = $srylb['tingkers'];
        $info['tuifei'] = $srylb['tuifei'];
        $info['zaidurs'] = $info['yuedi'] - $info['weijinban'] - $info['tingdu'];
        $info['keyongjssl'] = $info['zaidurs'] / 10 * 2.5 / 11;
        $info['shijijss'] = M('school')->where(array('id'=>$sid))->getField('teachernum');//实际教师数    未给逻辑 
        $info['kaibanshu'] = $bjzysj['5']['dangyuebjs'];
        $info['banjibhl'] = $bjzysj['5']['banjibhl'];
        $info['jiaoshishu'] = $school['classnum'];
        $info['kongquexw'] =  $info['kaibanshu'] * 12 - $info['yuedi'] - $info['weijinban'] - $info['tingdu'];
        $info['jiaoshilyl'] = (number_format($info['yuedi'] / $info['jiaoshishu'] / 12 / 6,4) * 100 ).'%';
        $info['pingjunqrsrdj'] = $srylb['pingjunkcdj'];
        $info['xufeiqrs'] = $xfl['fenmu'];
        $info['xufeihrs'] = $xfl['xufeixsrs'];
        $info['xufeilv'] = $xfl['xufeilv'];
        $info['nianduxfqrs'] = $$last_jysjhz['nianduxfqrs'] + $info['xufeiqrs'];
        $info['nianduxfhrs'] = $last_jysjhz['nianduxfhrs'] + $info['xufeihrs'];
        $info['nianduxfl'] = (number_format($info['nianduxfhrs'] / $info['nianduxfqrs'],4) * 100 ).'%';
        $info['suoshudd'] = $suoshudd;
        M('jysjbhz')->add($info);
    }
}

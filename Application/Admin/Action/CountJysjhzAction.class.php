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
        //收入一览表
        $srylb_id = $this->getQishuId($qishu,$sid,39);
        $srylb = M('srylb')->where("suoshudd='$srylb_id'")->find();
        //经营数据表
        $jysjb_id = $this->getQishuId($qishu,$sid,12);
        //班级重要数据
        $bjzysj =  M('bjzysjb')->field('id,suoshudd,daorusj',true)->where('suoshudd ='.$jysjb_id)->order('id asc')->select();
        //获取学校信息
        $school = M('school')->field('name,classnum')->where("id=$sid")->find();
        dump( $bjzysj );exit;
        $info['fenxiao'] =  $school['name'];
        $info['yuechu'] = $srylb['qichu'];
        $info['yuedi'] = $srylb['zaibianrs'];
        $info['weijinban'] = $srylb['weijinban'];
        $info['tingdu'] = $srylb['tingkers'];
        $info['tuifei'] = $srylb['tuifei'];
        $info['zaidurs'] = $info['yuedi'] - $info['weijinban'] - $info['tingdu'];
        $info['keyongjssl'] = $info['zaidurs'] / 10 * 2.5 / 11;
        $info['shijijss'] = 0;//未给逻辑
        $info['kaibanshu'] = $bjzysj['5']['dangyuebjs'];
        $info['banjibhl'] = $bjzysj['5']['banjibhl'];
        $info['jiaoshishu'] = $school['classnum'];
        $info['kongquexw'] =  $info['kaibanshu'] * 12 - $info['yuedi'] - $info['weijinban'] - $info['tingdu'];
        $info['jiaoshilyl'] = $info['yuedi'] / $info['jiao']

    }
}

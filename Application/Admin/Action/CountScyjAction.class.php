<?php
namespace Admin\Action;
use Think\Action;
class CountScyjAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getScyjbData($qishu='201806',$sid='1'){
        $nianfen = substr($qishu,0,4);
        $tid = 4;//收据记录表的id
        $suoshuid = $this->getOid($qishu,$sid,$tid);//获取订单id
        //人事数组
        // $renshi_list = M('renshi as rs')
        //             ->field('rs.xingming')
        //             // ->join('')
        //             ->where("rs.bumen='市场部'")
        //             ->select();
        // foreach($shoufeilx as $v){
        //     $renshi_arr = $v;
        // }

        $renming = array();

        $Model = M();
        //查询出所有数据
        $list = M('sjjlb_'.$nianfen.' as ss')
                    ->join('LEFT JOIN stjy_szlsb as sz on sz.shoujuhao=ss.shoujuhao')
                    ->field('ss.shoujulx,ss.yejigsr,ss.chanpinlx,ss.jingrentou,sz.shouru,sz.zhanghu')
                    ->where(" ss.suoshudd = '$suoshuid' and ss.yejigsr != '' ")
                    ->group('ss.shoujuhao')
                    ->select();

        //查询是否是结算
        $shoufeilx = M('shoufeilx')->field('leixing')->where(array('is_jiesuan'=>1))->select();
        foreach($shoufeilx as $val){
            $shoufei_arr[] = $val;
        }

        //过滤归属人并判断是否是结算1结算  2不结算
        foreach($list as &$v){
            $v['yejigsr'] = $this->getJingrentou($v['yejigsr']);
            if (!in_array($v['yejigsr'],$renming)){
                $renming[] = $v['yejigsr'];
            }
            if (in_array($v['shoujulx'],$shoufeilx)){
                $v['shoufeilx'] = 1;
            }else{
                $v['shoufeilx'] = 1;
            }
        }

        //从组数组并且计算净人头
        $newList = array();
        foreach($renming as $key=>$vo){
            $newList[$key]['xingming'] = $vo;
            $newList[$key]['jingrentou'] = 0;
            foreach($list as $v){
                if ($vo == $v['yejigsr'] && $v['shoufeilx'] == 1){
                    $newList[$key]['jingrentou'] += $v['jingrentou'];//净人头
                    if ($v['zhanghu'] != '结转学费' && $v['zhanghu'] != '老带新返现'){
                        switch ($v['chanpinlx']){
                            case '1期秒杀':
                                $newList[$key]['yiqims'] += $v['shouru'];
                                break;
                            case '1期国际会员':
                                $newList[$key]['yiqigjhy'] += $v['shouru'];
                                break;
                            case '1年国际会员（另赠送2期）':
                                $newList[$key]['yiniangjhy'] += $v['shouru'];
                                break;
                            case '1年国际会员（另赠送1期）':
                                $newList[$key]['yiniangjhy1'] += $v['shouru'];
                                break;
                            case '1年国际会员（正价）':
                                $newList[$key]['yiniangjhyzj'] += $v['shouru'];
                                break;
                            case '1年国际会员（非正价）':
                                $newList[$key]['yiniangjhyfzj'] += $v['shouru'];
                                break;
                            case '2年国际会员（非正价）':
                                $newList[$key]['liangniangjhyfzj'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期2年）-抵扣':
                                $newList[$key]['yudingyxyhd2'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期3年）-另交':
                                $newList[$key]['yudingyxyhd3lj'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期3年）-抵扣':
                                $newList[$key]['yudingyxyhd3'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期4年）-抵扣':
                                $newList[$key]['yudingyxyhd4'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期5年）-抵扣':
                                $newList[$key]['yudingyxyhd5'] += $v['shouru'];
                                break;
                            case '创始-预订游学免费读（有效期2年）':
                                $newList[$key]['yudingyxmfd2'] += $v['shouru'];
                                break;
                            case '创始-1年国际会员（另赠送1年）':
                                $newList[$key]['yiniangjhy'] += $v['shouru'];
                                break;
                            case '创始-预订游学优惠读（有效期3年）（另赠送2年）':
                                $newList[$key]['yudingyxyhj'] += $v['shouru'];
                                break;
                            case '创始-预订游学优惠读（有效期3年）（另赠送2年）-（2人拼单，每人有效期1.5年赠送1年）':
                                $newList[$key]['yudingyxyhj2'] += $v['shouru'];
                                break;
                            case '买2年送1年（赠1年国际会员）':
                                $newList[$key]['maiernsyn'] += $v['shouru'];
                                break;
                            case '创始-预订游学免费读最长读1年':
                                $newList[$key]['ydyxmfdzcdyn'] += $v['shouru'];
                                break;
                            case '创始-预订游学免费读最长读2年':
                                $newList[$key]['ydyxmfdzcdln'] += $v['shouru'];
                                break;
                            case '创始-预订游学免费读最长读3年':
                                $newList[$key]['ydyxmfdzcdsn'] += $v['shouru'];
                                break;
                            case '幼儿-2年国际会员':
                                $newList[$key]['lngjhy'] += $v['shouru'];
                                break;
                            case '幼儿-2.5年国际会员':
                                $newList[$key]['ldwngjhy'] += $v['shouru'];
                                break;
                            case '特色班':
                                $newList[$key]['teseb'] += $v['shouru'];
                                break;
                            case '一对一':
                                $newList[$key]['yiduiy'] += $v['shouru'];
                                break;
                            case '定金':
                                $newList[$key]['dingjin'] += $v['shouru'];
                                break;
                            case '金牌会员':
                                $newList[$key]['jinpaihy'] += $v['shouru'];
                                break;
                            case '国内领袖课程':
                                $newList[$key]['guoneilxkc'] += $v['shouru'];
                                break;
                            case '国际领袖课程':
                                $newList[$key]['guojilxkc'] += $v['shouru'];
                                break;
                            case '魔法英语':
                                $newList[$key]['mofayy'] += $v['shouru'];
                                break;
                            case '爱外教':
                                $newList[$key]['aiwaij'] += $v['shouru'];
                                break;
                            case '老生续费':
                                $newList[$key]['laoshengxd'] += $v['shouru'];
                                break;
                        }
                    }
                }

            }
        }
        dump($newList);

        
    }

    

    //从收据记录表中的备注中获得净人头
    public function getJingrentou($str){
        $arr = array();
        $arr = explode("(",$str);
        return $arr['0'];
    }

}

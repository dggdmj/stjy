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
        $heji = array();

        // 定义合计
        $heji['xingming'] = '合计';
        $heji['jingrentou'] = 0;
        $heji['yiqims'] = 0;
        $heji['yiqigjhy'] = 0;
        $heji['yiniangjhy2'] = 0;
        $heji['yiniangjhy1'] = 0;
        $heji['yiniangjhyzj'] = 0;
        $heji['yiniangjhyfzj'] = 0;
        $heji['liangniangjhyfzj'] = 0;
        $heji['yudingyxyhd2'] = 0;
        $heji['yudingyxyhd3lj'] = 0;
        $heji['yudingyxyhd3'] = 0;
        $heji['yudingyxyhd4'] = 0;
        $heji['yudingyxyhd5'] = 0;
        $heji['yudingyxmfd2'] = 0;
        $heji['yiniangjhy'] = 0;
        $heji['yudingyxyhj'] = 0;
        $heji['yudingyxyhj2'] = 0;
        $heji['maiernsyn'] = 0;
        $heji['ydyxmfdzcdyn'] = 0;
        $heji['ydyxmfdzcdln'] = 0;
        $heji['ydyxmfdzcdsn'] = 0;

        $heji['lngjhy'] = 0;
        $heji['ldwngjhy'] = 0;
        $heji['teseb'] = 0;
        $heji['yiduiy'] = 0;
        $heji['dingjin'] = 0;
        $heji['jinpaihy'] = 0;
        $heji['guoneilxkc'] = 0;
        $heji['guojilxkc'] = 0;
        $heji['mofayy'] = 0;
        $heji['aiwaij'] = 0;
        $heji['laoshengxd'] = 0;


        foreach($renming as $key=>$vo){
            $newList[$key]['xingming'] = $vo;

            //定义为0元
            $newList[$key]['jingrentou'] = 0;
            $newList[$key]['yiqims'] = 0;
            $newList[$key]['yiqigjhy'] = 0;
            $newList[$key]['yiniangjhy2'] = 0;
            $newList[$key]['yiniangjhy1'] = 0;
            $newList[$key]['yiniangjhyzj'] = 0;
            $newList[$key]['yiniangjhyfzj'] = 0;
            $newList[$key]['liangniangjhyfzj'] = 0;
            $newList[$key]['yudingyxyhd2'] = 0;
            $newList[$key]['yudingyxyhd3lj'] = 0;
            $newList[$key]['yudingyxyhd3'] = 0;
            $newList[$key]['yudingyxyhd4'] = 0;
            $newList[$key]['yudingyxyhd5'] = 0;
            $newList[$key]['yudingyxmfd2'] = 0;
            $newList[$key]['yiniangjhy'] = 0;
            $newList[$key]['yudingyxyhj'] = 0;
            $newList[$key]['yudingyxyhj2'] = 0;
            $newList[$key]['maiernsyn'] = 0;
            $newList[$key]['ydyxmfdzcdyn'] = 0;
            $newList[$key]['ydyxmfdzcdln'] = 0;
            $newList[$key]['ydyxmfdzcdsn'] = 0;

            $newList[$key]['lngjhy'] = 0;
            $newList[$key]['ldwngjhy'] = 0;
            $newList[$key]['teseb'] = 0;
            $newList[$key]['yiduiy'] = 0;
            $newList[$key]['dingjin'] = 0;
            $newList[$key]['jinpaihy'] = 0;
            $newList[$key]['guoneilxkc'] = 0;
            $newList[$key]['guojilxkc'] = 0;
            $newList[$key]['mofayy'] = 0;
            $newList[$key]['aiwaij'] = 0;
            $newList[$key]['laoshengxd'] = 0;

            foreach($list as $v){
                if ($vo == $v['yejigsr'] && $v['shoufeilx'] == 1){
                    //净人头
                    $newList[$key]['jingrentou'] += $v['jingrentou'];
                    $heji['jingrentou'] += $v['jingrentou'];
                    if ($v['zhanghu'] != '结转学费' && $v['zhanghu'] != '老带新返现'){
                        switch ($v['chanpinlx']){
                            case '1期秒杀':
                                $newList[$key]['yiqims'] += $v['shouru'];
                                $heji['yiqims'] += $v['shouru'];
                                break;
                            case '1期国际会员':
                                $newList[$key]['yiqigjhy'] += $v['shouru'];
                                $heji['yiqigjhy'] += $v['shouru'];
                                break;
                            case '1年国际会员（另赠送2期）':
                                $newList[$key]['yiniangjhy2'] += $v['shouru'];
                                $heji['yiniangjhy2'] += $v['shouru'];
                                break;
                            case '1年国际会员（另赠送1期）':
                                $newList[$key]['yiniangjhy1'] += $v['shouru'];
                                $heji['yiniangjhy1'] += $v['shouru'];
                                break;
                            case '1年国际会员（正价）':
                                $newList[$key]['yiniangjhyzj'] += $v['shouru'];
                                $heji['yiniangjhyzj'] += $v['shouru'];
                                break;
                            case '1年国际会员（非正价）':
                                $newList[$key]['yiniangjhyfzj'] += $v['shouru'];
                                $heji['yiniangjhyfzj'] += $v['shouru'];
                                break;
                            case '2年国际会员（非正价）':
                                $newList[$key]['liangniangjhyfzj'] += $v['shouru'];
                                $heji['liangniangjhyfzj'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期2年）-抵扣':
                                $newList[$key]['yudingyxyhd2'] += $v['shouru'];
                                $heji['yudingyxyhd2'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期3年）-另交':
                                $newList[$key]['yudingyxyhd3lj'] += $v['shouru'];
                                $heji['yudingyxyhd3lj'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期3年）-抵扣':
                                $newList[$key]['yudingyxyhd3'] += $v['shouru'];
                                $heji['yudingyxyhd3'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期4年）-抵扣':
                                $newList[$key]['yudingyxyhd4'] += $v['shouru'];
                                $heji['yudingyxyhd4'] += $v['shouru'];
                                break;
                            case '预订游学优惠读（有效期5年）-抵扣':
                                $newList[$key]['yudingyxyhd5'] += $v['shouru'];
                                $heji['yudingyxyhd5'] += $v['shouru'];
                                break;
                            case '创始-预订游学免费读（有效期2年）':
                                $newList[$key]['yudingyxmfd2'] += $v['shouru'];
                                $heji['yudingyxmfd2'] += $v['shouru'];
                                break;
                            case '创始-1年国际会员（另赠送1年）':
                                $newList[$key]['yiniangjhy'] += $v['shouru'];
                                $heji['yiniangjhy'] += $v['shouru'];
                                break;
                            case '创始-预订游学优惠读（有效期3年）（另赠送2年）':
                                $newList[$key]['yudingyxyhj'] += $v['shouru'];
                                $heji['yudingyxyhj'] += $v['shouru'];
                                break;
                            case '创始-预订游学优惠读（有效期3年）（另赠送2年）-（2人拼单，每人有效期1.5年赠送1年）':
                                $newList[$key]['yudingyxyhj2'] += $v['shouru'];
                                $heji['yudingyxyhj2'] += $v['shouru'];
                                break;
                            case '买2年送1年（赠1年国际会员）':
                                $newList[$key]['maiernsyn'] += $v['shouru'];
                                $heji['maiernsyn'] += $v['shouru'];
                                break;
                            case '创始-预订游学免费读最长读1年':
                                $newList[$key]['ydyxmfdzcdyn'] += $v['shouru'];
                                $heji['ydyxmfdzcdyn'] += $v['shouru'];
                                break;
                            case '创始-预订游学免费读最长读2年':
                                $newList[$key]['ydyxmfdzcdln'] += $v['shouru'];
                                $heji['ydyxmfdzcdln'] += $v['shouru'];
                                break;
                            case '创始-预订游学免费读最长读3年':
                                $newList[$key]['ydyxmfdzcdsn'] += $v['shouru'];
                                $heji['ydyxmfdzcdsn'] += $v['shouru'];
                                break;
                            case '幼儿-2年国际会员':
                                $newList[$key]['lngjhy'] += $v['shouru'];
                                $heji['lngjhy'] += $v['shouru'];
                                break;
                            case '幼儿-2.5年国际会员':
                                $newList[$key]['ldwngjhy'] += $v['shouru'];
                                $heji['ldwngjhy'] += $v['shouru'];
                                break;
                            case '特色班':
                                $newList[$key]['teseb'] += $v['shouru'];
                                $heji['teseb'] += $v['shouru'];
                                break;
                            case '一对一':
                                $newList[$key]['yiduiy'] += $v['shouru'];
                                $heji['yiduiy'] += $v['shouru'];
                                break;
                            case '定金':
                                $newList[$key]['dingjin'] += $v['shouru'];
                                $heji['dingjin'] += $v['shouru'];
                                break;
                            case '金牌会员':
                                $newList[$key]['jinpaihy'] += $v['shouru'];
                                $heji['jinpaihy'] += $v['shouru'];
                                break;
                            case '国内领袖课程':
                                $newList[$key]['guoneilxkc'] += $v['shouru'];
                                $heji['guoneilxkc'] += $v['shouru'];
                                break;
                            case '国际领袖课程':
                                $newList[$key]['guojilxkc'] += $v['shouru'];
                                $heji['guojilxkc'] += $v['shouru'];
                                break;
                            case '魔法英语':
                                $newList[$key]['mofayy'] += $v['shouru'];
                                $heji['mofayy'] += $v['shouru'];
                                break;
                            case '爱外教':
                                $newList[$key]['aiwaij'] += $v['shouru'];
                                $heji['aiwaij'] += $v['shouru'];
                                break;
                            case '老生续费':
                                $newList[$key]['laoshengxd'] += $v['shouru'];
                                $heji['laoshengxd'] += $v['shouru'];
                                break;
                        }
                    }
                }

            }
        }
        $data['heji'] = $heji;
        $data['list'] = $newList;
        return $data;
    }

    

    //从收据记录表中的备注中获得净人头
    public function getJingrentou($str){
        $arr = array();
        $arr = explode("(",$str);
        return $arr['0'];
    }

}

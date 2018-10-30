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
    public function getScyjData($qishu='',$sid=''){

        //判断语句
        $qishu_id = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>8))->getField('id');//判断是否有生成历史
        if(!$qishu_id){
            $qishu_id = $this->insertQishuHistory(8,$qishu,$sid);
        }else{
            $data = M('scyjb')->where(array('suoshudd'=>$qishu_id))->order('id')->select();
            foreach($data as &$val){
                $val['fujiaxx'] = json_decode($val['fujiaxx'],'true');
                foreach($val['fujiaxx'] as $k=>$v){
                    $val[$k] = $v;
                }
                unset($val['fujiaxx']);
            }
            $data = $this->heji($data);
            return $data; 
        }
        
        $nianfen = substr($qishu,0,4);
        $tid = 4;//收据记录表的id
        $suoshuid = $this->getQishuId($qishu,$sid,$tid);//获取订单id
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
                    // ->join('LEFT JOIN stjy_xxked as sx on sx.xingming=ss.xingming')
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

        $xxkedb_oid = M('qishu_history')->where(array('qishu'=>$qishu,'sid'=>$sid,'tid'=>14))->getField('id');
        //从组数组并且计算净人头
        $newList = array();

        foreach($renming as $key=>$vo){

            $newList[$key]['xingming'] = $vo;
            $newList[$key]['edu'] = M('xxkedb')->where("suoshudd='$xxkedb_oid' and xingming='$vo'")->getField('edu');
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
            $newList[$key]['hejiyye'] = 0;

            $newList[$key]['liangdianwnpdhy'] = 0;
            $newList[$key]['maiyinsyn'] = 0;
            $newList[$key]['xiaoxuelnpd'] = 0;
            $newList[$key]['youeryngjhy'] = 0;
            $newList[$key]['jiubayyqms'] = 0;
            $newList[$key]['sannianpdhy'] = 0;

            foreach($list as $v){
                if ($vo == $v['yejigsr'] && $v['shoufeilx'] == 1){
                                        //净人头
                    $newList[$key]['jingrentou'] += $v['jingrentou'];
                    $heji['jingrentou'] += $v['jingrentou'];
                    //合计营业额
                    //会员老带新营业额
                    $newList[$key]['huiyunaldxtz'] = 0;
                    if ($v['zhanghu'] != '结转学费' && $v['zhanghu'] != '老带新返现'){
                        $newList[$key]['hejiyye'] += $v['shouru'];
                        switch ($v['chanpinlx']){
                            case '1期秒杀':
                                $newList[$key]['yiqims'] += $v['shouru'];
                                break;
                            case '1期国际会员':
                                $newList[$key]['yiqigjhy'] += $v['shouru'];
                                break;
                            case '1年国际会员（另赠送2期）':
                                $newList[$key]['yiniangjhy2'] += $v['shouru'];
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
                            //组成数组-附加信息(组成一个字符串)
                            case '2.5年拼单会员':
                                $newList[$key]['liangdianwnpdhy'] += $v['shouru'];
                                break;
                            case '买1年送1年':
                                $newList[$key]['maiyinsyn'] += $v['shouru'];
                                break;
                            case '小学2年拼单（每人1年）':
                                $newList[$key]['xiaoxuelnpd'] += $v['shouru'];
                                break;
                            case '幼儿-1年国际会员':
                                $newList[$key]['youeryngjhy'] += $v['shouru'];
                                break;
                            case '98元1期秒杀':
                                $newList[$key]['jiubayyqms'] += $v['shouru'];
                                break;
                            case '3年拼单会员':
                                $newList[$key]['sannianpdhy'] += $v['shouru'];
                                break;
                            default:
                                $newList[$key]['hejiyye'] -= $v['shouru'];
                        }
                    }
                }
            }
            
            //写进数据库
            $temp = $newList[$key];
            $fujiaxx = [ 
                            'liangdianwnpdhy'=>$newList[$key]['liangdianwnpdhy'],
                            'maiyinsyn'=>$newList[$key]['maiyinsyn'],
                            'xiaoxuelnpd'=>$newList[$key]['xiaoxuelnpd'],
                            'youeryngjhy'=>$newList[$key]['youeryngjhy'],
                            'jiubayyqms'=>$newList[$key]['jiubayyqms'],
                            'sannianpdhy'=>$newList[$key]['sannianpdhy']
                        ];
            $temp['fujiaxx'] = json_encode($fujiaxx);
            $temp['suoshudd'] = $qishu_id;
            $temp['xuhao'] = $key+1;
            unset($temp[$key]['liangdianwnpdhy'],$temp[$key]['maiyinsyn'],$temp[$key]['youeryngjhy'],$temp[$key]['jiubayyqms'],$temp[$key]['sannianpdhy']);
            M('scyjb')->add($temp);

        }
        $data = $this->heji($newList);
        return $data;
    }

    

    //从收据记录表中的备注中获得净人头
    public function getJingrentou($str){
        $arr = array();
        $arr = explode("(",$str);
        return $arr['0'];
    }

    //合计
    public function heji($list=array()){
        if (!$list){
            return $list;
        }
        $heji = array();
        foreach($list as $val){
            foreach($val as $key=>$v){
                if ($key == 'xingming'){
                    $heji[$key] = '合计';
                }else{
                    $heji[$key] += $v;
                }
            }
        }
        $heji['xuhao'] = '';
        $heji['nianfen'] = '';
        $heji['yuefen'] = '';
        $heji['fenxiao'] = '';
        $heji['zhiwei'] = '';
        $heji['ruzhirq'] = '';
        array_push($list,$heji);
        return $list;
    }

}

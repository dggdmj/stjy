<?php
namespace Admin\Action;
use Think\Action;
class CountJsmxAction extends CommonAction {
    /**
     * 获得统计数据
     *
     * @param  string $qishu       期数：201707
     * @param  string $sid         学校id：school  中的id
     * @return array
     */
    public function getJsmxbData($qishu,$sid){
        // // 获取上一月的学号数组
        // $fmonth = $this->getMonth($qishu);
        // $fm = $this->getData($fmonth,$sid);

        // // 获取前上二月的学号数组
        // $fmonth2 = $this->getMonth($fmonth);
        // $fm2 = $this->getData($fmonth2,$sid);

        // // 获取前上三月的学号数组
        // $fmonth3 = $this->getMonth($fmonth2);
        // $fm3 = $this->getData($fmonth3,$sid);

        // 查询本期所有学员
        // unset($where);
        // $xueyuan = $this->getData($qishu,$sid);

        // $new为新增学员,取本月和上月学员差集
        // if(!is_null($fm)){
        //     $jianshao = array_diff($fm,$xueyuan);// 减少人员取上一月和本月的差集,即上一月存在,本月不存在
        //     // dump(count($new));
        //     $map['stjy_bjxyxxb.xuehao'] = array('in',$jianshao);// 查询条件
        //     $list = M('bjxyxxb')->join('LEFT JOIN stjy_xyfyyjb on stjy_bjxyxxb.xuehao=stjy_xyfyyjb.xuehao')->join('LEFT JOIN stjy_xyxxb on stjy_bjxyxxb.xuehao=stjy_xyxxb.xuehao')->field('stjy_bjxyxxb.*,stjy_xyfyyjb.shuliang,stjy_xyfyyjb.feiyong,stjy_xyxxb.shoujihm,stjy_xyxxb.zhaoshengly')->where($map)->group('stjy_bjxyxxb.xuehao')->select();
        //     $res = $this->doList($list,$qishu,$sid);
        //     return $res;
        // }else{
        //     return false;
        // }

        $xzmx = new \Admin\Action\CountXzmxAction();
        $xueyuan_xz = $xzmx->getXzmxbData($qishu,$sid);// 新增学员
        $xuehao_xz = array();
        // 获取新增明细表里面学员学号的一维数组
        if(!empty($xueyuan_xz)){
            foreach($xueyuan_xz as $v){
                $xuehao_xz[] = $v['xuehao'];
            }
        }
        
        // dump($xuehao_xz);
        // 获取上一月
        $fmonth = $this->getMonth($qishu);
        // dump($fmonth);
        // 将上一月本校在读学员学号数组查出来
        $where['tid'] = 3;
        $where['sid'] = $sid;
        $where['qishu'] = $fmonth;
        $id = M('qishu_history')->where($where)->getField('id');
        // dump($id);
        // $school = $this->getInfo($qishu,$sid)['school'];
        // dump($school);
        unset($where);
        $where = 'suoshudd ='.$id.' and ((xuehao !="" and beizhu = "") or banji = "停读" or banji = "未进班")';
        if(!empty($id)){
            $data = M('bjxyxxb')->field('xuehao')->where($where)->select();
            // dump($data);
            // dump(count($data));
            // dump('suoshudd ='.$id.' and zhuangtai="在读" and xiaoqu="'.$school.'"');
            // dump($data);
            $xuehaos = array();
            foreach($data as $v){
                $xuehaos[]=$v['xuehao'];
            }
            // dump(in_array('S12612',$xuehaos));// true
            $all = array_merge($xuehao_xz,$xuehaos);// 本月人员总数,是上月学员信息表为在读的和本月新增人员的并集
            // dump($xuehao_xz);
            // dump($xuehaos);
            // dump($all);
            // dump(count($all));
            // 去重复
            $all = array_flip(array_flip($all));

            // dump(count($all));
            // dump($xuehaos);
            // 获取本月在读学员学号的一维数组
            unset($where);
            $where['tid'] = 3;
            $where['sid'] = $sid;
            $where['qishu'] = $qishu;
            $id2 = M('qishu_history')->where($where)->getField('id');
            unset($where);
            $where = 'suoshudd ='.$id2.' and ((xuehao !="" and beizhu = "") or banji = "停读" or banji = "未进班")';
            if(!empty($id2)){
                $data2 = M('bjxyxxb')->field('xuehao')->where($where)->select();// 本月本校区在读人员
                // $data2 = M('xyxxb')->field('xuehao')->where('suoshudd ='.$id2)->select();
                // dump($data2);die;
                // $data3 = M('xyxxb')->field('xuehao')->where('suoshudd ='.$id2.' and zhuangtai="在读" and xiaoqu="'.$school.'"')->select();// 转出的部分
                $xuehaos2 = array();
                foreach($data2 as $v2){
                    $xuehaos2[]=$v2['xuehao'];
                }
                // 减少明细学员学号的一维数组
                $reduce = array_diff($all,$xuehaos2);// 本月减少人员总数
                // dump($reduce);die;
                
                // $reduce = array_merge($liushi,$zhuanchu,$yituixue);
                // $reduce = array_flip(array_flip($reduce));
               
                $map['qishu'] = array('in',[$qishu,$fmonth]);
                $map['tid'] = 1;
                $map['sid'] = $sid;
                $res = M('qishu_history')->field('id')->where($map)->select();
                if(!empty($res)){
                    $ids = array();
                    foreach($res as $v3){
                        $ids[]=$v3['id'];
                    }
                    if(!empty($reduce)){
                        $map2['stjy_xyxxb.suoshudd'] = array('in',$ids);
                        $map2['stjy_xyxxb.xuehao'] = array('in',$reduce);
                        $list = M('xyxxb')->join('LEFT JOIN stjy_xyfyyjb on stjy_xyxxb.xuehao=stjy_xyfyyjb.xuehao')->join('LEFT JOIN stjy_bjxyxxb on stjy_xyxxb.xuehao=stjy_bjxyxxb.xuehao')->join('LEFT JOIN stjy_kbmxb on stjy_bjxyxxb.banji=stjy_kbmxb.banjimc')->field('stjy_xyxxb.xuehao,stjy_xyxxb.jiuduxx,stjy_xyxxb.nianji,stjy_xyxxb.xingming,stjy_xyxxb.xiaoqu,stjy_bjxyxxb.banji,stjy_xyxxb.zhaoshengly,stjy_xyxxb.shoujihm,sum(stjy_xyfyyjb.shuliang) as shuliang,stjy_xyfyyjb.danwei,sum(stjy_xyfyyjb.feiyong) as feiyong,stjy_kbmxb.kaibanrq,stjy_kbmxb.jiebanrq,stjy_kbmxb.jingjiangls,stjy_kbmxb.fanduls')->where($map2)->group('stjy_xyxxb.xuehao')->select();
                        $res = $this->doList($list,$qishu,$sid,$all);
                    }else{
                        $res = array();
                    }
                    
                }else{
                    $res = array();
                }
            }else{
                $res = array();
            }
        }else{
            $res = array();
        }
        return $res;
    }

    // 处理$list数据
    public function doList($list,$qishu,$sid,$all){
        $bjbm = $this->getBjbm();// 获取班级编码数据
        // 从学员信息表筛选退学日期为当月,状态为已退学的信息,判断为退学状态.
        if(empty($this->getTuixue($qishu,$sid))){
            $tuixue = [];
        }else{
            $tuixue = $this->getTuixue($qishu,$sid);// 本月退学
        }
        if(empty($this->getZhuanchu($qishu,$sid))){
            $zhuanchu = [];
        }else{
            $zhuanchu = $this->getZhuanchu($qishu,$sid);// 本月转出
        }
        // $where['xuehao'] = array('in',$tuixue);
        // $data = M('xyxxb')->where($where)->select();
        // dump($data);
        // 从学员信息表筛选校区不是本校的信息,判断为转出状态.
        // $where['xuehao'] = array('in',$zhuanchu);
        // $data = M('xyxxb')->where($where)->select();
        // dump($data);die;
        // 减少明细总数减去以上①②两中状态的信息,剩余部分判断为流失状态.
        // $other = array_Merge($tuixue,$zhuanchu);
        // $liushi = array_diff($all,$other);
        foreach($list as $k=>$v){
            if(in_array($v['xuehao'],$zhuanchu)){
                $list[$k]['reducetype'] = '转出';
            }elseif(in_array($v['xuehao'],$tuixue['tuixue']) && in_array($v['xuehao'],$tuixue['sjjlb'])){
                $list[$k]['reducetype'] = '退费';
            }else{
                $list[$k]['reducetype'] = '流失';
            }
            $jdjb = substr($v['banji'],0,3);
            // dump(strtolower($jdjb));
            if(strlen($jdjb) == mb_strlen($jdjb,'gb2312')){
                $list[$k]['suoshubm'] = $bjbm[strtolower($jdjb)]['banxing'];
            }else{
                $list[$k]['suoshubm'] = $v['banji'];
            }

            $list[$k]['xiaoqu'] = $this->getInfo($qishu,$sid)['school'];// 将所有数据的校区改为本校区

            // $t_arr = explode(',',$v['shangkels']);
            // $list[$k]['jingduls'] = $t_arr[0];

            // 判断外教和泛读老师的逻辑,截取前面3个字符,如果是英文就是外教,否则就是泛读
            // if(strlen(substr($t_arr[1],0,3)) == mb_strlen(substr($t_arr[1],0,3),'gb2312')){
            //     $list[$k]['waijiao'] = $t_arr[1];
            //     $list[$k]['fanduls'] = $t_arr[2];
            // }else{
            //     $list[$k]['waijiao'] = $t_arr[2];
            //     $list[$k]['fanduls'] = $t_arr[1];
            // }
        }
        return $list;
    }

    // 获取本月退学学员的学号数组
    public function getTuixue($qishu,$sid){
        $where['qishu'] = $qishu;
        $where['sid'] = $sid;
        $where['tid'] = 1;
        $id = M('qishu_history')->where($where)->getField('id');// 获取学员信息表id

        // $year = substr($qishu,0,4);
        // $month = substr($qishu,4,2);
        // $firstDay = date('Y-m-01', strtotime(date($year."-".$month."-01")));
        // $lastDay = date('Y-m-d', strtotime("$firstDay +1 month -1 day"));
        // dump($lastDay);
        unset($where);
        $where['zhuangtai'] = "已退学";
        // $where['tuixuerq'] = array('between',"$firstDay,$lastDay");
        $where['suoshudd'] = $id;
        $res = M('xyxxb')->field('xuehao')->where($where)->select();
        
        if(!empty($res)){
            foreach($res as $v){
                $tuixue[]=$v['xuehao'];
            }
            $arr['tuixue'] = $tuixue;
            $id = $this->getQishuId($qishu,$sid,4);
            $sjjlb = M('sjjlb')->field('xuehao')->where('suoshudd ='.$id.' and shoujulx ="退费"')->select();
            if(!empty($sjjlb)){
                $sjjlb_data = $this->getXuehao($sjjlb);
                
                $arr['sjjlb'] = $sjjlb_data;
            }else{
                $arr['sjjlb'] = [];
            }
            
            // dump($tuixue);
            return $arr;
        }else{
            return false;
        }
        
    }

    // 获取本月本校转出学员的学号数组
    public function getZhuanchu($qishu,$sid){
        // 获取本校区名称
        $where['qishu'] = $qishu;
        $where['sid'] = $sid;
        $where['tid'] = 3;
        $id = M('qishu_history')->where($where)->getField('id');
        $xiaoqu = $this->getInfo($qishu,$sid)['school'];
        // dump($xiaoqu);
        
        if(!empty($xiaoqu)){
            $where2['qishu'] = $qishu;
            $where2['sid'] = $sid;
            $where2['tid'] = 1;
            $id2 = M('qishu_history')->where($where2)->getField('id');
            $where3['suoshudd'] = $id2;
            $where3['xiaoqu'] = array('neq',$xiaoqu);// 查询条件:不是本校区
            $where3['zhuangtai'] = '在读';
            $data = M('xyxxb')->field('xuehao')->where($where3)->select();
            if(!empty($data)){
                foreach($data as $v){
                    $list[]=$v['xuehao'];
                }
                return $list;
            }else{
                return false;
            }
        }else{
            return false;
        }
        
    }

}

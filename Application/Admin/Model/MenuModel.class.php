<?php
namespace Admin\Model;
/**
 * 后台菜单
 */
class MenuModel {
	/**
     * 获取菜单结构
     */
    public function getMenu(){
        $index = array(
                'name' => '首页',
                'icon' => 'home',
                'order' => 0,
                'menu' => array(
                    array(
                        'name' => '管理首页',
                        'url' => U('/Index/home'),
                        'icon' => 'home',
                        'order' => 1
                    ),
                )
            );
        $content = array(
                'name' => '校管家表格',
                'icon' => 'bars',
                'order' => 1,
                'menu' => array(
                    array(
                        'name' => '数据总表',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/index'),
                        'order' => 1
                    ),
                    array(
                        'name' => '课消明细表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/5'),
                        'order' => 1
                    ),
                    array(
                        'name' => '学员费用预警表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/7'),
                        'order' => 1
                    ),
                    array(
                        'name' => '学员信息表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/1'),
                        'order' => 1
                    ),
                    array(
                        'name' => '班级信息表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/2'),
                        'order' => 1
                    ),
                    array(
                        'name' => '班级学员信息表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/3'),
                        'order' => 1
                    ),
                    array(
                        'name' => '收据记录表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/4'),
                        'order' => 1
                    ),
                    array(
                        'name' => '收据明细表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/24'),
                        'order' => 1
                    ),
                    
                    array(
                        'name' => '开班明细表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/6'),
                        'order' => 1
                    ),
                    
                    array(
                        'name' => '学习卡额度表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/14'),
                        'order' => 1
                    ),
                    array(
                        'name' => '出勤明细表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/25'),
                        'order' => 1
                    ),
                    array(
                        'name' => '收支明细表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/26'),
                        'order' => 1
                    ),
                    array(
                        'name' => '转出记录',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/27'),
                        'order' => 1
                    ),
                    array(
                        'name' => '转入记录',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/28'),
                        'order' => 1
                    ),
                    array(
                        'name' => '社保表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/15'),
                        'order' => 1
                    ),
                    array(
                        'name' => '公积金表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/16'),
                        'order' => 1
                    ),
                    array(
                        'name' => '进出库明细导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/34'),
                        'order' => 1
                    ),
                    array(
                        'name' => '续费率计算',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/36'),
                        'order' => 1
                    ),
                    array(
                        'name' => '出勤签到表',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/44'),
                        'order' => 1
                    ),

                )
            );
        $order = array(
                'name' => '业绩表管理',
                'icon' => 'file',
                'order' => 1,
                'menu' => array(
                    array(
                        'name' => '市场业绩总表',
                        'icon' => 'file',
                        'url' => U('/TableCount/index'),
                        'order' => 1
                    ),
                    array(
                        'name' => '市场业绩表',
                        'icon' => 'file',
                        'url' => U('/TableCount/scyjb'),
                        'order' => 1
                    ),
                    array(
                        'name' => '市场占有率表',
                        'icon' => 'file',
                        'url' => U('/TableCount/sczylb_list'),
                        'order' => 2
                    ),
                    array(
                        'name' => '新增明细表',
                        'icon' => 'file',
                        'url' => U('/TableCount/xzmxb'),
                        'order' => 3
                    ),
                    array(
                        'name' => '减少明细表',
                        'icon' => 'file',
                        'url' => U('/TableCount/jsmxb'),
                        'order' => 4
                    ),
                    array(
                        'name' => '经营数据表',
                        'icon' => 'file',
                        'url' => U('/TableCount/jysjbhz'),
                        'order' => 5
                    ),
                    array(
                        'name' => '退费表',
                        'icon' => 'file',
                        'url' => U('/TableCount/tfb'),
                        'order' => 6
                    ),
                    array(
                        'name' => '老师确认营业额',
                        'icon' => 'file',
                        'url' => U('/TableCount/lsqryye'),
                        'order' => 7
                    ),
                    array(
                        'name' => '老师确认秒杀营业额',
                        'icon' => 'file',
                        'url' => U('/TableCount/lsqryyems'),
                        'order' => 7
                    ),
                    array(
                        'name' => '老师确认收入',
                        'icon' => 'file',
                        'url' => U('/TableCount/lsqrsr'),
                        'order' => 8
                    ),
                    array(
                        'name' => '中心会员台账',
                        'icon' => 'file',
                        'url' => U('/TableCount/zxhytz'),
                        'order' => 9
                    ),
                    array(
                        'name' => '老带新台账',
                        'icon' => 'file',
                        'url' => U('/TableCount/zxldxtz'),
                        'order' => 10
                    ),
                    array(
                        'name' => '老师标准收入',
                        'icon' => 'file',
                        'url' => U('/TableCount/lsbzsr'),
                        'order' => 11
                    ),
                    array(
                        'name' => '收入情况一览表',
                        'icon' => 'file',
                        'url' => U('/TableCount/shouruqkylb'),
                        'order' => 12
                    ),
                    array(
                        'name' => '续费率',
                        'icon' => 'file',
                        'url' => U('/TableCount/xfl'),
                        'order' => 13
                    ),
                    array(
                        'name' => '转化率',
                        'icon' => 'file',
                        'url' => U('/TableCount/zhl'),
                        'order' => 14
                    ),
                    array(
                        'name' => '秒杀清单',
                        'icon' => 'file',
                        'url' => U('/TableCount/miaosha_list'),
                        'order' => 14
                    ),
                    array(
                        'name' => '学员信息',
                        'icon' => 'file',
                        'url' => U('/TableCount/xyxx'),
                        'order' => 14
                    ),
                    // array(
                    //     'name' => '经营数据表汇总',
                    //     'icon' => 'file',
                    //     'url' => U('/TableCount/jysjbhz'),
                    //     'order' => 14
                    // ),
                    array(
                        'name' => '教材费',
                        'icon' => 'file',
                        'url' => U('/TableCount/jiaocaifei'),
                        'order' => 14
                    ),
                )
            );
        $gongzisj = array(
                'name' => '工资数据',
                'icon' => 'tree',
                'order' => 1,
                'menu' => array(
                    array(
                        'name' => '考核装修费',
                        'icon' => 'sitemap',
                        'url' => U('/wagesSj/wageList/tid/41'),
                        'order' => 1
                    ),
                    array(
                        'name' => '利润分配表',
                        'icon' => 'sitemap',
                        'url' => U('/wagesSj/wageList/tid/42'),
                        'order' => 1
                    ),
                    array(
                        'name' => '在读学生',
                        'icon' => 'sitemap',
                        'url' => U('/wagesSj/wageList/tid/43'),
                        'order' => 1
                    ),
                    array(
                        'name' => '一对一补课增值台账',
                        'icon' => 'sitemap',
                        'url' => U('/wagesSj/wageList/tid/45'),
                        'order' => 1
                    ),
                    array(
                        'name' => '教务奖励台账',
                        'icon' => 'sitemap',
                        'url' => U('/wagesSj/wageList/tid/46'),
                        'order' => 1
                    ),
                    array(
                        'name' => '教学组长',
                        'icon' => 'sitemap',
                        'url' => U('/wagesSj/wageList/tid/48'),
                        'order' => 1
                    ),
                )
            );
        $gongzi = array(
                'name' => '工资表管理',
                'icon' => 'tree',
                'order' => 1,
                'menu' => array(
                    array(
                        'name' => '工资总表',
                        'icon' => 'sitemap',
                        'url' => U('/wages/index'),
                        'order' => 1
                    ),
                    array(
                        'name' => '行政部工资表',
                        'icon' => 'sitemap',
                        'url' => U('/wages/tableList/table/Xzb'),
                        'order' => 1
                    ),
                    array(
                        'name' => '教学部工资表',
                        'icon' => 'sitemap',
                        'url' => U('/wages/tableList/table/Jxb'),
                        'order' => 1
                    ),
                    array(
                        'name' => '市场部工资表',
                        'icon' => 'sitemap',
                        'url' => U('/wages/tableList/table/Scb'),
                        'order' => 1
                    ),
                    array(
                        'name' => '总监工资表',
                        'icon' => 'sitemap',
                        'url' => U('/wages/tableList/table/Zj'),
                        'order' => 1
                    ),
                )
            );
        $renshi = array(
                'name' => '人事管理',
                'icon' => 'user',
                'order' => 10,
                'menu' => array(
                    array(
                        'name' => '人事管理',
                        'icon' => 'user',
                        'url' => U('Renshi/renshi'),
                        'order' => 1
                    ),
                    array(
                        'name' => '职务管理',
                        'icon' => 'user',
                        'url' => U('Renshi/zhiwu'),
                        'order' => 2
                    ),
                    array(
                        'name' => '试用期提醒',
                        'icon' => 'user',
                        'url' => U('Renshi/shiyong'),
                        'order' => 3
                    ),
                    array(
                        'name' => '合同到期提醒',
                        'icon' => 'user',
                        'url' => U('Renshi/hetong'),
                        'order' => 3
                    ),
                    array(
                        'name' => '类型管理',
                        'icon' => 'user',
                        'url' => U('Renshi/leixing'),
                        'order' => 3
                    ),
                    array(
                        'name' => '关联公司管理',
                        'icon' => 'user',
                        'url' => U('Renshi/company'),
                        'order' => 4
                    ),
                    array(
                        'name' => '关联银行管理',
                        'icon' => 'user',
                        'url' => U('Renshi/bank'),
                        'order' => 5
                    ),
                    array(
                        'name' => '签证类型管理',
                        'icon' => 'user',
                        'url' => U('Renshi/qianzhenglx'),
                        'order' => 6
                    ),
                    array(
                        'name' => '人员列表',
                        'icon' => 'user',
                        'url' => U('Renshi/renyuan_list'),
                        'order' => 6
                    ),
                ),

            );
        $function = array(
                'name' => '功能设置',
                'icon' => 'wrench',
                'order' => 3,
                'menu' => array(
                   array(
                        'name' => '校区管理',
                        'icon' => 'leaf',
                        'url' => U('Setting/school'),
                        'order' => 1
                    ),
                   array(
                        'name' => '部门管理',
                        'icon' => 'leaf',
                        'url' => U('Setting/department'),
                        'order' => 2
                    ),
                    array(
                        'name' => '期数管理',
                        'icon' => 'crosshairs',
                        'url' => U('Setting/qishu'),
                        'order' => 3
                    ),
                    array(
                        'name' => '班级编号管理',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/banjibianhao'),
                        'order' => 4
                    ),
                    // array(
                    //     'name' => '课程管理',
                    //     'icon' => 'puzzle-piece',
                    //     'url' => U('Setting/kecheng'),
                    //     'order' => 5
                    // ),
                    // array(
                    //     'name' => '区域管理',
                    //     'icon' => 'user',
                    //     'url' => U('Setting/quyu'),
                    //     'order' => 5
                    // ),
                    array(
                        'name' => '扣款管理',
                        'icon' => 'user',
                        'url' => U('Setting/koukuan'),
                        'order' => 6
                    ),
					array(
                        'name' => '收款帐户管理',
                        'icon' => 'user',
                        'url' => U('Setting/manageZhanghu'),
                        'order' => 7
                    ),
                    array(
                        'name' => '收费类型',
                        'icon' => 'user',
                        'url' => U('Setting/shoufeilx'),
                        'order' => 7
                    ),
                    array(
                        'name' => '公立学校管理',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/gonglixxlist'),
                        'order' => 8
                    ),
                    array(
                        'name' => '分校课程管理',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/fenxiaokcgl'),
                        'order' => 9
                    ),
                    array(
                        'name' => '收据产品类型',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/shoujucplx'),
                        'order' => 10
                    ),
                    array(
                        'name' => '各区域标准单价',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/gequybzdj'),
                        'order' => 11
                    ),
                    array(
                        'name' => '物品清单表',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/wupinqd'),
                        'order' => 12
                    ),
                    // array(
                    //     'name' => '课程管理',
                    //     'icon' => 'puzzle-piece',
                    //     'url' => U('Setting/kechenggl2'),
                    //     'order' => 12
                    // ),
                    array(
                        'name' => '阿米巴标准',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/ambbz'),
                        'order' => 12
                    ),
                    array(
                        'name' => '中心名称',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/zxmc'),
                        'order' => 12
                    ),
                    array(
                        'name' => '分校秒杀设置',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/miaosha'),
                        'order' => 12
                    ),
                    array(
                        'name' => '人事列表',
                        'icon' => 'user',
                        'url' => U('Renshi/renyuan_list'),
                        'order' => 6
                    ),
                    array(
                        'name' => '饱和率',
                        'icon' => 'user',
                        'url' => U('Setting/bhl_list'),
                        'order' => 6
                    ),
                    array(
                        'name' => '标准收入提成比',
                        'icon' => 'user',
                        'url' => U('Setting/bzsrtcb_list'),
                        'order' => 6
                    ),
                    array(
                        'name' => '技能评分阿米巴',
                        'icon' => 'user',
                        'url' => U('Setting/jnpfamb_list'),
                        'order' => 6
                    ),
                    array(
                        'name' => '基础信息表',
                        'icon' => 'user',
                        'url' => U('Setting/jcxxb_list'),
                        'order' => 6
                    ),
                )
            );
        $member = array(
                'name' => '管理员',
                'icon' => 'user',
                'order' => 10,
                'menu' => array(
                    array(
                        'name' => '用户列表',
                        'icon' => 'user',
                        'url' => U('/Rbac/index'),
                        'order' => 0
                    ),
                    array(
                        'name' => '角色列表',
                        'icon' => 'user-md',
                        'url' => U('/Rbac/roleList'),
                        'order' => 1
                    ),
                    array(
                        'name' => '节点列表',
                        'icon' => 'sitemap',
                        'url' => U('/Rbac/nodeList'),
                        'order' => 1
                    ),
                    array(
                        'name' => '添加用户',
                        'icon' => 'user',
                        'url' => U('/Rbac/addUser'),
                        'order' => 1
                    ),
                    array(
                        'name' => '添加角色',
                        'icon' => 'user-md',
                        'url' => U('/Rbac/addRole'),
                        'order' => 1
                    ),
                    array(
                        'name' => '添加节点',
                        'icon' => 'sitemap',
                        'url' => U('/Rbac/addNode'),
                        'order' => 1
                    ),
                )
            );

        $zijin = array(
                'name' => '资金管理',
                'icon' => 'user',
                'order' => 10,
                'menu' => array(
                    // array(
                    //     'name' => '资金管理',
                    //     'icon' => 'user',
                    //     'url' => U('/ZijinIndex/index'),
                    //     'order' => 0
                    // ),
					array(
                        'name' => '资金汇总',
                        'icon' => 'user',
                        'url' => U('/Zijin/zijinListQishu'),
                        'order' => 0
                    ),
					array(
                        'name' => '收钱吧表导入',
                        'icon' => 'sitemap',
                        'url' => U('/ZijinIndex/tableList/tid/21'),
                        'order' => 1
                    ),
                    array(
                        'name' => '拉卡拉表导入',
                        'icon' => 'sitemap',
                        'url' => U('/ZijinIndex/tableList/tid/22'),
                        'order' => 2
                    ),
                    array(
                        'name' => '校管家表导入',
                        'icon' => 'sitemap',
                        'url' => U('/ZijinIndex/tableList/tid/23'),
                        'order' => 3
                    ),
                    // array(
                    //     'name' => '角色列表',
                    //     'icon' => 'user-md',
                    //     'url' => U('/Rbac/roleList'),
                    //     'order' => 1
                    // ),
                )
            );

        $username = $_SESSION['username'];

        $arr1 = array(
            'Index' => $index,
            'Content' => $content,
            'Order' => $order,
            'Gongzisj' => $gongzisj,
            'Gongzi' => $gongzi,
            // 'Renshi' => $renshi,
            'Function' => $function,
            'Member' => $member,
        );
        $arr2 = array(
            'Index' => $index,
            'Content' => $content,
        );
        // $allow = ['neko','admin','fengshaozhen'];
        $allow = ['fengshaozhen'];
        if(in_array($username,$allow)){
            return $arr2;
        }else{
            return $arr1;
        }

    }
}

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
                        'name' => '课消明细表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/5'),
                        'order' => 1
                    ),
                    array(
                        'name' => '开班明细表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/6'),
                        'order' => 1
                    ),
                    array(
                        'name' => '学员费用预警表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/7'),
                        'order' => 1
                    ),
                    array(
                        'name' => '学习卡额度表导入',
                        'icon' => 'sitemap',
                        'url' => U('/TableImport/tableList/tid/14'),
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
                        'url' => U('/TableCount/yejilist/tid/8'),
                        'order' => 1
                    ),
                    array(
                        'name' => '市场占有率表',
                        'icon' => 'file',
                        'url' => U('/TableCount/yejilist/tid/9'),
                        'order' => 2
                    ),
                    array(
                        'name' => '新增明细表',
                        'icon' => 'file',
                        'url' => U('/TableCount/yejilist/tid/10'),
                        'order' => 3
                    ),
                    array(
                        'name' => '减少明细表',
                        'icon' => 'file',
                        'url' => U('/TableCount/yejilist/tid/11'),
                        'order' => 4
                    ),
                    array(
                        'name' => '经营数据表',
                        'icon' => 'file',
                        'url' => U('/TableCount/yejilist/tid/12'),
                        'order' => 5
                    ),
                    array(
                        'name' => '退费表',
                        'icon' => 'file',
                        'url' => U('/TableCount/yejilist/tid/13'),
                        'order' => 6
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
                    array(
                        'name' => '课程管理',
                        'icon' => 'puzzle-piece',
                        'url' => U('Setting/kecheng'),
                        'order' => 5
                    ),
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
                    array(
                        'name' => '资金管理',
                        'icon' => 'user',
                        'url' => U('/ZijinIndex/index'),
                        'order' => 0
                    ),
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
                        'order' => 1
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
//            'User' => array(
//                'name' => '会员管理',
//                'icon' => 'tree',
//                'order' => 1,
//                'menu' => array(
//                    array(
//                        'name' => '会员管理',
//                        'icon' => 'sitemap',
//                        'url' => U('/User/index'),
//                        'order' => 1
//                    ),
//                )
//            ),
            'Order' => $order,
            'Gongzi' => $gongzi,
//            'Article' => array(
//                'name' => '文章',
//                'icon' => 'tasks',
//                'order' => 0,
//                'menu' => array(
//                    array(
//                        'name' => '文章管理',
//                        'icon' => 'reorder',
//                        'url' => U('/Article/index'),
//                        'order' => 1
//                    ),
//                    array(
//                        'name' => '文章分类',
//                        'url' => U('/Class/index'),
//                        'icon' => 'sitemap',
//                        'order' => 1
//                    ),
//                    array(
//                        'name' => '文章回收站',
//                        'icon' => 'trash-o',
//                        'url' => U('/ArticleRecycle/index'),
//                        'order' => 1
//                    ),
//                    array(
//                        'name' => '属性管理',
//                        'icon' => 'cogs',
//                        'url' => U('/Attribute/index'),
//                        'order' => 1
//                    ),
//                )
//            ),

//          'Case' => array(
//                'name' => '产品管理',
//                'icon' => 'camera',
//                'order' => 0,
//                'menu' => array(
//                    array(
//                        'name' => '产品管理',
//                        'url' => U('/Case/index'),
//                        'icon' => 'camera',
//                        'order' => 1
//                    ),
//                    array(
//                        'name' => '产品分类管理',
//                        'url' => U('/CaseSort/index'),
//                        'icon' => 'sitemap',
//                        'order' => 1
//                    ),
//                )
//            ),
//
            'Renshi' => $renshi,
            'Function' => $function,
            'Member' => $member,
//            'message' => array(
//                'name' => '留言',
//                'icon' => 'envelope',
//                'order' => 9,
//                'menu' => array(
//                    array(
//                        'name' => '客户留言',
//                        'icon' => 'edit',
//                        'url' => U('/Message/index'),
//                        'order' => 0,
//                        'divider' => true,
//                    ),
//                )
//            ),
//            'system' => array(
//                'name' => '系统',
//                'icon' => 'tachometer',
//                'order' => 9,
//                'menu' => array(
//                    array(
//                        'name' => '系统设置',
//                        'icon' => 'sliders',
//                        'url' => U('/Setting/site'),
//                        'order' => 0,
//                        'divider' => true,
//                    ),
//                    array(
//                        'name' => '缓存管理',
//                        'icon' => 'upload',
//                        'url' => U('/Manage/cache'),
//                        'order' => 3,
//                        'divider' => true,
//                    ),
                    /*array(
                        'name' => '应用管理',
                        'icon' => 'flash',
                        'url' => U('/Functions/index'),
                        'order' => 4,
                        'divider' => true,
                    ),
                    array(
                        'name' => '安全记录',
                        'icon' => 'qrcode',
                        'url' => U('/AdminLog/index'),
                        'order' => 5
                    ),
                    array(
                        'name' => '备份还原',
                        'icon' => 'database',
                        'url' => U('/AdminBackup/index'),
                        'order' => 6
                    ),
                    array(
                        'name' => '用户管理',
                        'icon' => 'user',
                        'url' => U('/AdminUser/index'),
                        'order' => 7,
                        'divider' => true,
                    ),
                    array(
                        'name' => '用户组管理',
                        'icon' => 'group',
                        'url' => U('/AdminUserGroup/index'),
                        'order' => 8,
                    )*/
//                )
//            ),
        );
        $arr2 = array(
            'Index' => $index,
            'Content' => $content,
//            'User' => array(
//                'name' => '会员管理',
//                'icon' => 'tree',
//                'order' => 1,
//                'menu' => array(
//                    array(
//                        'name' => '会员管理',
//                        'icon' => 'sitemap',
//                        'url' => U('/User/index'),
//                        'order' => 1
//                    ),
//                )
//            ),
            'Order' => $order,
            'Gongzi' => $gongzi,
//            'Article' => array(
//                'name' => '文章',
//                'icon' => 'tasks',
//                'order' => 0,
//                'menu' => array(
//                    array(
//                        'name' => '文章管理',
//                        'icon' => 'reorder',
//                        'url' => U('/Article/index'),
//                        'order' => 1
//                    ),
//                    array(
//                        'name' => '文章分类',
//                        'url' => U('/Class/index'),
//                        'icon' => 'sitemap',
//                        'order' => 1
//                    ),
//                    array(
//                        'name' => '文章回收站',
//                        'icon' => 'trash-o',
//                        'url' => U('/ArticleRecycle/index'),
//                        'order' => 1
//                    ),
//                    array(
//                        'name' => '属性管理',
//                        'icon' => 'cogs',
//                        'url' => U('/Attribute/index'),
//                        'order' => 1
//                    ),
//                )
//            ),

//          'Case' => array(
//                'name' => '产品管理',
//                'icon' => 'camera',
//                'order' => 0,
//                'menu' => array(
//                    array(
//                        'name' => '产品管理',
//                        'url' => U('/Case/index'),
//                        'icon' => 'camera',
//                        'order' => 1
//                    ),
//                    array(
//                        'name' => '产品分类管理',
//                        'url' => U('/CaseSort/index'),
//                        'icon' => 'sitemap',
//                        'order' => 1
//                    ),
//                )
//            ),
            'Zijin' => $zijin,
            'Renshi' => $renshi,
            'Function' => $function,
            'Member' => $member,
//            'message' => array(
//                'name' => '留言',
//                'icon' => 'envelope',
//                'order' => 9,
//                'menu' => array(
//                    array(
//                        'name' => '客户留言',
//                        'icon' => 'edit',
//                        'url' => U('/Message/index'),
//                        'order' => 0,
//                        'divider' => true,
//                    ),
//                )
//            ),
//            'system' => array(
//                'name' => '系统',
//                'icon' => 'tachometer',
//                'order' => 9,
//                'menu' => array(
//                    array(
//                        'name' => '系统设置',
//                        'icon' => 'sliders',
//                        'url' => U('/Setting/site'),
//                        'order' => 0,
//                        'divider' => true,
//                    ),
//                    array(
//                        'name' => '缓存管理',
//                        'icon' => 'upload',
//                        'url' => U('/Manage/cache'),
//                        'order' => 3,
//                        'divider' => true,
//                    ),
                    /*array(
                        'name' => '应用管理',
                        'icon' => 'flash',
                        'url' => U('/Functions/index'),
                        'order' => 4,
                        'divider' => true,
                    ),
                    array(
                        'name' => '安全记录',
                        'icon' => 'qrcode',
                        'url' => U('/AdminLog/index'),
                        'order' => 5
                    ),
                    array(
                        'name' => '备份还原',
                        'icon' => 'database',
                        'url' => U('/AdminBackup/index'),
                        'order' => 6
                    ),
                    array(
                        'name' => '用户管理',
                        'icon' => 'user',
                        'url' => U('/AdminUser/index'),
                        'order' => 7,
                        'divider' => true,
                    ),
                    array(
                        'name' => '用户组管理',
                        'icon' => 'group',
                        'url' => U('/AdminUserGroup/index'),
                        'order' => 8,
                    )*/
//                )
//            ),
        );
        $allow = ['caiwu','admin'];
        if(in_array($username,$allow)){
            return $arr2;
        }else{
            return $arr1;
        }

    }
}

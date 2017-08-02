<?php
return array(
	'RBAC_SUPERADMIN' => 'admin',        //超级管理员名称
	'ADMIN_AUTH_KEY' => 'superadmin',    //超级管理员识别
	'USER_AUTH_ON' => true,              //是否开启验证
	'USER_AUTH_TYPE' => 1,               //验证类型（1：登录验证，2：实时验证）
	'USER_AUTH_KEY' => 'uid',            //用户认证识别号
	'NOT_AUTH_MODULE' => 'Index',        //无需认证的控制器
	'NOT_AUTH_ACTION' => 'addUserHandle,addRoleHandle,addNodeHandle,setAccess', //无需认证的动作方法
	'RBAC_ROLE_TABLE' => 'stjy_role',      //角色表名称
	'RBAC_USER_TABLE' => 'stjy_role_user', //角色与用户的中间表名称
	'RBAC_ACCESS_TABLE' => 'stjy_access',  //权限表名称
	'RBAC_NODE_TABLE' => 'stjy_node',      //节点表名称
	'DEFAULT_MODULE' => '',      //默认模块

	// 自定义控制器名称
	'DEFAULT_C_LAYER' => 'Action',
	
	'URL_HTML_SUFFIX' => '',
	// 自定义模版潜换
	'TMPL_PARSE_STRING' => array(
		'__PUBLIC__' => __ROOT__ .'/'. 'Public/Admin',
	),

	/* 错误页面模板 */
	'TMPL_ACTION_ERROR'     =>  MODULE_PATH.'View/Public/error.html', // 默认错误跳转对应的模板文件
	//'TMPL_ACTION_SUCCESS'   =>  MODULE_PATH.'View/Public/success.html', // 默认成功跳转对应的模板文件
	//'TMPL_EXCEPTION_FILE'   =>  MODULE_PATH.'View/Public/exception.html',// 异常页面的模板文件
);
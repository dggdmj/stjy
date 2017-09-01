<?php
$url = $_SERVER['HTTP_HOST'];
if(strstr($url,'ddmall')){
    return array(
        //'配置项'=>'配置值'
        'DEFAULT_MODULE'     => 'Index', //默认模块
        'URL_MODEL'          => '2', //URL模式
        'SESSION_AUTO_START' => true, //是否开启session
        'DB_TYPE'   => 'mysql', // 数据库类型
        'DB_HOST'   => 'localhost', // 服务器地址
        'DB_NAME'   => 'db_ecshop', // 数据库名
        'DB_USER'   => 'ecshop', // 用户名
        'DB_PWD'    => '', // 密码
        'DB_PORT'   => 3306, // 端口
        'DB_PREFIX' => 'ecs_', // 数据库表前缀
        'DB_CHARSET'=> 'utf8', // 字符集
        'DB_DEBUG'  =>  TRUE, // 数据库调试模式 开启后可以记录SQL日志 3.2.3新增
        'TMPL_PARSE_STRING'  =>array(
            '__ROOT__' => '/extend/index.php', // 更改默认的/Public 替换规则
        )
    );
}else{
    return array(
        //'配置项'=>'配置值'
        'DEFAULT_MODULE'     => 'Index', //默认模块
        'URL_MODEL'          => '1', //URL模式
        'SESSION_AUTO_START' => true, //是否开启session
        'DB_TYPE'   => 'mysql', // 数据库类型
        'DB_HOST'   => 'localhost', // 服务器地址
        'DB_NAME'   => 'stjy', // 数据库名
        'DB_USER'   => 'root', // 用户名
        'DB_PWD'    => '', // 密码
        'DB_PORT'   => 3306, // 端口
        'DB_PREFIX' => 'stjy_', // 数据库表前缀
        'DB_CHARSET'=> 'utf8', // 字符集
        'DB_DEBUG'  =>  TRUE, // 数据库调试模式 开启后可以记录SQL日志 3.2.3新增
        'TMPL_PARSE_STRING'  =>array(
            '__ROOT__' => '/', // 更改默认的/Public 替换规则
        )
    );
}

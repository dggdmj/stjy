-- phpMyAdmin SQL Dump
-- version 4.0.6-rc1
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017-07-31 17:16:05
-- 服务器版本: 5.5.19
-- PHP 版本: 5.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `stjy`
--

-- --------------------------------------------------------

--
-- 表的结构 `stjy_admin`
--

CREATE TABLE IF NOT EXISTS `stjy_admin` (
  `id` int(11) NOT NULL,
  `username` char(20) NOT NULL DEFAULT '' COMMENT '帐号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `nicename` varchar(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` varchar(30) NOT NULL,
  `lock` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员';

--
-- 转存表中的数据 `stjy_admin`
--

INSERT INTO `stjy_admin` (`id`, `username`, `password`, `nicename`, `email`, `logintime`, `loginip`, `lock`) VALUES
(8, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '树童教育', '', 1501486882, '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- 表的结构 `stjy_article`
--

CREATE TABLE IF NOT EXISTS `stjy_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `editor` varchar(50) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `content` text,
  `click` int(10) DEFAULT NULL,
  `important` smallint(1) unsigned DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `cid` (`cid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='文章列表' AUTO_INCREMENT=102 ;

-- --------------------------------------------------------

--
-- 表的结构 `stjy_class`
--

CREATE TABLE IF NOT EXISTS `stjy_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='文章分类' AUTO_INCREMENT=11 ;

-- --------------------------------------------------------

--
-- 表的结构 `stjy_log`
--

CREATE TABLE IF NOT EXISTS `stjy_log` (
  `id` int(11) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='访问日志';

-- --------------------------------------------------------

--
-- 表的结构 `stjy_qishu_history`
--

CREATE TABLE IF NOT EXISTS `stjy_qishu_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名',
  `tid` int(11) DEFAULT NULL COMMENT '表类型id',
  `qishu` varchar(255) DEFAULT '' COMMENT '期数',
  `suoshufx` varchar(255) DEFAULT '' COMMENT '所属分校',
  `caozuoren` varchar(255) DEFAULT '' COMMENT '操作人',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `stjy_qishu_history`
--

INSERT INTO `stjy_qishu_history` (`id`, `table_name`, `tid`, `qishu`, `suoshufx`, `caozuoren`, `daorusj`) VALUES
(3, '1', 2, '3', '4', '5', '2017-07-31 08:14:42');

-- --------------------------------------------------------

--
-- 表的结构 `stjy_table_name`
--

CREATE TABLE IF NOT EXISTS `stjy_table_name` (
  `id` int(11) NOT NULL,
  `xuhao` int(11) DEFAULT NULL COMMENT '表序号',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `table_name` varchar(255) DEFAULT NULL COMMENT '数据表名',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `stjy_table_name`
--

INSERT INTO `stjy_table_name` (`id`, `xuhao`, `name`, `table_name`) VALUES
(1, 1, '学员信息表', 'xyxxb'),
(2, 2, '班级信息表', 'bjxxb'),
(3, 3, '班级学员信息表', 'bjxyxxb'),
(4, 4, '收据记录表', 'sjjlb'),
(5, 5, '课消明细表', 'kxmxb'),
(6, 6, '开班明细表', 'kbmxb'),
(7, 7, '学员费用预警表', 'xyfyyjb');

-- --------------------------------------------------------

--
-- 表的结构 `stjy_xyxxb`
--

CREATE TABLE IF NOT EXISTS `stjy_xyxxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xuehao` varchar(255) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `xingbie` tinyint(4) DEFAULT NULL COMMENT '性别',
  `shishengxin` varchar(255) DEFAULT NULL COMMENT '师生信',
  `shenfenzheng` varchar(255) DEFAULT NULL COMMENT '身份证',
  `chushengrq` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `nianling` tinyint(4) DEFAULT NULL COMMENT '年龄',
  `shoujihm` int(11) DEFAULT NULL COMMENT '手机号码',
  `zhaoshengly` varchar(255) DEFAULT NULL COMMENT '招生来源',
  `laiyuanfx` varchar(255) DEFAULT NULL COMMENT '来源分校',
  `baomingrq` int(11) DEFAULT NULL COMMENT '报名日期',
  `xiaoqu` varchar(255) DEFAULT NULL COMMENT '校区',
  `xueguanshi` varchar(255) DEFAULT NULL COMMENT '学管师',
  `fuqinxm` varchar(255) DEFAULT NULL COMMENT '父亲姓名',
  `fuqindh` int(11) DEFAULT NULL COMMENT '父亲电话',
  `muqinxm` varchar(255) DEFAULT NULL COMMENT '母亲姓名',
  `muqindh` int(255) DEFAULT NULL COMMENT '母亲电话',
  `jiatingzz` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `qq` int(11) DEFAULT NULL COMMENT 'QQ',
  `jiuduxx` varchar(255) DEFAULT NULL COMMENT '就读学校',
  `nianji` varchar(255) NOT NULL COMMENT '年级',
  `banji` varchar(255) DEFAULT NULL COMMENT '班级',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注',
  `jifen` int(11) DEFAULT NULL COMMENT '积分',
  `leixing` tinyint(4) DEFAULT NULL COMMENT '类型',
  `zhuangtai` tinyint(4) DEFAULT '1' COMMENT '状态',
  `tuixuerq` varchar(255) DEFAULT NULL COMMENT '退学日期',
  `tuixueyy` varchar(255) DEFAULT NULL COMMENT '退学原因',
  `tuixuebz` varchar(255) DEFAULT NULL COMMENT '退学备注',
  `dianziqbye` double(11,2) DEFAULT NULL COMMENT '电子钱包余额',
  `qianjiaoje` double(11,2) DEFAULT NULL COMMENT '欠交金额',
  `shengyuxf` double(11,2) DEFAULT NULL COMMENT '剩余学费',
  `zhanghuye` double(11,2) DEFAULT NULL COMMENT '账户余额',
  `shengao` varchar(255) DEFAULT NULL COMMENT '身高',
  `daoruren` varchar(255) DEFAULT NULL COMMENT '导入人',
  `daorurenxq` varchar(255) DEFAULT NULL COMMENT '导入人校区',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

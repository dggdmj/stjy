-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Aug 01, 2017 at 02:02 AM
-- Server version: 5.5.38
-- PHP Version: 5.6.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `stjy`
--

-- --------------------------------------------------------

--
-- Table structure for table `stjy_admin`
--

CREATE TABLE `stjy_admin` (
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
-- Dumping data for table `stjy_admin`
--

INSERT INTO `stjy_admin` (`id`, `username`, `password`, `nicename`, `email`, `logintime`, `loginip`, `lock`) VALUES
(8, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '树童教育', '', 1501521865, '127.0.0.1', 0);

-- --------------------------------------------------------

--
-- Table structure for table `stjy_article`
--

CREATE TABLE `stjy_article` (
`id` int(10) unsigned NOT NULL,
  `editor` varchar(50) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `summary` varchar(255) DEFAULT '',
  `content` text,
  `click` int(10) DEFAULT NULL,
  `important` smallint(1) unsigned DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `time` int(10) unsigned NOT NULL DEFAULT '0',
  `cid` int(10) unsigned NOT NULL,
  `del` tinyint(1) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='文章列表';

-- --------------------------------------------------------

--
-- Table structure for table `stjy_class`
--

CREATE TABLE `stjy_class` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='文章分类';

-- --------------------------------------------------------

--
-- Table structure for table `stjy_log`
--

CREATE TABLE `stjy_log` (
  `id` int(11) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='访问日志';

-- --------------------------------------------------------

--
-- Table structure for table `stjy_qishu_history`
--

CREATE TABLE `stjy_qishu_history` (
`id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL COMMENT '上传的文件路径',
  `table_name` varchar(255) DEFAULT NULL COMMENT '表名',
  `tid` int(11) DEFAULT NULL COMMENT '表类型id',
  `qishu` varchar(255) DEFAULT '' COMMENT '期数',
  `suoshufx` varchar(255) DEFAULT '' COMMENT '所属分校',
  `caozuoren` varchar(255) DEFAULT '' COMMENT '操作人',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `stjy_table_name`
--

CREATE TABLE `stjy_table_name` (
  `id` int(11) NOT NULL,
  `xuhao` int(11) DEFAULT NULL COMMENT '表序号',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `table_name` varchar(255) DEFAULT NULL COMMENT '数据表名'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `stjy_table_name`
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
-- Table structure for table `stjy_xyxxb`
--

CREATE TABLE `stjy_xyxxb` (
`id` int(11) NOT NULL,
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
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stjy_article`
--
ALTER TABLE `stjy_article`
 ADD PRIMARY KEY (`id`), ADD KEY `cid` (`cid`);

--
-- Indexes for table `stjy_class`
--
ALTER TABLE `stjy_class`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stjy_log`
--
ALTER TABLE `stjy_log`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stjy_qishu_history`
--
ALTER TABLE `stjy_qishu_history`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stjy_table_name`
--
ALTER TABLE `stjy_table_name`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stjy_xyxxb`
--
ALTER TABLE `stjy_xyxxb`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stjy_article`
--
ALTER TABLE `stjy_article`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `stjy_class`
--
ALTER TABLE `stjy_class`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `stjy_qishu_history`
--
ALTER TABLE `stjy_qishu_history`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `stjy_xyxxb`
--
ALTER TABLE `stjy_xyxxb`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

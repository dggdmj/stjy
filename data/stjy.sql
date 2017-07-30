-- phpMyAdmin SQL Dump
-- version 4.2.10
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jul 30, 2017 at 10:22 PM
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
(8, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '树童教育', '', 1501424456, '127.0.0.1', 0);

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
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

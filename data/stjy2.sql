/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : stjy

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-07-31 10:50:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stjy_admin
-- ----------------------------
DROP TABLE IF EXISTS `stjy_admin`;
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

-- ----------------------------
-- Records of stjy_admin
-- ----------------------------
INSERT INTO `stjy_admin` VALUES ('8', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '树童教育', '', '1501424456', '127.0.0.1', '0');

-- ----------------------------
-- Table structure for stjy_article
-- ----------------------------
DROP TABLE IF EXISTS `stjy_article`;
CREATE TABLE `stjy_article` (
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
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COMMENT='文章列表';

-- ----------------------------
-- Records of stjy_article
-- ----------------------------

-- ----------------------------
-- Table structure for stjy_class
-- ----------------------------
DROP TABLE IF EXISTS `stjy_class`;
CREATE TABLE `stjy_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='文章分类';

-- ----------------------------
-- Records of stjy_class
-- ----------------------------

-- ----------------------------
-- Table structure for stjy_log
-- ----------------------------
DROP TABLE IF EXISTS `stjy_log`;
CREATE TABLE `stjy_log` (
  `id` int(11) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  `ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='访问日志';

-- ----------------------------
-- Records of stjy_log
-- ----------------------------

-- ----------------------------
-- Table structure for stjy_xyxxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_xyxxb`;
CREATE TABLE `stjy_xyxxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xh` varchar(255) DEFAULT NULL COMMENT '学号',
  `xm` varchar(20) DEFAULT NULL COMMENT '姓名',
  `xb` tinyint(4) DEFAULT NULL COMMENT '性别',
  `ssx` varchar(255) DEFAULT NULL COMMENT '师生信',
  `sfz` varchar(255) DEFAULT NULL COMMENT '身份证',
  `csrq` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `nl` tinyint(4) DEFAULT NULL COMMENT '年龄',
  `sj` int(11) DEFAULT NULL COMMENT '手机号码',
  `zsly` varchar(255) DEFAULT NULL COMMENT '招生来源',
  `lyfx` varchar(255) DEFAULT NULL COMMENT '来源分校',
  `bmrq` int(11) DEFAULT NULL COMMENT '报名日期',
  `xq` varchar(255) DEFAULT NULL COMMENT '校区',
  `xgs` varchar(255) DEFAULT NULL COMMENT '学管师',
  `fqxm` varchar(255) DEFAULT NULL COMMENT '父亲姓名',
  `fqdh` int(11) DEFAULT NULL COMMENT '父亲电话',
  `mqxm` varchar(255) DEFAULT NULL COMMENT '母亲姓名',
  `mqdh` int(255) DEFAULT NULL COMMENT '母亲电话',
  `jtzz` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `qq` int(11) DEFAULT NULL COMMENT 'qq号码',
  `jdxx` varchar(255) DEFAULT NULL COMMENT '就读学校',
  `nj` varchar(255) DEFAULT NULL COMMENT '年级',
  `bj` varchar(255) DEFAULT NULL COMMENT '班级',
  `bz` varchar(255) DEFAULT NULL COMMENT '备注',
  `jf` int(11) DEFAULT NULL COMMENT '积分',
  `lx` tinyint(4) DEFAULT NULL COMMENT '类型',
  `zt` tinyint(4) DEFAULT '1' COMMENT '状态',
  `txrq` varchar(255) DEFAULT NULL COMMENT '退学日期',
  `txyy` varchar(255) DEFAULT NULL COMMENT '退学原因',
  `txbz` varchar(255) DEFAULT NULL COMMENT '退学备注',
  `dzqbye` double DEFAULT NULL COMMENT '电子钱包余额',
  `qjje` double DEFAULT NULL COMMENT '欠交金额',
  `syxf` double DEFAULT NULL COMMENT '剩余学费',
  `zhye` double DEFAULT NULL COMMENT '账户余额',
  `sg` varchar(255) DEFAULT NULL COMMENT '身高',
  `drr` varchar(255) DEFAULT NULL COMMENT '导入人',
  `drrxq` varchar(255) DEFAULT NULL COMMENT '导入人校区',
  `ssdd` varchar(255) DEFAULT NULL COMMENT '所属订单',
  `drsj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xyxxb
-- ----------------------------

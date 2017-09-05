/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : stjy

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-09-05 15:37:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for stjy_access
-- ----------------------------
DROP TABLE IF EXISTS `stjy_access`;
CREATE TABLE `stjy_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_access
-- ----------------------------
INSERT INTO `stjy_access` VALUES ('1', '5', '1', null);
INSERT INTO `stjy_access` VALUES ('1', '12', '2', null);
INSERT INTO `stjy_access` VALUES ('1', '14', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '15', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '16', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '17', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '18', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '28', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '30', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '31', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '32', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '33', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '34', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '13', '2', null);
INSERT INTO `stjy_access` VALUES ('1', '19', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '23', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '24', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '25', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '26', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '27', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '20', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '21', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '22', '3', null);
INSERT INTO `stjy_access` VALUES ('1', '8', '2', null);
INSERT INTO `stjy_access` VALUES ('1', '9', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '5', '1', null);
INSERT INTO `stjy_access` VALUES ('3', '12', '2', null);
INSERT INTO `stjy_access` VALUES ('3', '14', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '15', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '16', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '17', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '18', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '28', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '57', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '35', '2', null);
INSERT INTO `stjy_access` VALUES ('3', '36', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '37', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '38', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '39', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '40', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '41', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '42', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '43', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '49', '2', null);
INSERT INTO `stjy_access` VALUES ('3', '53', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '54', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '51', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '50', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '52', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '55', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '56', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '58', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '5', '1', null);
INSERT INTO `stjy_access` VALUES ('2', '12', '2', null);
INSERT INTO `stjy_access` VALUES ('2', '14', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '15', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '16', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '17', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '18', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '28', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '57', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '35', '2', null);
INSERT INTO `stjy_access` VALUES ('2', '36', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '37', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '38', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '39', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '40', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '41', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '42', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '43', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '49', '2', null);
INSERT INTO `stjy_access` VALUES ('2', '53', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '54', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '51', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '50', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '52', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '55', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '56', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '58', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '5', '1', null);
INSERT INTO `stjy_access` VALUES ('4', '12', '2', null);
INSERT INTO `stjy_access` VALUES ('4', '14', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '15', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '16', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '35', '2', null);
INSERT INTO `stjy_access` VALUES ('4', '36', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '37', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '38', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '39', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '40', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '41', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '42', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '43', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '49', '2', null);
INSERT INTO `stjy_access` VALUES ('4', '51', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '50', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '52', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '55', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '56', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '58', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '5', '1', null);
INSERT INTO `stjy_access` VALUES ('5', '35', '2', null);
INSERT INTO `stjy_access` VALUES ('5', '36', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '37', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '38', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '39', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '40', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '41', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '42', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '43', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '49', '2', null);
INSERT INTO `stjy_access` VALUES ('5', '53', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '54', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '51', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '50', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '52', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '55', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '56', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '58', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '13', '2', null);
INSERT INTO `stjy_access` VALUES ('5', '27', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '23', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '24', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '25', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '26', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '19', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '20', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '21', '3', null);
INSERT INTO `stjy_access` VALUES ('5', '22', '3', null);

-- ----------------------------
-- Table structure for stjy_admin
-- ----------------------------
DROP TABLE IF EXISTS `stjy_admin`;
CREATE TABLE `stjy_admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` char(20) NOT NULL DEFAULT '' COMMENT '帐号',
  `password` char(32) NOT NULL DEFAULT '' COMMENT '密码',
  `nicename` varchar(20) NOT NULL DEFAULT '' COMMENT '昵称',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `school_id` varchar(255) NOT NULL COMMENT '学校id，用逗号分割',
  `logintime` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登录时间',
  `loginip` varchar(30) NOT NULL,
  `lock` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of stjy_admin
-- ----------------------------
INSERT INTO `stjy_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', '', '1,2,3,4,5', '1504541980', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('2', 'meimei', 'e962c96829241f53c3d68a67f80c4eb7', '梅梅', 'meimei@163.com', '1,2,4', '1504564221', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('3', 'maomao', 'e2145387bcc7842edef4ccecc34b7da4', 'maomao', 'maomao', '2,3', '1501780416', '127.0.0.1', '1');
INSERT INTO `stjy_admin` VALUES ('4', 'caiwu', 'f5b5ec699ed736de89336fbce0bc9890', '财务', 'caiwu@caiwu.com', '1,2,3,4', '1504510569', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('5', 'exlee', 'e10adc3949ba59abbe56e057f20f883e', '行政经理', 'exlee@stjy.com', '1,2,3,4,5', '1504594727', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('6', 'fuzeren', 'e10adc3949ba59abbe56e057f20f883e', 'fuzeren', 'fuzeren@stjy.com', '1,2,3,4', '1503977551', '127.0.0.1', '0');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章列表';

-- ----------------------------
-- Records of stjy_article
-- ----------------------------

-- ----------------------------
-- Table structure for stjy_banjibianhao
-- ----------------------------
DROP TABLE IF EXISTS `stjy_banjibianhao`;
CREATE TABLE `stjy_banjibianhao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `jingdujb` varchar(255) NOT NULL COMMENT '精读级别',
  `fandujb` varchar(255) DEFAULT NULL COMMENT '泛读级别',
  `fandujb1` varchar(255) DEFAULT NULL COMMENT '泛读级别1',
  `fandujb2` varchar(255) DEFAULT NULL COMMENT '泛读级别2',
  `fandujb3` varchar(255) DEFAULT NULL COMMENT '泛读级别3',
  `shifoutsb` varchar(255) DEFAULT NULL COMMENT '是否特色班',
  `xueshengnj` varchar(255) DEFAULT NULL COMMENT '学生年级',
  `banjixh` varchar(255) DEFAULT NULL COMMENT '班级序号',
  `banxing` varchar(255) DEFAULT NULL COMMENT '班型',
  `shiyongnj` varchar(255) DEFAULT NULL COMMENT '适用年级',
  `bianma` varchar(255) DEFAULT NULL COMMENT '编码',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注',
  `banxing2` varchar(255) DEFAULT NULL COMMENT '班型2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=utf8mb4 COMMENT='班级编号表';

-- ----------------------------
-- Records of stjy_banjibianhao
-- ----------------------------
INSERT INTO `stjy_banjibianhao` VALUES ('134', 'K01', null, 'KGF', null, null, 'T', 'XD', '01', '幼儿部', '小班', 'K01KGFTXD01', 'kitty goes fishing（小猫钓鱼）', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('135', 'K02', null, '000', null, null, 'G', '0X', '02', '幼儿部', '小班', 'K02000G0X02', null, '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('136', 'K03', null, 'ADP', null, null, 'T', 'ZD', '03', '幼儿部', '中班', 'K03ADPTZD03', 'a Dirty Pig《小脏猪》', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('137', 'K04', null, 'CAB', null, null, 'G', '0Z', '04', '幼儿部', '中班', 'K04CABG0Z04', 'The Cat and the Bell《猫和铃铛》', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('138', 'K05', null, 'WAR', null, null, 'T', '0D', '05', '幼儿部', '大班', 'K05WART0D05', 'The Wolf and the Rabbits《大灰狼与兔子们》', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('139', 'K06', null, 'TLP', null, null, 'G', 'XZ', '06', '幼儿部', '大班', 'K06TLPGXZ06', 'Three Little Pigs《三只小猪》', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('140', 'P01', null, 'K12', 'K34', 'K56', 'T', '12', '07', '小初部', '一年级', 'P01K12T1207', '故事一期 New Phonics for kids 1课本 原版', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('141', 'P02', null, 'K34', 'K12', 'K56', 'G', '12', '08', '小初部', '一年级', 'P02K34G1208', '故事二期', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('142', 'P03', null, 'K56', 'K12', 'K34', 'T', '12', '09', '小初部', '一年级', 'P03K56T1209', '故事三期', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('143', 'P1A', null, 'F01', null, null, 'G', '23', '10', '小初部', '二年级', 'P1AF01G2310', 'Phonics fun 1课本 原版', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('144', 'P1B', null, 'F02', null, null, 'T', '12', '11', '小初部', '二年级', 'P1BF02T1211', 'Phonics fun 2课本 原版', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('145', 'P2A', null, 'F03', null, null, 'G', '12', '12', '小初部', '二年级', 'P2AF03G1212', 'Phonics fun 3课本 原版', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('146', 'P2B', null, 'F04', null, null, 'T', '34', '13', '小高部', '三年级', 'P2BF04T3413', 'Phonics fun 4课本 原版', '小高部');
INSERT INTO `stjy_banjibianhao` VALUES ('147', 'P3A', null, 'F05', null, null, 'G', '34', '14', '小高部', '三年级', 'P3AF05G3414', 'Phonics fun 5课本 原版', '小高部');
INSERT INTO `stjy_banjibianhao` VALUES ('148', 'P3B', null, 'F06', null, null, 'T', '34', '15', '小高部', '三年级', 'P3BF06T3415', 'Phonics fun 6课本 原版；bright readers 3 上册(A)', '小高部');
INSERT INTO `stjy_banjibianhao` VALUES ('149', 'P4A', null, 'BR3', null, null, 'G', '34', '16', '小高部', '四年级', 'P4ABR3G3416', 'bright readers 3 下册(B) ；X计划5', '小高部');
INSERT INTO `stjy_banjibianhao` VALUES ('150', 'P4B', null, 'BR4', null, null, 'T', '45', '17', '小高部', '四年级', 'P4BBR4T4517', 'bright readers 4 下册(A) ；X计划6', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('151', 'P5A', null, 'BR4', null, null, 'G', '34', '18', '初中部', '四年级', 'P5ABR4G3418', 'bright readers 4 下册(B) ；X计划7', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('152', 'P5B', null, 'BR5', null, null, 'T', '05', '19', '初中部', '五年级', 'P5BBR5T0519', 'bright readers 5 下册(A) ；X计划8', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('153', 'P6A', null, 'BR5', null, null, 'G', '56', '20', '初中部', '五年级', 'P6ABR5G5620', 'bright readers 5 下册(B) ；X计划9（夏季班）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('154', 'P6A', null, 'BR6', null, null, 'T', '05', '21', '初中部', '五年级', 'P6ABR6T0521', 'bright readers 6 下册(A) ；X计划10（秋季班）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('155', 'P6B', null, 'BR6', null, null, 'G', '56', '22', '初中部', '五年级', 'P6BBR6G5622', 'bright readers 6 下册(B) ；小升初冲刺', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('156', 'J1A', null, 'SR3', null, null, 'T', '56', '23', '初中部', '六年级', 'J1ASR3T5623', '新课标百科丛书3（1-7）  secondary readers', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('157', 'J1B', null, 'SR3', null, null, 'G', '56', '24', '初中部', '六年级', 'J1BSR3G5624', '新课标百科丛书3（8-14）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('158', 'J2A', null, 'SR5', 'SR7', null, 'T', '06', '25', '初中部', '初一', 'J2ASR5T0625', '新课标百科丛书5（1-7）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('159', 'J2B', null, 'SR5', 'SR7', null, 'G', '67', '26', '初中部', '初一', 'J2BSR5G6726', '新课标百科丛书5（8-14）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('160', 'J3A', null, 'SR7', 'SR9', null, 'T', '78', '27', '初中部', '初二', 'J3ASR7T7827', '新课标百科丛书7（1-7）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('161', 'J3B', null, 'SR7', 'SR9', null, 'G', '78', '28', '初中部', '初二', 'J3BSR7G7828', '新课标百科丛书7（8-14）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('162', 'NS1', null, 'SR9', null, null, 'T', '09', '29', '初中部', '初三', 'NS1SR9T0929', '1-4单元', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('163', 'NS2', null, 'SR9', null, null, 'G', '89', '30', '初中部', '初三', 'NS2SR9G8930', '5-8单元', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('164', 'SWN', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `stjy_banjibianhao` VALUES ('165', 'S1B', null, null, null, null, null, '01', '01', '小初部', '二年级', null, null, '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('166', 'S2B', null, null, null, null, null, '02', null, '小高部', '三年级', null, null, '小高部');

-- ----------------------------
-- Table structure for stjy_bjxxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_bjxxb`;
CREATE TABLE `stjy_bjxxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `banjimc` varchar(255) DEFAULT NULL COMMENT '班级名称',
  `xiaoqumc` varchar(255) DEFAULT NULL COMMENT '校区名称',
  `kechengmc` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `shangkels` varchar(255) DEFAULT NULL COMMENT '上课老师',
  `banzhuren` varchar(255) DEFAULT NULL COMMENT '班主任',
  `morenjs` varchar(255) DEFAULT NULL COMMENT '默认教室',
  `kaibanrq` varchar(255) DEFAULT NULL COMMENT '开班日期',
  `dangqianjd` varchar(255) DEFAULT NULL COMMENT '当前进度',
  `paikejsrq` varchar(255) DEFAULT NULL COMMENT '排课结束日期',
  `jihuajyrq` varchar(255) DEFAULT NULL COMMENT '计划结业日期',
  `shangkesj` varchar(255) DEFAULT NULL COMMENT '上课时间',
  `nianji` varchar(255) DEFAULT NULL COMMENT '年级',
  `kemu` varchar(255) DEFAULT NULL COMMENT '科目',
  `leixing` varchar(255) DEFAULT NULL COMMENT '类型',
  `yuzhaors` double(11,2) DEFAULT NULL COMMENT '预招人数',
  `dangqianrs` double(11,2) DEFAULT NULL COMMENT '当前人数',
  `rubanlv` varchar(255) DEFAULT NULL COMMENT '入班率',
  `jihuakc` double(11,2) DEFAULT NULL COMMENT '计划课次',
  `jifeidw` varchar(255) DEFAULT NULL COMMENT '计费单位',
  `yipaikc` double(11,2) DEFAULT NULL COMMENT '已排课次',
  `yishangkc` double(11,2) DEFAULT NULL COMMENT '已上课次',
  `jieyezt` varchar(255) DEFAULT NULL COMMENT '结业状态',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_bjxxb
-- ----------------------------
INSERT INTO `stjy_bjxxb` VALUES ('1', '未进班', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '', '', '2036-02-07', '', '', '', '', '3小时', '00-小学英语课程', '01-广州区域', '0.00', '164.00', '0.0%', '0.00', '次', '0.00', '0.00', '未结业', '3', '2017-09-05 15:00:19');
INSERT INTO `stjy_bjxxb` VALUES ('2', '游学会员', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '', '', '2017-04-01', '', '', '', '', '', '', '01-广州区域', '0.00', '0.00', '0.0%', '0.00', '次', '0.00', '0.00', '未结业', '3', '2017-09-05 15:00:19');
INSERT INTO `stjy_bjxxb` VALUES ('3', 'P02F01G0106', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '翟志翔,Zoe,陈美全', '翟志翔', 'class B', '2017-05-13', '', '2017-08-29', '2018-03-15', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '11.00', '91.7%', '16.00', '次', '14.00', '10.00', '未结业', '3', '2017-09-05 15:00:19');
INSERT INTO `stjy_bjxxb` VALUES ('4', 'P1AF02G0201', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '翟志翔,Richar,陈美全', '翟志翔', 'class C', '2017-06-19', '', '2017-10-09', '2021-06-23', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '13.00', '13.00', '100.0%', '17.00', '次', '14.00', '3.00', '未结业', '3', '2017-09-05 15:00:19');
INSERT INTO `stjy_bjxxb` VALUES ('5', 'P1AF02G0202', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '翟志翔,Richar,郑琴', '翟志翔', 'class C', '2017-06-22', '', '2017-10-12', '2018-06-16', '周四15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '14.00', '14.00', '100.0%', '17.00', '次', '14.00', '4.00', '未结业', '3', '2017-09-05 15:00:19');
INSERT INTO `stjy_bjxxb` VALUES ('6', 'P1AF02G0203', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '翟志翔,郑琴,Zoe', '翟志翔', 'class C', '2017-06-24', '', '2017-10-14', '2019-06-29', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '13.00', '13.00', '100.0%', '17.00', '次', '15.00', '4.00', '未结业', '3', '2017-09-05 15:00:19');
INSERT INTO `stjy_bjxxb` VALUES ('7', 'P1AF01G1207', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '吴彩红,翟志翔,Richar', '吴彩红', 'class E', '2017-08-24', '', '2017-12-10', '2020-08-01', '周日09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '14.00', '14.00', '100.0%', '16.00', '次', '18.00', '3.00', '未结业', '3', '2017-09-05 15:00:19');
INSERT INTO `stjy_bjxxb` VALUES ('8', 'P1BF03G2304', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '吴彩红,翟志翔,Richar', '吴彩红', 'class B', '2017-08-25', '', '2017-12-11', '2019-08-30', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '14.00', '14.00', '100.0%', '16.00', '次', '17.00', '2.00', '未结业', '3', '2017-09-05 15:00:19');
INSERT INTO `stjy_bjxxb` VALUES ('9', 'P3AF03G3405', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '肖涵颖,翟志翔,Richar', '肖涵颖', 'class B', '2017-08-24', '', '2017-12-07', '2020-08-02', '周四16:30~19:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '8.00', '66.7%', '16.00', '次', '17.00', '3.00', '未结业', '3', '2017-09-05 15:00:19');

-- ----------------------------
-- Table structure for stjy_bjxyxxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_bjxyxxb`;
CREATE TABLE `stjy_bjxyxxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xiaoqu` varchar(255) DEFAULT NULL COMMENT '校区',
  `kecheng` varchar(255) DEFAULT NULL COMMENT '课程',
  `banji` varchar(255) DEFAULT NULL COMMENT '班级',
  `shangkesj` varchar(255) DEFAULT NULL COMMENT '上课时间',
  `shangkels` varchar(255) DEFAULT NULL COMMENT '上课老师',
  `xuehao` varchar(255) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `nianji` varchar(255) DEFAULT NULL COMMENT '年级',
  `dianhua` varchar(255) DEFAULT NULL COMMENT '电话',
  `guanzhuwx` double(11,2) DEFAULT NULL COMMENT '关注微信',
  `shoujuhao` varchar(255) DEFAULT NULL COMMENT '收据号',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注',
  `gonglixx` varchar(255) DEFAULT NULL COMMENT '公立学校',
  `fuqindh` varchar(255) DEFAULT NULL COMMENT '父亲电话',
  `muqindh` varchar(255) DEFAULT NULL COMMENT '母亲电话',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_bjxyxxb
-- ----------------------------
INSERT INTO `stjy_bjxyxxb` VALUES ('1', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S01521', '杜航宇', '三年级', '18988800659', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:26');
INSERT INTO `stjy_bjxyxxb` VALUES ('2', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S01612', '潘子颀', '五年级', '18588861991', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('3', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S01616', '彭希扬', '三年级', '18620488133', '0.00', '00028044,00074010', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('4', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S01622', '邱刘哲', '三年级', '18620916361', '0.00', '00028046,00074012', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('5', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '周四16:30~19:30', '肖涵颖,翟志翔,Richar', 'S01699', '曾砚斐', '四年级', '18818859966', '0.00', '00028042,00074053', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('6', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S07377', '谢宇侨', '二年级', '13500000969', '0.00', '', '', '天河区天府路小学', '13500000969', '13926002979', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('7', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07379', '杨钶犇', '二年级', '13794367768', '0.00', '00028039,00051242', '', '天河区天府路小学', '13794367768', '13826484457', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('8', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07495', '邓汇子', '二年级', '13560478460', '0.00', '00028037,00051218', '', '天河区天府路小学', '', '13560478460', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('9', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07715', '钟子锟', '二年级', '18929593969', '0.00', '00028036,00051248', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('10', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07733', '林承熙', '二年级', '13922386115', '0.00', '00028498,00051236', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('11', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09025', '陈可馨8669', '二年级', '15622218669', '0.00', '00028491,00051188', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('12', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '周四16:30~19:30', '肖涵颖,翟志翔,Richar', 'S09026', '陈锵铭', '四年级', '13802520060', '0.00', '00028503,00074041', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('13', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09027', '龚子寅', '二年级', '13829759394', '0.00', '00028481,00051561', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('14', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09028', '郭梓聪', '二年级', '13502447171', '0.00', '00028502,00051220', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('15', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S09029', '侯宸越', '二年级', '13802536119', '0.00', '00028496,00034059,00034060,00034071,00034072,00073994,00073996', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('16', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S09030', '侯宸卓', '二年级', '13802536119', '0.00', '00028482,00034055,00034057,00034068,00034069,00073998,00074000', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('17', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S09031', '黄玮婷', '二年级', '18928895338', '0.00', '00028488,00074002', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('18', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S09032', '黄泽蕊', '三年级', '13802548976', '0.00', '00028505,00034061,00034062,00034075,00034078,00074004,00074006', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('19', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09033', '黄梓峰', '二年级', '13560016636', '0.00', '00028484,00051192', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('20', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09034', '劳隽熙', '二年级', '13922166899', '0.00', '00028070,00028072,00051194,00051196,00051210,00051212', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('21', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09035', '黎政鑫', '二年级', '13640846060', '0.00', '00028493,00040586,00041703,00045086,00045088,00051222,00051224', '', '天河区天府路小学（翠湖分校）', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('22', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09036', '李佩儿', '二年级', '13527882123', '0.00', '00030475,00051563', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('23', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09037', '李雅希', '二年级', '13533545832', '0.00', '00028497,00030364,00030368,00051226,00051228,00051230', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('24', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09038', '李紫嫣', '二年级', '18520121305', '0.00', '00028499,00051567', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('25', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09039', '梁泓楠', '二年级', '13418072142', '0.00', '00028509,00041700,00041702,00045131,00045133,00051232,00051234', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('26', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '周四16:30~19:30', '肖涵颖,翟志翔,Richar', 'S09040', '梁希', '四年级', '13556198719', '0.00', '00028500,00074047', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('27', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09042', '刘芷睿', '二年级', '18665651008', '0.00', '00028511,00050335,00051238,00051240', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('28', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09043', '刘芷妤', '二年级', '13501518927', '0.00', '00028507,00051198', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('29', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '周四16:30~19:30', '肖涵颖,翟志翔,Richar', 'S09044', '柳皓轩', '四年级', '13560322898', '0.00', '00028501,00074049', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('30', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09045', '陆鸣飞', '三年级', '13609726477', '0.00', '00028492,00049555,00051569,00051571', '', '祈福新邨小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('31', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S09046', '陆子叶', '三年级', '13632453211', '0.00', '00028510,00074008', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('32', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09047', '潘浩智', '二年级', '13640768911', '0.00', '00028486', '', '天府路分校', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('33', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09049', '苏兴承', '二年级', '13922229923', '0.00', '00028508,00051573', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('34', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09050', '王子骅', '二年级', '13302291816', '0.00', '00028485,00051204', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('35', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09051', '温静远', '二年级', '13922106580', '0.00', '00028489,00030611,00051575', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('36', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09052', '吴欣诺', '二年级', '13632353832', '0.00', '00028480,00051206', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('37', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S09053', '姚怡然', '三年级', '13826485248', '0.00', '00028495,00030529,00030608,00030609,00074016,00074018', '', '天府路小学翠湖校区', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('38', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09054', '张文一', '二年级', '13302336626', '0.00', '00028506,00051208', '', '天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('39', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09055', '钟雨桐', '二年级', '18898605866', '0.00', '00028062,00028064,00051244,00051246', '', '天河区天府路小学（翠湖分校）', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('40', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S09056', '周子澄', '三年级', '13926468975', '0.00', '00028490,00074024', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('41', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '周四16:30~19:30', '肖涵颖,翟志翔,Richar', 'S09199', '曾子希', '四年级', '13631499742', '0.00', '00028758,00065624,00065627,00074055,00074057,00074059', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('42', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09202', '闾家熙', '二年级', '13570201921', '0.00', '00028769,00036705,00051902', '', '天河区天府路小学', '18680287007', '13570201921', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('43', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09203', '钟华华', '二年级', '13824424796', '0.00', '00028773,00036696,00051882', '', '广州市天河区天府路小学', '', '13824424796', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('44', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09204', '朱诗淇', '二年级', '13725200569', '0.00', '00028774,00036689,00051903', '', '广州市天河区天府路小学', '13725200569', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('45', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S09309', '邱朔晴', '三年级', '18922734146', '0.00', '00074095', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('46', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S09315', '蔡君昊', '三年级', '13603016366', '0.00', '00074088', '', '广州市天河区天府路小学', '', '13603016366', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('47', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S09325', '朱彦坤', '三年级', '13527820131', '0.00', '00074089', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('48', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S09326', '王子涵（1）', '三年级', '15011912587', '0.00', '00074096', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('49', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09478', '易其乐', '二年级', '13822188180', '0.00', '00030855,00030856', '', '天河区天府路小学', '13925098792', '13822188180', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('50', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09613', '生艾霖', '二年级', '13392681558', '0.00', '00031350,00031351,00051200,00051202,00051214,00051216', '', '天河区天府路小学', '', '13395681558', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('51', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09879', '黄映衡', '大班', '13560016636', '0.00', '', '', '广州市天河区天府路小学', '', '13560016636', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('52', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10222', '李乐天', '二年级', '13556007650', '0.00', '00035656', '翠湖校区', '广州市天河区天府路小学', '1382187218', '13556007650', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('53', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10390', '詹靖宇', '三年级', '13925092000', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('54', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10408', '谢语墨', '中班', '13632190143', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('55', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10414', '詹靖轩', '大班', '13925092000', '0.00', '', '就读学校为华港幼儿园', '东华幼儿园', '13808880685', '13925092000', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('56', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10555', '邓亦舟', '四年级', '18926224535', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('57', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10626', '杨一诺', '三年级', '18688908150', '0.00', '', '', '天河区天府路小学', '', '18688908150', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('58', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10636', '杨一言', '二年级', '18688908150', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('59', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10708', '张曌仪', '二年级', '18903005813', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('60', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10725', '张驰', '二年级', '13825091202', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('61', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10745', '黎倞', '中班', '18100203550', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('62', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10759', '李澜昕', '三年级', '15975413984', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('63', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10776', '李欣遥', '二年级', '18620830552', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('64', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10783', '李宣霖', '中班', '18620830552', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('65', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S10823', '王梓淇（1）', '二年级', '18588508133', '0.00', '00073960', '', '天河区天府路小学', '18520330316', '18588508133', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('66', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S10853', '彭云翼', '小班', '13824432012', '0.00', '00073970', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('67', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10868', '彭羽菲', '一年级', '13824432012', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('68', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10889', '李烨铭', '五年级', '13148948648', '0.00', '', '', '天河区棠下小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('69', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10907', '梁钰', '五年级', '18122202254', '0.00', '', '', '天河区石牌小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('70', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10936', '詹以峤', '中班', '18620807692', '0.00', '', '', '', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('71', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S10980', '林昕睿', '二年级', '18998298281', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('72', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11022', '吴奕帆', '中班', '13312836220', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('73', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11028', '郑煜坤', '中班', '13710392726', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('74', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11036', '黄芷琳0305', '中班', '13560250305', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('75', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11046', '张奇钰', '中班', '13580347594', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('76', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11059', '黄元星', '中班', '13711669179', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('77', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11084', '邱堉庄', '二年级', '13650896618', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('78', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11104', '黄鸿亮', '二年级', '13660538977', '0.00', '00037173', '', '广州市天河区旭景小学', '', '13660538977', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('79', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11137', '杨熙峻', '二年级', '13710589432', '0.00', '', '', '天河区天府路小学', '', '13710589432', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('80', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11143', '林馨语', '中班', '13609085038', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('81', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11147', '陈明宇', '中班', '15919305340', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('82', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11217', '许雯婷', '四年级', '17817317308', '0.00', '', '', '华阳小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('83', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11226', '林子淇', '四年级', '13427585469', '0.00', '', '', '华阳小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('84', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S11238', '李羽涵', '二年级', '13640217144', '0.00', '00037371,00051565', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('85', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S11242', '刘安淇', '二年级', '13822267285', '0.00', '00037376', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('86', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S11347', '王岱霖', '二年级', '13610178910', '0.00', '00037525', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('87', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11473', '陈梓豪0326', '三年级', '13825130326', '0.00', '', '', '广州市越秀区水荫路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('88', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11534', '朱晓禾', '五年级', '18026275252', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('89', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S11540', '张芷涵', '二年级', '13763366493', '0.00', '00047948,00074022', '', '广州市天河区天府路小学', '13825027568', '13763366493', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('90', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11543', '江益民', '中班', '13725105561', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('91', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11664', '张智钦', '中班', '13602828746', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('92', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11665', '潘钰辰', '中班', '13922769637', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('93', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11667', '周昱延', '小班', '15920834834', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('94', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11787', '罗悦宁', '二年级', '18602031560', '0.00', '', '', '天河区天府路小学', '', '18602031560', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('95', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11790', '张梓玥', '一年级', '18520191828', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('96', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11798', '邹亦非', '中班', '18926224335', '0.00', '', '', '东华幼儿园', '', '18926224335', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('97', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11883', '陈立言', '二年级', '18680286506', '0.00', '', '', '广州市天河区天府路小学', '', '18680286506', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('98', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11900', '符方涓', '大班', '13808841422', '0.00', '', '', '东华幼儿园', '18688874048', '13808841422', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('99', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11909', '尹梓溢', '二年级', '13527850817', '0.00', '00038385', '', '天河区天府路小学', '', '13527850817', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('100', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S11938', '吴沐欣', '三年级', '13922257745', '0.00', '00038431,00074014', '', '天河区天府路小学', '15618152782', '13922257745', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('101', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S11940', '胡甜慈', '二年级', '18022899616', '0.00', '00038435', '', '广州市天河区天府路小学', '18022899535', '18022899616', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('102', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11950', '翁语欣', '四年级', '13580347076', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('103', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11962', '李梓铖', '二年级', '13631317878', '0.00', '00042389', '', '天河区骏景小学', '', '13631317878', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('104', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S11964', '平皓中', '二年级', '18602015509', '0.00', '', '', '天河区天府路小学', '18602015509', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('105', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11965', '杨天乐', '三年级', '13632358827', '0.00', '00038470', '', '广州市天河区第一实验小学', '135602498880', '13632358827', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('106', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12258', '张语彤', '中班', '18680254600', '0.00', '', '广州市天河区天晖幼儿园', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('107', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12366', '金昱谦', '中班', '13360008197', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('108', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12367', '彭芷晴', '中班', '18928861230', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('109', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12380', '张庭语', '小班', '13808870314', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('110', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12425', '熊忻仪', '中班', '13922453679', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('111', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12431', '唐茜薇', '四年级', '13798159371', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('112', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12467', '杨芷澄', '中班', '13450399199', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('113', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12469', '万语笑', '中班', '18022308486', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('114', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12495', '陈宇华', '四年级', '13318838382', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('115', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S12545', '杨梓盈', '四年级', '18588582151', '0.00', '00039277', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('116', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '周四16:30~19:30', '肖涵颖,翟志翔,Richar', 'S12550', '李沄天', '四年级', '13719199190', '0.00', '00074034,00074045', '', '天河区天府路小学', '18903003148', '13719199190', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('117', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12558', '靳瑞琪', '小班', '13302337916', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('118', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S12820', '何雯', '五年级', '13068821834', '0.00', '', '', '广州市天河区天府路小学', '13924212778', '13068821834', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('119', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S12910', '龙心宜', '三年级', '13622289238', '0.00', '00040012', '', '天河区天府路小学', '', '13622289238', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('120', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S12911', '王稚尹', '三年级', '13632336039', '0.00', '00040015', '', '天河区天府路小学', '', '13632336039', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('121', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S12913', '蔡乐铭', '三年级', '13826173078', '0.00', '00040018', '', '广州市天河区天府路小学', '', '13826173078', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('122', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13026', '王加泓', '一年级', '13580325947', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('123', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13067', '唐希怡', '中班', '13560455525', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('124', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13089', '董陈蓓', '二年级', '13560067893', '0.00', '', '', '广州大学附属小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('125', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13103', '万博文', '四年级', '13922274036', '0.00', '', '', '天河区天府路小学', '18925117656', '13922274036', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('126', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13110', '姜昕屹', '二年级', '13725287618', '0.00', '', '', '广州市天河区天府路小学', '', '13725287618', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('127', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13198', '宋美京', '三年级', '13922419984', '0.00', '', '东风东路小学', '东风东路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('128', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13243', '陈熹', '小班', '13570263325', '0.00', '', '未上幼儿园', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('129', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '周四16:30~19:30', '肖涵颖,翟志翔,Richar', 'S13317', '陈姝含', '四年级', '13632496687', '0.00', '00041287,00074043', '', '广州市天河区天府路小学', '13570206687', '13632496687', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('130', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13320', '魏蔚然', '四年级', '13926074520', '0.00', '00041296', '', '广州市暨南大学附属小学', '', '13926074520', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('131', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13730', '何泳希5668', '大班', '13022055668', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('132', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S13741', '何垚均', '二年级', '18688471778', '0.00', '00046748,00051190', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('133', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13744', '何柏沅', '中班', '13070261292', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('134', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S13915', '宾诗琪', '二年级', '15989047046', '0.00', '', '', '广州市天河区华景小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('135', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '周四16:30~19:30', '肖涵颖,翟志翔,Richar', 'S14355', '毛思羽', '二年级', '13602285805', '0.00', '00043629,00074051', '', '天河区天府路小学（翠湖分校）', '13609790096', '13602285805', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('136', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S14517', '列羽芊', '二年级', '13828434397', '0.00', '00043962', '', '广州市天河区天府路小学', '', '13828434397', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('137', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S14675', '李梓杰', '小班', '15889391251', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('138', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S14685', '高梓骞', '大班', '13922220087', '0.00', '', '', '广州邮电通信设备公司幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('139', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S14734', '张羽瑶', '中班', '13600058187', '0.00', '', '', '广州都市兰亭幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('140', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S15713', '张思哲', '三年级', '13928774047', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('141', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S15801', '杨雨浠', '三年级', '18665738556', '0.00', '', '', '广州市越秀区水荫路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('142', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S15854', '蒋沛霖', '一年级', '15360016840', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('143', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S15861', '徐俊哲', '一年级', '13640630605', '0.00', '', '', '广州市天河区天府路小学', '', '13640630605', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('144', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S16323', '罗鸿铭', '二年级', '18620889544', '0.00', '', '', '天河区天府路小学', '', '18620889544', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('145', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S16415', '杨晨曦', '三年级', '13922138919', '0.00', '00053563,00053564', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('146', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S16529', '何家坤', '三年级', '18026380649', '0.00', '00054028,00054030', '', '天河区天府路小学（翠湖分校）', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('147', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S16590', '崔雯睿', '小班', '13719056933', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('148', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S16600', '李冠延', '三年级', '13711288940', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('149', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S16607', '雷鲁健', '小班', '13798183155', '0.00', '00054306,00054307', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('150', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S16658', '汲春杉', '二年级', '13928893100', '0.00', '00054511,00054520', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('151', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S16667', '曾芷睿rayna', '三年级', '13922147018', '0.00', '00054539,00054546,00073986,00074020', '', '天河区天府路小学', '', '13922147018', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('152', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S16821', '邹沐彤', '三年级', '13928866895', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('153', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S16827', '黄祺茜-KIKI', '三年级', '13503017628', '0.00', '00056370', '', '天河区天府路小学（翠湖分校）', '', '13503017628', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('154', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S16940', '梁添翔', '二年级', '13610122142', '0.00', '00074062', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('155', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17011', '吴志轩', '小班', '18928912032', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('156', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17019', '戴裕桐', '小班', '13688880119', '0.00', '00055434', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('157', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17035', '戴永航', '小班', '13688880119', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('158', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17040', '吴祝吉', '大班', '13922257745', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('159', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17042', '李泓泽', '大班', '13609002006', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('160', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17043', '王唯有', '大班', '13922257745', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('161', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17110', '周梓麒', '三年级', '15102069298', '0.00', '00055709', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('162', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17123', '黄思睿', '中班', '13926022826', '0.00', '', '', '广州市天河区华景泽晖幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('163', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S17302', '胡世程', '三年级', '13925002550', '0.00', '00056352', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('164', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17309', '冯煦洋', '小班', '13660776606', '0.00', '', '', '未上学', '13763335867', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('165', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S17311', '姚季芮', '二年级', '18922260526', '0.00', '00056378,00056385,00056388', '', '广州市天河区天府路小学', '', '18922260526', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('166', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S17314', '肖鑫彤', '二年级', '13710988399', '1.00', '00074082,00074084', '', '天河区天府路小学（翠湖分校）', '13710988399', '13798002334', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('167', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17318', '朱钰彤', '小班', '13826452594', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('168', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17323', '林小哲（Austin）', '三年级', '15802016375', '0.00', '', '', '广州市天河区天府路小学', '', '15802016375', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('169', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17326', '林小轩', '大班', '15802016375', '0.00', '', '', '新蕾幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('170', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17328', '姜卉', '三年级', '13533065839', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('171', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17330', '汪宇丰', '中班', '18520664506', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('172', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17859', '许雯棋', '二年级', '13632383973', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('173', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17865', '姚俊宏', '大班', '13922174670', '0.00', '', '', '东华幼儿园', '', '13922174670', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('174', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S17868', '纪博桓', '三年级', '13380079255', '0.00', '00058786', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('175', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S17901', '林也淇', '三年级', '13660691390', '0.00', '00059010', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('176', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17905', '梁文迪', '三年级', '13824469498', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('177', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S17907', '江晓潼', '三年级', '13925098803', '0.00', '00059016', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('178', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S17930', '刘赜恺', '三年级', '15899957099', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('179', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18057', '廖爱跃', '一年级', '13602488168', '0.00', '', '', '广州市天河区天府路小学', '', '13602488168', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('180', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18156', '蓝添', '五年级', '13924268965', '0.00', '', '', '广州市番禺区华南碧桂园学校', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('181', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18175', '李晓语', '大班', '13602452352', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('182', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18229', '简耀龙', '三年级', '13318767909', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('183', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18232', '杨旖妮', '小班', '13922455606', '0.00', '00060845', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('184', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S18271', '陈悦心', '三年级', '13302255996', '0.00', '00060984,00073990', '', '广州市天河区天府路小学', '', '13302255996', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('185', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18358', '刘烔燊', '二年级', '13828081771', '0.00', '', '', '广州市天河区天府路小学', '', '13828081771', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('186', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18407', '陈启', '一年级', '13726789319', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('187', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18562', '骆伊洋Dora', '三年级', '13924227183', '0.00', '', '', '天河区天府路小学（翠湖分校）', '', '13924227183', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('188', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18564', '何思睿', '小班', '13929558460', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('189', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18593', '胡逍', '大班', '13631346942', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('190', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18596', '胡遥', '大班', '13631346942', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('191', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18599', '张书瑶4101', '二年级', '13580554101', '0.00', '', '', '广州市天河区天府路小学', '13580554101', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('192', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18626', '陈铭灏', '二年级', '13798058415', '0.00', '', '', '广州市天河区天府路小学', '', '13798058415', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('193', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18628', '熊奕宁', '三年级', '13632404301', '0.00', '00062926', '', '广州市天河区天府路小学', '', '13632404301', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('194', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18632', '范越好', '小班', '13570311969', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:27');
INSERT INTO `stjy_bjxyxxb` VALUES ('195', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18645', '柯皓天', '大班', '15913164129', '0.00', '', '', '广州邮电通信设备公司幼儿园', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('196', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18646', '黄楷邦', '一年级', '13926477498', '0.00', '', '', '朝阳东幼儿园', '', '13926477498', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('197', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18724', '陆文蓓', '小班', '13719299327', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('198', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18734', '彭星语', '二年级', '18688858951', '0.00', '', '', '广州市天河区天府路小学', '18688858951', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('199', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18745', '肖昕瑶', '大班', '13570251087', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('200', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18804', '陈博源', '四年级', '13560139305', '0.00', '', '', '天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('201', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18827', '徐宸', '二年级', '15914290808', '0.00', '', '', '广州市天河区天府路小学', '', '15914290808', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('202', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18834', '王子荞', '三年级', '18666091785', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('203', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S18835', '曾子瀚', '三年级', '18664866876', '0.00', '', '', '天河区天府路小学', '18664866876', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('204', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S19097', '冯钰淑', '小班', '13928867265', '0.00', '00065384', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('205', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19122', '赵若菡', '三年级', '13828420843', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('206', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19155', '熊峰', '四年级', '18925081158', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('207', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19180', 'timmy', '一年级', '18588661238', '0.00', '00065733', '', '东莞市东城朝天实验小学', '', '18588661238', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('208', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19470', '吴家诚', '二年级', '13533099190', '0.00', '00066625', '', '广州市天河区天府路小学', '', '13533099190', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('209', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19472', '吴家兆', '二年级', '13533099190', '0.00', '00066628', '', '广州市天河区天府路小学', '', '13533099190', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('210', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19504', '邓禹', '三年级', '18925063330', '0.00', '00076555,00076557', '', '天河区天府路小学（翠湖分校）', '18925063330', '18998367496', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('211', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S19524', '林子妍', '三年级', '18922100301', '0.00', '00066788', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('212', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19752', '康恩铭', '大班', '13926054860', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('213', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19821', '王语诗4560', '小班', '13112254560', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('214', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19829', '冼逸晴', '小班', '13427584066', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('215', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19839', '钟思颖', '三年级', '13826420690', '0.00', '', '', '天河区天府路小学（翠湖分校）', '', '13826420690', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('216', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19861', '钟佩然', '初一', '13642636128', '0.00', '', '', '广州市华颖外国语学校', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('217', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19862', '钟艺荣', '大班', '13642636128', '0.00', '00068702', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('218', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19878', '商哲瑞', '小班', '18927522577', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('219', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19879', '商哲溢', '小班', '18927522577', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('220', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S19918', '张锦楠', '二年级', '13580481373', '0.00', '00068852', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('221', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '周一15:30~18:30', '吴彩红,翟志翔,Richar', 'S19926', '邓蕾', '小班', '13922391292', '0.00', '00073987,00073992', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('222', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '周日09:00~12:00', '吴彩红,翟志翔,Richar', 'S19927', '周静怡', '二年级', '13802971860', '0.00', '00068872,00068876,00068877', '', '天河区天府路小学', '', '13802971860', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('223', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19928', '张棉', '二年级', '13903068201', '0.00', '', '', '广州市天河区天府路小学', '', '13903068201', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('224', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19937', '许嘉妮', '二年级', '18922748722', '0.00', '00068936', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('225', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19970', '张杰', '三年级', '13527788524', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('226', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19971', '项如杰', '三年级', '13560472630', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('227', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S19972', '张雅馨', '大班', '13527788524', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('228', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S20057', '吴卓然', '二年级', '13602754048', '0.00', '00069643', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('229', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20202', '刘珊羽', '三年级', '13430338149', '0.00', '', '', '广州市天河区天府路小学', '', '13430338149', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('230', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20204', '肖斐然', '二年级', '13432014572', '0.00', '', '', '广州市天河区天府路小学', '13432014572', '13622760284', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('231', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20238', '许嘉智', '大班', '18022372922', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('232', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20244', '郑黄奕', '二年级', '13826416967', '0.00', '', '', '广州市天河区天府路小学', '', '13826416967', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('233', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20276', '刘梓超', '小班', '13302335609', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('234', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20316', '熊睿', '四年级', '17701910809', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('235', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20410', '丁乐天', '小班', '13826437160', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('236', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20426', '黄子轩', '二年级', '13600089105', '0.00', '', '', '广州市天河区天府路小学', '', '13600089105', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('237', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20504', '王语诗5947', '小班', '13580325947', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('238', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20515', '聂子晗', '二年级', '13302277181', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('239', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20522', '冼熙桐', '大班', '13725138927', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('240', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20525', '吴昀洲', '二年级', '13929506663', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('241', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S20531', '谢宇轩', '小班', '18520566902', '0.00', '00073503', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('242', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20532', '刘骏莹', '二年级', '13902308864', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('243', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20534', '谢宇博', '二年级', '13073019846', '0.00', '', '', '天河区骏景小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('244', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20540', '李柏尧', '小班', '18820090260', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('245', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20541', '程馨逸', '中班', '13631335135', '0.00', '', '', '东华幼儿园', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('246', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20551', '梁诗蕴', '小班', '18126872779', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('247', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20552', '梁冠绅', '小班', '18126872779', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('248', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20553', '董卓然', '小班', '13822119567', '0.00', '', '', '未上学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('249', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20567', '尹浩嘉', '三年级', '13902335866', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('250', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20773', '田珈易', '大班', '13450499730', '0.00', '', '', '广州市天河区吉米幼儿园', '', '', '4', '2017-09-05 15:00:28');
INSERT INTO `stjy_bjxyxxb` VALUES ('251', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S20808', '许馨之', '一年级', '18565421353', '0.00', '', '', '广州市天河区天府路小学', '', '', '4', '2017-09-05 15:00:28');

-- ----------------------------
-- Table structure for stjy_bjzysjb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_bjzysjb`;
CREATE TABLE `stjy_bjzysjb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bumen` varchar(255) DEFAULT NULL COMMENT '部门',
  `dangyuebjs` int(11) DEFAULT NULL COMMENT '当月班级数',
  `renshuzj` int(11) DEFAULT NULL COMMENT '人数总计',
  `banjibhl` double(11,2) DEFAULT NULL COMMENT '班级饱和率',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_bjzysjb
-- ----------------------------
INSERT INTO `stjy_bjzysjb` VALUES ('24', '总计', '7', '87', '12.43', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_bjzysjb` VALUES ('23', '一对一', null, null, '0.00', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_bjzysjb` VALUES ('22', '初中部', null, null, '0.00', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_bjzysjb` VALUES ('21', '小高部', '1', '8', '8.00', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_bjzysjb` VALUES ('20', '小初部', '6', '79', '13.17', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_bjzysjb` VALUES ('19', '幼儿部', null, null, '0.00', '30', '2017-09-05 15:22:00');

-- ----------------------------
-- Table structure for stjy_class
-- ----------------------------
DROP TABLE IF EXISTS `stjy_class`;
CREATE TABLE `stjy_class` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `sort` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='文章分类';

-- ----------------------------
-- Records of stjy_class
-- ----------------------------

-- ----------------------------
-- Table structure for stjy_department
-- ----------------------------
DROP TABLE IF EXISTS `stjy_department`;
CREATE TABLE `stjy_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '部门名称',
  `isuse` tinyint(4) DEFAULT '1' COMMENT '是否启动：0，未启用；1，启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_department
-- ----------------------------
INSERT INTO `stjy_department` VALUES ('2', '市场部', '1');
INSERT INTO `stjy_department` VALUES ('3', '行政部', '1');
INSERT INTO `stjy_department` VALUES ('4', '教学部', '1');

-- ----------------------------
-- Table structure for stjy_fxkkb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_fxkkb`;
CREATE TABLE `stjy_fxkkb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `kaikesjd` varchar(255) DEFAULT NULL COMMENT '开课时间段',
  `banjishu` int(11) DEFAULT NULL COMMENT '班级数',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_fxkkb
-- ----------------------------
INSERT INTO `stjy_fxkkb` VALUES ('20', '周日上午', '1', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_fxkkb` VALUES ('19', '周四下午', '2', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_fxkkb` VALUES ('18', '周一下午', '2', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_fxkkb` VALUES ('17', '总计', '7', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_fxkkb` VALUES ('16', '周六上午', '2', '30', '2017-09-05 15:22:00');

-- ----------------------------
-- Table structure for stjy_gbxzdrstjb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_gbxzdrstjb`;
CREATE TABLE `stjy_gbxzdrstjb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `bumen` varchar(255) DEFAULT NULL,
  `youerban` int(11) DEFAULT NULL,
  `xiaoxuezmbtb` int(11) DEFAULT NULL,
  `zhongxueban` int(11) DEFAULT NULL,
  `xiaoxueps1d5` int(11) DEFAULT NULL,
  `xiaoxueps2` int(11) DEFAULT NULL,
  `xiaoxueps2d5` int(11) DEFAULT NULL,
  `xiaoxueps3` int(11) DEFAULT NULL,
  `zhouriws` int(11) DEFAULT NULL,
  `zhouwuws` int(11) DEFAULT NULL,
  `zhouliuws` int(11) DEFAULT NULL,
  `yiduiyi` int(11) DEFAULT NULL,
  `heji` int(11) DEFAULT NULL,
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_gbxzdrstjb
-- ----------------------------
INSERT INTO `stjy_gbxzdrstjb` VALUES ('24', '总计', '5', '36', null, null, null, null, '46', null, null, null, null, '87', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_gbxzdrstjb` VALUES ('23', '一对一', null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_gbxzdrstjb` VALUES ('22', '初中部', null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_gbxzdrstjb` VALUES ('21', '小高部', null, null, null, null, null, null, '8', null, null, null, null, '8', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_gbxzdrstjb` VALUES ('20', '小初部', '5', '36', null, null, null, null, '38', null, null, null, null, '79', '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_gbxzdrstjb` VALUES ('19', '幼儿部', null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');

-- ----------------------------
-- Table structure for stjy_jsmxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_jsmxb`;
CREATE TABLE `stjy_jsmxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xuhao` int(11) DEFAULT NULL COMMENT '序号',
  `yuefen` varchar(255) DEFAULT NULL COMMENT '月份',
  `fenxiao` varchar(255) DEFAULT NULL COMMENT '分校',
  `jianshaolx` varchar(255) DEFAULT NULL COMMENT '减少类型',
  `xuehao` varchar(255) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `suoshubm` varchar(255) DEFAULT NULL COMMENT '所属部门',
  `banjibh` varchar(255) DEFAULT NULL COMMENT '班级编号',
  `jingduls` varchar(255) DEFAULT NULL COMMENT '精读老师',
  `fanduls` varchar(255) DEFAULT NULL COMMENT '泛读老师',
  `kaibanrq` varchar(255) DEFAULT NULL COMMENT '开班日期',
  `jiebanrq` varchar(255) DEFAULT NULL COMMENT '结班日期',
  `liushitfyy` varchar(255) DEFAULT NULL COMMENT '流失/退费原因',
  `tingduxqjkc` double(11,2) DEFAULT NULL COMMENT '停读学期及课次',
  `shengyukc` double(11,2) DEFAULT NULL COMMENT '剩余课次',
  `yucunxfje` double(11,2) DEFAULT NULL COMMENT '余存学费金额',
  `lianxidh` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `yujifdsj` varchar(255) DEFAULT NULL COMMENT '预计复读时间',
  `zhaoshenggw` varchar(255) DEFAULT NULL COMMENT '招生顾问',
  `zhaoshengly` varchar(255) DEFAULT NULL COMMENT '招生来源',
  `jiuduxx` varchar(255) DEFAULT NULL COMMENT '就读学校',
  `jiuduxxnj` varchar(255) DEFAULT NULL COMMENT '就读学校年级',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_jsmxb
-- ----------------------------

-- ----------------------------
-- Table structure for stjy_kbmxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_kbmxb`;
CREATE TABLE `stjy_kbmxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `banjimc` varchar(255) DEFAULT NULL COMMENT '班级名称',
  `kaibanrq` varchar(255) DEFAULT NULL COMMENT '开班日期',
  `jiebanrq` varchar(255) DEFAULT NULL COMMENT '结班日期',
  `shangkedd` varchar(255) DEFAULT NULL COMMENT '上课地点',
  `shangkesjd` varchar(255) DEFAULT NULL COMMENT '上课时间段',
  `shangkesj` varchar(255) DEFAULT NULL COMMENT '上课时间',
  `shangkexss` double(11,2) DEFAULT NULL COMMENT '上课小时数',
  `jingjiangxs` double(11,2) DEFAULT NULL COMMENT '精讲小时',
  `fanduxs` double(11,2) DEFAULT NULL COMMENT '泛读小时',
  `waijiaoxs` double(11,2) DEFAULT NULL COMMENT '外教小时',
  `jingjiangls` varchar(255) DEFAULT NULL COMMENT '精讲老师',
  `fanduls` varchar(255) DEFAULT NULL COMMENT '泛读老师',
  `waijiaols` varchar(255) DEFAULT NULL COMMENT '外教老师',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_kbmxb
-- ----------------------------
INSERT INTO `stjy_kbmxb` VALUES ('1', 'P1AF02G0201', '2017-06-19', '2021-06-23', 'class C', '15:30-18:30', '周一', '3.00', '1.50', '1.00', '0.50', '翟志翔', '陈美全', 'Richar', '7', '2017-09-05 15:00:54');
INSERT INTO `stjy_kbmxb` VALUES ('2', 'P1BF03G2304', '2017-08-25', '2019-08-30', 'class B', '15:30-18:30', '周一', '3.00', '1.50', '1.00', '0.50', '吴彩红', '翟志翔', 'Richar', '7', '2017-09-05 15:00:54');
INSERT INTO `stjy_kbmxb` VALUES ('3', 'P1AF02G0203', '2017-06-24', '2019-06-29', 'class C', '09:00-12:00', '周六', '3.00', '1.50', '1.00', '0.50', '翟志翔', '郑琴', 'Zoe', '7', '2017-09-05 15:00:54');
INSERT INTO `stjy_kbmxb` VALUES ('4', 'P02F01G0106', '2017-05-13', '2018-03-15', 'class B', '09:00-12:00', '周六', '3.00', '1.50', '1.00', '0.50', '翟志翔', '陈美全', 'Zoe', '7', '2017-09-05 15:00:54');
INSERT INTO `stjy_kbmxb` VALUES ('5', 'P1AF01G1207', '2017-08-24', '2020-08-01', 'class E', '09:00-12:00', '周日', '3.00', '1.50', '1.00', '0.50', '吴彩红', '翟志翔', 'Richar', '7', '2017-09-05 15:00:54');
INSERT INTO `stjy_kbmxb` VALUES ('6', 'P1AF02G0202', '2017-06-22', '2018-06-16', 'class C', '15:30-18:30', '周四', '3.00', '1.50', '1.00', '0.50', '翟志翔', '郑琴', 'Richar', '7', '2017-09-05 15:00:54');
INSERT INTO `stjy_kbmxb` VALUES ('7', 'P3AF03G3405', '2017-08-24', '2020-08-02', 'class B', '16:30-19:30', '周四', '3.00', '1.50', '1.00', '0.50', '肖涵颖', '翟志翔', 'Richar', '7', '2017-09-05 15:00:54');

-- ----------------------------
-- Table structure for stjy_kxmxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_kxmxb`;
CREATE TABLE `stjy_kxmxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xuehao` varchar(255) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `nianji` varchar(255) DEFAULT NULL COMMENT '年级',
  `kemu` varchar(255) DEFAULT NULL COMMENT '科目',
  `kecheng` varchar(255) DEFAULT NULL COMMENT '课程',
  `banji` varchar(255) DEFAULT NULL COMMENT '班级',
  `xiaoqumc` varchar(255) DEFAULT NULL COMMENT '校区名称',
  `shangkels` varchar(255) DEFAULT NULL COMMENT '上课老师',
  `zhujiao` varchar(255) DEFAULT NULL COMMENT '助教',
  `xueguanshi` varchar(255) DEFAULT NULL COMMENT '学管师',
  `zaizhilx` varchar(255) DEFAULT NULL COMMENT '在职类型',
  `laoshijb` varchar(255) DEFAULT NULL COMMENT '老师级别',
  `shangkesj` varchar(255) DEFAULT NULL COMMENT '上课时间',
  `shangkesc` varchar(255) DEFAULT NULL COMMENT '上课时长',
  `shuliang` varchar(255) DEFAULT NULL COMMENT '数量',
  `kexiaoje` double(11,2) DEFAULT NULL COMMENT '课消金额',
  `qianfeije` double(11,2) DEFAULT NULL COMMENT '欠费金额',
  `shoufeirq` varchar(255) DEFAULT NULL COMMENT '收费日期',
  `shoujuhao` varchar(255) DEFAULT NULL COMMENT '收据号',
  `shoufeixq` varchar(255) DEFAULT NULL COMMENT '收费校区',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=186 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_kxmxb
-- ----------------------------
INSERT INTO `stjy_kxmxb` VALUES ('1', 'S07379', '杨钶犇', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '174.97', '0.00', '2017-06-16', '00051242', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('2', 'S11940', '胡甜慈', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-24 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038435', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('3', 'S09053', '姚怡然', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '212.51', '0.00', '2017-08-30', '00074016', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('4', 'S11940', '胡甜慈', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-26 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038435', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('5', 'S09202', '闾家熙', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028769', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('6', 'S01616', '彭希扬', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '邹丽萍', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '172.19', '0.00', '2017-08-30', '00074010', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('7', 'S12911', '王稚尹', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-11', '00040015', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('8', 'S11242', '刘安淇', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-26 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037376', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('9', 'S09199', '曾子希', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-26 16:30', '3.00小时', '1.00次', '398.75', '0.00', '2017-08-30', '00074055', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('10', 'S11347', '王岱霖', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-26 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037525', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('11', 'S07715', '钟子锟', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051248', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('12', 'S09043', '刘芷妤', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051198', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('13', 'S07733', '林承熙', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051236', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('14', 'S11347', '王岱霖', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037525', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('15', 'S09202', '闾家熙', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028769', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('16', 'S09204', '朱诗淇', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028774', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('17', 'S11104', '黄鸿亮', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037173', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('18', 'S11242', '刘安淇', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037376', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('19', 'S17868', '纪博桓', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-07-04', '00058786', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('20', 'S09315', '蔡君昊', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-24 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074088', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('21', 'S16940', '梁添翔', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074062', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('22', 'S09047', '潘浩智', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '208.00', '0.00', '2017-04-01', '00028486', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('23', 'S12913', '蔡乐铭', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-11', '00040018', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('24', 'S12913', '蔡乐铭', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-11', '00040018', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('25', 'S07379', '杨钶犇', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '174.97', '0.00', '2017-06-16', '00051242', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('26', 'S09035', '黎政鑫', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '213.40', '0.00', '2017-06-16', '00051222', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('27', 'S09053', '姚怡然', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '212.51', '0.00', '2017-08-30', '00074016', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('28', 'S09045', '陆鸣飞', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '188.14', '0.00', '2017-06-17', '00051569', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('29', 'S07715', '钟子锟', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051248', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('30', 'S09051', '温静远', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-06-17', '00051575', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('31', 'S16940', '梁添翔', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074062', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('32', 'S09027', '龚子寅', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-17', '00051561', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('33', 'S09032', '黄泽蕊', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '209.55', '0.00', '2017-08-30', '00074004', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('34', 'S09047', '潘浩智', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '208.00', '0.00', '2017-04-01', '00028486', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('35', 'S09055', '钟雨桐', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051244', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('36', 'S09035', '黎政鑫', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '213.40', '0.00', '2017-06-16', '00051222', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('37', 'S16415', '杨晨曦', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-23', '00053563', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('38', 'S09027', '龚子寅', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-17', '00051561', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('39', 'S07495', '邓汇子', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '174.98', '0.00', '2017-06-16', '00051218', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('40', 'S17901', '林也淇', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-07-05', '00059010', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('41', 'S09025', '陈可馨8669', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051188', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('42', 'S20057', '吴卓然', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-19', '00069643', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('43', 'S09049', '苏兴承', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-17', '00051573', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('44', 'S09054', '张文一', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051208', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('45', 'S16607', '雷鲁健', '小班', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-24', '00054306', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('46', 'S07733', '林承熙', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051236', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('47', 'S11938', '吴沐欣', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074014', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('48', 'S09326', '王子涵（1）', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074096', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('49', 'S09032', '黄泽蕊', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '209.55', '0.00', '2017-08-30', '00074004', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('50', 'S11940', '胡甜慈', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038435', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('51', 'S07495', '邓汇子', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '174.98', '0.00', '2017-06-16', '00051218', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('52', 'S09204', '朱诗淇', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028774', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('53', 'S01616', '彭希扬', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '邹丽萍', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '172.19', '0.00', '2017-08-30', '00074010', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('54', 'S09203', '钟华华', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028773', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('55', 'S07715', '钟子锟', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051248', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('56', 'S17868', '纪博桓', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-07-04', '00058786', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('57', 'S09039', '梁泓楠', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '210.05', '0.00', '2017-06-16', '00051232', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('58', 'S10853', '彭云翼', '小班', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00073970', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('59', 'S09202', '闾家熙', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028769', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('60', 'S01622', '邱刘哲', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '邹丽萍', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '172.10', '0.00', '2017-08-30', '00074012', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('61', 'S12910', '龙心宜', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-11', '00040012', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('62', 'S09052', '吴欣诺', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051206', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('63', 'S13317', '陈姝含', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-28 16:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074043', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('64', 'S09049', '苏兴承', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-17', '00051573', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('65', 'S09325', '朱彦坤', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074089', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('66', 'S09035', '黎政鑫', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '213.40', '0.00', '2017-06-16', '00051222', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('67', 'S16607', '雷鲁健', '小班', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-24 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-24', '00054306', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('68', 'S14355', '毛思羽', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-28 16:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074051', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('69', 'S12545', '杨梓盈', '四年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-10', '00039277', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('70', 'S12550', '李沄天', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-28 16:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074045', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('71', 'S09044', '柳皓轩', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-28 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-08-30', '00074049', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('72', 'S09025', '陈可馨8669', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051188', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('73', 'S09028', '郭梓聪', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051220', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('74', 'S19097', '冯钰淑', '小班', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-07-22', '00065384', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('75', 'S09030', '侯宸卓', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '230.59', '0.00', '2017-08-30', '00073998', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('76', 'S16529', '何家坤', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-24', '00054028', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('77', 'S09047', '潘浩智', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '208.00', '0.00', '2017-04-01', '00028486', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('78', 'S11104', '黄鸿亮', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037173', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('79', 'S09034', '劳隽熙', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051210', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('80', 'S16529', '何家坤', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-24', '00054028', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('81', 'S09033', '黄梓峰', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-06-16', '00051192', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('82', 'S12913', '蔡乐铭', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-11', '00040018', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('83', 'S09050', '王子骅', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '231.00', '0.00', '2017-06-16', '00051204', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('84', 'S11238', '李羽涵', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-06-17', '00051565', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('85', 'S09054', '张文一', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051208', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('86', 'S19927', '周静怡', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-26 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-15', '00068872', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('87', 'S13741', '何垚均', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-06-16', '00051190', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('88', 'S12910', '龙心宜', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-11', '00040012', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('89', 'S09043', '刘芷妤', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051198', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('90', 'S12911', '王稚尹', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-11', '00040015', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('91', 'S17311', '姚季芮', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-06-29', '00056378', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('92', 'S11540', '张芷涵', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074022', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('93', 'S09042', '刘芷睿', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-06-16', '00051238', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('94', 'S10823', '王梓淇（1）', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00073960', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('95', 'S09028', '郭梓聪', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051220', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('96', 'S01699', '曾砚斐', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-28 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074053', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('97', 'S09038', '李紫嫣', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '187.96', '0.00', '2017-06-17', '00051567', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('98', 'S16415', '杨晨曦', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-26 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-23', '00053563', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('99', 'S09042', '刘芷睿', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-06-16', '00051238', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('100', 'S09028', '郭梓聪', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051220', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('101', 'S20531', '谢宇轩', '小班', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-29', '00073503', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('102', 'S09326', '王子涵（1）', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-24 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074096', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('103', 'S14355', '毛思羽', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-24 16:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074051', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('104', 'S09056', '周子澄', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-08-30', '00074024', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('105', 'S09038', '李紫嫣', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '187.96', '0.00', '2017-06-17', '00051567', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('106', 'S09203', '钟华华', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028773', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('107', 'S09042', '刘芷睿', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-06-16', '00051238', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('108', 'S17311', '姚季芮', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-06-29', '00056378', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('109', 'S12550', '李沄天', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-26 16:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074045', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('110', 'S09036', '李佩儿', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '398.75', '0.00', '2017-06-17', '00051563', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('111', 'S20531', '谢宇轩', '小班', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-29', '00073503', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('112', 'S09045', '陆鸣飞', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '188.14', '0.00', '2017-06-17', '00051569', '天河天府路中心', '6', '2017-09-05 15:00:47');
INSERT INTO `stjy_kxmxb` VALUES ('113', 'S11909', '尹梓溢', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038385', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('114', 'S20057', '吴卓然', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-19', '00069643', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('115', 'S09055', '钟雨桐', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051244', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('116', 'S13317', '陈姝含', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-24 16:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074043', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('117', 'S12911', '王稚尹', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-11', '00040015', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('118', 'S11540', '张芷涵', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074022', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('119', 'S09051', '温静远', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-06-17', '00051575', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('120', 'S09051', '温静远', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-06-17', '00051575', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('121', 'S09033', '黄梓峰', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-06-16', '00051192', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('122', 'S12910', '龙心宜', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-11', '00040012', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('123', 'S11238', '李羽涵', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-06-17', '00051565', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('124', 'S09027', '龚子寅', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-17', '00051561', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('125', 'S13741', '何垚均', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-06-16', '00051190', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('126', 'S09030', '侯宸卓', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '230.59', '0.00', '2017-08-30', '00073998', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('127', 'S19097', '冯钰淑', '小班', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-07-22', '00065384', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('128', 'S09326', '王子涵（1）', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-26 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074096', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('129', 'S18271', '陈悦心', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-30', '00073990', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('130', 'S09204', '朱诗淇', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028774', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('131', 'S09036', '李佩儿', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '398.75', '0.00', '2017-06-17', '00051563', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('132', 'S09044', '柳皓轩', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-26 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-08-30', '00074049', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('133', 'S09055', '钟雨桐', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051244', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('134', 'S11965', '杨天乐', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038470', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('135', 'S20531', '谢宇轩', '小班', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-29', '00073503', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('136', 'S19918', '张锦楠', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-15', '00068852', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('137', 'S09034', '劳隽熙', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051210', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('138', 'S11938', '吴沐欣', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074014', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('139', 'S16940', '梁添翔', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074062', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('140', 'S17314', '肖鑫彤', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-26 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-08-30', '00074082', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('141', 'S18271', '陈悦心', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-29 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-30', '00073990', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('142', 'S09203', '钟华华', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028773', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('143', 'S09040', '梁希', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-24 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-08-30', '00074047', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('144', 'S11104', '黄鸿亮', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037173', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('145', 'S09037', '李雅希', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-06-16', '00051226', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('146', 'S09045', '陆鸣飞', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '188.14', '0.00', '2017-06-17', '00051569', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('147', 'S10853', '彭云翼', '小班', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00073970', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('148', 'S09049', '苏兴承', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-25 09:00', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-17', '00051573', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('149', 'S16415', '杨晨曦', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-24 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-23', '00053563', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('150', 'S07733', '林承熙', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051236', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('151', 'S09315', '蔡君昊', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074088', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('152', 'S10853', '彭云翼', '小班', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00073970', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('153', 'S09325', '朱彦坤', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-24 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074089', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('154', 'S12550', '李沄天', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-24 16:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-08-30', '00074045', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('155', 'S17314', '肖鑫彤', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-08-30', '00074082', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('156', 'S09039', '梁泓楠', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '210.05', '0.00', '2017-06-16', '00051232', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('157', 'S01622', '邱刘哲', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '邹丽萍', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '172.10', '0.00', '2017-08-30', '00074012', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('158', 'S09039', '梁泓楠', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '210.05', '0.00', '2017-06-16', '00051232', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('159', 'S09478', '易其乐', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '肖涵颖,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-04-22', '00030855', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('160', 'S09029', '侯宸越', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '214.15', '0.00', '2017-08-30', '00073994', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('161', 'S09037', '李雅希', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-06-16', '00051226', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('162', 'S11242', '刘安淇', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-24 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037376', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('163', 'S09040', '梁希', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-28 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-08-30', '00074047', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('164', 'S07379', '杨钶犇', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '174.97', '0.00', '2017-06-16', '00051242', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('165', 'S09315', '蔡君昊', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-26 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074088', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('166', 'S17901', '林也淇', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-07-05', '00059010', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('167', 'S11238', '李羽涵', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-27 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-06-17', '00051565', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('168', 'S07495', '邓汇子', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-26 15:30', '3.00小时', '1.00次', '174.98', '0.00', '2017-06-16', '00051218', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('169', 'S20057', '吴卓然', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-19', '00069643', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('170', 'S09026', '陈锵铭', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-28 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074041', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('171', 'S16529', '何家坤', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-24', '00054028', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('172', 'S17868', '纪博桓', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-07-04', '00058786', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('173', 'S09040', '梁希', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-26 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-08-30', '00074047', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('174', 'S17901', '林也淇', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '吴彩红,Zoe', '', '全职', '', '2017-08-29 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-07-05', '00059010', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('175', 'S16607', '雷鲁健', '小班', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-26 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-24', '00054306', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('176', 'S19524', '林子妍', '三年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-07-29', '00066788', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('177', 'S09056', '周子澄', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-08-30', '00074024', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('178', 'S09199', '曾子希', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-28 16:30', '3.00小时', '1.00次', '398.75', '0.00', '2017-08-30', '00074055', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('179', 'S19918', '张锦楠', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-28 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-15', '00068852', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('180', 'S09037', '李雅希', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-06-16', '00051226', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('181', 'S19918', '张锦楠', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', 'Richar,肖涵颖', '', '全职', '', '2017-08-24 15:30', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-15', '00068852', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('182', 'S19927', '周静怡', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-28 09:00', '3.00小时', '1.00次', '117.50', '0.00', '2017-08-15', '00068872', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('183', 'S17314', '肖鑫彤', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF01G1207', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-24 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-08-30', '00074082', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('184', 'S16667', '曾芷睿rayna', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF03G2304', '天河天府路中心', '吴彩红', '翟志翔,Richar', '', '全职', '', '2017-08-25 15:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-08-30', '00074020', '天河天府路中心', '6', '2017-09-05 15:00:48');
INSERT INTO `stjy_kxmxb` VALUES ('185', 'S09044', '柳皓轩', '四年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P3AF03G3405', '天河天府路中心', '肖涵颖', '翟志翔,Richar', '', '全职', '', '2017-08-24 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-08-30', '00074049', '天河天府路中心', '6', '2017-09-05 15:00:48');

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
-- Table structure for stjy_node
-- ----------------------------
DROP TABLE IF EXISTS `stjy_node`;
CREATE TABLE `stjy_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_node
-- ----------------------------
INSERT INTO `stjy_node` VALUES ('5', 'Admin', '后台', '1', null, '1', '0', '1');
INSERT INTO `stjy_node` VALUES ('8', 'Rbac', 'RBAC', '1', null, '100', '5', '2');
INSERT INTO `stjy_node` VALUES ('9', 'node', '节点', '1', null, '1', '8', '3');
INSERT INTO `stjy_node` VALUES ('10', 'Home', '前端', '1', null, '1', '0', '1');
INSERT INTO `stjy_node` VALUES ('11', 'Show', '展示页', '1', null, '1', '10', '2');
INSERT INTO `stjy_node` VALUES ('12', 'TableImport', '表格导入', '1', null, '1', '5', '2');
INSERT INTO `stjy_node` VALUES ('13', 'Setting', '功能设置', '1', null, '2', '5', '2');
INSERT INTO `stjy_node` VALUES ('14', 'index', '校管家所有列表', '1', null, '2', '12', '3');
INSERT INTO `stjy_node` VALUES ('15', 'tableList', '表格列表', '1', null, '3', '12', '3');
INSERT INTO `stjy_node` VALUES ('16', 'table_xq', '表格详情', '1', null, '5', '12', '3');
INSERT INTO `stjy_node` VALUES ('17', 'import', '表格导入页面', '1', null, '6', '12', '3');
INSERT INTO `stjy_node` VALUES ('18', 'dataUpload', '执行数据导入', '1', null, '7', '12', '3');
INSERT INTO `stjy_node` VALUES ('19', 'school', '学校列表页', '1', null, '1', '13', '3');
INSERT INTO `stjy_node` VALUES ('20', 'school_add', '添加学校页面', '1', null, '2', '13', '3');
INSERT INTO `stjy_node` VALUES ('21', 'addSchool', '执行添加学校', '1', null, '3', '13', '3');
INSERT INTO `stjy_node` VALUES ('22', 'editSchool', '编辑学校页面', '1', null, '6', '13', '3');
INSERT INTO `stjy_node` VALUES ('23', 'qishu', '期数列表页', '1', null, '1', '13', '3');
INSERT INTO `stjy_node` VALUES ('24', 'qishu_add', '期数添加页面', '1', null, '1', '13', '3');
INSERT INTO `stjy_node` VALUES ('25', 'addQishu', '执行添加期数', '1', null, '1', '13', '3');
INSERT INTO `stjy_node` VALUES ('26', 'editQishu', '修改期数页面', '1', null, '1', '13', '3');
INSERT INTO `stjy_node` VALUES ('27', 'delete', '删除网站设置', '1', null, '1', '13', '3');
INSERT INTO `stjy_node` VALUES ('28', 'del', '删除导入的表格', '1', null, '8', '12', '3');
INSERT INTO `stjy_node` VALUES ('35', 'TableCount', '业绩表格生成', '1', null, '1', '5', '2');
INSERT INTO `stjy_node` VALUES ('36', 'index', '市场业绩总表', '1', null, '2', '35', '3');
INSERT INTO `stjy_node` VALUES ('37', 'yejilist', '业绩表列表页', '1', null, '3', '35', '3');
INSERT INTO `stjy_node` VALUES ('38', 'scyjb_xq', '市场业绩表详情', '1', null, '4', '35', '3');
INSERT INTO `stjy_node` VALUES ('39', 'sczylb_xq', '市场占有率详情', '1', null, '5', '35', '3');
INSERT INTO `stjy_node` VALUES ('40', 'xzmxb_xq', '新增明细表详情', '1', null, '6', '35', '3');
INSERT INTO `stjy_node` VALUES ('41', 'jsmxb_xq', '减少明细表详情', '1', null, '7', '35', '3');
INSERT INTO `stjy_node` VALUES ('42', 'jysjb_xq', '经营数据表详情', '1', null, '8', '35', '3');
INSERT INTO `stjy_node` VALUES ('43', 'tfb_xq', '退费表详情', '1', null, '9', '35', '3');
INSERT INTO `stjy_node` VALUES ('49', 'Common', '总表操作', '1', null, '1', '5', '2');
INSERT INTO `stjy_node` VALUES ('50', 'back', '退回操作(业绩表操作)', '1', null, '5', '49', '3');
INSERT INTO `stjy_node` VALUES ('51', 'checked', '审核后提交操作(业绩表操作)', '1', null, '4', '49', '3');
INSERT INTO `stjy_node` VALUES ('52', 'cancel', '取消通过审核操作(业绩表操作)', '1', null, '6', '49', '3');
INSERT INTO `stjy_node` VALUES ('53', 'create', '提交行政经理(校管家表格操作)', '1', null, '2', '49', '3');
INSERT INTO `stjy_node` VALUES ('54', 'rollBack', '取消提交行政经理(校管家表格操作)', '1', null, '3', '49', '3');
INSERT INTO `stjy_node` VALUES ('55', 'download', '下载表格', '1', null, '7', '49', '3');
INSERT INTO `stjy_node` VALUES ('56', 'downloadScb', '生成表下载', '1', null, '8', '49', '3');
INSERT INTO `stjy_node` VALUES ('57', 'delRow', '删除数据总表的行', '1', null, '9', '12', '3');
INSERT INTO `stjy_node` VALUES ('58', 'downloadHzb', '下载汇总表', '1', null, '9', '49', '3');

-- ----------------------------
-- Table structure for stjy_qishu
-- ----------------------------
DROP TABLE IF EXISTS `stjy_qishu`;
CREATE TABLE `stjy_qishu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '期数',
  `isuse` tinyint(1) NOT NULL COMMENT '是否启用：0，不启用；1启用',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COMMENT='期数表';

-- ----------------------------
-- Records of stjy_qishu
-- ----------------------------
INSERT INTO `stjy_qishu` VALUES ('2', '201707', '1', '2017-08-02 23:59:00');
INSERT INTO `stjy_qishu` VALUES ('3', '201708', '1', '2017-08-04 21:23:22');
INSERT INTO `stjy_qishu` VALUES ('4', '201709', '1', '2017-08-04 21:23:34');
INSERT INTO `stjy_qishu` VALUES ('5', '201706', '1', '2017-08-17 16:53:32');
INSERT INTO `stjy_qishu` VALUES ('6', '201705', '1', '2017-08-17 16:53:46');
INSERT INTO `stjy_qishu` VALUES ('7', '201704', '1', '2017-08-17 16:53:54');

-- ----------------------------
-- Table structure for stjy_qishu_history
-- ----------------------------
DROP TABLE IF EXISTS `stjy_qishu_history`;
CREATE TABLE `stjy_qishu_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态:1,可下载;2:不可下载;',
  `filename` varchar(255) NOT NULL COMMENT '上传的文件路径',
  `tid` int(11) DEFAULT NULL COMMENT '表类型id',
  `sid` int(11) DEFAULT NULL COMMENT '所属校区id',
  `uid` int(11) DEFAULT NULL COMMENT '登录用户id',
  `qishu` varchar(255) DEFAULT '' COMMENT '期数',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_qishu_history
-- ----------------------------
INSERT INTO `stjy_qishu_history` VALUES ('2', '1', './Public/Uploads/20170905/59ae4b7358e5e.xls', '1', '4', '5', '201708', '2017-09-05 15:00:03');
INSERT INTO `stjy_qishu_history` VALUES ('3', '1', './Public/Uploads/20170905/59ae4b82ae8fc.xls', '2', '4', '5', '201708', '2017-09-05 15:00:18');
INSERT INTO `stjy_qishu_history` VALUES ('4', '1', './Public/Uploads/20170905/59ae4b88bffb0.xls', '3', '4', '5', '201708', '2017-09-05 15:00:24');
INSERT INTO `stjy_qishu_history` VALUES ('5', '1', './Public/Uploads/20170905/59ae4b91a86c5.xls', '4', '4', '5', '201708', '2017-09-05 15:00:33');
INSERT INTO `stjy_qishu_history` VALUES ('6', '1', './Public/Uploads/20170905/59ae4b9d64b73.xls', '5', '4', '5', '201708', '2017-09-05 15:00:45');
INSERT INTO `stjy_qishu_history` VALUES ('7', '1', './Public/Uploads/20170905/59ae4ba6032df.xls', '6', '4', '5', '201708', '2017-09-05 15:00:54');
INSERT INTO `stjy_qishu_history` VALUES ('8', '1', './Public/Uploads/20170905/59ae4babb1d1e.xls', '7', '4', '5', '201708', '2017-09-05 15:00:59');
INSERT INTO `stjy_qishu_history` VALUES ('9', '1', './Public/Uploads/20170905/59ae4bca3a5f7.xlsx', '14', '4', '5', '201708', '2017-09-05 15:01:30');
INSERT INTO `stjy_qishu_history` VALUES ('30', '1', '', '12', '4', '5', '201708', '2017-09-05 15:22:00');
INSERT INTO `stjy_qishu_history` VALUES ('29', '1', '', '11', '4', '5', '201708', '2017-09-05 15:21:58');
INSERT INTO `stjy_qishu_history` VALUES ('28', '1', '', '10', '4', '5', '201708', '2017-09-05 15:21:58');
INSERT INTO `stjy_qishu_history` VALUES ('27', '1', '', '9', '4', '5', '201708', '2017-09-05 15:21:56');
INSERT INTO `stjy_qishu_history` VALUES ('26', '1', '', '8', '4', '5', '201708', '2017-09-05 15:21:56');

-- ----------------------------
-- Table structure for stjy_renshi
-- ----------------------------
DROP TABLE IF EXISTS `stjy_renshi`;
CREATE TABLE `stjy_renshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `leixing` varchar(255) DEFAULT NULL COMMENT '类型',
  `gangweilx` tinyint(1) DEFAULT NULL COMMENT '岗位类型:1,全职;2,兼职;',
  `sid` int(11) DEFAULT NULL COMMENT '校区id',
  `yuangongbh` varchar(255) DEFAULT NULL COMMENT '员工编号',
  `bumen` int(11) DEFAULT NULL COMMENT '部门',
  `bumen2` int(11) DEFAULT NULL COMMENT '二级部门',
  `zhiwu` varchar(255) DEFAULT NULL COMMENT '职务',
  `xingbie` tinyint(1) DEFAULT NULL COMMENT '性别:1,男;2,女;',
  `chushengrq` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `hunfou` tinyint(4) DEFAULT NULL COMMENT '婚否:1,已婚;2,未婚;',
  `shengyuzh` tinyint(4) DEFAULT NULL COMMENT '生育状况:1,是;2,否;',
  `hukouxz` tinyint(4) DEFAULT NULL COMMENT '户口性质',
  `lianxidh` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `tongxunsheng` varchar(255) DEFAULT NULL COMMENT '通讯省',
  `tongxunshi` varchar(255) DEFAULT NULL COMMENT '通讯市',
  `tongxunqu` varchar(255) DEFAULT NULL COMMENT '通讯区',
  `tongxundz` varchar(255) DEFAULT NULL COMMENT '通讯地址',
  `youxiang` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL COMMENT '邮箱',
  `chuanyicc` varchar(255) DEFAULT NULL COMMENT '穿衣尺寸',
  `shengao` double(11,2) DEFAULT NULL COMMENT '身高',
  `tizhong` double(11,2) DEFAULT NULL COMMENT '体重',
  `diyixl` varchar(255) DEFAULT NULL COMMENT '第一学历',
  `diyixlyx` varchar(255) DEFAULT NULL COMMENT '第一学历院校',
  `diyixlzy` varchar(255) DEFAULT NULL COMMENT '第一学历专业',
  `diyixlbysj` varchar(255) DEFAULT NULL COMMENT '第一学历毕业时间',
  `zuigaoxl` varchar(255) DEFAULT NULL COMMENT '最高学历',
  `zuigaoxlyx` varchar(255) DEFAULT NULL COMMENT '最高学历院校',
  `zuigaoxlzy` varchar(255) DEFAULT NULL COMMENT '最高学历专业',
  `zuigaoxlbysj` varchar(255) DEFAULT NULL COMMENT '最高学历毕业时间',
  `zigezs` varchar(255) DEFAULT NULL COMMENT '资格证书',
  `ruzhirq` varchar(255) DEFAULT NULL COMMENT '入职日期',
  `hetongkssj` varchar(255) DEFAULT NULL COMMENT '合同开始时间',
  `hetongdqsj` varchar(255) DEFAULT NULL COMMENT '合同到期时间',
  `hetongqdgs` varchar(255) DEFAULT NULL COMMENT '合同签订公司',
  `shebaogmgs` varchar(255) DEFAULT NULL COMMENT '社保购买公司',
  `hujisheng` varchar(255) DEFAULT NULL COMMENT '户籍省',
  `hujishi` varchar(255) DEFAULT NULL COMMENT '户籍市',
  `hujiqu` varchar(255) DEFAULT NULL COMMENT '户籍区',
  `hujidz` varchar(255) DEFAULT NULL COMMENT '户籍地址',
  `pinyongqd` int(11) DEFAULT NULL COMMENT '聘用渠道:1,聘用合同;2,劳务合同',
  `gongjijgmgs` varchar(255) DEFAULT NULL COMMENT '公积金购买公司',
  `jinjilxr` varchar(255) DEFAULT NULL COMMENT '紧急联系人',
  `guanxi` varchar(255) DEFAULT NULL COMMENT '关系',
  `jinjilxrdh` varchar(255) DEFAULT NULL COMMENT '紧急联系人电话',
  `shebaohao` varchar(255) DEFAULT NULL COMMENT '社保号',
  `xingyeyhkh` varchar(255) DEFAULT NULL COMMENT '兴业银行卡号',
  `qitayhkh` varchar(255) DEFAULT NULL COMMENT '其他银行卡号',
  `shifouydbr` tinyint(4) DEFAULT NULL COMMENT '是否有担保人:1,有;2,没有;',
  `danbaorxm` varchar(255) DEFAULT NULL COMMENT '担保人姓名',
  `danbaordh` varchar(255) DEFAULT NULL COMMENT '担保人电话',
  `danbaorsfzhm` varchar(255) DEFAULT NULL COMMENT '担保人身份证号码',
  `huzhaohm` varchar(255) DEFAULT NULL COMMENT '护照号码',
  `huzhaoyxq` varchar(255) DEFAULT NULL COMMENT '护照有效期',
  `chiyouqzlx` varchar(255) DEFAULT NULL COMMENT '持有签证类型',
  `qianzhengyxq` varchar(255) DEFAULT NULL COMMENT '签证有效期',
  `guoji` varchar(255) DEFAULT NULL COMMENT '国籍',
  `beizhu` text COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_renshi
-- ----------------------------
INSERT INTO `stjy_renshi` VALUES ('1', '张松煌', '', '1', '0', '', '0', null, '招生顾问', '1', '', '1', '1', '0', '', '北京市', '北京市市辖区', '东城区', '', '', '', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '2017/2/25', '', '', '', '', '北京市', '北京市市辖区', '东城区', '', '0', '', null, '', null, '', '', '', '1', '', '', '', '', '', '', '', '', '');
INSERT INTO `stjy_renshi` VALUES ('2', '王圆圆', '', '1', '0', '', '0', null, '招生主任', '2', '', '1', '1', '0', '', '北京市', '北京市市辖区', '东城区', '', '', '', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '2017/3/31', '', '', '', '', '北京市', '北京市市辖区', '东城区', '', '0', '', '', '', null, '', '', '', '1', '', '', '', '', '', '', '', '', '');
INSERT INTO `stjy_renshi` VALUES ('3', '朱晓佳', '', '1', '0', '', '0', null, '招生校长', '1', '', '1', '1', '0', '', '北京市', '北京市市辖区', '东城区', '', '', '', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '2016/3/22', '', '', '', '', '北京市', '北京市市辖区', '东城区', '', '0', '', '', '', null, '', '', '', '1', '', '', '', '', '', '', '', '', '');
INSERT INTO `stjy_renshi` VALUES ('4', '翟志翔', '', '1', '0', '', '0', null, '教学组长', '1', '', '2', '2', '0', '', '北京市', '北京市市辖区', '东城区', '', '', '', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '2017/1/13', '', '', '', '', '北京市', '北京市市辖区', '东城区', '', '0', '', '', '', null, '', '', '', '2', '', '', '', '', '', '', '', '', '');
INSERT INTO `stjy_renshi` VALUES ('5', '吴彩红', '', '1', '0', '', '0', null, '教师', '1', '', '2', '2', '0', '', '北京市', '北京市市辖区', '东城区', '', '', '', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '2017/4/8', '', '', '', '', '北京市', '北京市市辖区', '东城区', '', '0', '', '', '', null, '', '', '', '2', '', '', '', '', '', '', '', '', '');
INSERT INTO `stjy_renshi` VALUES ('6', '彭永红', '', '1', '0', '', '0', null, '教务主任', '1', '', '2', '2', '0', '', '北京市', '北京市市辖区', '东城区', '', '', '', '0.00', '0.00', '', '', '', '', '', '', '', '', '', '2015/8/1', '', '', '', '', '北京市', '北京市市辖区', '东城区', '', '0', '', '', '', null, '', '', '', '2', '', '', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for stjy_role
-- ----------------------------
DROP TABLE IF EXISTS `stjy_role`;
CREATE TABLE `stjy_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_role
-- ----------------------------
INSERT INTO `stjy_role` VALUES ('1', '管理员', null, '1', '超级管理员');
INSERT INTO `stjy_role` VALUES ('2', '行政', null, '1', '行政');
INSERT INTO `stjy_role` VALUES ('3', '行政经理', null, '1', '行政经理');
INSERT INTO `stjy_role` VALUES ('4', '财务', null, '1', '财务');
INSERT INTO `stjy_role` VALUES ('5', '负责人', null, '1', '负责人');

-- ----------------------------
-- Table structure for stjy_role_user
-- ----------------------------
DROP TABLE IF EXISTS `stjy_role_user`;
CREATE TABLE `stjy_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_role_user
-- ----------------------------
INSERT INTO `stjy_role_user` VALUES ('2', '3');
INSERT INTO `stjy_role_user` VALUES ('2', '2');
INSERT INTO `stjy_role_user` VALUES ('4', '4');
INSERT INTO `stjy_role_user` VALUES ('5', '6');
INSERT INTO `stjy_role_user` VALUES ('3', '5');
INSERT INTO `stjy_role_user` VALUES ('1', '1');

-- ----------------------------
-- Table structure for stjy_school
-- ----------------------------
DROP TABLE IF EXISTS `stjy_school`;
CREATE TABLE `stjy_school` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '校区名称',
  `mianji` double(11,2) DEFAULT NULL COMMENT '校区面积',
  `classnum` double(11,2) DEFAULT NULL COMMENT '教室数',
  `fencheng` varchar(255) DEFAULT '5,5' COMMENT '分成比例',
  `fencheng3` varchar(255) NOT NULL DEFAULT '3,3,3' COMMENT '三人分成比例',
  `isuse` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启动：0，未启用；1，启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='校区列表';

-- ----------------------------
-- Records of stjy_school
-- ----------------------------
INSERT INTO `stjy_school` VALUES ('1', '华景分校', null, null, null, '3,3,3', '1');
INSERT INTO `stjy_school` VALUES ('2', '番禺分校', null, null, null, '3,3,3', '1');
INSERT INTO `stjy_school` VALUES ('3', '罗湖分校', null, null, null, '3,3,3', '0');
INSERT INTO `stjy_school` VALUES ('4', '天府校区', '700.00', '2.00', '5,5', '3,3,3', '1');
INSERT INTO `stjy_school` VALUES ('5', '天河南骏中心', '0.00', '0.00', '', '3,3,3', '1');

-- ----------------------------
-- Table structure for stjy_scyjb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_scyjb`;
CREATE TABLE `stjy_scyjb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xuhao` int(11) DEFAULT NULL COMMENT '序号',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `zhiwei` varchar(255) DEFAULT NULL COMMENT '职位',
  `ruzhirq` varchar(255) DEFAULT NULL COMMENT '入职日期',
  `edu` double(11,2) DEFAULT NULL COMMENT '额度',
  `rentoushu` double(11,2) DEFAULT NULL COMMENT '人头数',
  `jingrentou` double(11,2) DEFAULT NULL COMMENT '净人头',
  `guojibanye1` double(11,2) DEFAULT NULL COMMENT '新生幼儿国际班1年',
  `guojibanye3` double(11,2) DEFAULT NULL COMMENT '新生幼儿国际班3年',
  `guojibanye5` double(11,2) DEFAULT NULL COMMENT '新生幼儿国际班5年',
  `guojibanxx1` double(11,2) DEFAULT NULL COMMENT '新生小学国际班1年',
  `guojibanxx2` double(11,2) DEFAULT NULL COMMENT '新生小学国际班2年',
  `guojibanxx5` double(11,2) DEFAULT NULL COMMENT '新生小学国际班5年',
  `xinshengyxhy` double(11,2) DEFAULT NULL COMMENT '新生游学会员',
  `guojilxkc` double(11,2) DEFAULT NULL COMMENT '国际领袖课程',
  `yiqims` double(11,2) DEFAULT NULL COMMENT '1期秒杀',
  `maisanse` double(11,2) DEFAULT NULL COMMENT '买三送二',
  `laoshengcsyxhy` double(11,2) DEFAULT NULL COMMENT '老生创始游学会员',
  `xinshengyxmfd` double(11,2) DEFAULT NULL COMMENT '新生游学免费读',
  `laoshengxf` double(11,2) DEFAULT NULL COMMENT '老生续费',
  `xinshenggjb` double(11,2) DEFAULT NULL COMMENT '新生国际班',
  `yinianzbgjb` double(11,2) DEFAULT NULL COMMENT '1年追补国际班',
  `xinshengpswb` double(11,2) DEFAULT NULL COMMENT '新生平时晚班',
  `yinianzbpswb` double(11,2) DEFAULT NULL COMMENT '1年追补平时晚班',
  `hejiyye` double(11,2) DEFAULT NULL COMMENT '合计营业额',
  `huiyuanldxyye` double(11,2) DEFAULT NULL COMMENT '会员老带新营业额',
  `qianming` varchar(255) DEFAULT NULL COMMENT '签名',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_scyjb
-- ----------------------------
INSERT INTO `stjy_scyjb` VALUES ('16', '4', '吴彩红', null, '2017/4/8', '75000.00', '1.50', '0.15', null, null, null, null, null, null, null, null, '1920.00', null, null, null, null, null, null, null, null, '1920.00', null, null, '26', '2017-09-05 15:21:56');
INSERT INTO `stjy_scyjb` VALUES ('13', '1', '张松煌', null, '2017/2/25', '80000.00', '8.83', '5.88', null, null, null, '16580.00', null, '29800.00', '72600.00', null, '14767.00', '41450.00', null, null, null, null, null, null, null, '175197.00', null, null, '26', '2017-09-05 15:21:56');
INSERT INTO `stjy_scyjb` VALUES ('14', '2', '翟志翔', null, '2017/1/13', '240000.00', '6.83', '2.33', null, null, null, null, null, null, '73200.00', null, '7207.00', '8290.00', null, null, null, null, null, null, null, '88697.00', null, null, '26', '2017-09-05 15:21:56');
INSERT INTO `stjy_scyjb` VALUES ('15', '3', '王圆圆', null, '2017/3/31', '275000.00', '22.83', '6.33', '3800.00', '9600.00', null, null, null, null, '122000.00', null, '26447.00', null, null, null, null, null, null, null, null, '161847.00', null, null, '26', '2017-09-05 15:21:56');

-- ----------------------------
-- Table structure for stjy_sczylb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_sczylb`;
CREATE TABLE `stjy_sczylb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xuhao` int(11) DEFAULT NULL COMMENT '序号',
  `gonglixx` varchar(255) DEFAULT NULL COMMENT '学校',
  `youeryuan` double(11,2) DEFAULT NULL COMMENT '幼儿园',
  `yinianji` double(11,2) DEFAULT NULL COMMENT '一年级',
  `ernianji` double(11,2) DEFAULT NULL COMMENT '二年级',
  `sannianji` double(11,2) DEFAULT NULL COMMENT '三年级',
  `sinianji` double(11,2) DEFAULT NULL COMMENT '四年级',
  `wunianji` double(11,2) DEFAULT NULL COMMENT '五年级',
  `liunianji` double(11,2) DEFAULT NULL COMMENT '六年级',
  `chuyi` double(11,2) DEFAULT NULL COMMENT '初一',
  `chuer` double(11,2) DEFAULT NULL COMMENT '初二',
  `chuerys` double(11,2) DEFAULT NULL COMMENT '初二以上',
  `heji` double(11,2) DEFAULT NULL COMMENT '合计',
  `xuexiaogms` double(11,2) DEFAULT NULL COMMENT '学校规模数',
  `zhanyoulv` double(11,2) DEFAULT NULL COMMENT '占有率',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_sczylb
-- ----------------------------
INSERT INTO `stjy_sczylb` VALUES ('124', '30', '祈福新邨小学', null, null, null, '1.00', null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('123', '29', '未上学', '29.00', null, null, null, null, null, null, null, null, null, '29.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('122', '28', '朝阳东幼儿园', null, '1.00', null, null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('121', '27', '新蕾幼儿园', '1.00', null, null, null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('119', '25', '广州邮电通信设备公司幼儿园', '2.00', null, null, null, null, null, null, null, null, null, '2.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('120', '26', '广州都市兰亭幼儿园', '1.00', null, null, null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('118', '24', '广州市越秀区水荫路小学', null, null, null, '2.00', null, null, null, null, null, null, '2.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('117', '23', '广州市番禺区华南碧桂园学校', null, null, null, null, null, '1.00', null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('116', '22', '广州市暨南大学附属小学', null, null, null, null, '1.00', null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('115', '21', '广州市天河区第一实验小学', null, null, null, '1.00', null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('114', '20', '广州市天河区旭景小学', null, null, '1.00', null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('111', '17', '广州市天河区华景泽晖幼儿园', '1.00', null, null, null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('112', '18', '广州市天河区吉米幼儿园', '1.00', null, null, null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('113', '19', '广州市天河区天府路小学', '2.00', '6.00', '43.00', '21.00', '6.00', '2.00', null, null, null, null, '80.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('110', '16', '广州市天河区华景小学', null, null, '1.00', null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('109', '15', '广州市华颖外国语学校', null, null, null, null, null, null, null, '1.00', null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('108', '14', '广州大学附属小学', null, null, '1.00', null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('106', '12', '天河区石牌小学', null, null, null, null, null, '1.00', null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('107', '13', '天河区骏景小学', null, null, '2.00', null, null, null, null, null, null, null, '2.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('104', '10', '天河区天府路小学（翠湖分校）', null, null, '4.00', '5.00', null, null, null, null, null, null, '9.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('105', '11', '天河区棠下小学', null, null, null, null, null, '1.00', null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('102', '8', '天府路小学翠湖校区', null, null, null, '1.00', null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('103', '9', '天河区天府路小学', '1.00', '2.00', '21.00', '20.00', '8.00', '1.00', null, null, null, null, '53.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('101', '7', '天府路小学', null, null, '9.00', '1.00', '2.00', null, null, null, null, null, '12.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('99', '5', '华阳小学', null, null, null, null, '2.00', null, null, null, null, null, '2.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('100', '6', '天府路分校', null, null, '1.00', null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('98', '4', '东风东路小学', null, null, null, '1.00', null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('96', '2', '东华幼儿园', '40.00', null, null, null, null, null, null, null, null, null, '40.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('97', '3', '东莞市东城朝天实验小学', null, '1.00', null, null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('95', '1', '', '1.00', null, null, null, null, null, null, null, null, null, '1.00', null, null, '27', '2017-09-05 15:21:56');
INSERT INTO `stjy_sczylb` VALUES ('94', '0', '合计', '79.00', '10.00', '83.00', '53.00', '19.00', '6.00', null, '1.00', null, null, '251.00', null, null, '27', '2017-09-05 15:21:56');

-- ----------------------------
-- Table structure for stjy_sjjlb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_sjjlb`;
CREATE TABLE `stjy_sjjlb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `jiaofeirq` varchar(255) DEFAULT NULL COMMENT '交费日期',
  `shoujuhao` varchar(255) DEFAULT NULL COMMENT '收据号',
  `fapiaohao` varchar(255) DEFAULT NULL COMMENT '发票号',
  `xuehao` varchar(255) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `zhaoshengly` varchar(255) DEFAULT NULL COMMENT '招生来源',
  `nianji` varchar(255) DEFAULT NULL COMMENT '年级',
  `kechengmc` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `wupinmc` varchar(255) DEFAULT NULL COMMENT '物品名称',
  `zhekouje` double(11,2) DEFAULT NULL COMMENT '折扣金额',
  `zhijianje` double(11,2) DEFAULT NULL COMMENT '直减金额',
  `yingjiaoje` double(11,2) DEFAULT NULL COMMENT '应交金额',
  `jiaofeije` double(11,2) DEFAULT NULL COMMENT '交费金额',
  `qianjiaoje` double(11,2) DEFAULT NULL COMMENT '欠交金额',
  `dianziqb` double(11,2) DEFAULT NULL COMMENT '电子钱包',
  `xianjin` double(11,2) DEFAULT NULL COMMENT '现金',
  `weixin` double(11,2) DEFAULT NULL COMMENT '微信',
  `zhifubao` double(11,2) DEFAULT NULL COMMENT '支付宝',
  `shuaka` double(11,2) DEFAULT NULL COMMENT '刷卡',
  `zhifudh` varchar(255) DEFAULT NULL COMMENT '支付单号',
  `xiaoqu` varchar(255) DEFAULT NULL COMMENT '校区',
  `jingshouren` varchar(255) DEFAULT NULL COMMENT '经手人',
  `shoujulx` varchar(255) DEFAULT NULL COMMENT '收据类型',
  `shoukuanzh` varchar(255) DEFAULT NULL COMMENT '收款帐号',
  `fukuanzh` varchar(255) DEFAULT NULL COMMENT '付款账户',
  `zhuangtai` varchar(255) DEFAULT NULL COMMENT '状态',
  `qiandanlx` varchar(255) DEFAULT NULL COMMENT '签单类型',
  `yejigsr` varchar(255) DEFAULT NULL COMMENT '业绩归属人',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=270 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_sjjlb
-- ----------------------------
INSERT INTO `stjy_sjjlb` VALUES ('1', '2017-08-31', '00075697', '', 'S11046', '张奇钰', '', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '陈燕梅', '交费', null, '4099', '已打印', '续费', '翟志翔(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('2', '2017-08-31', '00075675', '', 'S20808', '许馨之', '01-老带新', '一年级', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '陈燕梅', '交费', null, '8170', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('3', '2017-08-31', '00075674', '', 'S20808', '许馨之', '01-老带新', '一年级', '广州区域-平时班-英语-1.5小时次(32次)', '', null, '0.00', null, '3800.00', null, '0.00', '0.00', '0.00', '0.00', '3800.00', '', '天河天府路中心', '陈燕梅', '交费', null, '8170', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1年国际会员／3800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=3800元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-31缴费／老带新：无／其他说明：', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('4', '2017-08-31', '00075488', '', 'S20773', '田珈易', '10-其他渠道推荐', '大班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '陈燕梅', '交费', null, '6977', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('5', '2017-08-31', '00075487', '', 'S20773', '田珈易', '10-其他渠道推荐', '大班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '陈燕梅', '交费', null, '6977', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-31缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('6', '2017-08-30', '00074096', '', 'S09326', '王子涵（1）', '01-老带新', '三年级', '广州区域-周末班-英语-3.0小时次(144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '陈健霞(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('7', '2017-08-30', '00074095', '', 'S09309', '邱朔晴', '10-其他渠道推荐', '三年级', '广州区域-周末班-英语-3.0小时次(144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '陈健霞(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('8', '2017-08-30', '00074089', '', 'S09325', '朱彦坤', '10-其他渠道推荐', '三年级', '广州区域-周末班-英语-3.0小时次(144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '陈健霞(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('9', '2017-08-30', '00074088', '', 'S09315', '蔡君昊', '01-老带新', '三年级', '广州区域-周末班-英语-3.0小时次(144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '陈健霞(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('10', '2017-08-30', '00074084', '', 'S17314', '肖鑫彤', '01-老带新', '二年级', '广州区域-周末班-英语-3.0小时次(120次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '转班-跨课程', '王圆圆(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('11', '2017-08-30', '00074082', '', 'S17314', '肖鑫彤', '01-老带新', '二年级', '广州区域-周末班-英语-3.0小时次(120次)', '', null, '0.00', null, '0.00', null, '-25000.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '转班-跨课程', '王圆圆(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('12', '2017-08-30', '00074080', '', 'S17314', '肖鑫彤', '01-老带新', '二年级', '广州区域-平时班-英语-3.0小时次(-240次)', '', null, '0.00', null, '0.00', null, '25000.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '王圆圆(主签单人),翟志翔(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('13', '2017-08-30', '00074062', '', 'S16940', '梁添翔', '06-上门咨询', '二年级', '广州区域-周末班-英语-3.0小时次(144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '王圆圆(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('14', '2017-08-30', '00074059', '', 'S09199', '曾子希', '06-上门咨询', '四年级', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '0.00', null, '0.00', null, '-1880.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('15', '2017-08-30', '00074058', '', 'S09199', '曾子希', '06-上门咨询', '四年级', '广州区域-平时班-英语-3.0小时次(-16次)', '', null, '0.00', null, '0.00', null, '1880.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '张松煌(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('16', '2017-08-30', '00074057', '', 'S09199', '曾子希', '06-上门咨询', '四年级', '广州区域-平时班-英语-3.0小时次(80次)', '', null, '0.00', null, '0.00', null, '-16580.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('17', '2017-08-30', '00074056', '', 'S09199', '曾子希', '06-上门咨询', '四年级', '广州区域-平时班-英语-3.0小时次(-80次)', '', null, '0.00', null, '0.00', null, '16580.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '彭永红(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('18', '2017-08-30', '00074055', '', 'S09199', '曾子希', '06-上门咨询', '四年级', '广州区域-平时班-英语-3.0小时次(5次)', '', null, '0.00', null, '0.00', null, '-1993.75', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('19', '2017-08-30', '00074054', '', 'S09199', '曾子希', '06-上门咨询', '四年级', '广州区域-平时班-英语-3.0小时次(-5次)', '', null, '0.00', null, '0.00', null, '1993.75', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '张松煌(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('20', '2017-08-30', '00074053', '', 'S01699', '曾砚斐', '', '四年级', '广州区域-平时班-英语-3.0小时次(30次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('21', '2017-08-30', '00074052', '', 'S01699', '曾砚斐', '', '四年级', '广州区域-平时班-英语-3.0小时次(-30次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('22', '2017-08-30', '00074051', '', 'S14355', '毛思羽', '06-上门咨询', '二年级', '广州区域-平时班-英语-3.0小时次(48次)', '', null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('23', '2017-08-30', '00074050', '', 'S14355', '毛思羽', '06-上门咨询', '二年级', '广州区域-平时班-英语-3.0小时次(-48次)', '', null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '张松煌(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('24', '2017-08-30', '00074049', '', 'S09044', '柳皓轩', '06-上门咨询', '四年级', '广州区域-平时班-英语-3.0小时次(67次)', '', null, '0.00', null, '0.00', null, '-13885.75', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('25', '2017-08-30', '00074048', '', 'S09044', '柳皓轩', '06-上门咨询', '四年级', '广州区域-平时班-英语-3.0小时次(-67次)', '', null, '0.00', null, '0.00', null, '13885.75', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('26', '2017-08-30', '00074047', '', 'S09040', '梁希', '03-课题：自然拼音', '四年级', '广州区域-平时班-英语-3.0小时次(90次)', '', null, '0.00', null, '0.00', null, '-16250.40', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('27', '2017-08-30', '00074046', '', 'S09040', '梁希', '03-课题：自然拼音', '四年级', '广州区域-平时班-英语-3.0小时次(-90次)', '', null, '0.00', null, '0.00', null, '16250.40', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('28', '2017-08-30', '00074045', '', 'S12550', '李沄天', '', '四年级', '广州区域-平时班-英语-3.0小时次(48次)', '', null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('29', '2017-08-30', '00074044', '', 'S12550', '李沄天', '', '四年级', '广州区域-平时班-英语-3.0小时次(-48次)', '', null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费,转班-跨课程', '翟志翔(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('30', '2017-08-30', '00074043', '', 'S13317', '陈姝含', '07-网络咨询', '四年级', '广州区域-平时班-英语-3.0小时次(48次)', '', null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('31', '2017-08-30', '00074042', '', 'S13317', '陈姝含', '07-网络咨询', '四年级', '广州区域-平时班-英语-3.0小时次(-48次)', '', null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '彭永红(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('32', '2017-08-30', '00074041', '', 'S09026', '陈锵铭', '', '四年级', '广州区域-平时班-英语-3.0小时次(19次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('33', '2017-08-30', '00074040', '', 'S09026', '陈锵铭', '', '四年级', '广州区域-平时班-英语-3.0小时次(-19次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('34', '2017-08-30', '00074034', '', 'S12550', '李沄天', '', '四年级', '广州区域-平时班-英语-3.0小时次(48次)', '', null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '转班-跨课程', '翟志翔(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('35', '2017-08-30', '00074033', '', 'S12550', '李沄天', '', '四年级', '广州区域-周末班-英语-3.0小时次(-48次)', '', null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增', '翟志翔(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('36', '2017-08-30', '00074024', '', 'S09056', '周子澄', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(101次)', '', null, '0.00', null, '0.00', null, '-18204.24', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('37', '2017-08-30', '00074023', '', 'S09056', '周子澄', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(-101次)', '', null, '0.00', null, '0.00', null, '18204.24', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('38', '2017-08-30', '00074022', '', 'S11540', '张芷涵', '', '二年级', '广州区域-平时班-英语-3.0小时次(41次)', '', null, '0.00', null, '0.00', null, '-2832.42', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('39', '2017-08-30', '00074021', '', 'S11540', '张芷涵', '', '二年级', '广州区域-平时班-英语-3.0小时次(-41次)', '', null, '0.00', null, '0.00', null, '2832.42', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '翟志翔(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('40', '2017-08-30', '00074020', '', 'S16667', '曾芷睿rayna', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('41', '2017-08-30', '00074019', '', 'S16667', '曾芷睿rayna', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(-144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '张松煌(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('42', '2017-08-30', '00074018', '', 'S09053', '姚怡然', '01-老带新', '三年级', '广州区域-平时班-英语-3.0小时次(120次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('43', '2017-08-30', '00074017', '', 'S09053', '姚怡然', '01-老带新', '三年级', '广州区域-平时班-英语-3.0小时次(-120次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('44', '2017-08-30', '00074016', '', 'S09053', '姚怡然', '01-老带新', '三年级', '广州区域-平时班-英语-3.0小时次(101次)', '', null, '0.00', null, '0.00', null, '-21463.78', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('45', '2017-08-30', '00074015', '', 'S09053', '姚怡然', '01-老带新', '三年级', '广州区域-平时班-英语-3.0小时次(-101次)', '', null, '0.00', null, '0.00', null, '21463.78', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('46', '2017-08-30', '00074014', '', 'S11938', '吴沐欣', '', '三年级', '广州区域-平时班-英语-3.0小时次(48次)', '', null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('47', '2017-08-30', '00074013', '', 'S11938', '吴沐欣', '', '三年级', '广州区域-平时班-英语-3.0小时次(-48次)', '', null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '张松煌(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('48', '2017-08-30', '00074012', '', 'S01622', '邱刘哲', '', '三年级', '广州区域-平时班-英语-3.0小时次(21次)', '', null, '0.00', null, '0.00', null, '-3614.18', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('49', '2017-08-30', '00074011', '', 'S01622', '邱刘哲', '', '三年级', '广州区域-平时班-英语-3.0小时次(-21次)', '', null, '0.00', null, '0.00', null, '3614.18', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('50', '2017-08-30', '00074010', '', 'S01616', '彭希扬', '', '三年级', '广州区域-平时班-英语-3.0小时次(22次)', '', null, '0.00', null, '0.00', null, '-3788.17', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('51', '2017-08-30', '00074009', '', 'S01616', '彭希扬', '', '三年级', '广州区域-平时班-英语-3.0小时次(-22次)', '', null, '0.00', null, '0.00', null, '3788.17', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('52', '2017-08-30', '00074008', '', 'S09046', '陆子叶', '01-老带新', '三年级', '广州区域-平时班-英语-3.0小时次(92次)', '', null, '0.00', null, '0.00', null, '-17292.32', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('53', '2017-08-30', '00074007', '', 'S09046', '陆子叶', '01-老带新', '三年级', '广州区域-平时班-英语-3.0小时次(-92次)', '', null, '0.00', null, '0.00', null, '17292.32', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('54', '2017-08-30', '00074006', '', 'S09032', '黄泽蕊', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(120次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('55', '2017-08-30', '00074005', '', 'S09032', '黄泽蕊', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(-120次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '朱晓佳(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('56', '2017-08-30', '00074004', '', 'S09032', '黄泽蕊', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(112次)', '', null, '0.00', null, '0.00', null, '-23469.75', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('57', '2017-08-30', '00074003', '', 'S09032', '黄泽蕊', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(-112次)', '', null, '0.00', null, '0.00', null, '23469.75', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '朱晓佳(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('58', '2017-08-30', '00074002', '', 'S09031', '黄玮婷', '01-老带新', '二年级', '广州区域-平时班-英语-3.0小时次(90次)', '', null, '0.00', null, '0.00', null, '-16250.40', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('59', '2017-08-30', '00074001', '', 'S09031', '黄玮婷', '01-老带新', '二年级', '广州区域-平时班-英语-3.0小时次(-90次)', '', null, '0.00', null, '0.00', null, '16250.40', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('60', '2017-08-30', '00074000', '', 'S09030', '侯宸卓', '03-课题：自然拼音', '二年级', '广州区域-平时班-英语-3.0小时次(120次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('61', '2017-08-30', '00073999', '', 'S09030', '侯宸卓', '03-课题：自然拼音', '二年级', '广州区域-平时班-英语-3.0小时次(-120次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '朱晓佳(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('62', '2017-08-30', '00073998', '', 'S09030', '侯宸卓', '03-课题：自然拼音', '二年级', '广州区域-平时班-英语-3.0小时次(101次)', '', null, '0.00', null, '0.00', null, '-23289.35', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('63', '2017-08-30', '00073997', '', 'S09030', '侯宸卓', '03-课题：自然拼音', '二年级', '广州区域-平时班-英语-3.0小时次(-101次)', '', null, '0.00', null, '0.00', null, '23289.35', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '朱晓佳(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('64', '2017-08-30', '00073996', '', 'S09029', '侯宸越', '01-老带新', '二年级', '广州区域-平时班-英语-3.0小时次(120次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('65', '2017-08-30', '00073995', '', 'S09029', '侯宸越', '01-老带新', '二年级', '广州区域-平时班-英语-3.0小时次(-120次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '朱晓佳(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('66', '2017-08-30', '00073994', '', 'S09029', '侯宸越', '01-老带新', '二年级', '广州区域-平时班-英语-3.0小时次(101次)', '', null, '0.00', null, '0.00', null, '-21629.31', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('67', '2017-08-30', '00073993', '', 'S09029', '侯宸越', '01-老带新', '二年级', '广州区域-平时班-英语-3.0小时次(-101次)', '', null, '0.00', null, '0.00', null, '21629.31', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '朱晓佳(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('68', '2017-08-30', '00073992', '', 'S19926', '邓蕾', '03-课题：自然拼音', '小班', '广州区域-平时班-英语-3.0小时次(144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('69', '2017-08-30', '00073991', '', 'S19926', '邓蕾', '03-课题：自然拼音', '小班', '广州区域-平时班-英语-3.0小时次(-144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '续费', '王圆圆(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('70', '2017-08-30', '00073990', '', 'S18271', '陈悦心', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '0.00', null, '0.00', null, '-1880.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '', '一键转班收费结算', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('71', '2017-08-30', '00073989', '', 'S18271', '陈悦心', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(-16次)', '', null, '0.00', null, '0.00', null, '1880.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '张松煌(主签单人)', '一键转班费用结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('72', '2017-08-30', '00073987', '', 'S19926', '邓蕾', '03-课题：自然拼音', '小班', '广州区域-平时班-英语-3.0小时次(144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '王圆圆(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('73', '2017-08-30', '00073986', '', 'S16667', '曾芷睿rayna', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(144次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '张松煌(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('74', '2017-08-30', '00073970', '', 'S10853', '彭云翼', '03-课题：自然拼音', '小班', '广州区域-平时班-英语-3.0小时次(48次)', '', null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '转班-跨课程', '丁惠媚(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('75', '2017-08-30', '00073969', '', 'S10853', '彭云翼', '03-课题：自然拼音', '小班', '广州区域-周末班-英语-3.0小时次(-48次)', '', null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '转校', '丁惠媚(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('76', '2017-08-30', '00073960', '', 'S10823', '王梓淇（1）', '', '二年级', '广州区域-平时班-英语-3.0小时次(48次)', '', null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '转班-跨课程', '郑清芳(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('77', '2017-08-30', '00073959', '', 'S10823', '王梓淇（1）', '', '二年级', '广州区域-周末班-英语-3.0小时次(-48次)', '', null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增', '郑清芳(主签单人)', '', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('78', '2017-08-29', '00076702', '', 'S20553', '董卓然', '01-老带新,07-网络咨询', '小班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '陈燕梅', '交费', null, '8565', '', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('79', '2017-08-29', '00076701', '', 'S20553', '董卓然', '01-老带新,07-网络咨询', '小班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '陈燕梅', '交费', null, '8565', '', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-29缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('80', '2017-08-29', '00073704', '', 'S20567', '尹浩嘉', '03-课题：自然拼音', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8869', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('81', '2017-08-29', '00073703', '', 'S20567', '尹浩嘉', '03-课题：自然拼音', '三年级', '广州区域-游学会员（美国线-48800元-21天）(1次)', '', null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', '', '天河天府路中心', '余洁玲', '交费', null, '8869', '已打印', '新增', '翟志翔(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：翟志翔／首次缴费日期：2017-08-29缴费／老带新：无／创始会员／其他说明', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('82', '2017-08-29', '00073685', '', 'S20316', '熊睿', '03-课题：自然拼音', '四年级', '广州区域-周末班-英语-3.0小时次(32次)', '', null, '14760.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '已打印', '续费', '陈健霞(主签单人)', '报读一年课程赠32周次课，此课程不退费不结转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('83', '2017-08-29', '00073684', '', 'S20316', '熊睿', '03-课题：自然拼音', '四年级', '广州区域-周末班-英语-3.0小时次(48次)', '', null, '5560.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', '', '天河天府路中心', '陈燕梅', '交费', null, '0716', '已打印', '续费', '张松煌(主签单人)', '新生连报小学1年国际会员／16580X1（净人头：0.9）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-29缴费／老带新：无／买三送二／其他说明：创始会员', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('84', '2017-08-29', '00073607', '', 'S20552', '梁冠绅', '01-老带新', '小班', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-29缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('85', '2017-08-29', '00073606', '', 'S20551', '梁诗蕴', '10-其他渠道推荐,在线报名', '小班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('86', '2017-08-29', '00073605', '', 'S20551', '梁诗蕴', '10-其他渠道推荐,在线报名', '小班', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '新增', '王圆圆(主签单人),吴彩红(副签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-29缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('87', '2017-08-29', '00073604', '', 'S11137', '杨熙峻', '', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5593', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:37');
INSERT INTO `stjy_sjjlb` VALUES ('88', '2017-08-29', '00073549', '', 'S20541', '程馨逸', '07-网络咨询', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '6884', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('89', '2017-08-29', '00073548', '', 'S20541', '程馨逸', '07-网络咨询', '中班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '6884', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-29缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('90', '2017-08-29', '00073546', '', 'S20540', '李柏尧', '10-其他渠道推荐', '小班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '2948', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('91', '2017-08-29', '00073545', '', 'S20540', '李柏尧', '10-其他渠道推荐', '小班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '2948', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-29缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('92', '2017-08-29', '00073506', '', 'S20532', '刘骏莹', '02-课题：童话剧', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '9017', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('93', '2017-08-29', '00073505', '', 'S20532', '刘骏莹', '02-课题：童话剧', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '9017', '已打印', '新增', '王圆圆(主签单人),吴彩红(副签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-29缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('94', '2017-08-29', '00073504', '', 'S20531', '谢宇轩', '01-老带新,在线报名', '小班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('95', '2017-08-29', '00073503', '', 'S20531', '谢宇轩', '01-老带新,在线报名', '小班', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-29缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('96', '2017-08-28', '00073468', '', 'S20525', '吴昀洲', '10-其他渠道推荐', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '9046', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('97', '2017-08-28', '00073467', '', 'S20525', '吴昀洲', '10-其他渠道推荐', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '9046', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-28缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('98', '2017-08-28', '00073371', '', 'S20522', '冼熙桐', '在线报名', '大班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '1776', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('99', '2017-08-28', '00073370', '', 'S20522', '冼熙桐', '在线报名', '大班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '1776', '已打印', '新增', '王圆圆(主签单人),吴彩红(副签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-28缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('100', '2017-08-28', '00073349', '', 'S09026', '陈锵铭', '', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '3721', '已打印', '续费', '', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('101', '2017-08-28', '00073330', '', 'S20515', '聂子晗', '07-网络咨询', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('102', '2017-08-28', '00073328', '', 'S20515', '聂子晗', '07-网络咨询', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-28缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('103', '2017-08-28', '00073281', '', 'S20504', '王语诗5947', '01-老带新', '小班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-28缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('104', '2017-08-28', '00073252', '', 'S20504', '王语诗5947', '01-老带新', '小班', '广州区域-周末班-英语-1.5小时次(64次)', '', null, '5272.38', null, '9600.00', null, '0.00', '0.00', '0.00', '0.00', '9600.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿2年国际会员／9600X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=9600元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-28缴费／老带新：王加泓／', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('105', '2017-08-28', '00073250', '', 'S01699', '曾砚斐', '', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('106', '2017-08-28', '00073247', '', 'S12545', '杨梓盈', '', '四年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '翟志翔(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('107', '2017-08-27', '00072914', '', 'S12550', '李沄天', '', '四年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '翟志翔(主签单人)', '3A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('108', '2017-08-27', '00072913', '', 'S13317', '陈姝含', '07-网络咨询', '四年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '彭永红(主签单人)', '3A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('109', '2017-08-27', '00072912', '', 'S09044', '柳皓轩', '06-上门咨询', '四年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '3A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('110', '2017-08-27', '00072910', '', 'S09040', '梁希', '03-课题：自然拼音', '四年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '朱晓佳(主签单人)', '3A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('111', '2017-08-27', '00072794', '', 'S20426', '黄子轩', '03-课题：自然拼音', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0613', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('112', '2017-08-27', '00072792', '', 'S20426', '黄子轩', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '0613', '已打印', '续费', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-27缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('113', '2017-08-27', '00072790', '', 'S20426', '黄子轩', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(32次)', '', null, '14760.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '报读一年课程赠32周次课，此课程不退费不结转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('114', '2017-08-27', '00072789', '', 'S20426', '黄子轩', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(48次)', '', null, '5560.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', '', '天河天府路中心', '余洁玲', '交费', null, '0613', '已打印', '新增', '翟志翔(副签单人),张松煌(主签单人)', '新生连报小学1年国际会员／16580X1（净人头：0.9）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-27缴费／老带新：无／买三送二／其他说明：买三送二。', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('115', '2017-08-27', '00072699', '', 'S20410', '丁乐天', '01-老带新', '小班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '9868', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('116', '2017-08-27', '00072698', '', 'S20410', '丁乐天', '01-老带新', '小班', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '9868', '已打印', '新增', '王圆圆(主签单人),翟志翔(副签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-27缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('117', '2017-08-26', '00076557', '', 'S19504', '邓禹', '07-网络咨询', '三年级', '广州区域-平时班-英语-3.0小时次(96次)', '', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '', '续费', '张松煌(主签单人)', '', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('118', '2017-08-26', '00076555', '', 'S19504', '邓禹', '07-网络咨询', '三年级', '广州区域-平时班-英语-3.0小时次(144次)', '', null, '0.00', null, '29800.00', null, '0.00', '0.00', '0.00', '0.00', '29800.00', '', '天河天府路中心', '陈燕梅', '交费', null, '9855', '', '续费', '张松煌(主签单人)', '新生连报小学5年国际会员／29800X1（净人头：0.9）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=29800元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-26缴费／老带新：无／创始会员／其他说明：买三送二', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('119', '2017-08-26', '00072516', '', 'S18834', '王子荞', '01-老带新,02-课题：童话剧', '三年级', '', '', null, '0.00', null, '20.00', null, '20.00', '0.00', '0.00', '0.00', '20.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ4套=1120元 /备注：1100现金券', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('120', '2017-08-26', '00072487', '', 'S09031', '黄玮婷', '01-老带新', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0488', '已打印', '续费', '朱晓佳(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('121', '2017-08-26', '00072323', '', 'S16658', '汲春杉', '02-课题：童话剧', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '吴彩红(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('122', '2017-08-25', '00072218', '', 'S17901', '林也淇', '03-课题：自然拼音', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('123', '2017-08-25', '00072217', '', 'S17868', '纪博桓', '03-课题：自然拼音', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('124', '2017-08-25', '00072215', '', 'S12910', '龙心宜', '', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '翟志翔(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('125', '2017-08-25', '00072214', '', 'S12913', '蔡乐铭', '', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '翟志翔(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('126', '2017-08-25', '00072213', '', 'S12911', '王稚尹', '', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '翟志翔(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('127', '2017-08-25', '00072212', '', 'S20057', '吴卓然', '01-老带新', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '余洁玲(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('128', '2017-08-25', '00072210', '', 'S16529', '何家坤', '03-课题：自然拼音', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '陈燕梅(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('129', '2017-08-25', '00072202', '', 'S10853', '彭云翼', '03-课题：自然拼音', '小班', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '丁惠媚(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('130', '2017-08-25', '00072194', '', 'S19097', '冯钰淑', '02-课题：童话剧', '小班', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('131', '2017-08-25', '00072192', '', 'S17302', '胡世程', '03-课题：自然拼音', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('132', '2017-08-25', '00072191', '', 'S17311', '姚季芮', '07-网络咨询', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('133', '2017-08-25', '00072188', '', 'S10823', '王梓淇（1）', '', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '郑清芳(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('134', '2017-08-25', '00072177', '', 'S11242', '刘安淇', '', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('135', '2017-08-25', '00072174', '', 'S20316', '熊睿', '03-课题：自然拼音', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('136', '2017-08-25', '00072172', '', 'S20316', '熊睿', '03-课题：自然拼音', '四年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-25缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('137', '2017-08-25', '00072171', '', 'S19927', '周静怡', '03-课题：自然拼音', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('138', '2017-08-25', '00072170', '', 'S16415', '杨晨曦', '08-电话咨询', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '1A教材（现金券抵扣280元）', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('139', '2017-08-25', '00072165', '', 'S16607', '雷鲁健', '03-课题：自然拼音', '小班', '', '小学材料费-X', null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '1A教材（现金券抵扣280元）', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('140', '2017-08-25', '00072140', '', 'S09315', '蔡君昊', '01-老带新', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '陈健霞(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('141', '2017-08-25', '00072139', '', 'S11347', '王岱霖', '', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('142', '2017-08-25', '00072138', '', 'S17314', '肖鑫彤', '01-老带新', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('143', '2017-08-25', '00072137', '', 'S11940', '胡甜慈', '', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '1A教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('144', '2017-08-25', '00072128', '', 'S11540', '张芷涵', '', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '翟志翔(主签单人)', '1B教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('145', '2017-08-25', '00072121', '', 'S16667', '曾芷睿rayna', '03-课题：自然拼音', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '1B教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('146', '2017-08-25', '00072120', '', 'S01616', '彭希扬', '', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '1B教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('147', '2017-08-25', '00072119', '', 'S01622', '邱刘哲', '', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '1B教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('148', '2017-08-25', '00072118', '', 'S09032', '黄泽蕊', '03-课题：自然拼音', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '朱晓佳(主签单人)', '1B教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('149', '2017-08-25', '00072115', '', 'S09053', '姚怡然', '01-老带新', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '朱晓佳(主签单人)', '1B教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('150', '2017-08-25', '00072114', '', 'S09030', '侯宸卓', '03-课题：自然拼音', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '朱晓佳(主签单人)', '1B教材', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('151', '2017-08-25', '00071982', '', 'S09053', '姚怡然', '01-老带新', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0709', '已打印', '续费', '朱晓佳(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('152', '2017-08-25', '00071981', '', 'S09032', '黄泽蕊', '03-课题：自然拼音', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '朱晓佳(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('153', '2017-08-25', '00071979', '', 'S01622', '邱刘哲', '', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('154', '2017-08-25', '00071978', '', 'S01616', '彭希扬', '', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '9881', '已打印', '续费', '', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('155', '2017-08-25', '00071869', '', 'S10390', '詹靖宇', '03-课题：自然拼音', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '1780', '已打印', '续费', '陈健霞(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('156', '2017-08-25', '00071867', '', 'S10414', '詹靖轩', '', '大班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '1780', '已打印', '续费', '林巧珍(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('157', '2017-08-25', '00071857', '', 'S20276', '刘梓超', '07-网络咨询', '小班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '2956', '已打印', '续费', '', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('158', '2017-08-25', '00071856', '', 'S20276', '刘梓超', '07-网络咨询', '小班', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '2956', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-24缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('159', '2017-08-25', '00071855', '', 'S11147', '陈明宇', '', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '郑清荣(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('160', '2017-08-25', '00071854', '', 'S10745', '黎倞', '', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('161', '2017-08-25', '00071852', '', 'S20276', '刘梓超', '07-网络咨询', '小班', '广州区域-周末班-英语-3.0小时次(32次)', '', null, '14760.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '报读一年课程赠32周次课，此课程不退费不结转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('162', '2017-08-25', '00071849', '', 'S20276', '刘梓超', '07-网络咨询', '小班', '广州区域-周末班-英语-3.0小时次(48次)', '', null, '5560.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', '', '天河天府路中心', '余洁玲', '交费', null, '2956', '已打印', '续费', '张松煌(主签单人)', '新生连报小学1年国际会员／16580X1（净人头：0.9）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-24缴费／老带新：无／买三送二／其他说明：秒杀价一年送2期，买三送二。', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('163', '2017-08-24', '00077382', '', 'S20920', '谢一凡', '05-地推', '一年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('164', '2017-08-24', '00071777', '', 'S20202', '刘珊羽', '07-网络咨询', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '4433', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('165', '2017-08-24', '00071772', '', 'S20202', '刘珊羽', '07-网络咨询', '三年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '4433', '已打印', '新增', '王圆圆(主签单人),翟志翔(主签单人),张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆、张松煌、翟志翔／首次缴费日期：2017-08-24缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('166', '2017-08-24', '00071728', '', 'S15861', '徐俊哲', '05-地推', '一年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '4652', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('167', '2017-08-24', '00071672', '', 'S13317', '陈姝含', '07-网络咨询', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '4838', '已打印', '续费', '彭永红(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('168', '2017-08-24', '00071659', '', 'S20244', '郑黄奕', '02-课题：童话剧', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('169', '2017-08-24', '00071657', '', 'S20244', '郑黄奕', '02-课题：童话剧', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '1101', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-24缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('170', '2017-08-24', '00071652', '', 'S13089', '董陈蓓', '07-网络咨询', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '郑清芳(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('171', '2017-08-24', '00071644', '', 'S09044', '柳皓轩', '06-上门咨询', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('172', '2017-08-24', '00071638', '', 'S17930', '刘赜恺', '07-网络咨询', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('173', '2017-08-24', '00071622', '', 'S20238', '许嘉智', '07-网络咨询', '大班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('174', '2017-08-24', '00071621', '', 'S20238', '许嘉智', '07-网络咨询', '大班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-24缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('175', '2017-08-24', '00071613', '', 'S09040', '梁希', '03-课题：自然拼音', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '朱晓佳(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('176', '2017-08-24', '00071576', '', 'S16415', '杨晨曦', '08-电话咨询', '三年级', '', '', null, '0.00', null, '60.00', null, '60.00', '0.00', '0.00', '0.00', '60.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ2套=560元 备注：500现金券', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('177', '2017-08-24', '00071575', '', 'S16607', '雷鲁健', '03-课题：自然拼音', '小班', '', '', null, '0.00', null, '60.00', null, '60.00', '0.00', '0.00', '0.00', '60.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ2套=560元 备注：500现金券', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('178', '2017-08-24', '00071566', '', 'S19097', '冯钰淑', '02-课题：童话剧', '小班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('179', '2017-08-23', '00071484', '', 'S13103', '万博文', '', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '9953', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('180', '2017-08-23', '00071483', '', 'S11217', '许雯婷', '', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '9953', '已打印', '续费', '', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('181', '2017-08-23', '00071482', '', 'S12558', '靳瑞琪', '03-课题：自然拼音', '小班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5702', '已打印', '续费', '陈玲(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('182', '2017-08-23', '00071476', '', 'S11883', '陈立言', '06-上门咨询', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5593', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('183', '2017-08-23', '00071475', '', 'S11534', '朱晓禾', '01-老带新', '五年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5593', '', '续费', '丁惠媚(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('184', '2017-08-23', '00071470', '', 'S13915', '宾诗琪', '01-老带新', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5593', '已打印', '续费', '丁惠媚(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('185', '2017-08-23', '00071468', '', 'S13110', '姜昕屹', '', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5593', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('186', '2017-08-23', '00071464', '', 'S18057', '廖爱跃', '07-网络咨询', '一年级', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '5593', '已打印', '续费', '张松煌(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('187', '2017-08-23', '00071463', '', 'S11543', '江益民', '01-老带新', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '5593', '已打印', '续费', '丁惠媚(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('188', '2017-08-23', '00071462', '', 'S11143', '林馨语', '', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '5593', '已打印', '续费', '郑清荣(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('189', '2017-08-23', '00071452', '', 'S10980', '林昕睿', '', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '1555', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:38');
INSERT INTO `stjy_sjjlb` VALUES ('190', '2017-08-23', '00071451', '', 'S16821', '邹沐彤', '01-老带新', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '1555', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('191', '2017-08-23', '00071450', '', 'S12469', '万语笑', '07-网络咨询', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '1555', '已打印', '续费', '吴逸芬(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('192', '2017-08-23', '00071449', '', 'S11226', '林子淇', '', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '1555', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('193', '2017-08-23', '00071371', '', 'S09042', '刘芷睿', '01-老带新', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '6018', '已打印', '续费', '朱晓佳(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('194', '2017-08-23', '00071369', '', 'S12367', '彭芷晴', '07-网络咨询', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '吴逸芬(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('195', '2017-08-23', '00071368', '', 'S11242', '刘安淇', '', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('196', '2017-08-23', '00071367', '', 'S11950', '翁语欣', '', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('197', '2017-08-23', '00071366', '', 'S13744', '何柏沅', '06-上门咨询', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('198', '2017-08-23', '00071365', '', 'S17314', '肖鑫彤', '01-老带新', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('199', '2017-08-23', '00071364', '', 'S16940', '梁添翔', '06-上门咨询', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('200', '2017-08-23', '00071363', '', 'S12913', '蔡乐铭', '', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('201', '2017-08-23', '00071362', '', 'S13026', '王加泓', '07-网络咨询', '一年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '傅聪(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('202', '2017-08-23', '00071361', '', 'S12431', '唐茜薇', '', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('203', '2017-08-23', '00071360', '', 'S10823', '王梓淇（1）', '', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '郑清芳(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('204', '2017-08-23', '00071358', '', 'S20204', '肖斐然', '03-课题：自然拼音', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '7945', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('205', '2017-08-23', '00071357', '', 'S20204', '肖斐然', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '7945', '已打印', '新增', '王圆圆(主签单人),翟志翔(副签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-23缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('206', '2017-08-23', '00071356', '', 'S11540', '张芷涵', '', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5155', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('207', '2017-08-23', '00071349', '', 'S09030', '侯宸卓', '03-课题：自然拼音', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5155', '已打印', '续费', '朱晓佳(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('208', '2017-08-20', '00070382', '', 'S12820', '何雯', '', '五年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5930', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('209', '2017-08-20', '00070380', '', 'S12467', '杨芷澄', '07-网络咨询', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '5930', '已打印', '续费', '吴逸芬(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('210', '2017-08-20', '00070371', '', 'S19928', '张棉', '03-课题：自然拼音', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '7993', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('211', '2017-08-20', '00070369', '', 'S19928', '张棉', '03-课题：自然拼音', '二年级', '广州区域-游学会员（美国线-48800元-21天）(0次)', '', null, '0.00', null, '40000.00', null, '0.00', '0.00', '0.00', '0.00', '40000.00', '', '天河天府路中心', '余洁玲', '补欠交', null, '2073', '已打印', '补欠交', '张松煌(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-20缴费／老带新：徐俊哲／创始会员／其他说明：补齐40000元游学会员', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('212', '2017-08-20', '00070262', '', 'S10889', '李烨铭', '预约试听', '五年级', '', '', null, '0.00', null, '130.00', null, '130.00', '0.00', '0.00', '0.00', '130.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元教材费一套（150元代金券+130元）', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('213', '2017-08-20', '00070252', '', 'S10907', '梁钰', '', '五年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('214', '2017-08-20', '00070184', '', 'S10222', '李乐天', '03-课题：自然拼音', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('215', '2017-08-20', '00070181', '', 'S18632', '范越好', '02-课题：童话剧,07-网络咨询', '小班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('216', '2017-08-20', '00070042', '', 'S11798', '邹亦非', '', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('217', '2017-08-20', '00070040', '', 'S12545', '杨梓盈', '', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('218', '2017-08-20', '00069972', '', 'S11900', '符方涓', '', '大班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('219', '2017-08-20', '00069966', '', 'S19926', '邓蕾', '03-课题：自然拼音', '小班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('220', '2017-08-20', '00069964', '', 'S15854', '蒋沛霖', '06-上门咨询', '一年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('221', '2017-08-20', '00069963', '', 'S16529', '何家坤', '03-课题：自然拼音', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '陈燕梅(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('222', '2017-08-20', '00069960', '', 'S13320', '魏蔚然', '01-老带新', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('223', '2017-08-20', '00069953', '', 'S12425', '熊忻仪', '07-网络咨询', '中班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '吴逸芬(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('224', '2017-08-20', '00069944', '', 'S11084', '邱堉庄', '', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('225', '2017-08-20', '00069938', '', 'S10725', '张驰', '', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('226', '2017-08-19', '00069780', '', 'S10708', '张曌仪', '', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8268', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('227', '2017-08-19', '00069777', '', 'S12550', '李沄天', '', '四年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('228', '2017-08-19', '00069776', '', 'S12911', '王稚尹', '', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('229', '2017-08-19', '00069775', '', 'S12910', '龙心宜', '', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('230', '2017-08-19', '00069772', '', 'S19972', '张雅馨', '10-其他渠道推荐', '大班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('231', '2017-08-19', '00069771', '', 'S19972', '张雅馨', '10-其他渠道推荐', '大班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-17缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('232', '2017-08-19', '00069696', '', 'S16667', '曾芷睿rayna', '03-课题：自然拼音', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '13126', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('233', '2017-08-19', '00069693', '', 'S16667', '曾芷睿rayna', '03-课题：自然拼音', '三年级', '广州区域-游学会员（美国线-48800元-21天）(1次)', '', null, '0.00', null, '23800.00', null, '-25000.00', '0.00', '0.00', '0.00', '23800.00', '', '天河天府路中心', '陈燕梅', '交费', null, '5701', '已打印', '续费', '张松煌(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-19缴费／老带新：无／创始会员／其他说明：补交转游学会员', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('234', '2017-08-19', '00069688', '', 'S16667', '曾芷睿rayna', '03-课题：自然拼音', '三年级', '广州区域-平时班-英语-3.0小时次(-240次)', '', null, '0.00', null, '0.00', null, '25000.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '陈燕梅', '结转', null, '', '', '新增,续费', '陈美全(主签单人)', '', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('235', '2017-08-19', '00069646', '', 'S20057', '吴卓然', '01-老带新', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8579', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('236', '2017-08-19', '00069643', '', 'S20057', '吴卓然', '01-老带新', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '8579', '已打印', '新增', '翟志翔(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：翟志翔／首次缴费日期：2017-08-19缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('237', '2017-08-18', '00069229', '', 'S10868', '彭羽菲', '03-课题：自然拼音', '一年级', '', '', null, '0.00', null, '130.00', null, '130.00', '0.00', '0.00', '0.00', '130.00', '', '天河天府路中心', '余洁玲', '交费', null, '4633', '已打印', '续费', '丁惠媚(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元  备注：150现金券', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('238', '2017-08-18', '00069215', '', 'S10853', '彭云翼', '03-课题：自然拼音', '小班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '丁惠媚(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('239', '2017-08-17', '00069118', '', 'S19971', '项如杰', '10-其他渠道推荐', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('240', '2017-08-17', '00069117', '', 'S19971', '项如杰', '10-其他渠道推荐', '三年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-17缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('241', '2017-08-17', '00069116', '', 'S19970', '张杰', '10-其他渠道推荐', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('242', '2017-08-17', '00069115', '', 'S19970', '张杰', '10-其他渠道推荐', '三年级', '广州区域-周末班-英语-3.0小时次(1期)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '8260', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-17缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('243', '2017-08-15', '00068937', '', 'S19937', '许嘉妮', '01-老带新', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('244', '2017-08-15', '00068936', '', 'S19937', '许嘉妮', '01-老带新', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '陈燕梅', '交费', null, '', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('245', '2017-08-15', '00068877', '', 'S19927', '周静怡', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(32次)', '', null, '14760.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '报读一年课程赠32周次课，此课程不退费不结转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('246', '2017-08-15', '00068876', '', 'S19927', '周静怡', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(48次)', '', null, '5560.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', '', '天河天府路中心', '余洁玲', '交费', null, '5076', '已打印', '续费', '张松煌(主签单人)', '新生连报小学1年国际会员／16580X1（净人头：0.9）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-15缴费／老带新：生艾霖／买三送二／其他说明：秒杀价一年送2期，买三送二。', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('247', '2017-08-15', '00068875', '', 'S19928', '张棉', '03-课题：自然拼音', '二年级', '广州区域-游学会员（美国线-48800元-21天）(1次)', '', null, '0.00', null, '8800.00', null, '0.00', '0.00', '0.00', '0.00', '8800.00', '', '天河天府路中心', '余洁玲', '交费', null, '32619', '已打印', '新增', '张松煌(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-15缴费／老带新：徐俊哲／创始会员／其他说明：8800定金', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('248', '2017-08-15', '00068873', '', 'S19927', '周静怡', '03-课题：自然拼音', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5076', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('249', '2017-08-15', '00068872', '', 'S19927', '周静怡', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '5076', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('250', '2017-08-15', '00068871', '', 'S19926', '邓蕾', '03-课题：自然拼音', '小班', '广州区域-游学会员（美国线-48800元-21天）(1次)', '', null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', '', '天河天府路中心', '余洁玲', '交费', null, '0351', '已打印', '新增', '王圆圆(主签单人),翟志翔(副签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-15缴费／老带新：王梓丞／创始会员／其他说明', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('251', '2017-08-15', '00068854', '', 'S19918', '张锦楠', '09-教师推荐', '二年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '8579', '已打印', '续费', '翟志翔(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('252', '2017-08-15', '00068852', '', 'S19918', '张锦楠', '09-教师推荐', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '8579', '已打印', '新增', '翟志翔(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：翟志翔／首次缴费日期：2017-08-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('253', '2017-08-13', '00068757', '', 'S19879', '商哲溢', '06-上门咨询', '小班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '5210', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('254', '2017-08-13', '00068755', '', 'S19879', '商哲溢', '06-上门咨询', '小班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '5210', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-13缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('255', '2017-08-13', '00068753', '', 'S19878', '商哲瑞', '06-上门咨询', '小班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '5210', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('256', '2017-08-13', '00068752', '', 'S19878', '商哲瑞', '06-上门咨询', '小班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '5210', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-13缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('257', '2017-08-13', '00068705', '', 'S19861', '钟佩然', '06-上门咨询', '初一', '广州区域-游学会员（美国线-48800元-21天）(1次)', '', null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', '', '天河天府路中心', '余洁玲', '交费', null, '6414', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-13缴费／老带新：何垚均／其他说明：创始会员', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('258', '2017-08-13', '00068704', '', 'S19862', '钟艺荣', '10-其他渠道推荐', '大班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '6414', '已打印', '续费', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('259', '2017-08-13', '00068702', '', 'S19862', '钟艺荣', '10-其他渠道推荐', '大班', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '6414', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-13缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('260', '2017-08-12', '00068571', '', 'S19839', '钟思颖', '02-课题：童话剧', '三年级', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '5029', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('261', '2017-08-12', '00068570', '', 'S19839', '钟思颖', '02-课题：童话剧', '三年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '5029', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-08-12缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('262', '2017-08-12', '00068554', '', 'S19829', '冼逸晴', '03-课题：自然拼音', '小班', '', '', null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '王圆圆(主签单人),翟志翔(副签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('263', '2017-08-12', '00068553', '', 'S19829', '冼逸晴', '03-课题：自然拼音', '小班', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', '', '天河天府路中心', '余洁玲', '交费', null, '46667', '已打印', '新增', '王圆圆(主签单人),翟志翔(副签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-12缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('264', '2017-08-12', '00068539', '', 'S19821', '王语诗4560', '03-课题：自然拼音', '小班', '广州区域-游学会员（美国线-48800元-21天）(1次)', '', null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', '', '天河天府路中心', '余洁玲', '交费', null, '0597', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-12缴费／老带新：杨铠睿／其他说明：创始会员', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('265', '2017-08-10', '00068330', '', 'S18271', '陈悦心', '03-课题：自然拼音', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '1b教材', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('266', '2017-08-10', '00068329', '', 'S11938', '吴沐欣', '', '三年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '1b教材', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('267', '2017-08-10', '00068328', '', 'S14355', '毛思羽', '06-上门咨询', '二年级', '', '小学材料费-X', null, '0.00', null, '0.00', null, '-280.00', '0.00', '0.00', '0.00', '0.00', '', '天河天府路中心', '余洁玲', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', '3A教材', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('268', '2017-08-08', '00068181', '', 'S19752', '康恩铭', '06-上门咨询', '大班', '', '', null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '续费', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '5', '2017-09-05 15:00:39');
INSERT INTO `stjy_sjjlb` VALUES ('269', '2017-08-08', '00068180', '', 'S19752', '康恩铭', '06-上门咨询', '大班', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', '', '天河天府路中心', '余洁玲', '交费', null, '0773', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-08-8缴费／老带新：无／1期秒杀／其他说明：不退不转', '5', '2017-09-05 15:00:39');

-- ----------------------------
-- Table structure for stjy_sjzb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_sjzb`;
CREATE TABLE `stjy_sjzb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `qishu` varchar(255) DEFAULT NULL COMMENT '期数',
  `sid` int(11) DEFAULT NULL COMMENT '校区id',
  `xyxxb` tinyint(1) DEFAULT '1' COMMENT '学员信息表状态:1,未导入;2,已导入;',
  `bjxxb` tinyint(1) DEFAULT '1' COMMENT '班级信息表状态:1,未导入;2,已导入;',
  `bjxyxxb` tinyint(1) DEFAULT '1' COMMENT '班级学员信息表状态:1,未导入;2,已导入;',
  `sjjlb` tinyint(1) DEFAULT '1' COMMENT '收据记录表状态:1,未导入;2,已导入;',
  `kxmxb` tinyint(1) DEFAULT '1' COMMENT '课消明细表状态:1,未导入;2,已导入;',
  `kbmxb` tinyint(1) DEFAULT '1' COMMENT '开班明细表状态:1,未导入;2,已导入;',
  `xyfyyjb` tinyint(1) DEFAULT '1' COMMENT '学员费用预警表状态:1,未导入;2,已导入;',
  `xxkedb` tinyint(1) DEFAULT '1' COMMENT '学习卡额度表状态:1,未导入;2,已导入;',
  `status_xz` tinyint(1) DEFAULT '1' COMMENT '行政状态:1,未操作;2,已提交;3,被退回;4,取消;',
  `status_xzjl` tinyint(1) DEFAULT NULL COMMENT '行政经理状态:1,未操作;2,已审核;3,退回;4,被退回;5,取消;',
  `status_cw` tinyint(1) DEFAULT NULL COMMENT '财务状态:1,未操作;2,已审核;3,退回;4,被退回;5,取消;',
  `status_fzr` tinyint(1) DEFAULT NULL COMMENT '负责人状态:1,未操作;2,退回;',
  `xingzheng` varchar(255) DEFAULT '无' COMMENT '行政',
  `xingzhengjl` varchar(255) DEFAULT '无' COMMENT '行政经理',
  `caiwu` varchar(255) DEFAULT '无' COMMENT '财务',
  `fuzeren` varchar(255) DEFAULT '无' COMMENT '负责人',
  `time_xz` varchar(255) DEFAULT NULL COMMENT '行政操作时间',
  `time_xzjl` varchar(255) DEFAULT NULL COMMENT '行政经理操作时间',
  `time_cw` varchar(255) DEFAULT NULL COMMENT '财务操作时间',
  `time_fzr` varchar(255) DEFAULT NULL COMMENT '负责人操作时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_sjzb
-- ----------------------------
INSERT INTO `stjy_sjzb` VALUES ('2', '201708', '4', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', null, null, '行政经理', '无', '无', '无', '2017-09-05 15:21:56', null, null, null);

-- ----------------------------
-- Table structure for stjy_table_name
-- ----------------------------
DROP TABLE IF EXISTS `stjy_table_name`;
CREATE TABLE `stjy_table_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xuhao` int(11) DEFAULT NULL COMMENT '表序号',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `table_name` varchar(255) DEFAULT NULL COMMENT '数据表名',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型:1,导入表;2,导出表;3,日常表(导入);',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_table_name
-- ----------------------------
INSERT INTO `stjy_table_name` VALUES ('1', '1', '学员信息表', 'xyxxb', '1');
INSERT INTO `stjy_table_name` VALUES ('2', '2', '班级信息表', 'bjxxb', '1');
INSERT INTO `stjy_table_name` VALUES ('3', '3', '班级学员信息表', 'bjxyxxb', '1');
INSERT INTO `stjy_table_name` VALUES ('4', '4', '收据记录表', 'sjjlb', '1');
INSERT INTO `stjy_table_name` VALUES ('5', '5', '课消明细表', 'kxmxb', '1');
INSERT INTO `stjy_table_name` VALUES ('6', '6', '开班明细表', 'kbmxb', '1');
INSERT INTO `stjy_table_name` VALUES ('7', '7', '学员费用预警表', 'xyfyyjb', '1');
INSERT INTO `stjy_table_name` VALUES ('8', '8', '市场业绩表', 'scyjb', '2');
INSERT INTO `stjy_table_name` VALUES ('9', '9', '市场占有率表', 'sczylb', '2');
INSERT INTO `stjy_table_name` VALUES ('10', '10', '新增明细表', 'xzmxb', '2');
INSERT INTO `stjy_table_name` VALUES ('11', '11', '减少明细表', 'jsmxb', '2');
INSERT INTO `stjy_table_name` VALUES ('12', '12', '经营数据表', 'jysjb', '2');
INSERT INTO `stjy_table_name` VALUES ('13', '13', '退费表', 'tfb', '2');
INSERT INTO `stjy_table_name` VALUES ('14', '14', '学习卡额度表', 'xxkedb', '3');

-- ----------------------------
-- Table structure for stjy_xxkedb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_xxkedb`;
CREATE TABLE `stjy_xxkedb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xuhao` varchar(255) DEFAULT NULL COMMENT '序号',
  `quyu` varchar(255) DEFAULT NULL COMMENT '区域',
  `fenxiao` varchar(255) DEFAULT NULL COMMENT '分校',
  `yuefen` varchar(255) DEFAULT NULL COMMENT '月份',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `ruzhirq` varchar(255) DEFAULT NULL COMMENT '入职日期',
  `status` varchar(255) DEFAULT NULL COMMENT '是否正式期',
  `yuechusybj` double(11,2) DEFAULT NULL COMMENT '月初剩余本金',
  `benyuegmbj` double(11,2) DEFAULT NULL COMMENT '本月购买本金',
  `zongbenjin` double(11,2) DEFAULT NULL COMMENT '总本金',
  `edu` double(11,2) DEFAULT NULL COMMENT '额度',
  `zhengshiqsfgmlzdbj` varchar(255) DEFAULT NULL COMMENT '正式期是否购买了最低本金',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xxkedb
-- ----------------------------
INSERT INTO `stjy_xxkedb` VALUES ('1', '1', 'A类', '天河天府路中心', '2017-08-01', '朱晓佳', '42451', '正式期', '0.00', '0.00', '0.00', '0.00', '否', '9', '2017-09-05 15:01:30');
INSERT INTO `stjy_xxkedb` VALUES ('2', '2', 'A类', '天河天府路中心', '2017-08-01', '张松煌', '42791', '正式期', '10.00', '10.00', '20000.00', '80000.00', '否', '9', '2017-09-05 15:01:30');
INSERT INTO `stjy_xxkedb` VALUES ('3', '3', 'A类', '天河天府路中心', '2017-08-01', '翟志翔', '42748', '正式期', '50.00', '0.00', '50000.00', '240000.00', '否', '9', '2017-09-05 15:01:30');
INSERT INTO `stjy_xxkedb` VALUES ('4', '4', 'A类', '天河天府路中心', '2017-08-01', '王圆圆', '42825', '试用期', '50.00', null, '50000.00', '275000.00', '', '9', '2017-09-05 15:01:30');
INSERT INTO `stjy_xxkedb` VALUES ('5', '5', 'A类', '天河天府路中心', '2017-08-01', '彭永红', '42217', '正式期', '30.00', '0.00', '30000.00', '120000.00', '否', '9', '2017-09-05 15:01:30');
INSERT INTO `stjy_xxkedb` VALUES ('6', '6', 'A类', '天河天府路中心', '2017-08-01', '吴彩红', '2017-04-08', '试用期', '10.00', null, '10000.00', '75000.00', '', '9', '2017-09-05 15:01:30');

-- ----------------------------
-- Table structure for stjy_xyfyyjb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_xyfyyjb`;
CREATE TABLE `stjy_xyfyyjb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xuehao` varchar(255) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `dianhua` varchar(255) DEFAULT NULL COMMENT '电话',
  `xiaoqu` varchar(255) DEFAULT NULL COMMENT '校区',
  `kechengmc` varchar(255) DEFAULT NULL COMMENT '课程名称',
  `xueguanshi` varchar(255) DEFAULT NULL COMMENT '学管师',
  `shuliang` double(11,2) DEFAULT NULL COMMENT '数量',
  `danwei` varchar(255) DEFAULT NULL COMMENT '单位',
  `feiyong` double(11,2) DEFAULT NULL COMMENT '费用',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=280 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xyfyyjb
-- ----------------------------
INSERT INTO `stjy_xyfyyjb` VALUES ('1', 'S15854', '蒋沛霖', '15360016840', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('2', 'S15861', '徐俊哲', '13640630605', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('3', 'S13026', '王加泓', '13580325947', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('4', 'S17311', '姚季芮', '18922260526', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '254.00', '次', '26645.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('5', 'S19504', '邓禹', '18925063330', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '29800.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('6', 'S10783', '李宣霖', '18620830552', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('7', 'S16658', '汲春杉', '13928893100', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('8', 'S15801', '杨雨浠', '18665738556', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('9', 'S16821', '邹沐彤', '13928866895', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('10', 'S16600', '李冠延', '13711288940', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('11', 'S09664', '钟子淇', '13924103232', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('12', 'S17314', '肖鑫彤', '13710988399', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '237.00', '次', '24375.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('13', 'S16529', '何家坤', '18026380649', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '237.00', '次', '24375.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('14', 'S16607', '雷鲁健', '13798183155', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '237.00', '次', '24375.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('15', 'S16415', '杨晨曦', '13922138919', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '237.00', '次', '24375.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('16', 'S09478', '易其乐', '13822188180', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '233.00', '次', '23541.67', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('17', 'S09613', '生艾霖', '13392681558', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '231.00', '次', '23125.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('18', 'S09032', '黄泽蕊', '13802548976', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '230.00', '次', '23050.20', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('19', 'S09039', '梁泓楠', '13418072142', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '229.00', '次', '22894.79', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('20', 'S09037', '李雅希', '13533545832', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '224.00', '次', '21684.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('21', 'S09029', '侯宸越', '13802536119', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '220.00', '次', '21415.24', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('22', 'S09053', '姚怡然', '13826485248', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '219.00', '次', '21038.31', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('23', 'S09030', '侯宸卓', '13802536119', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '219.00', '次', '22827.88', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('24', 'S09035', '黎政鑫', '13640846060', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '218.00', '次', '20912.71', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('25', 'S19926', '邓蕾', '13922391292', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '144.00', '次', '0.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('26', 'S09309', '邱朔晴', '18922734146', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '144.00', '次', '0.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('27', 'S16667', '曾芷睿rayna', '13922147018', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '143.00', '次', '0.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('28', 'S09325', '朱彦坤', '13527820131', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '142.00', '次', '0.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('29', 'S09326', '王子涵（1）', '15011912587', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '141.00', '次', '0.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('30', 'S16940', '梁添翔', '13610122142', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '141.00', '次', '0.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('31', 'S09315', '蔡君昊', '13603016366', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '141.00', '次', '0.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('32', 'S09202', '闾家熙', '13570201921', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '134.00', '次', '16812.67', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('33', 'S09204', '朱诗淇', '13725200569', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '134.00', '次', '16812.67', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('34', 'S09051', '温静远', '13922106580', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '125.00', '次', '-0.46', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('35', 'S09203', '钟华华', '13824424796', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '118.00', '次', '16812.67', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('36', 'S09042', '刘芷睿', '18665651008', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '105.00', '次', '22219.97', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('37', 'S09045', '陆鸣飞', '13609726477', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '104.00', '次', '22008.88', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('38', 'S13744', '何柏沅', '13070261292', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '101.00', '次', '25960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('39', 'S09025', '陈可馨8669', '15622218669', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '100.00', '次', '18023.55', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('40', 'S09034', '劳隽熙', '13922166899', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '100.00', '次', '18019.43', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('41', 'S09027', '龚子寅', '13829759394', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '100.00', '次', '18023.86', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('42', 'S09199', '曾子希', '13631499742', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '99.00', '次', '19656.25', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('43', 'S09056', '周子澄', '13926468975', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '99.00', '次', '17843.31', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('44', 'S09054', '张文一', '13302336626', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '99.00', '次', '17843.31', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('45', 'S09055', '钟雨桐', '18898605866', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '98.00', '次', '17658.32', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('46', 'S07733', '林承熙', '13922386115', '天河华景中心', '广州区域-平时班-英语-3.0小时次', '', '98.00', '次', '17663.07', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('47', 'S07715', '钟子锟', '18929593969', '天河华景中心', '广州区域-平时班-英语-3.0小时次', '', '98.00', '次', '17663.11', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('48', 'S20276', '刘梓超', '13302335609', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '96.00', '次', '18460.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('49', 'S20316', '熊睿', '17701910809', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '96.00', '次', '18460.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('50', 'S09050', '王子骅', '13302291816', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '96.00', '次', '22176.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('51', 'S16590', '崔雯睿', '13719056933', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '96.00', '次', '11400.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('52', 'S18156', '蓝添', '13924268965', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '96.00', '次', '18460.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('53', 'S20426', '黄子轩', '13600089105', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '96.00', '次', '18460.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('54', 'S09033', '黄梓峰', '13560016636', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '95.00', '次', '17079.53', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('55', 'S19927', '周静怡', '13802971860', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '94.00', '次', '18225.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('56', 'S09046', '陆子叶', '13632453211', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '92.00', '次', '17292.63', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('57', 'S09038', '李紫嫣', '18520121305', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '92.00', '次', '17292.64', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('58', 'S09031', '黄玮婷', '18928895338', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('59', 'S09049', '苏兴承', '13922229923', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '89.00', '次', '16069.38', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('60', 'S09052', '吴欣诺', '13632353832', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '89.00', '次', '16069.39', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('61', 'S09047', '潘浩智', '13640768911', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '89.00', '次', '18512.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('62', 'S09043', '刘芷妤', '13501518927', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '89.00', '次', '16069.39', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('63', 'S07495', '邓汇子', '13560478460', '天河华景中心', '广州区域-平时班-英语-3.0小时次', '', '89.00', '次', '15573.51', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('64', 'S09028', '郭梓聪', '13502447171', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '87.00', '次', '15708.27', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('65', 'S09040', '梁希', '13556198719', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '87.00', '次', '15708.27', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('66', 'S07379', '杨钶犇', '13794367768', '天河华景中心', '广州区域-平时班-英语-3.0小时次', '', '87.00', '次', '15222.77', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('67', 'S18646', '黄楷邦', '13926477498', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '80.00', '次', '16580.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('68', 'S20504', '王语诗5947', '13580325947', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '80.00', '次', '10580.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('69', 'S09044', '柳皓轩', '13560322898', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '64.00', '次', '13264.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('70', 'S13103', '万博文', '13922274036', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('71', 'S10555', '邓亦舟', '18926224535', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('72', 'S10626', '杨一诺', '18688908150', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('73', 'S15713', '张思哲', '13928774047', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('74', 'S11226', '林子淇', '13427585469', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('75', 'S12820', '何雯', '13068821834', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('76', 'S13198', '宋美京', '13922419984', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('77', 'S11084', '邱堉庄', '13650896618', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('78', 'S15221', '邹楷婧', '13660648290', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('79', 'S10868', '彭羽菲', '13824432012', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('80', 'S11787', '罗悦宁', '18602031560', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('81', 'S13110', '姜昕屹', '13725287618', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('82', 'S15222', '叶泽亮8290', '13660648290', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('83', 'S10889', '李烨铭', '13148948648', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('84', 'S11566', '陈钧泽', '13286854113', '海珠滨江东中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('85', 'S13915', '宾诗琪', '15989047046', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('86', 'S11473', '陈梓豪0326', '13825130326', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('87', 'S10776', '李欣遥', '18620830552', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('88', 'S10725', '张驰', '13825091202', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('89', 'S10980', '林昕睿', '18998298281', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('90', 'S10390', '詹靖宇', '13925092000', '天河骏景中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('91', 'S10907', '梁钰', '18122202254', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('92', 'S11217', '许雯婷', '17817317308', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('93', 'S11883', '陈立言', '18680286506', '天河骏景中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('94', 'S13089', '董陈蓓', '13560067893', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('95', 'S12558', '靳瑞琪', '13302337916', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('96', 'S11790', '张梓玥', '18520191828', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('97', 'S10708', '张曌仪', '18903005813', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('98', 'S11137', '杨熙峻', '13710589432', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('99', 'S13320', '魏蔚然', '13926074520', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('100', 'S12495', '陈宇华', '13318838382', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('101', 'S11950', '翁语欣', '13580347076', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('102', 'S11964', '平皓中', '18602015509', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('103', 'S12431', '唐茜薇', '13798159371', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('104', 'S10759', '李澜昕', '15975413984', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('105', 'S11534', '朱晓禾', '18026275252', '天河华景中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('106', 'S10636', '杨一言', '18688908150', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('107', 'S10222', '李乐天', '13556007650', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('108', 'S13383', '杨恩昊', '13434361898', '海珠滨江东中心', '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('109', 'S11163', '曾浩轩（1）', '13602234226', '天河财富广场中心', '广州区域-周末班-英语-3.0小时次', '', '47.00', '次', '3246.92', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('110', 'S10823', '王梓淇（1）', '18588508133', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '47.00', '次', '3246.92', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('111', 'S12545', '杨梓盈', '18588582151', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '47.00', '次', '3246.92', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('112', 'S14355', '毛思羽', '13602285805', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '46.00', '次', '3177.83', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('113', 'S11938', '吴沐欣', '13922257745', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '46.00', '次', '3177.83', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('114', 'S13317', '陈姝含', '13632496687', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '46.00', '次', '3177.83', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('115', 'S11347', '王岱霖', '13610178910', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '46.00', '次', '3177.83', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('116', 'S12910', '龙心宜', '13622289238', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '45.00', '次', '3108.75', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('117', 'S12550', '李沄天', '13719199190', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '45.00', '次', '3108.75', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('118', 'S12911', '王稚尹', '13632336039', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '45.00', '次', '3108.75', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('119', 'S11242', '刘安淇', '13822267285', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '45.00', '次', '3108.75', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('120', 'S12913', '蔡乐铭', '13826173078', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '45.00', '次', '3108.75', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('121', 'S11940', '胡甜慈', '18022899616', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '45.00', '次', '3108.75', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('122', 'S10853', '彭云翼', '13824432012', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '45.00', '次', '3108.75', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('123', 'S14517', '列羽芊', '13828434397', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '43.00', '次', '2970.58', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('124', 'S13741', '何垚均', '18688471778', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '42.00', '次', '2901.51', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('125', 'S11962', '李梓铖', '13631317878', '天河骏景中心', '广州区域-周末班-英语-3.0小时次', '', '42.00', '次', '2901.50', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('126', 'S11909', '尹梓溢', '13527850817', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '40.00', '次', '2763.33', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('127', 'S11965', '杨天乐', '13632358827', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '40.00', '次', '2763.33', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('128', 'S11540', '张芷涵', '13763366493', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '39.00', '次', '2694.25', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('129', 'S11238', '李羽涵', '13640217144', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '38.00', '次', '2625.18', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('130', 'S11104', '黄鸿亮', '13660538977', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '38.00', '次', '2625.17', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('131', 'S10783', '李宣霖', '18620830552', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('132', 'S11803', '吴宇鑫', '13822278767', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('133', 'S09879', '黄映衡', '13560016636', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '1200.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('134', 'S14734', '张羽嫣', '13600058187', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('135', 'S12469', '万语笑', '18022308486', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('136', 'S10408', '谢语墨', '13632190143', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('137', 'S12258', '张语彤', '18680254600', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('138', 'S10414', '詹靖轩', '13925092000', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('139', 'S11543', '江益民', '13725105561', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('140', 'S12367', '彭芷晴', '18928861230', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('141', 'S13067', '唐希怡', '13560455525', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('142', 'S12425', '熊忻仪', '13922453679', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('143', 'S10771', '刘骐瑶', '13902202502', '天河财富广场中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('144', 'S11664', '张智钦', '13602828746', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('145', 'S11059', '黄元星', '13711669179', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('146', 'S11667', '周昱延', '15920834834', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('147', 'S13243', '陈熹', '13570263325', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('148', 'S11022', '吴奕帆', '13312836220', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('149', 'S10745', '黎倞', '18100203550', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('150', 'S11036', '黄芷琳0305', '13560250305', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('151', 'S14675', '李梓杰', '15889391251', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('152', 'S12380', '张庭语', '13808870314', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('153', 'S11147', '陈明宇', '15919305340', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('154', 'S14685', '高梓骞', '13922220087', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('155', 'S11900', '符方涓', '13808841422', '天河骏景中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('156', 'S15220', '邹楷予', '13660648290', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('157', 'S11143', '林馨语', '13609085038', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('158', 'S12366', '金昱谦', '13360008197', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('159', 'S11028', '郑煜坤', '13710392726', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('160', 'S20808', '许馨之', '18565421353', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '3800.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('161', 'S11046', '张奇钰', '13580347594', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('162', 'S12467', '杨芷澄', '13450399199', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('163', 'S11798', '邹亦非', '18926224335', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('164', 'S11665', '潘钰辰', '13922769637', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('165', 'S01699', '曾砚斐', '18818859966', '天河华景中心', '广州区域-平时班-英语-3.0小时次', '', '29.00', '次', '0.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('166', 'S13730', '何泳希5668', '13022055668', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '21.00', '次', '960.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('167', 'S09228', '冼珈永', '13527713196', '越秀活动中心', '广州区域-周末班-英语-2.0小时次', '', '21.00', '次', '3150.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('168', 'S01616', '彭希扬', '18620488133', '天河华景中心', '广州区域-平时班-英语-3.0小时次', '邹丽萍', '20.00', '次', '3443.79', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('169', 'S01622', '邱刘哲', '18620916361', '天河华景中心', '广州区域-平时班-英语-3.0小时次', '邹丽萍', '19.00', '次', '3269.98', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('170', 'S09026', '陈锵铭', '13802520060', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '18.00', '次', '0.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('171', 'S19504', '邓禹', '18925063330', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('172', 'S19829', '冼逸晴', '13427584066', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('173', 'S17040', '吴祝吉', '13922257745', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('174', 'S20553', '董卓然', '13822119567', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('175', 'S18599', '张书瑶4101', '13580554101', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('176', 'S20773', '田珈易', '13450499730', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('177', 'S18626', '陈铭灏', '13798058415', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('178', 'S20552', '梁冠绅', '18126872779', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('179', 'S18562', '骆伊洋Dora', '13924227183', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('180', 'S18232', '杨旖妮', '13922455606', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('181', 'S17035', '戴永航', '13688880119', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('182', 'S20551', '梁诗蕴', '18126872779', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('183', 'S17309', '冯煦洋', '13660776606', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('184', 'S20540', '李柏尧', '18820090260', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('185', 'S20886', '何明朗', '13600094048', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('186', 'S19937', '许嘉妮', '18922748722', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('187', 'S19970', '张杰', '13527788524', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('188', 'S19989', '袁冕琳', '18664781406', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('189', 'S18645', '柯皓天', '15913164129', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('190', 'S19971', '项如杰', '13560472630', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('191', 'S18628', '熊奕宁', '13632404301', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('192', 'S17930', '刘赜恺', '15899957099', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('193', 'S18734', '彭星语', '18688858951', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('194', 'S17326', '林小轩', '15802016375', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('195', 'S17043', '王唯有', '13922257745', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('196', 'S18596', '胡遥', '13631346942', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('197', 'S20202', '刘珊羽', '13430338149', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('198', 'S20522', '冼熙桐', '13725138927', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('199', 'S17865', '姚俊宏', '13922174670', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('200', 'S16827', '黄祺茜-KIKI', '13503017628', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('201', 'S20410', '丁乐天', '13826437160', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('202', 'S20204', '肖斐然', '13432014572', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('203', 'S17042', '李泓泽', '13609002006', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('204', 'S19862', '钟艺荣', '13642636128', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:01');
INSERT INTO `stjy_xyfyyjb` VALUES ('205', 'S20532', '刘骏莹', '13902308864', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('206', 'S18724', '陆文蓓', '13719299327', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('207', 'S20877', '王楚琳', '13802901613', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('208', 'S18229', '简耀龙', '13318767909', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('209', 'S18564', '何思睿', '13929558460', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('210', 'S18745', '肖昕瑶', '13570251087', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('211', 'S20525', '吴昀洲', '13929506663', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('212', 'S17011', '吴志轩', '18928912032', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('213', 'S17905', '梁文迪', '13824469498', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('214', 'S17302', '胡世程', '13925002550', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('215', 'S19155', '熊峰', '18925081158', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('216', 'S18593', '胡逍', '13631346942', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('217', 'S16474', '钟玥嘉', '13600080140', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('218', 'S17907', '江晓潼', '13925098803', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('219', 'S18827', '徐宸', '15914290808', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('220', 'S17328', '姜卉', '13533065839', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('221', 'S18057', '廖爱跃', '13602488168', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('222', 'S18175', '李晓语', '13602452352', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('223', 'S20244', '郑黄奕', '13826416967', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('224', 'S19972', '张雅馨', '13527788524', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('225', 'S19752', '康恩铭', '13926054860', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('226', 'S17330', '汪宇丰', '18520664506', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('227', 'S20876', '何雨函', '13326489891', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('228', 'S18646', '黄楷邦', '13926477498', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('229', 'S19878', '商哲瑞', '18927522577', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('230', 'S20515', '聂子晗', '13302277181', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('231', 'S17019', '戴裕桐', '13688880119', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('232', 'S19839', '钟思颖', '13826420690', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('233', 'S17123', '黄思睿', '13926022826', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('234', 'S19470', '吴家诚', '13533099190', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('235', 'S18407', '陈启', '13726789319', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('236', 'S18835', '曾子瀚', '18664866876', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('237', 'S19122', '赵若菡', '13828420843', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('238', 'S17110', '周梓麒', '15102069298', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('239', 'S17318', '朱钰彤', '13826452594', '天河天府路中心', '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('240', 'S20238', '许嘉智', '18022372922', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('241', 'S17859', '许雯棋', '13632383973', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('242', 'S20541', '程馨逸', '13631335135', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('243', 'S19879', '商哲溢', '18927522577', '天河天府路中心', '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('244', 'S19472', '吴家兆', '13533099190', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('245', 'S18804', '陈博源', '13560139305', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('246', 'S18358', '刘烔燊', '13828081771', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('247', 'S17323', '林小哲（Austin）', '15802016375', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('248', 'S19180', 'timmy', '18588661238', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('249', 'S19524', '林子妍', '18922100301', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '15.00', '次', '1762.50', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('250', 'S19097', '冯钰淑', '13928867265', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '14.00', '次', '1645.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('251', 'S18271', '陈悦心', '13302255996', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '14.00', '次', '1645.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('252', 'S17868', '纪博桓', '13380079255', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '13.00', '次', '1527.50', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('253', 'S20531', '谢宇轩', '18520566902', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '13.00', '次', '1527.50', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('254', 'S19918', '张锦楠', '13580481373', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '13.00', '次', '1527.50', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('255', 'S17901', '林也淇', '13660691390', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '13.00', '次', '1527.50', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('256', 'S20057', '吴卓然', '13602754048', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '', '13.00', '次', '1527.50', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('257', 'S09036', '李佩儿', '13527882123', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '', '3.00', '次', '1196.25', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('258', 'S16667', '曾芷睿rayna', '13922147018', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('259', 'S20567', '尹浩嘉', '13902335866', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('260', 'S18834', '王子荞', '18666091785', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('261', 'S19821', '王语诗4560', '13112254560', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('262', 'S16827', '黄祺茜-KIKI', '13503017628', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('263', 'S18724', '陆文蓓', '13719299327', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('264', 'S09051', '温静远', '13922106580', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '47536.56', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('265', 'S18632', '范越好', '13570311969', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('266', 'S19097', '冯钰淑', '13928867265', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('267', 'S19928', '张棉', '13903068201', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('268', 'S09026', '陈锵铭', '13802520060', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('269', 'S09326', '王子涵（1）', '15011912587', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('270', 'S09325', '朱彦坤', '13527820131', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('271', 'S01699', '曾砚斐', '18818859966', '天河华景中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('272', 'S16940', '梁添翔', '13610122142', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('273', 'S11950', '翁语欣', '13580347076', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('274', 'S09309', '邱朔晴', '18922734146', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('275', 'S09315', '蔡君昊', '13603016366', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('276', 'S19861', '钟佩然', '13642636128', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('277', 'S19926', '邓蕾', '13922391292', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('278', 'S13730', '何泳希5668', '13022055668', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');
INSERT INTO `stjy_xyfyyjb` VALUES ('279', 'S13741', '何垚均', '18688471778', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '8', '2017-09-05 15:01:02');

-- ----------------------------
-- Table structure for stjy_xyxxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_xyxxb`;
CREATE TABLE `stjy_xyxxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xuehao` varchar(255) DEFAULT NULL COMMENT '学号',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(255) DEFAULT NULL COMMENT '性别',
  `shishengxin` varchar(255) DEFAULT NULL COMMENT '师生信',
  `shenfenzheng` varchar(255) DEFAULT NULL COMMENT '身份证',
  `chushengrq` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `nianling` varchar(255) DEFAULT NULL COMMENT '年龄',
  `shoujihm` varchar(255) DEFAULT NULL COMMENT '手机号码',
  `zhaoshengly` varchar(255) DEFAULT NULL COMMENT '招生来源',
  `laiyuanfx` varchar(255) DEFAULT NULL COMMENT '来源分校',
  `baomingrq` varchar(255) DEFAULT NULL COMMENT '报名日期',
  `xiaoqu` varchar(255) DEFAULT NULL COMMENT '校区',
  `xueguanshi` varchar(255) DEFAULT NULL COMMENT '学管师',
  `fuqinxm` varchar(255) DEFAULT NULL COMMENT '父亲姓名',
  `fuqindh` varchar(255) DEFAULT NULL COMMENT '父亲电话',
  `muqinxm` varchar(255) DEFAULT NULL COMMENT '母亲姓名',
  `muqindh` varchar(255) DEFAULT NULL COMMENT '母亲电话',
  `jiatingzz` varchar(255) DEFAULT NULL COMMENT '家庭住址',
  `qq` varchar(255) DEFAULT NULL COMMENT 'QQ',
  `jiuduxx` varchar(255) DEFAULT NULL COMMENT '就读学校',
  `nianji` varchar(255) DEFAULT NULL COMMENT '年级',
  `banji` varchar(255) DEFAULT NULL COMMENT '班级',
  `beizhu` varchar(255) DEFAULT NULL COMMENT '备注',
  `jifen` double(11,2) DEFAULT NULL COMMENT '积分',
  `leixing` varchar(255) DEFAULT NULL COMMENT '类型',
  `zhuangtai` varchar(255) DEFAULT NULL COMMENT '状态',
  `tuixuerq` varchar(255) DEFAULT NULL COMMENT '退学日期',
  `tuixueyy` varchar(255) DEFAULT NULL COMMENT '退学原因',
  `tuixuebz` varchar(255) DEFAULT NULL COMMENT '退学备注',
  `dianziqbye` double(11,2) DEFAULT NULL COMMENT '电子钱包余额',
  `qianjiaoje` double(11,2) DEFAULT NULL COMMENT '欠交金额',
  `shengyuxf` double(11,2) DEFAULT NULL COMMENT '剩余学费',
  `zhanghuye` double(11,2) DEFAULT NULL COMMENT '账户余额',
  `shengao` varchar(255) DEFAULT NULL COMMENT '身高',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=559 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xyxxb
-- ----------------------------
INSERT INTO `stjy_xyxxb` VALUES ('527', 'S12366', '金昱谦', '男', '', '', '2012-11-04', '4', '13360008197', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('526', 'S09040', '梁希', '男', '', '', '2007-06-01', '10', '13556198719', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '四年级', '六班', '', '0.00', '', '在读', '', '', '', '5500.00', '0.00', '15708.27', '21208.27', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('525', 'S01521', '杜航宇', '男', '', '', '2009-02-07', '8', '18988800659', '', '', '', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '已退学', '2017-07-31', '时间冲突（如参加其他课程）', '', '31570.08', '0.00', '0.00', '31570.08', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('524', 'S12495', '陈宇华', '男', '', '', '2008-06-18', '9', '13318838382', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '四年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('523', 'S16600', '李冠延', '男', '', '', '2008-10-24', '8', '13711288940', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '25000.00', '25280.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('521', 'S09047', '潘浩智', '男', '', '', '2010-03-23', '7', '13640768911', '01-老带新', '', '2017-04-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路分校', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18512.00', '18512.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('522', 'S11028', '郑煜坤', '男', '', '', '', '', '13710392726', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('520', 'S20238', '许嘉智', '男', '', '', '2012-10-28', '4', '18022372922', '07-网络咨询', '天河天府路中心', '2017-08-24', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('519', 'S17318', '朱钰彤', '女', '', '', '2013-07-16', '4', '13826452594', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('518', 'S11143', '林馨语', '女', '', '', '', '', '13609085038', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '（1）班', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '760.00', '990.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('517', 'S15220', '邹楷予', '男', '', '', '', '', '13660648290', '', '', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区翠湖幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('516', 'S18600', '张书瑶', '女', '', '', '', '', '13632391405', '03-课题：自然拼音', '天河天府路中心', '2017-07-14', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '6', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('515', 'S09309', '邱朔晴', '女', '', '', '2008-07-21', '9', '18922734146', '10-其他渠道推荐', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '8班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('514', 'S20808', '许馨之', '女', '', '', '2012-04-28', '5', '18565421353', '01-老带新', '天河天府路中心', '2017-08-31', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '3800.00', '4030.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('513', 'S17859', '许雯棋', '女', '', '', '2011-08-18', '6', '13632383973', '07-网络咨询', '天河天府路中心', '2017-07-03', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('512', 'S11950', '翁语欣', '女', '', '', '2008-05-26', '9', '13580347076', '', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '四年级', '九班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '52116.00', '52396.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('511', 'S18835', '曾子瀚', '男', '', '', '', '', '18664866876', '03-课题：自然拼音', '天河天府路中心', '2017-07-18', '天河天府路中心', '', '', '18664866876', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('510', 'S16821', '邹沐彤', '女', '', '', '2009-06-21', '8', '13928866895', '01-老带新', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '2班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '25000.00', '25280.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('509', 'S19524', '林子妍', '女', '', '', '', '', '18922100301', '01-老带新', '天河天府路中心', '2017-07-29', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1762.50', '1762.50', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('508', 'S16529', '何家坤', '男', '', '', '2009-05-18', '8', '18026380649', '03-课题：自然拼音', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '24375.00', '24375.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('507', 'S16590', '崔雯睿', '女', '', '', '2014-02-20', '3', '13719056933', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '10.00', '6400.00', '11400.00', '5010.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('506', 'S11900', '符方涓', '女', '', '', '', '', '13808841422', '', '', '2017-05-08', '天河骏景中心', '', '', '18688874048', '', '13808841422', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('505', 'S01699', '曾砚斐', '女', '', '', '2008-02-21', '9', '18818859966', '', '', '', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '四年级', '', '', '0.00', '', '在读', '', '时间冲突（如参加其他课程）', '', '280.00', '28800.00', '48800.00', '20280.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('504', 'S12431', '唐茜薇', '女', '', '', '2008-03-31', '9', '13798159371', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '四年级', '一班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('503', 'S11964', '平皓中', '男', '', '', '', '', '18602015509', '', '', '2017-05-08', '天河天府路中心', '', '', '18602015509', '', '', '', '', '天河区天府路小学', '二年级', '七班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('502', 'S17110', '周梓麒', '男', '', '', '', '', '15102069298', '02-课题：童话剧', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('501', 'S09478', '易其乐', '女', '', '', '2009-12-15', '7', '13822188180', '03-课题：自然拼音', '天河天府路中心', '2017-04-22', '天河天府路中心', '', '', '13925098792', '', '13822188180', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23541.67', '23541.67', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('500', 'S16940', '梁添翔', '男', '', '', '', '', '13610122142', '06-上门咨询', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '48800.00', '49080.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('499', 'S19122', '赵若菡', '女', '', '', '2009-11-07', '7', '13828420843', '04-课题：演讲', '天河天府路中心', '2017-07-23', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('498', 'S14685', '高梓骞', '女', '', '', '2012-08-02', '5', '13922220087', '', '', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '广州邮电通信设备公司幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('497', 'S11242', '刘安淇', '女', '', '', '2010-02-25', '7', '13822267285', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '（8）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3108.75', '3108.75', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('496', 'S11147', '陈明宇', '男', '', '', '', '', '15919305340', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '（1）班', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '760.00', '990.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('495', 'S13741', '何垚均', '男', '', '', '', '', '18688471778', '06-上门咨询', '天河天府路中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '51701.51', '51701.51', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('494', 'S09031', '黄玮婷', '女', '', '', '2009-01-07', '8', '18928895338', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '四班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '16249.95', '16529.95', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('493', 'S14675', '李梓杰', '男', '', '', '', '', '15889391251', '05-地推', '天河天府路中心', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('492', 'S17907', '江晓潼', '女', '', '', '2009-03-05', '8', '13925098803', '03-课题：自然拼音', '天河天府路中心', '2017-07-05', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '七班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1880.00', '1880.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('491', 'S10933', '李尤', '女', '', '', '', '', '13543759676', '03-课题：自然拼音', '天河骏景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '', '二年级', '2', '', '0.00', '', '已退学', '2017-05-07', '搬家', '学生意向骏景分校，录错系统', '0.00', '0.00', '0.00', '0.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('490', 'S12550', '李沄天', '男', '', '', '2007-10-31', '9', '13719199190', '', '', '2017-05-10', '天河天府路中心', '', '李波', '18903003148', '陈 ', '13719199190', '', '', '天河区天府路小学', '四年级', '八班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3108.75', '3108.75', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('489', 'S18827', '徐宸', '', '', '', '', '', '15914290808', '03-课题：自然拼音', '天河天府路中心', '2017-07-18', '天河天府路中心', '', '', '', '', '15914290808', '', '', '广州市天河区天府路小学', '二年级', '7', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('488', 'S11137', '杨熙峻', '男', '', '', '', '', '13710589432', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '13710589432', '', '', '天河区天府路小学', '二年级', '（3）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('487', 'S09049', '苏兴承', '男', '', '', '2010-08-24', '7', '13922229923', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16069.38', '16069.38', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('486', 'S01622', '邱刘哲', '男', '', '', '2009-02-16', '8', '18620916361', '', '', '', '天河华景中心', '邹丽萍', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '时间冲突（如参加其他课程）', '', '15000.00', '0.00', '3269.98', '18269.98', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('485', 'S09038', '李紫嫣', '女', '', '', '2010-07-09', '7', '18520121305', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17292.64', '17292.64', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('484', 'S20920', '谢一凡', '男', '', '', '', '', '13640630605', '05-地推', '天河天府路中心', '2017-09-02', '天河天府路中心', '', '', '', '', '13640630605', '', '', '东华幼儿园', '一年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('483', 'S12910', '龙心宜', '女', '', '', '2008-09-25', '8', '13622289238', '', '', '2017-05-11', '天河天府路中心', '', '', '', '陈珊珊', '13622289238', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3108.75', '3108.75', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('482', 'S15801', '杨雨浠', '女', '', '', '2009-02-25', '8', '18665738556', '', '', '2017-06-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市越秀区水荫路小学', '三年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('481', 'S16474', '钟玥嘉', '女', '', '', '2013-05-24', '4', '13600080140', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('480', 'S20426', '黄子轩', '男', '', '', '', '', '13600089105', '03-课题：自然拼音', '天河天府路中心', '2017-08-27', '天河天府路中心', '', '', '', '', '13600089105', '', '', '广州市天河区天府路小学', '二年级', '5', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '18460.00', '18740.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('479', 'S12380', '张庭语', '女', '', '', '2012-12-12', '4', '13808870314', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('478', 'S13317', '陈姝含', '女', '', '', '2008-07-06', '9', '13632496687', '07-网络咨询', '', '2017-05-13', '天河天府路中心', '', '陈德鸿', '13570206687', '郑少丽', '13632496687', '', '', '广州市天河区天府路小学', '四年级', '（6）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3177.83', '3177.83', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('477', 'S13730', '何泳希5668', '女', '', '', '2012-05-01', '5', '13022055668', '06-上门咨询', '天河骏景中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '49760.00', '49760.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('476', 'S12911', '王稚尹', '女', '', '', '2007-07-26', '10', '13632336039', '', '', '2017-05-11', '天河天府路中心', '', '', '', '', '13632336039', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3108.75', '3108.75', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('475', 'S09033', '黄梓峰', '男', '', '', '2010-08-08', '7', '13560016636', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17079.53', '17079.53', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('474', 'S18156', '蓝添', '男', '', '', '2007-08-18', '10', '13924268965', '06-上门咨询,01-老带新', '天河天府路中心', '2017-07-08', '天河天府路中心', '', '', '', '', '', '', '', '广州市番禺区华南碧桂园学校', '五年级', '1班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '18460.00', '18740.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('473', 'S17328', '姜卉', '女', '', '', '2009-05-10', '8', '13533065839', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '五班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('472', 'S09052', '吴欣诺', '女', '', '', '2009-09-08', '7', '13632353832', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16069.39', '16069.39', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('471', 'S13320', '魏蔚然', '女', '', '', '2007-12-16', '9', '13926074520', '01-老带新', '', '2017-05-13', '天河天府路中心', '', '', '', '葛畅', '13926074520', '', '', '广州市暨南大学附属小学', '四年级', '（5）', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('470', 'S11962', '李梓铖', '男', '', '', '2010-03-02', '7', '13631317878', '03-课题：自然拼音', '天河骏景中心', '2017-05-08', '天河骏景中心', '', '', '', '', '13631317878', '', '', '天河区骏景小学', '二年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2901.50', '2901.50', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('469', 'S11790', '张梓玥', '女', '', '', '2011-07-08', '6', '18520191828', '', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('468', 'S18057', '廖爱跃', '', '', '', '', '', '13602488168', '07-网络咨询', '天河天府路中心', '2017-07-07', '天河天府路中心', '', '', '', '', '13602488168', '', '', '广州市天河区天府路小学', '一年级', '1班', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('467', 'S11036', '黄芷琳0305', '女', '', '', '', '', '13560250305', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('466', 'S18175', '李晓语', '女', '', '', '2013-12-29', '3', '13602452352', '01-老带新', '天河天府路中心', '2017-07-08', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('465', 'S19926', '邓蕾', '女', '', '', '2009-02-01', '8', '13922391292', '03-课题：自然拼音', '天河天府路中心', '2017-08-15', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '48800.00', '49080.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('464', 'S19752', '康恩铭', '男', '', '', '2013-05-31', '4', '13926054860', '06-上门咨询', '天河天府路中心', '2017-08-08', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('463', 'S19972', '张雅馨', '女', '', '', '2011-12-22', '5', '13527788524', '10-其他渠道推荐', '天河天府路中心', '2017-08-17', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('462', 'S20244', '郑黄奕', '男', '', '', '', '', '13826416967', '02-课题：童话剧', '天河天府路中心', '2017-08-24', '天河天府路中心', '', '', '', '', '13826416967', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('461', 'S20961', '江秉政', '男', '', '', '', '', '13560308328', '01-老带新', '天河天府路中心', '2017-09-02', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区体育东路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('460', 'S10708', '张曌仪', '男', '', '', '2010-01-15', '7', '18903005813', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '（2）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('459', 'S18646', '黄楷邦', '男', '', '', '', '', '13926477498', '03-课题：自然拼音', '天河天府路中心', '2017-07-15', '天河天府路中心', '', '', '', '', '13926477498', '', '', '朝阳东幼儿园', '一年级', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '17560.00', '17790.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('458', 'S19878', '商哲瑞', '男', '', '', '2012-12-31', '4', '18927522577', '06-上门咨询', '天河天府路中心', '2017-08-13', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('457', 'S16607', '雷鲁健', '男', '', '', '2009-04-22', '8', '13798183155', '03-课题：自然拼音', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '60.00', '0.00', '24375.00', '24435.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('456', 'S09228', '冼珈永', '男', '', '', '2012-08-13', '5', '13527713196', '01-老带新', '', '2017-04-10', '越秀活动中心', '', '', '', '冼倩娣', '13527713196', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '3150.00', '3380.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('455', 'S10390', '詹靖宇', '男', '', '', '2008-08-08', '9', '13925092000', '03-课题：自然拼音', '天河天府路中心', '2017-05-07', '天河骏景中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '6班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('454', 'S09056', '周子澄', '女', '', '', '2009-03-01', '8', '13926468975', '03-课题：自然拼音', '', '2017-02-22', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17843.31', '17843.31', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('453', 'S20876', '何雨函', '女', '', '', '', '', '13326489891', '02-课题：童话剧', '天河天府路中心', '2017-09-01', '天河天府路中心', '', '', '', '', '13326489891', '', '', '广州市天河区天府路小学', '二年级', '3', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('452', 'S17330', '汪宇丰', '男', '', '', '2013-03-17', '4', '18520664506', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('451', 'S10907', '梁钰', '女', '', '', '2007-07-23', '10', '18122202254', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区石牌小学', '五年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('450', 'S11022', '吴奕帆', '男', '', '', '', '', '13312836220', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('449', 'S19839', '钟思颖', '女', '', '', '', '', '13826420690', '02-课题：童话剧', '天河天府路中心', '2017-08-12', '天河天府路中心', '', '', '', '', '13826420690', '', '', '天河区天府路小学（翠湖分校）', '三年级', '1', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('448', 'S17019', '戴裕桐', '女', '', '', '2010-06-08', '7', '13688880119', '03-课题：自然拼音', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('447', 'S20515', '聂子晗', '女', '', '', '', '', '13302277181', '07-网络咨询', '天河天府路中心', '2017-08-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('446', 'S10745', '黎倞', '男', '', '', '', '', '18100203550', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '760.00', '990.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('445', 'S19861', '钟佩然', '女', '', '', '2006-05-15', '11', '13642636128', '06-上门咨询', '天河天府路中心', '2017-08-13', '天河天府路中心', '', '', '', '', '', '', '', '广州市华颖外国语学校', '初一', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('444', 'S07379', '杨钶犇', '男', '', '', '2010-06-30', '7', '13794367768', '', '', '2016-12-11', '天河华景中心', '', '', '13794367768', '', '13826484457', '', '', '天河区天府路小学', '二年级', '8', '', '0.00', '', '在读', '', '', '', '0.00', '8900.00', '15222.77', '6322.77', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('443', 'S11883', '陈立言', '男', '', '', '2013-04-22', '4', '18680286506', '06-上门咨询', '天河天府路中心', '2017-05-08', '天河骏景中心', '', '', '', '', '18680286506', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('442', 'S11217', '许雯婷', '女', '', '', '2008-03-12', '9', '17817317308', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '华阳小学', '四年级', '（1）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('441', 'S18407', '陈启', '', '', '', '2009-06-29', '8', '13726789319', '01-老带新', '天河华景中心', '2017-07-11', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('440', 'S09025', '陈可馨8669', '女', '', '', '2010-06-02', '7', '15622218669', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18023.55', '18023.55', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('439', 'S10124', '向恩艺', '女', '', '', '2013-06-02', '4', '15975582535', '', '', '2017-05-07', '天河天府路中心', '', '', '', '万琴', '15975582536', '', '', '广州启蒙中英文幼儿园', '中班', '八班', '', '0.00', '', '已退学', '2017-05-07', '搬家', '学员意向是在华景分校就读，资料录错系统了。', '0.00', '0.00', '0.00', '0.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('438', 'S20919', '叶泽平', '男', '', '', '', '', '18680471237', '01-老带新', '天河天府路中心', '2017-09-02', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('437', 'S13089', '董陈蓓', '女', '', '', '2010-04-17', '7', '13560067893', '07-网络咨询', '天河骏景中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '广州大学附属小学', '二年级', '6班', '', '0.00', '', '在读', '', '时间冲突（如参加其他课程）', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('435', 'S11238', '李羽涵', '男', '', '', '', '', '13640217144', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2625.18', '2625.18', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('436', 'S13026', '王加泓', '男', '', '', '2011-07-11', '6', '13580325947', '07-网络咨询', '天河天府路中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '28316.00', '28596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('434', 'S11540', '张芷涵', '女', '', '', '', '', '13763366493', '', '', '2017-05-07', '天河天府路中心', '', '张仕宪', '13825027568', '杨莉娟', '13763366493', '', '', '广州市天河区天府路小学', '二年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2694.25', '2694.25', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('433', 'S19470', '吴家诚', '男', '', '', '', '', '13533099190', '07-网络咨询', '天河天府路中心', '2017-07-27', '天河天府路中心', '', '', '', '', '13533099190', '', '', '广州市天河区天府路小学', '二年级', '7', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('432', 'S09035', '黎政鑫', '男', '', '', '2009-10-21', '7', '13640846060', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '20912.71', '20912.71', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('431', 'S09030', '侯宸卓', '男', '', '', '2009-12-14', '7', '13802536119', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22827.88', '22827.88', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('430', 'S11347', '王岱霖', '女', '', '', '', '', '13610178910', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '（4）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3177.83', '3177.83', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('429', 'S17123', '黄思睿', '女', '', '', '2013-01-25', '4', '13926022826', '10-其他渠道推荐', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区华景泽晖幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('428', 'S11909', '尹梓溢', '男', '', '', '', '', '13527850817', '01-老带新', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '张婷', '13527850817', '', '', '天河区天府路小学', '二年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2763.33', '2763.33', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('427', 'S12558', '靳瑞琪', '女', '', '', '2008-07-10', '9', '13302337916', '03-课题：自然拼音', '天河华景中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('426', 'S09315', '蔡君昊', '男', '', '', '2009-02-14', '8', '13603016366', '01-老带新', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '13603016366', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('425', 'S13243', '陈熹', '', '', '', '', '', '13570263325', '', '海珠滨江东中心', '2017-05-13', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '未上幼儿园', '0.00', '', '在读', '', '', '', '460.00', '0.00', '960.00', '1420.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('424', 'S18628', '熊奕宁', '男', '', '', '', '', '13632404301', '07-网络咨询', '天河天府路中心', '2017-07-15', '天河天府路中心', '', '', '', '', '13632404301', '', '', '广州市天河区天府路小学', '三年级', '6', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('423', 'S19971', '项如杰', '男', '', '', '2009-08-09', '8', '13560472630', '10-其他渠道推荐', '天河天府路中心', '2017-08-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('422', 'S18645', '柯皓天', '男', '', '', '2013-01-25', '4', '15913164129', '01-老带新', '天河天府路中心', '2017-07-15', '天河天府路中心', '', '', '', '', '', '', '', '广州邮电通信设备公司幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('421', 'S19989', '袁冕琳', '女', '', '', '', '', '18664781406', '07-网络咨询', '天河华景中心', '2017-08-18', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区霭麟幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('420', 'S10555', '邓亦舟', '女', '', '', '2008-07-26', '9', '18926224535', '预约试听', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('419', 'S13103', '万博文', '男', '', '', '2007-12-05', '9', '13922274036', '', '', '2017-05-12', '天河天府路中心', '', '万里洪', '18925117656', '杨明娟', '13922274036', '', '', '天河区天府路小学', '四年级', '一班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('418', 'S18632', '范越好', '', '', '', '2011-08-05', '6', '13570311969', '07-网络咨询,02-课题：童话剧', '天河天府路中心', '2017-07-15', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '48800.00', '49080.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('417', 'S09029', '侯宸越', '男', '', '', '2009-12-14', '7', '13802536119', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '21415.24', '21415.24', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('416', 'S11667', '周昱延', '女', '', '', '2012-11-30', '4', '15920834834', '06-上门咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('415', 'S20534', '谢宇博', '男', '', '', '', '', '13073019846', '03-课题：自然拼音', '天河天府路中心', '2017-08-29', '天河天府路中心', '', '', '', '', '', '', '', '天河区骏景小学', '二年级', '5班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('414', 'S17868', '纪博桓', '男', '', '', '2008-10-23', '8', '13380079255', '03-课题：自然拼音', '天河天府路中心', '2017-07-04', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1527.50', '1527.50', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('413', 'S09044', '柳皓轩', '男', '', '', '2008-03-28', '9', '13560322898', '06-上门咨询', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '四年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '13264.00', '13264.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('412', 'S19970', '张杰', '男', '', '', '2009-02-06', '8', '13527788524', '10-其他渠道推荐', '天河天府路中心', '2017-08-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('411', 'S19937', '许嘉妮', '女', '', '', '2009-12-11', '7', '18922748722', '01-老带新', '天河天府路中心', '2017-08-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('410', 'S09028', '郭梓聪', '男', '', '', '2010-04-13', '7', '13502447171', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '八班', '', '0.00', '', '在读', '', '', '', '5500.00', '0.00', '15708.27', '21208.27', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('409', 'S20531', '谢宇轩', '男', '', '', '', '', '18520566902', '在线报名,01-老带新', '天河天府路中心', '2017-08-29', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1527.50', '1807.50', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('408', 'S14734', '张羽嫣', '女', '', '', '2013-04-07', '4', '13600058187', '', '', '2017-05-20', '天河天府路中心', '', '张军', '', '', '', '', '', '广州都市兰亭幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('407', 'S20540', '李柏尧', '男', '', '', '', '', '18820090260', '10-其他渠道推荐', '天河天府路中心', '2017-08-29', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('406', 'S12469', '万语笑', '女', '', '', '2012-09-16', '4', '18022308486', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('405', 'S20886', '何明朗', '男', '', '', '', '', '13600094048', '03-课题：自然拼音', '天河天府路中心', '2017-09-01', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('404', 'S20276', '刘梓超', '男', '', '', '', '', '13302335609', '07-网络咨询', '天河天府路中心', '2017-08-25', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '18460.00', '18740.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('403', 'S17309', '冯煦洋', '男', '', '', '2015-03-25', '2', '13660776606', '07-网络咨询', '天河天府路中心', '2017-06-29', '天河天府路中心', '', '', '13763335867', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('402', 'S11104', '黄鸿亮', '男', '', '', '', '', '13660538977', '01-老带新', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '13660538977', '', '', '广州市天河区旭景小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2625.17', '2625.17', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('401', 'S12820', '何雯', '女', '', '', '2006-11-11', '10', '13068821834', '', '', '2017-05-11', '天河天府路中心', '', '何继成', '13924212778', '肖丽辉', '13068821834', '', '', '广州市天河区天府路小学', '五年级', '一班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('400', 'S20551', '梁诗蕴', '女', '', '', '2014-01-19', '3', '18126872779', '在线报名,10-其他渠道推荐', '天河天府路中心', '2017-08-29', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('399', 'S11803', '吴宇鑫', '男', '', '', '2013-06-03', '4', '13822278767', '01-老带新', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '天河区骏景花园幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('398', 'S10783', '李宣霖', '男', '', '', '', '', '18620830552', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25960.00', '25960.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('397', 'S11226', '林子淇', '女', '', '', '2008-02-16', '9', '13427585469', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '华阳小学', '四年级', '（1）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('396', 'S07378', '谢宇博', '男', '', '', '2010-08-03', '7', '13500000969', '', '', '2016-12-11', '天河华景中心', '', '谢伟鹏', '13500000969', '黄思明', '13926002979', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '已退学', '2017-07-31', '时间冲突（如参加其他课程）', '', '0.00', '0.00', '12000.00', '12000.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('395', 'S15713', '张思哲', '男', '', '天河第一实验小学', '', '', '13928774047', '07-网络咨询', '海珠江南西中心', '2017-06-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('394', 'S17035', '戴永航', '男', '', '', '2013-08-08', '4', '13688880119', '在线报名,10-其他渠道推荐', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('393', 'S09879', '黄映衡', '男', '', '', '2012-11-08', '4', '13560016636', '', '', '2017-05-06', '天河天府路中心', '', '', '', '', '13560016636', '', '', '广州市天河区天府路小学', '大班', '天府路幼儿园', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1200.00', '1200.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('392', 'S09034', '劳隽熙', '女', '', '', '2010-08-02', '7', '13922166899', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '9500.00', '18019.43', '8519.43', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('391', 'S17311', '姚季芮', '女', '', '', '2009-09-28', '7', '18922260526', '07-网络咨询', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '18922260526', '', '', '广州市天河区天府路小学', '二年级', '6', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '26645.00', '26645.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('390', 'S18232', '杨旖妮', '女', '', '', '2006-06-06', '11', '13922455606', '06-上门咨询', '天河天府路中心', '2017-07-09', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('389', 'S10626', '杨一诺', '女', '', '', '2008-09-01', '9', '18688908150', '', '', '2017-05-07', '天河天府路中心', '', '', '', '李立平', '18688908150', '', '', '天河区天府路小学', '三年级', '（8）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('387', 'S01616', '彭希扬', '女', '', '', '2009-01-19', '8', '18620488133', '', '', '', '天河华景中心', '邹丽萍', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '15000.00', '0.00', '3443.79', '18443.79', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('388', 'S18562', '骆伊洋Dora', '女', '', '', '', '', '13924227183', '03-课题：自然拼音', '天河天府路中心', '2017-07-14', '天河天府路中心', '', '', '', '', '13924227183', '', '', '天河区天府路小学（翠湖分校）', '三年级', '1', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('386', 'S19504', '邓禹', '男', '', '', '', '', '18925063330', '07-网络咨询', '天河天府路中心', '2017-07-29', '天河天府路中心', '', '', '18925063330', '', '18998367496', '', '', '天河区天府路小学（翠湖分校）', '三年级', '1', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '31680.00', '31960.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('384', 'S09026', '陈锵铭', '男', '', '', '2008-05-07', '9', '13802520060', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '四年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('385', 'S10868', '彭羽菲', '女', '', '', '2007-07-27', '10', '13824432012', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '130.00', '0.00', '3316.00', '3446.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('383', 'S07733', '林承熙', '男', '', '', '2009-10-23', '7', '13922386115', '09-教师推荐', '天河华景中心', '2017-01-15', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17663.07', '17663.07', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('382', 'S20773', '田珈易', '男', '', '', '', '', '13450499730', '10-其他渠道推荐', '天河天府路中心', '2017-08-31', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区吉米幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('381', 'S18599', '张书瑶4101', '女', '', '', '', '', '13580554101', '03-课题：自然拼音', '天河天府路中心', '2017-07-14', '天河天府路中心', '', '', '13580554101', '', '', '', '', '广州市天河区天府路小学', '二年级', '6', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('380', 'S20553', '董卓然', '男', '', '', '2013-11-02', '3', '13822119567', '07-网络咨询,01-老带新', '天河天府路中心', '2017-08-29', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('379', 'S17040', '吴祝吉', '男', '', '', '', '', '13922257745', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('378', 'S12545', '杨梓盈', '女', '', '', '2008-08-25', '9', '18588582151', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '四年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3246.92', '3246.92', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('377', 'S19829', '冼逸晴', '女', '', '', '2008-12-30', '8', '13427584066', '03-课题：自然拼音', '天河天府路中心', '2017-08-12', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:09');
INSERT INTO `stjy_xyxxb` VALUES ('376', 'S15221', '邹楷婧', '男', '', '', '', '', '13660648290', '', '', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区体育东路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '3316.00', '3546.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('375', 'S12367', '彭芷晴', '女', '', '', '2012-10-01', '4', '18928861230', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('374', 'S11787', '罗悦宁', '女', '', '', '2010-05-11', '7', '18602031560', '', '', '2017-05-08', '天河天府路中心', '', '', '', '袁俊', '18602031560', '', '', '天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('373', 'S09032', '黄泽蕊', '女', '', '', '2008-12-02', '8', '13802548976', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23050.20', '23050.20', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('372', 'S07377', '谢宇侨', '男', '', '', '2010-08-03', '7', '13500000969', '', '', '2016-12-11', '天河华景中心', '', '谢伟鹏', '13500000969', '黄思明', '13926002979', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '已退学', '2017-07-31', '时间冲突（如参加其他课程）', '', '0.00', '0.00', '10950.00', '10950.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('371', 'S09199', '曾子希', '女', '', '', '2007-09-22', '9', '13631499742', '06-上门咨询', '', '2017-04-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '19656.25', '19656.25', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('370', 'S11543', '江益民', '男', '', '', '2013-01-16', '4', '13725105561', '01-老带新', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('369', 'S13110', '姜昕屹', '男', '', '', '', '', '13725287618', '', '', '2017-05-12', '天河天府路中心', '', '', '', '申柯', '13725287618', '', '', '广州市天河区天府路小学', '二年级', '四班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('368', 'S10408', '谢语墨', '女', '', '', '2013-12-14', '3', '13632190143', '08-电话咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('367', 'S18271', '陈悦心', '女', '', '', '', '', '13302255996', '03-课题：自然拼音', '天河天府路中心', '2017-07-09', '天河天府路中心', '', '', '', '', '13302255996', '', '', '广州市天河区天府路小学', '三年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1645.00', '1645.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('366', 'S19097', '冯钰淑', '女', '', '', '', '', '13928867265', '02-课题：童话剧', '天河天府路中心', '2017-07-22', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '50445.00', '50445.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('365', 'S12258', '张语彤', '女', '', '', '2012-10-07', '4', '18680254600', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '广州市天河区天晖幼儿园', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('364', 'S09045', '陆鸣飞', '女', '', '', '2009-07-14', '8', '13609726477', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '祈福新邨小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22008.88', '22008.88', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('363', 'S11084', '邱堉庄', '男', '', '', '2009-12-26', '7', '13650896618', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '（1）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('362', 'S07715', '钟子锟', '男', '', '', '', '', '18929593969', '09-教师推荐', '天河华景中心', '2017-02-20', '天河华景中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17663.11', '17663.11', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('361', 'S20552', '梁冠绅', '男', '', '', '2014-01-19', '3', '18126872779', '01-老带新', '天河天府路中心', '2017-08-29', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '980.00', '980.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('360', 'S09613', '生艾霖', '女', '', '', '2010-07-20', '7', '13392681558', '03-课题：自然拼音', '天河天府路中心', '2017-04-23', '天河天府路中心', '', '', '', '', '13395681558', '', '', '天河区天府路小学', '二年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23125.00', '23125.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('359', 'S13198', '宋美京', '', '', '', '', '', '13922419984', '', '海珠滨江东中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东风东路小学', '三年级', '', '东风东路小学', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('358', 'S09037', '李雅希', '女', '', '', '2009-09-09', '7', '13533545832', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '21684.00', '21684.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('357', 'S10853', '彭云翼', '男', '', '', '2010-01-04', '7', '13824432012', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '小班', '', '', '0.00', '', '在读', '', '时间冲突（如参加其他课程）', '', '0.00', '0.00', '3108.75', '3108.75', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('356', 'S19928', '张棉', '女', '', '', '', '', '13903068201', '03-课题：自然拼音', '天河天府路中心', '2017-08-15', '天河天府路中心', '', '', '', '', '13903068201', '', '', '广州市天河区天府路小学', '二年级', '2', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '48800.00', '49080.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('355', 'S18626', '陈铭灏', '男', '', '', '', '', '13798058415', '03-课题：自然拼音', '天河天府路中心', '2017-07-15', '天河天府路中心', '', '', '', '', '13798058415', '', '', '广州市天河区天府路小学', '二年级', '8', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('354', 'S10414', '詹靖轩', '男', '', '', '', '', '13925092000', '', '', '2017-05-07', '天河天府路中心', '', '詹春涛', '13808880685', '刘秀玲', '13925092000', '', '', '东华幼儿园', '大班', '', '就读学校为华港幼儿园', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('353', 'S20504', '王语诗5947', '女', '', '', '', '', '13580325947', '01-老带新', '天河天府路中心', '2017-08-28', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '10580.00', '10580.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('352', 'S20202', '刘珊羽', '女', '', '', '', '', '13430338149', '07-网络咨询', '天河天府路中心', '2017-08-23', '天河天府路中心', '', '', '', '', '13430338149', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('351', 'S09202', '闾家熙', '男', '', '', '2010-06-17', '7', '13570201921', '03-课题：自然拼音', '', '2017-04-08', '天河天府路中心', '', '闾国耀', '18680287007', '刘少英', '13570201921', '', '', '天河区天府路小学', '二年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16812.67', '16812.67', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('350', 'S09039', '梁泓楠', '男', '', '', '2010-10-19', '6', '13418072142', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '22894.79', '23174.79', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('349', 'S12913', '蔡乐铭', '女', '', '', '2009-08-20', '8', '13826173078', '', '', '2017-05-11', '天河天府路中心', '', '', '', '朱燕秋', '13826173078', '', '', '广州市天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3108.75', '3108.75', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('348', 'S17865', '姚俊宏', '男', '', '', '', '', '13922174670', '07-网络咨询', '天河天府路中心', '2017-07-04', '天河天府路中心', '', '', '', '', '13922174670', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '980.00', '980.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('347', 'S20522', '冼熙桐', '女', '', '', '', '', '13725138927', '在线报名', '天河天府路中心', '2017-08-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('346', 'S10966', '林欣锐', '男', '', '', '', '', '18998298281', '03-课题：自然拼音', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('345', 'S10980', '林昕睿', '男', '', '', '2009-04-20', '8', '18998298281', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '（3）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('344', 'S10725', '张驰', '男', '', '', '2009-12-02', '7', '13825091202', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '（3）', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('343', 'S18734', '彭星语', '女', '', '', '', '', '18688858951', '03-课题：自然拼音', '天河天府路中心', '2017-07-16', '天河天府路中心', '', '', '18688858951', '', '', '', '', '广州市天河区天府路小学', '二年级', '7', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('342', 'S17930', '刘赜恺', '男', '', '', '', '', '15899957099', '07-网络咨询', '天河天府路中心', '2017-07-05', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '7班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('340', 'S11059', '黄元星', '男', '', '', '', '', '13711669179', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('341', 'S16323', '罗鸿铭', '男', '', '', '', '', '18620889544', '03-课题：自然拼音', '天河天府路中心', '2017-06-23', '天河天府路中心', '', '', '', '', '18620889544', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '48800.00', '0.00', '0.00', '48800.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('339', 'S09042', '刘芷睿', '女', '', '', '2010-06-01', '7', '18665651008', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '22219.97', '22499.97', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('338', 'S10776', '李欣遥', '女', '', '', '2010-03-18', '7', '18620830552', '08-电话咨询', '天河骏景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '1班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('337', 'S18596', '胡遥', '女', '', '', '2012-07-10', '5', '13631346942', '10-其他渠道推荐', '天河天府路中心', '2017-07-14', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '980.00', '980.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('336', 'S20316', '熊睿', '', '', '', '2008-09-28', '8', '17701910809', '03-课题：自然拼音', '天河华景中心', '2017-08-25', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '18460.00', '18740.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('335', 'S17043', '王唯有', '', '', '', '', '', '13922257745', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('334', 'S17326', '林小轩', '', '', '', '', '', '15802016375', '07-网络咨询', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '新蕾幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('333', 'S19927', '周静怡', '女', '', '', '', '', '13802971860', '03-课题：自然拼音', '天河天府路中心', '2017-08-15', '天河天府路中心', '', '', '', '', '13802971860', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18225.00', '18225.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('332', 'S20567', '尹浩嘉', '', '', '', '', '', '13902335866', '03-课题：自然拼音', '天河华景中心', '2017-08-29', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '48800.00', '49080.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('331', 'S09203', '钟华华', '男', '', '', '2010-06-20', '7', '13824424796', '03-课题：自然拼音', '', '2017-04-08', '天河天府路中心', '', '钟运邦', '', '江庆梅', '13824424796', '', '', '广州市天河区天府路小学', '二年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16812.67', '16812.67', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('330', 'S20532', '刘骏莹', '女', '', '', '', '', '13902308864', '02-课题：童话剧', '天河天府路中心', '2017-08-29', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '2班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('329', 'S19862', '钟艺荣', '', '', '', '2011-09-30', '5', '13642636128', '10-其他渠道推荐', '天河帝景苑中心', '2017-08-13', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('328', 'S16667', '曾芷睿rayna', '女', '', '', '', '', '13922147018', '03-课题：自然拼音', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '13922147018', '', '', '天河区天府路小学', '三年级', '7', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('327', 'S17042', '李泓泽', '男', '', '', '', '', '13609002006', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('326', 'S09036', '李佩儿', '女', '', '', '2010-03-27', '7', '13527882123', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1196.25', '1196.25', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('325', 'S11473', '陈梓豪0326', '女', '', '', '', '', '13825130326', '06-上门咨询', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市越秀区水荫路小学', '三年级', '4', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('324', 'S20204', '肖斐然', '女', '', '', '', '', '13432014572', '03-课题：自然拼音', '天河天府路中心', '2017-08-23', '天河天府路中心', '', '', '13432014572', '', '13622760284', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('323', 'S01612', '潘子颀', '男', '', '', '', '', '18588861991', '01-老带新', '', '2017-06-23', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '五年级', '', '', '0.00', '', '已退学', '2017-07-31', '时间冲突（如参加其他课程）', '', '3280.00', '0.00', '26334.00', '29614.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('322', 'S09046', '陆子叶', '女', '', '440106200812302488', '2008-12-30', '8', '13632453211', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '三年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17292.63', '17292.63', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('321', 'S09027', '龚子寅', '男', '', '', '2010-02-26', '7', '13829759394', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18023.86', '18023.86', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('320', 'S11940', '胡甜慈', '女', '', '', '', '', '18022899616', '', '', '2017-05-08', '天河天府路中心', '', '', '18022899535', '', '18022899616', '', '', '广州市天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3108.75', '3108.75', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('319', 'S20410', '丁乐天', '男', '', '', '', '', '13826437160', '01-老带新', '天河天府路中心', '2017-08-27', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('318', 'S17901', '林也淇', '男', '', '', '2009-05-12', '8', '13660691390', '03-课题：自然拼音', '天河天府路中心', '2017-07-05', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1527.50', '1527.50', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('317', 'S15861', '徐俊哲', '男', '', '', '', '', '13640630605', '05-地推', '天河天府路中心', '2017-06-18', '天河天府路中心', '', '', '', '沈燕燕', '13640630605', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '28316.00', '28596.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('316', 'S11664', '张智钦', '男', '', '', '2013-05-16', '4', '13602828746', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('315', 'S18724', '陆文蓓', '女', '', '', '2009-03-24', '8', '13719299327', '02-课题：童话剧', '天河天府路中心', '2017-07-16', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '47800.00', '50680.00', '2880.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('314', 'S15222', '叶泽亮8290', '男', '', '', '', '', '13660648290', '', '', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区翠湖幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('313', 'S16827', '黄祺茜-KIKI', '女', '', '', '', '', '13503017628', '03-课题：自然拼音', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '13503017628', '', '', '天河区天府路小学（翠湖分校）', '三年级', '2', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '50680.00', '50960.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('312', 'S20877', '王楚琳', '女', '', '', '', '', '13802901613', '10-其他渠道推荐', '天河天府路中心', '2017-09-01', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('311', 'S07495', '邓汇子', '女', '', '', '2010-05-17', '7', '13560478460', '', '', '2016-12-18', '天河华景中心', '', '', '', '', '13560478460', '', '', '天河区天府路小学', '二年级', '8', '', '0.00', '', '在读', '', '', '', '0.00', '8900.00', '15573.51', '6673.51', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('310', 'S10889', '李烨铭', '男', '', '', '2007-03-01', '10', '13148948648', '预约试听', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区棠下小学', '五年级', '', '', '0.00', '', '在读', '', '', '', '130.00', '0.00', '3316.00', '3446.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('309', 'S10771', '刘骐瑶', '女', '', '', '', '', '13902202502', '', '', '2017-05-07', '天河财富广场中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('308', 'S09051', '温静远', '男', '', '', '2010-03-08', '7', '13922106580', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '八班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '47536.10', '47536.10', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('307', 'S18745', '肖昕瑶', '男', '', '', '', '', '13570251087', '06-上门咨询,10-其他渠道推荐', '天河天府路中心', '2017-07-16', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('306', 'S16658', '汲春杉', '女', '', '', '2011-05-13', '6', '13928893100', '02-课题：童话剧', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '25000.00', '25280.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('305', 'S09204', '朱诗淇', '女', '', '', '2009-11-01', '7', '13725200569', '01-老带新', '', '2017-04-08', '天河天府路中心', '', '朱浩华', '13725200569', '', '', '', '', '广州市天河区天府路小学', '二年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16812.67', '16812.67', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('304', 'S18564', '何思睿', '男', '', '', '2010-01-13', '7', '13929558460', '01-老带新', '天河天府路中心', '2017-07-14', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('303', 'S14355', '毛思羽', '女', '', '', '2010-09-03', '7', '13602285805', '06-上门咨询', '', '2017-05-19', '天河天府路中心', '', '毛学庆', '13609790096', '周飞良', '13602285805', '', '', '天河区天府路小学（翠湖分校）', '二年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3177.83', '3177.83', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('302', 'S18229', '简耀龙', '男', '', '', '', '', '13318767909', '03-课题：自然拼音', '天河天府路中心', '2017-07-09', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('301', 'S12425', '熊忻仪', '女', '', '', '2012-12-02', '4', '13922453679', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('300', 'S13067', '唐希怡', '女', '', '', '2012-09-11', '4', '13560455525', '07-网络咨询', '天河天府路中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('299', 'S19155', '熊峰', '男', '', '', '2008-08-27', '9', '18925081158', '01-老带新', '天河天府路中心', '2017-07-23', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('298', 'S11566', '陈钧泽', '男', '', '', '', '', '13286854113', '01-老带新', '海珠滨江东中心', '2017-05-07', '海珠滨江东中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('297', 'S18593', '胡逍', '男', '', '', '2012-07-10', '5', '13631346942', '10-其他渠道推荐', '天河天府路中心', '2017-07-14', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '460.00', '0.00', '980.00', '1440.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('296', 'S10936', '詹以峤', '女', '', '', '2013-08-03', '4', '18620807692', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '', '中班', '', '', '0.00', '', '已退学', '2017-07-31', '时间冲突（如参加其他课程）', '', '0.00', '0.00', '960.00', '960.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('295', 'S16415', '杨晨曦', '男', '', '', '2009-07-30', '8', '13922138919', '08-电话咨询', '天河天府路中心', '2017-06-23', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '60.00', '0.00', '24375.00', '24435.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('294', 'S19918', '张锦楠', '男', '', '', '', '', '13580481373', '09-教师推荐', '天河天府路中心', '2017-08-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1527.50', '1807.50', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('293', 'S10823', '王梓淇（1）', '男', '', '', '2010-01-10', '7', '18588508133', '', '', '2017-05-07', '天河天府路中心', '', '王伟', '18520330316', '赵俪芳', '18588508133', '', '', '天河区天府路小学', '二年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3246.92', '3246.92', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('292', 'S11965', '杨天乐', '男', '', '', '', '', '13632358827', '', '', '2017-05-08', '天河天府路中心', '', '杨明', '135602498880', '罗成林', '13632358827', '', '', '广州市天河区第一实验小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2763.33', '2763.33', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('291', 'S17302', '胡世程', '女', '', '', '2009-01-03', '8', '13925002550', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1880.00', '1880.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('290', 'S09050', '王子骅', '男', '', '', '2010-08-13', '7', '13302291816', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '五班 ', '', '0.00', '', '在读', '', '', '', '23842.00', '0.00', '22176.00', '46018.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('289', 'S17011', '吴志轩', '男', '', '', '2012-11-25', '4', '18928912032', '01-老带新', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('288', 'S20939', '何梓琳', '女', '', '', '', '', '18688892203', '07-网络咨询', '天河天府路中心', '2017-09-02', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('287', 'S20525', '吴昀洲', '男', '', '', '', '', '13929506663', '10-其他渠道推荐', '天河天府路中心', '2017-08-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('286', 'S18834', '王子荞', '女', '', '', '', '', '18666091785', '01-老带新,02-课题：童话剧', '天河天府路中心', '2017-07-18', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '2年级2班', '', '0.00', '', '在读', '', '', '', '20.00', '0.00', '48800.00', '48820.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('285', 'S17905', '梁文迪', '男', '', '', '2008-12-23', '8', '13824469498', '03-课题：自然拼音', '天河天府路中心', '2017-07-05', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('284', 'S11163', '曾浩轩（1）', '男', '', '', '', '', '13602234226', '', '', '2017-05-07', '天河财富广场中心', '', '', '', '', '', '', '', '体育东路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3246.92', '3246.92', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('283', 'S13915', '宾诗琪', '女', '', '', '2010-01-08', '7', '15989047046', '01-老带新', '天河天府路中心', '2017-05-18', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区华景小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('282', 'S19821', '王语诗4560', '', '', '', '2009-09-30', '7', '13112254560', '03-课题：自然拼音', '天河天府路中心', '2017-08-12', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('281', 'S14517', '列羽芊', '女', '', '', '2010-01-10', '7', '13828434397', '', '', '2017-05-19', '天河天府路中心', '', '', '', '梁女士', '13828434397', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2970.58', '2970.58', '', '2', '2017-09-05 15:00:08');
INSERT INTO `stjy_xyxxb` VALUES ('280', 'S15854', '蒋沛霖', '男', '', '', '2011-05-18', '6', '15360016840', '06-上门咨询', '天河天府路中心', '2017-06-18', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '28316.00', '28596.00', '', '2', '2017-09-05 15:00:07');
INSERT INTO `stjy_xyxxb` VALUES ('528', 'S11534', '朱晓禾', '女', '', '', '2007-08-19', '10', '18026275252', '01-老带新', '天河天府路中心', '2017-05-07', '天河华景中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '五年级', '5班', '', '0.00', '', '在读', '', '时间冲突（如参加其他课程）', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('529', 'S19180', 'timmy', '男', '', '', '', '', '18588661238', '07-网络咨询', '天河天府路中心', '2017-07-23', '天河天府路中心', '', '', '', '', '18588661238', '', '', '东莞市东城朝天实验小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1880.00', '1880.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('530', 'S11938', '吴沐欣', '女', '', '', '2009-03-21', '8', '13922257745', '', '', '2017-05-08', '天河天府路中心', '', '吴多理', '15618152782', '', '13922257745', '', '', '天河区天府路小学', '三年级', '七班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3177.83', '3177.83', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('531', 'S20960', '江妙言', '女', '', '', '', '', '13560308328', '10-其他渠道推荐', '天河天府路中心', '2017-09-02', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区体育东路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('532', 'S17323', '林小哲（Austin）', '男', '', '', '', '', '15802016375', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '15802016375', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('533', 'S10911', '李文', '女', '', '', '', '', '13543759676', '03-课题：自然拼音', '天河骏景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '', '二年级', '2', '', '0.00', '', '已退学', '2017-05-07', '搬家', '学生意向骏景分校，录错系统', '0.00', '0.00', '0.00', '0.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('534', 'S09055', '钟雨桐', '女', '', '', '2009-09-13', '7', '18898605866', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '9500.00', '17658.32', '8158.32', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('535', 'S13744', '何柏沅', '', '', '', '2014-07-01', '3', '13070261292', '06-上门咨询', '天河天府路中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '25960.00', '26190.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('536', 'S11046', '张奇钰', '女', '', '', '', '', '13580347594', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '760.00', '990.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('537', 'S13383', '杨恩昊', '男', '', '', '', '', '13434361898', '01-老带新', '海珠滨江东中心', '2017-05-13', '海珠滨江东中心', '', '', '', '', '13434361898', '', '', '广州市天河区天府路小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('538', 'S09325', '朱彦坤', '男', '', '', '2008-11-22', '8', '13527820131', '10-其他渠道推荐', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '3班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('539', 'S09326', '王子涵（1）', '男', '', '', '2008-12-27', '8', '15011912587', '01-老带新', '', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('540', 'S12467', '杨芷澄', '女', '', '', '2012-09-01', '5', '13450399199', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('541', 'S18358', '刘烔燊', '男', '', '', '', '', '13828081771', '07-网络咨询', '天河天府路中心', '2017-07-10', '天河天府路中心', '', '', '', '', '13828081771', '', '', '广州市天河区天府路小学', '二年级', '2班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('542', 'S09043', '刘芷妤', '女', '', '', '2009-11-05', '7', '13501518927', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16069.39', '16069.39', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('543', 'S10759', '李澜昕', '女', '', '', '', '', '15975413984', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('544', 'S20057', '吴卓然', '', '', '', '', '', '13602754048', '01-老带新', '天河天府路中心', '2017-08-19', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1527.50', '1527.50', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('545', 'S19879', '商哲溢', '男', '', '', '2012-12-31', '4', '18927522577', '06-上门咨询', '天河天府路中心', '2017-08-13', '天河天府路中心', '', '', '', '', '', '', '', '未上学', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('546', 'S19472', '吴家兆', '男', '', '', '', '', '13533099190', '07-网络咨询', '天河天府路中心', '2017-07-27', '天河天府路中心', '', '', '', '', '13533099190', '', '', '广州市天河区天府路小学', '二年级', '7', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('547', 'S10069', '谢莉雯', '女', '', '', '2009-03-12', '8', '18476301991', '', '', '2017-05-07', '天河天府路中心', '', '', '', '兰桂梅', '', '', '', '天河区华景小学', '三年级', '13班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('548', 'S09054', '张文一', '男', '', '', '2009-12-16', '7', '13302336626', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17843.31', '17843.31', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('549', 'S10636', '杨一言', '男', '', '', '2011-07-01', '6', '18688908150', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('550', 'S11798', '邹亦非', '女', '', '', '2013-03-28', '4', '18926224335', '', '', '2017-05-08', '天河天府路中心', '', '邓亮', '', '邹秧春', '18926224335', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('551', 'S17314', '肖鑫彤', '女', '已关注', '', '2009-11-30', '7', '13710988399', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '13710988399', '', '13798002334', '', '', '天河区天府路小学（翠湖分校）', '二年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '24375.00', '24375.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('552', 'S09053', '姚怡然', '女', '', '', '2009-01-14', '8', '13826485248', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学翠湖校区', '三年级', '三班', '', '0.00', '', '在读', '', '', '', '1950.00', '0.00', '21038.31', '22988.31', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('553', 'S11665', '潘钰辰', '女', '', '', '2013-02-08', '4', '13922769637', '06-上门咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('554', 'S20541', '程馨逸', '女', '', '', '2013-12-08', '3', '13631335135', '07-网络咨询', '天河天府路中心', '2017-08-29', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('555', 'S09664', '钟子淇', '女', '', '', '2007-05-23', '10', '13924103232', '01-老带新', '', '2017-04-28', '天河天府路中心', '', '钟灿铭', '13002038650', '袁小娟', '13924103232', '', '', '广州市天河区棠下小学', '五年级', '（2）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '25000.00', '25280.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('556', 'S10222', '李乐天', '女', '', '', '2010-01-03', '7', '13556007650', '03-课题：自然拼音', '', '2017-05-07', '天河天府路中心', '', '李建初', '1382187218', '黎雪芬', '13556007650', '', '', '广州市天河区天府路小学', '二年级', '（2）班', '翠湖校区', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('557', 'S11050', '黄元量', '女', '', '', '', '', '13711669179', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', '', '2', '2017-09-05 15:00:10');
INSERT INTO `stjy_xyxxb` VALUES ('558', 'S18804', '陈博源', '男', '', '', '', '', '13560139305', '10-其他渠道推荐', '天河天府路中心', '2017-07-18', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '四年级', '1班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1880.00', '1880.00', '', '2', '2017-09-05 15:00:10');

-- ----------------------------
-- Table structure for stjy_xzmxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_xzmxb`;
CREATE TABLE `stjy_xzmxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xuhao` int(11) DEFAULT NULL COMMENT '序号',
  `yuefen` varchar(255) DEFAULT NULL COMMENT '月份',
  `fenxiao` varchar(255) DEFAULT NULL COMMENT '分校',
  `xinzenglx` varchar(255) DEFAULT NULL COMMENT '新增类型',
  `xuehao` varchar(255) DEFAULT NULL COMMENT '序号',
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `suoshubm` varchar(255) DEFAULT NULL COMMENT '所属部门',
  `banjibh` varchar(255) DEFAULT NULL COMMENT '班级编号',
  `jingduls` varchar(255) DEFAULT NULL COMMENT '精读老师',
  `fanduls` varchar(255) DEFAULT NULL COMMENT '泛读老师',
  `kaibanrq` varchar(255) DEFAULT NULL COMMENT '开班日期',
  `jiebanrq` varchar(255) DEFAULT NULL COMMENT '结班日期',
  `shengyukc` double(11,2) DEFAULT NULL COMMENT '剩余课次',
  `yucunxfje` double(11,2) DEFAULT NULL COMMENT '余存学费金额',
  `lianxidh` varchar(255) DEFAULT NULL COMMENT '联系电话',
  `zhaoshenggw` varchar(255) DEFAULT NULL COMMENT '招生顾问',
  `zhaoshengly` varchar(255) DEFAULT NULL COMMENT '招生来源',
  `jiuduxx` varchar(255) DEFAULT NULL COMMENT '就读学校',
  `jiuduxxnj` varchar(255) DEFAULT NULL COMMENT '就读学校年级',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xzmxb
-- ----------------------------
INSERT INTO `stjy_xzmxb` VALUES ('1004', '251', '08月', '天河天府路中心', null, 'S20808', '许馨之', '未进班', '未进班', '', null, null, null, '32.00', '3800.00', '18565421353', '王圆圆(主签单人)', '01-老带新', '广州市天河区天府路小学', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('1003', '250', '08月', '天河天府路中心', null, 'S20773', '田珈易', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13450499730', '王圆圆(主签单人)', '10-其他渠道推荐', '广州市天河区吉米幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('1001', '248', '08月', '天河天府路中心', null, 'S20553', '董卓然', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13822119567', '王圆圆(主签单人)', '01-老带新,07-网络咨询', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('1002', '249', '08月', '天河天府路中心', null, 'S20567', '尹浩嘉', '未进班', '未进班', '', null, null, null, '1.00', '48800.00', '13902335866', '翟志翔(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('1000', '247', '08月', '天河天府路中心', null, 'S20552', '梁冠绅', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '18126872779', '王圆圆(主签单人)', '01-老带新', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('999', '246', '08月', '天河天府路中心', null, 'S20551', '梁诗蕴', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '18126872779', '王圆圆(主签单人)', '10-其他渠道推荐,在线报名', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('996', '243', '08月', '天河天府路中心', null, 'S20534', '谢宇博', '未进班', '未进班', '', null, null, null, null, null, '13073019846', null, null, '天河区骏景小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('997', '244', '08月', '天河天府路中心', null, 'S20540', '李柏尧', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '18820090260', '王圆圆(主签单人)', '10-其他渠道推荐', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('998', '245', '08月', '天河天府路中心', null, 'S20541', '程馨逸', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13631335135', '王圆圆(主签单人)', '07-网络咨询', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('995', '242', '08月', '天河天府路中心', null, 'S20532', '刘骏莹', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13902308864', '王圆圆(主签单人)', '02-课题：童话剧', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('994', '241', '08月', '天河天府路中心', null, 'S20531', '谢宇轩', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '13.00', '1527.50', '18520566902', '王圆圆(主签单人)', '01-老带新,在线报名', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('993', '240', '08月', '天河天府路中心', null, 'S20525', '吴昀洲', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13929506663', '王圆圆(主签单人)', '10-其他渠道推荐', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('991', '238', '08月', '天河天府路中心', null, 'S20515', '聂子晗', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13302277181', '王圆圆(主签单人)', '07-网络咨询', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('992', '239', '08月', '天河天府路中心', null, 'S20522', '冼熙桐', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13725138927', '王圆圆(主签单人)', '在线报名', '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('989', '236', '08月', '天河天府路中心', null, 'S20426', '黄子轩', '未进班', '未进班', '', null, null, null, '96.00', '18460.00', '13600089105', '张松煌(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('990', '237', '08月', '天河天府路中心', null, 'S20504', '王语诗5947', '未进班', '未进班', '', null, null, null, '80.00', '10580.00', '13580325947', '王圆圆(主签单人)', '01-老带新', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('988', '235', '08月', '天河天府路中心', null, 'S20410', '丁乐天', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13826437160', '王圆圆(主签单人)', '01-老带新', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('987', '234', '08月', '天河天府路中心', null, 'S20316', '熊睿', '未进班', '未进班', '', null, null, null, '96.00', '18460.00', '17701910809', '陈健霞(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('986', '233', '08月', '天河天府路中心', null, 'S20276', '刘梓超', '未进班', '未进班', '', null, null, null, '96.00', '18460.00', '13302335609', '张松煌(主签单人)', '07-网络咨询', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('985', '232', '08月', '天河天府路中心', null, 'S20244', '郑黄奕', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13826416967', '张松煌(主签单人)', '02-课题：童话剧', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('984', '231', '08月', '天河天府路中心', null, 'S20238', '许嘉智', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '18022372922', '张松煌(主签单人)', '07-网络咨询', '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('983', '230', '08月', '天河天府路中心', null, 'S20204', '肖斐然', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13432014572', '王圆圆(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('982', '229', '08月', '天河天府路中心', null, 'S20202', '刘珊羽', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13430338149', '张松煌(主签单人)', '07-网络咨询', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('980', '227', '08月', '天河天府路中心', null, 'S19972', '张雅馨', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13527788524', '王圆圆(主签单人)', '10-其他渠道推荐', '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('981', '228', '08月', '天河天府路中心', null, 'S20057', '吴卓然', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '13.00', '1527.50', '13602754048', '余洁玲(主签单人)', '01-老带新', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('979', '226', '08月', '天河天府路中心', null, 'S19971', '项如杰', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13560472630', '王圆圆(主签单人)', '10-其他渠道推荐', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('978', '225', '08月', '天河天府路中心', null, 'S19970', '张杰', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13527788524', '王圆圆(主签单人)', '10-其他渠道推荐', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('977', '224', '08月', '天河天府路中心', null, 'S19937', '许嘉妮', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '18922748722', '张松煌(主签单人)', '01-老带新', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('976', '223', '08月', '天河天府路中心', null, 'S19928', '张棉', '未进班', '未进班', '', null, null, null, '1.00', '48800.00', '13903068201', '张松煌(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('975', '222', '08月', '天河天府路中心', null, 'S19927', '周静怡', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '94.00', '18225.00', '13802971860', '张松煌(主签单人)', '03-课题：自然拼音', '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('973', '220', '08月', '天河天府路中心', null, 'S19918', '张锦楠', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '13.00', '1527.50', '13580481373', '翟志翔(主签单人)', '09-教师推荐', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('974', '221', '08月', '天河天府路中心', null, 'S19926', '邓蕾', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '144.00', '0.00', '13922391292', '王圆圆(主签单人)', '03-课题：自然拼音', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('972', '219', '08月', '天河天府路中心', null, 'S19879', '商哲溢', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '18927522577', '王圆圆(主签单人)', '06-上门咨询', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('971', '218', '08月', '天河天府路中心', null, 'S19878', '商哲瑞', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '18927522577', '王圆圆(主签单人)', '06-上门咨询', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('969', '216', '08月', '天河天府路中心', null, 'S19861', '钟佩然', '未进班', '未进班', '', null, null, null, '1.00', '48800.00', '13642636128', '王圆圆(主签单人)', '06-上门咨询', '广州市华颖外国语学校', '初一', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('970', '217', '08月', '天河天府路中心', null, 'S19862', '钟艺荣', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13642636128', '王圆圆(主签单人)', '10-其他渠道推荐', '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('968', '215', '08月', '天河天府路中心', null, 'S19839', '钟思颖', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13826420690', '张松煌(主签单人)', '02-课题：童话剧', '天河区天府路小学（翠湖分校）', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('967', '214', '08月', '天河天府路中心', null, 'S19829', '冼逸晴', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13427584066', '王圆圆(主签单人),翟志翔(副签单人)', '03-课题：自然拼音', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('966', '213', '08月', '天河天府路中心', null, 'S19821', '王语诗4560', '未进班', '未进班', '', null, null, null, '1.00', '48800.00', '13112254560', '王圆圆(主签单人)', '03-课题：自然拼音', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('965', '212', '08月', '天河天府路中心', null, 'S19752', '康恩铭', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13926054860', '王圆圆(主签单人)', '06-上门咨询', '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('963', '210', '08月', '天河天府路中心', null, 'S19504', '邓禹', '未进班', '未进班', '', null, null, null, '240.00', '29800.00', '18925063330', '张松煌(主签单人)', '07-网络咨询', '天河区天府路小学（翠湖分校）', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('964', '211', '08月', '天河天府路中心', null, 'S19524', '林子妍', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '15.00', '1762.50', '18922100301', null, null, '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('961', '208', '08月', '天河天府路中心', null, 'S19470', '吴家诚', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13533099190', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('962', '209', '08月', '天河天府路中心', null, 'S19472', '吴家兆', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13533099190', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('960', '207', '08月', '天河天府路中心', null, 'S19180', 'timmy', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '18588661238', null, null, '东莞市东城朝天实验小学', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('959', '206', '08月', '天河天府路中心', null, 'S19155', '熊峰', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '18925081158', null, null, '广州市天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('958', '205', '08月', '天河天府路中心', null, 'S19122', '赵若菡', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13828420843', null, null, '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('957', '204', '08月', '天河天府路中心', null, 'S19097', '冯钰淑', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '14.00', '1645.00', '13928867265', '王圆圆(主签单人)', '02-课题：童话剧', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('956', '203', '08月', '天河天府路中心', null, 'S18835', '曾子瀚', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '18664866876', null, null, '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('951', '198', '08月', '天河天府路中心', null, 'S18734', '彭星语', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '18688858951', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('952', '199', '08月', '天河天府路中心', null, 'S18745', '肖昕瑶', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13570251087', null, null, '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('953', '200', '08月', '天河天府路中心', null, 'S18804', '陈博源', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13560139305', null, null, '天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('954', '201', '08月', '天河天府路中心', null, 'S18827', '徐宸', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '15914290808', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('955', '202', '08月', '天河天府路中心', null, 'S18834', '王子荞', '未进班', '未进班', '', null, null, null, '1.00', '48800.00', '18666091785', '张松煌(主签单人)', '01-老带新,02-课题：童话剧', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('950', '197', '08月', '天河天府路中心', null, 'S18724', '陆文蓓', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13719299327', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('949', '196', '08月', '天河天府路中心', null, 'S18646', '黄楷邦', '未进班', '未进班', '', null, null, null, '80.00', '16580.00', '13926477498', null, null, '朝阳东幼儿园', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('948', '195', '08月', '天河天府路中心', null, 'S18645', '柯皓天', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '15913164129', null, null, '广州邮电通信设备公司幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('947', '194', '08月', '天河天府路中心', null, 'S18632', '范越好', '未进班', '未进班', '', null, null, null, '1.00', '48800.00', '13570311969', '王圆圆(主签单人)', '02-课题：童话剧,07-网络咨询', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('946', '193', '08月', '天河天府路中心', null, 'S18628', '熊奕宁', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13632404301', null, null, '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('945', '192', '08月', '天河天府路中心', null, 'S18626', '陈铭灏', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13798058415', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('942', '189', '08月', '天河天府路中心', null, 'S18593', '胡逍', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13631346942', null, null, '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('944', '191', '08月', '天河天府路中心', null, 'S18599', '张书瑶4101', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13580554101', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('943', '190', '08月', '天河天府路中心', null, 'S18596', '胡遥', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13631346942', null, null, '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('941', '188', '08月', '天河天府路中心', null, 'S18564', '何思睿', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13929558460', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('939', '186', '08月', '天河天府路中心', null, 'S18407', '陈启', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13726789319', null, null, '天河区天府路小学', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('940', '187', '08月', '天河天府路中心', null, 'S18562', '骆伊洋Dora', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13924227183', null, null, '天河区天府路小学（翠湖分校）', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('936', '183', '08月', '天河天府路中心', null, 'S18232', '杨旖妮', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13922455606', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('938', '185', '08月', '天河天府路中心', null, 'S18358', '刘烔燊', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13828081771', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('937', '184', '08月', '天河天府路中心', null, 'S18271', '陈悦心', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '14.00', '1645.00', '13302255996', '张松煌(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('935', '182', '08月', '天河天府路中心', null, 'S18229', '简耀龙', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13318767909', null, null, '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('934', '181', '08月', '天河天府路中心', null, 'S18175', '李晓语', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13602452352', null, null, '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('933', '180', '08月', '天河天府路中心', null, 'S18156', '蓝添', '未进班', '未进班', '', null, null, null, '96.00', '18460.00', '13924268965', null, null, '广州市番禺区华南碧桂园学校', '五年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('931', '178', '08月', '天河天府路中心', null, 'S17930', '刘赜恺', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '15899957099', '张松煌(主签单人)', '07-网络咨询', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('932', '179', '08月', '天河天府路中心', null, 'S18057', '廖爱跃', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13602488168', '张松煌(主签单人)', '07-网络咨询', '广州市天河区天府路小学', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('930', '177', '08月', '天河天府路中心', null, 'S17907', '江晓潼', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '16.00', '1880.00', '13925098803', null, null, '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('929', '176', '08月', '天河天府路中心', null, 'S17905', '梁文迪', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13824469498', null, null, '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('928', '175', '08月', '天河天府路中心', null, 'S17901', '林也淇', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '13.00', '1527.50', '13660691390', '王圆圆(主签单人)', '03-课题：自然拼音', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('927', '174', '08月', '天河天府路中心', null, 'S17868', '纪博桓', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '13.00', '1527.50', '13380079255', '王圆圆(主签单人)', '03-课题：自然拼音', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('923', '170', '08月', '天河天府路中心', null, 'S17328', '姜卉', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13533065839', null, null, '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('924', '171', '08月', '天河天府路中心', null, 'S17330', '汪宇丰', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '18520664506', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('925', '172', '08月', '天河天府路中心', null, 'S17859', '许雯棋', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13632383973', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('926', '173', '08月', '天河天府路中心', null, 'S17865', '姚俊宏', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13922174670', null, null, '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('922', '169', '08月', '天河天府路中心', null, 'S17326', '林小轩', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '15802016375', null, null, '新蕾幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('921', '168', '08月', '天河天府路中心', null, 'S17323', '林小哲（Austin）', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '15802016375', null, null, '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('920', '167', '08月', '天河天府路中心', null, 'S17318', '朱钰彤', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13826452594', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('919', '166', '08月', '天河天府路中心', null, 'S17314', '肖鑫彤', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '237.00', '24375.00', '13710988399', '王圆圆(主签单人)', '01-老带新', '天河区天府路小学（翠湖分校）', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('918', '165', '08月', '天河天府路中心', null, 'S17311', '姚季芮', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '254.00', '26645.00', '18922260526', '王圆圆(主签单人)', '07-网络咨询', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('917', '164', '08月', '天河天府路中心', null, 'S17309', '冯煦洋', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13660776606', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('916', '163', '08月', '天河天府路中心', null, 'S17302', '胡世程', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '16.00', '1880.00', '13925002550', '王圆圆(主签单人)', '03-课题：自然拼音', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('914', '161', '08月', '天河天府路中心', null, 'S17110', '周梓麒', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '15102069298', null, null, '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('915', '162', '08月', '天河天府路中心', null, 'S17123', '黄思睿', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13926022826', null, null, '广州市天河区华景泽晖幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('912', '159', '08月', '天河天府路中心', null, 'S17042', '李泓泽', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13609002006', null, null, '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('913', '160', '08月', '天河天府路中心', null, 'S17043', '王唯有', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13922257745', null, null, '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('911', '158', '08月', '天河天府路中心', null, 'S17040', '吴祝吉', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13922257745', null, null, '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('910', '157', '08月', '天河天府路中心', null, 'S17035', '戴永航', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '13688880119', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('907', '154', '08月', '天河天府路中心', null, 'S16940', '梁添翔', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '141.00', '0.00', '13610122142', '王圆圆(主签单人)', '06-上门咨询', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('909', '156', '08月', '天河天府路中心', null, 'S17019', '戴裕桐', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13688880119', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('908', '155', '08月', '天河天府路中心', null, 'S17011', '吴志轩', '未进班', '未进班', '', null, null, null, '16.00', '980.00', '18928912032', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('906', '153', '08月', '天河天府路中心', null, 'S16827', '黄祺茜-KIKI', '未进班', '未进班', '', null, null, null, '16.00', '1880.00', '13503017628', null, null, '天河区天府路小学（翠湖分校）', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('905', '152', '08月', '天河天府路中心', null, 'S16821', '邹沐彤', '未进班', '未进班', '', null, null, null, '240.00', '25000.00', '13928866895', '王圆圆(主签单人)', '01-老带新', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('903', '150', '08月', '天河天府路中心', null, 'S16658', '汲春杉', '未进班', '未进班', '', null, null, null, '240.00', '25000.00', '13928893100', '吴彩红(主签单人)', '02-课题：童话剧', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('904', '151', '08月', '天河天府路中心', null, 'S16667', '曾芷睿rayna', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '143.00', '0.00', '13922147018', '张松煌(主签单人)', '03-课题：自然拼音', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('902', '149', '08月', '天河天府路中心', null, 'S16607', '雷鲁健', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '237.00', '24375.00', '13798183155', '王圆圆(主签单人)', '03-课题：自然拼音', '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('900', '147', '08月', '天河天府路中心', null, 'S16590', '崔雯睿', '未进班', '未进班', '', null, null, null, '96.00', '11400.00', '13719056933', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('901', '148', '08月', '天河天府路中心', null, 'S16600', '李冠延', '未进班', '未进班', '', null, null, null, '240.00', '25000.00', '13711288940', null, null, '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('899', '146', '08月', '天河天府路中心', null, 'S16529', '何家坤', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '237.00', '24375.00', '18026380649', '陈燕梅(主签单人)', '03-课题：自然拼音', '天河区天府路小学（翠湖分校）', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('897', '144', '08月', '天河天府路中心', null, 'S16323', '罗鸿铭', '未进班', '未进班', '', null, null, null, null, null, '18620889544', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('898', '145', '08月', '天河天府路中心', null, 'S16415', '杨晨曦', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '237.00', '24375.00', '13922138919', '王圆圆(主签单人)', '08-电话咨询', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('896', '143', '08月', '天河天府路中心', null, 'S15861', '徐俊哲', '未进班', '未进班', '', null, null, null, '288.00', '28316.00', '13640630605', '张松煌(主签单人)', '05-地推', '广州市天河区天府路小学', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('894', '141', '08月', '天河天府路中心', null, 'S15801', '杨雨浠', '未进班', '未进班', '', null, null, null, '240.00', '25000.00', '18665738556', null, null, '广州市越秀区水荫路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('895', '142', '08月', '天河天府路中心', null, 'S15854', '蒋沛霖', '未进班', '未进班', '', null, null, null, '288.00', '28316.00', '15360016840', '王圆圆(主签单人)', '06-上门咨询', '广州市天河区天府路小学', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('893', '140', '08月', '天河天府路中心', null, 'S15713', '张思哲', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13928774047', null, null, '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('892', '139', '08月', '天河天府路中心', null, 'S14734', '张羽瑶', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13600058187', null, null, '广州都市兰亭幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('891', '138', '08月', '天河天府路中心', null, 'S14685', '高梓骞', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13922220087', null, null, '广州邮电通信设备公司幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('888', '135', '08月', '天河天府路中心', null, 'S14355', '毛思羽', '小高部', 'P3AF03G3405', '肖涵颖', '翟志翔', null, null, '46.00', '3177.83', '13602285805', '张松煌(主签单人)', '06-上门咨询', '天河区天府路小学（翠湖分校）', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('889', '136', '08月', '天河天府路中心', null, 'S14517', '列羽芊', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '43.00', '2970.58', '13828434397', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('890', '137', '08月', '天河天府路中心', null, 'S14675', '李梓杰', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '15889391251', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('887', '134', '08月', '天河天府路中心', null, 'S13915', '宾诗琪', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '15989047046', '丁惠媚(主签单人)', '01-老带新', '广州市天河区华景小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('885', '132', '08月', '天河天府路中心', null, 'S13741', '何垚均', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '42.00', '2901.51', '18688471778', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('886', '133', '08月', '天河天府路中心', null, 'S13744', '何柏沅', '未进班', '未进班', '', null, null, null, '101.00', '25960.00', '13070261292', '王圆圆(主签单人)', '06-上门咨询', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('884', '131', '08月', '天河天府路中心', null, 'S13730', '何泳希5668', '未进班', '未进班', '', null, null, null, '21.00', '960.00', '13022055668', null, null, '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('881', '128', '08月', '天河天府路中心', null, 'S13243', '陈熹', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13570263325', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('882', '129', '08月', '天河天府路中心', null, 'S13317', '陈姝含', '小高部', 'P3AF03G3405', '肖涵颖', '翟志翔', null, null, '46.00', '3177.83', '13632496687', '彭永红(主签单人)', '07-网络咨询', '广州市天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('879', '126', '08月', '天河天府路中心', null, 'S13110', '姜昕屹', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13725287618', '张松煌(主签单人)', '', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('883', '130', '08月', '天河天府路中心', null, 'S13320', '魏蔚然', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13926074520', '翟志翔(主签单人)', '01-老带新', '广州市暨南大学附属小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('880', '127', '08月', '天河天府路中心', null, 'S13198', '宋美京', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13922419984', null, null, '东风东路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('878', '125', '08月', '天河天府路中心', null, 'S13103', '万博文', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13922274036', '翟志翔(主签单人)', '', '天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('876', '123', '08月', '天河天府路中心', null, 'S13067', '唐希怡', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13560455525', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('877', '124', '08月', '天河天府路中心', null, 'S13089', '董陈蓓', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13560067893', '郑清芳(主签单人)', '07-网络咨询', '广州大学附属小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('875', '122', '08月', '天河天府路中心', null, 'S13026', '王加泓', '未进班', '未进班', '', null, null, null, '288.00', '28316.00', '13580325947', '傅聪(主签单人)', '07-网络咨询', '广州市天河区天府路小学', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('874', '121', '08月', '天河天府路中心', null, 'S12913', '蔡乐铭', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '45.00', '3108.75', '13826173078', '翟志翔(主签单人)', '', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('873', '120', '08月', '天河天府路中心', null, 'S12911', '王稚尹', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '45.00', '3108.75', '13632336039', '翟志翔(主签单人)', '', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('871', '118', '08月', '天河天府路中心', null, 'S12820', '何雯', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13068821834', '翟志翔(主签单人)', '', '广州市天河区天府路小学', '五年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('872', '119', '08月', '天河天府路中心', null, 'S12910', '龙心宜', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '45.00', '3108.75', '13622289238', '翟志翔(主签单人)', '', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('870', '117', '08月', '天河天府路中心', null, 'S12558', '靳瑞琪', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13302337916', '陈玲(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('869', '116', '08月', '天河天府路中心', null, 'S12550', '李沄天', '小高部', 'P3AF03G3405', '肖涵颖', '翟志翔', null, null, '45.00', '3108.75', '13719199190', '翟志翔(主签单人)', '', '天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('868', '115', '08月', '天河天府路中心', null, 'S12545', '杨梓盈', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '47.00', '3246.92', '18588582151', '翟志翔(主签单人)', '', '天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('867', '114', '08月', '天河天府路中心', null, 'S12495', '陈宇华', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13318838382', null, null, '广州市天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('866', '113', '08月', '天河天府路中心', null, 'S12469', '万语笑', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '18022308486', '吴逸芬(主签单人)', '07-网络咨询', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('865', '112', '08月', '天河天府路中心', null, 'S12467', '杨芷澄', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13450399199', '吴逸芬(主签单人)', '07-网络咨询', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('863', '110', '08月', '天河天府路中心', null, 'S12425', '熊忻仪', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13922453679', '吴逸芬(主签单人)', '07-网络咨询', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('864', '111', '08月', '天河天府路中心', null, 'S12431', '唐茜薇', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13798159371', '翟志翔(主签单人)', '', '天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('862', '109', '08月', '天河天府路中心', null, 'S12380', '张庭语', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13808870314', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('861', '108', '08月', '天河天府路中心', null, 'S12367', '彭芷晴', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '18928861230', '吴逸芬(主签单人)', '07-网络咨询', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('859', '106', '08月', '天河天府路中心', null, 'S12258', '张语彤', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '18680254600', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('860', '107', '08月', '天河天府路中心', null, 'S12366', '金昱谦', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13360008197', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('858', '105', '08月', '天河天府路中心', null, 'S11965', '杨天乐', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '40.00', '2763.33', '13632358827', null, null, '广州市天河区第一实验小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('856', '103', '08月', '天河天府路中心', null, 'S11962', '李梓铖', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '42.00', '2901.50', '13631317878', null, null, '天河区骏景小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('857', '104', '08月', '天河天府路中心', null, 'S11964', '平皓中', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18602015509', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('854', '101', '08月', '天河天府路中心', null, 'S11940', '胡甜慈', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '45.00', '3108.75', '18022899616', '张松煌(主签单人)', '', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('855', '102', '08月', '天河天府路中心', null, 'S11950', '翁语欣', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13580347076', '翟志翔(主签单人)', '', '天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('853', '100', '08月', '天河天府路中心', null, 'S11938', '吴沐欣', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '46.00', '3177.83', '13922257745', '张松煌(主签单人)', '', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('852', '99', '08月', '天河天府路中心', null, 'S11909', '尹梓溢', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '40.00', '2763.33', '13527850817', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('851', '98', '08月', '天河天府路中心', null, 'S11900', '符方涓', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13808841422', '王圆圆(主签单人)', '', '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('850', '97', '08月', '天河天府路中心', null, 'S11883', '陈立言', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18680286506', '张松煌(主签单人)', '06-上门咨询', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('846', '93', '08月', '天河天府路中心', null, 'S11667', '周昱延', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '15920834834', null, null, '未上学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('847', '94', '08月', '天河天府路中心', null, 'S11787', '罗悦宁', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18602031560', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('848', '95', '08月', '天河天府路中心', null, 'S11790', '张梓玥', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18520191828', null, null, '广州市天河区天府路小学', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('849', '96', '08月', '天河天府路中心', null, 'S11798', '邹亦非', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '18926224335', '王圆圆(主签单人)', '', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('845', '92', '08月', '天河天府路中心', null, 'S11665', '潘钰辰', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13922769637', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('844', '91', '08月', '天河天府路中心', null, 'S11664', '张智钦', '未进班', '未进班', '', null, null, null, '32.00', '760.00', '13602828746', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('843', '90', '08月', '天河天府路中心', null, 'S11543', '江益民', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13725105561', '丁惠媚(主签单人)', '01-老带新', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('842', '89', '08月', '天河天府路中心', null, 'S11540', '张芷涵', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '39.00', '2694.25', '13763366493', '翟志翔(主签单人)', '', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('841', '88', '08月', '天河天府路中心', null, 'S11534', '朱晓禾', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18026275252', '丁惠媚(主签单人)', '01-老带新', '广州市天河区天府路小学', '五年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('840', '87', '08月', '天河天府路中心', null, 'S11473', '陈梓豪0326', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13825130326', null, null, '广州市越秀区水荫路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('839', '86', '08月', '天河天府路中心', null, 'S11347', '王岱霖', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '46.00', '3177.83', '13610178910', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('838', '85', '08月', '天河天府路中心', null, 'S11242', '刘安淇', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '45.00', '3108.75', '13822267285', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('837', '84', '08月', '天河天府路中心', null, 'S11238', '李羽涵', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '38.00', '2625.18', '13640217144', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('835', '82', '08月', '天河天府路中心', null, 'S11217', '许雯婷', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '17817317308', null, null, '华阳小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('836', '83', '08月', '天河天府路中心', null, 'S11226', '林子淇', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13427585469', '翟志翔(主签单人)', '', '华阳小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('833', '80', '08月', '天河天府路中心', null, 'S11143', '林馨语', '未进班', '未进班', '', null, null, null, '32.00', '760.00', '13609085038', '郑清荣(主签单人)', '', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('834', '81', '08月', '天河天府路中心', null, 'S11147', '陈明宇', '未进班', '未进班', '', null, null, null, '32.00', '760.00', '15919305340', '郑清荣(主签单人)', '', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('832', '79', '08月', '天河天府路中心', null, 'S11137', '杨熙峻', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13710589432', '张松煌(主签单人)', '', '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('831', '78', '08月', '天河天府路中心', null, 'S11104', '黄鸿亮', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '38.00', '2625.17', '13660538977', null, null, '广州市天河区旭景小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('829', '76', '08月', '天河天府路中心', null, 'S11059', '黄元星', '未进班', '未进班', '', null, null, null, '32.00', '760.00', '13711669179', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('830', '77', '08月', '天河天府路中心', null, 'S11084', '邱堉庄', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13650896618', '张松煌(主签单人)', '', '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('828', '75', '08月', '天河天府路中心', null, 'S11046', '张奇钰', '未进班', '未进班', '', null, null, null, '32.00', '760.00', '13580347594', '翟志翔(主签单人)', '', '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('827', '74', '08月', '天河天府路中心', null, 'S11036', '黄芷琳0305', '未进班', '未进班', '', null, null, null, '32.00', '760.00', '13560250305', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('823', '70', '08月', '天河天府路中心', null, 'S10936', '詹以峤', '未进班', '未进班', '', null, null, null, null, null, '18620807692', null, null, '', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('824', '71', '08月', '天河天府路中心', null, 'S10980', '林昕睿', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18998298281', '王圆圆(主签单人)', '', '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('825', '72', '08月', '天河天府路中心', null, 'S11022', '吴奕帆', '未进班', '未进班', '', null, null, null, '32.00', '760.00', '13312836220', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('826', '73', '08月', '天河天府路中心', null, 'S11028', '郑煜坤', '未进班', '未进班', '', null, null, null, '32.00', '760.00', '13710392726', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('822', '69', '08月', '天河天府路中心', null, 'S10907', '梁钰', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18122202254', '王圆圆(主签单人)', '', '天河区石牌小学', '五年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('821', '68', '08月', '天河天府路中心', null, 'S10889', '李烨铭', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13148948648', '王圆圆(主签单人)', '预约试听', '天河区棠下小学', '五年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('820', '67', '08月', '天河天府路中心', null, 'S10868', '彭羽菲', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13824432012', '丁惠媚(主签单人)', '03-课题：自然拼音', '天河区天府路小学', '一年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('819', '66', '08月', '天河天府路中心', null, 'S10853', '彭云翼', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '45.00', '3108.75', '13824432012', '丁惠媚(主签单人)', '03-课题：自然拼音', '天河区天府路小学', '小班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('817', '64', '08月', '天河天府路中心', null, 'S10783', '李宣霖', '未进班', '未进班', '', null, null, null, '240.00', '25000.00', '18620830552', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('818', '65', '08月', '天河天府路中心', null, 'S10823', '王梓淇（1）', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '47.00', '3246.92', '18588508133', '郑清芳(主签单人)', '', '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('816', '63', '08月', '天河天府路中心', null, 'S10776', '李欣遥', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18620830552', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('813', '60', '08月', '天河天府路中心', null, 'S10725', '张驰', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13825091202', '王圆圆(主签单人)', '', '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('814', '61', '08月', '天河天府路中心', null, 'S10745', '黎倞', '未进班', '未进班', '', null, null, null, '32.00', '760.00', '18100203550', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('815', '62', '08月', '天河天府路中心', null, 'S10759', '李澜昕', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '15975413984', null, null, '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('812', '59', '08月', '天河天府路中心', null, 'S10708', '张曌仪', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18903005813', '翟志翔(主签单人)', '', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('811', '58', '08月', '天河天府路中心', null, 'S10636', '杨一言', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18688908150', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('808', '55', '08月', '天河天府路中心', null, 'S10414', '詹靖轩', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13925092000', '林巧珍(主签单人)', '', '东华幼儿园', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('809', '56', '08月', '天河天府路中心', null, 'S10555', '邓亦舟', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18926224535', null, null, '广州市天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('810', '57', '08月', '天河天府路中心', null, 'S10626', '杨一诺', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '18688908150', null, null, '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('807', '54', '08月', '天河天府路中心', null, 'S10408', '谢语墨', '未进班', '未进班', '', null, null, null, '32.00', '960.00', '13632190143', null, null, '东华幼儿园', '中班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('806', '53', '08月', '天河天府路中心', null, 'S10390', '詹靖宇', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13925092000', '陈健霞(主签单人)', '03-课题：自然拼音', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('805', '52', '08月', '天河天府路中心', null, 'S10222', '李乐天', '未进班', '未进班', '', null, null, null, '48.00', '3316.00', '13556007650', '翟志翔(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('804', '51', '08月', '天河天府路中心', null, 'S09879', '黄映衡', '未进班', '未进班', '', null, null, null, '32.00', '1200.00', '13560016636', null, null, '广州市天河区天府路小学', '大班', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('803', '50', '08月', '天河天府路中心', null, 'S09613', '生艾霖', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '231.00', '23125.00', '13392681558', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('802', '49', '08月', '天河天府路中心', null, 'S09478', '易其乐', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '233.00', '23541.67', '13822188180', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('801', '48', '08月', '天河天府路中心', null, 'S09326', '王子涵（1）', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '141.00', '0.00', '15011912587', '陈健霞(主签单人)', '01-老带新', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('800', '47', '08月', '天河天府路中心', null, 'S09325', '朱彦坤', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '142.00', '0.00', '13527820131', '陈健霞(主签单人)', '10-其他渠道推荐', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('799', '46', '08月', '天河天府路中心', null, 'S09315', '蔡君昊', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '141.00', '0.00', '13603016366', '陈健霞(主签单人)', '01-老带新', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('798', '45', '08月', '天河天府路中心', null, 'S09309', '邱朔晴', '小初部', 'P1AF01G1207', '吴彩红', '翟志翔', null, null, '144.00', '0.00', '18922734146', '陈健霞(主签单人)', '10-其他渠道推荐', '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('797', '44', '08月', '天河天府路中心', null, 'S09204', '朱诗淇', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '134.00', '16812.67', '13725200569', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('796', '43', '08月', '天河天府路中心', null, 'S09203', '钟华华', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '118.00', '16812.67', '13824424796', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('795', '42', '08月', '天河天府路中心', null, 'S09202', '闾家熙', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '134.00', '16812.67', '13570201921', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('793', '40', '08月', '天河天府路中心', null, 'S09056', '周子澄', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '99.00', '17843.31', '13926468975', null, null, '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('794', '41', '08月', '天河天府路中心', null, 'S09199', '曾子希', '小高部', 'P3AF03G3405', '肖涵颖', '翟志翔', null, null, '99.00', '19656.25', '13631499742', '张松煌(主签单人)', '06-上门咨询', '天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('792', '39', '08月', '天河天府路中心', null, 'S09055', '钟雨桐', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '98.00', '17658.32', '18898605866', null, null, '天河区天府路小学（翠湖分校）', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('791', '38', '08月', '天河天府路中心', null, 'S09054', '张文一', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '99.00', '17843.31', '13302336626', null, null, '天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('790', '37', '08月', '天河天府路中心', null, 'S09053', '姚怡然', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '219.00', '21038.31', '13826485248', '朱晓佳(主签单人)', '01-老带新', '天府路小学翠湖校区', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('789', '36', '08月', '天河天府路中心', null, 'S09052', '吴欣诺', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '89.00', '16069.39', '13632353832', null, null, '天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('788', '35', '08月', '天河天府路中心', null, 'S09051', '温静远', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '125.00', '-0.46', '13922106580', null, null, '天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('787', '34', '08月', '天河天府路中心', null, 'S09050', '王子骅', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '96.00', '22176.00', '13302291816', null, null, '天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('784', '31', '08月', '天河天府路中心', null, 'S09046', '陆子叶', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '92.00', '17292.63', '13632453211', null, null, '天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('785', '32', '08月', '天河天府路中心', null, 'S09047', '潘浩智', '小初部', 'P02F01G0106', '翟志翔', '陈美全', null, null, '89.00', '18512.00', '13640768911', null, null, '天府路分校', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('786', '33', '08月', '天河天府路中心', null, 'S09049', '苏兴承', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '89.00', '16069.38', '13922229923', null, null, '天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('783', '30', '08月', '天河天府路中心', null, 'S09045', '陆鸣飞', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '104.00', '22008.88', '13609726477', null, null, '祈福新邨小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('782', '29', '08月', '天河天府路中心', null, 'S09044', '柳皓轩', '小高部', 'P3AF03G3405', '肖涵颖', '翟志翔', null, null, '64.00', '13264.00', '13560322898', null, null, '天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('780', '27', '08月', '天河天府路中心', null, 'S09042', '刘芷睿', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '105.00', '22219.97', '18665651008', '朱晓佳(主签单人)', '01-老带新', '天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('781', '28', '08月', '天河天府路中心', null, 'S09043', '刘芷妤', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '89.00', '16069.39', '13501518927', null, null, '天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('779', '26', '08月', '天河天府路中心', null, 'S09040', '梁希', '小高部', 'P3AF03G3405', '肖涵颖', '翟志翔', null, null, '87.00', '15708.27', '13556198719', '朱晓佳(主签单人)', '03-课题：自然拼音', '天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('778', '25', '08月', '天河天府路中心', null, 'S09039', '梁泓楠', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '229.00', '22894.79', '13418072142', null, null, '天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('777', '24', '08月', '天河天府路中心', null, 'S09038', '李紫嫣', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '92.00', '17292.64', '18520121305', null, null, '天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('776', '23', '08月', '天河天府路中心', null, 'S09037', '李雅希', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '224.00', '21684.00', '13533545832', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('775', '22', '08月', '天河天府路中心', null, 'S09036', '李佩儿', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '3.00', '1196.25', '13527882123', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('774', '21', '08月', '天河天府路中心', null, 'S09035', '黎政鑫', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '218.00', '20912.71', '13640846060', null, null, '天河区天府路小学（翠湖分校）', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('773', '20', '08月', '天河天府路中心', null, 'S09034', '劳隽熙', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '100.00', '18019.43', '13922166899', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('771', '18', '08月', '天河天府路中心', null, 'S09032', '黄泽蕊', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '230.00', '23050.20', '13802548976', '朱晓佳(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('772', '19', '08月', '天河天府路中心', null, 'S09033', '黄梓峰', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '95.00', '17079.53', '13560016636', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('770', '17', '08月', '天河天府路中心', null, 'S09031', '黄玮婷', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '90.00', '16249.95', '18928895338', '朱晓佳(主签单人)', '01-老带新', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('769', '16', '08月', '天河天府路中心', null, 'S09030', '侯宸卓', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '219.00', '22827.88', '13802536119', '朱晓佳(主签单人)', '03-课题：自然拼音', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('768', '15', '08月', '天河天府路中心', null, 'S09029', '侯宸越', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '220.00', '21415.24', '13802536119', '朱晓佳(主签单人)', '01-老带新', '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('767', '14', '08月', '天河天府路中心', null, 'S09028', '郭梓聪', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '87.00', '15708.27', '13502447171', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('766', '13', '08月', '天河天府路中心', null, 'S09027', '龚子寅', '小初部', 'P1AF02G0203', '翟志翔', '郑琴', null, null, '100.00', '18023.86', '13829759394', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('765', '12', '08月', '天河天府路中心', null, 'S09026', '陈锵铭', '小高部', 'P3AF03G3405', '肖涵颖', '翟志翔', null, null, '18.00', '0.00', '13802520060', null, null, '广州市天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('764', '11', '08月', '天河天府路中心', null, 'S09025', '陈可馨8669', '小初部', 'P1AF02G0201', '翟志翔', '陈美全', null, null, '100.00', '18023.55', '15622218669', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('763', '10', '08月', '天河天府路中心', null, 'S07733', '林承熙', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '98.00', '17663.07', '13922386115', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('762', '9', '08月', '天河天府路中心', null, 'S07715', '钟子锟', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '98.00', '17663.11', '18929593969', null, null, '广州市天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('761', '8', '08月', '天河天府路中心', null, 'S07495', '邓汇子', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '89.00', '15573.51', '13560478460', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('760', '7', '08月', '天河天府路中心', null, 'S07379', '杨钶犇', '小初部', 'P1AF02G0202', '翟志翔', '郑琴', null, null, '87.00', '15222.77', '13794367768', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('759', '6', '08月', '天河天府路中心', null, 'S07377', '谢宇侨', '未进班', '未进班', '', null, null, null, null, null, '13500000969', null, null, '天河区天府路小学', '二年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('757', '4', '08月', '天河天府路中心', null, 'S01622', '邱刘哲', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '19.00', '3269.98', '18620916361', null, null, '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('758', '5', '08月', '天河天府路中心', null, 'S01699', '曾砚斐', '小高部', 'P3AF03G3405', '肖涵颖', '翟志翔', null, null, '29.00', '0.00', '18818859966', null, null, '天河区天府路小学', '四年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('756', '3', '08月', '天河天府路中心', null, 'S01616', '彭希扬', '小初部', 'P1BF03G2304', '吴彩红', '翟志翔', null, null, '20.00', '3443.79', '18620488133', null, null, '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('754', '1', '08月', '天河天府路中心', null, 'S01521', '杜航宇', '未进班', '未进班', '', null, null, null, null, null, '18988800659', null, null, '天河区天府路小学', '三年级', '28', '2017-09-05 15:21:58');
INSERT INTO `stjy_xzmxb` VALUES ('755', '2', '08月', '天河天府路中心', null, 'S01612', '潘子颀', '未进班', '未进班', '', null, null, null, null, null, '18588861991', null, null, '天河区天府路小学', '五年级', '28', '2017-09-05 15:21:58');

-- ----------------------------
-- Table structure for stjy_zcxsxqztb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_zcxsxqztb`;
CREATE TABLE `stjy_zcxsxqztb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nianji` varchar(255) DEFAULT NULL COMMENT '年级',
  `zongrenshu` int(11) DEFAULT NULL COMMENT '总人数',
  `weijinban` int(11) DEFAULT NULL COMMENT '未进班',
  `yubaoming` int(11) DEFAULT NULL COMMENT '预报名',
  `tingduyjkfx` int(11) DEFAULT NULL COMMENT '停读(预计可复学)',
  `tingduyjbkfx` int(11) DEFAULT NULL COMMENT '停读(预计不可复学已结算续费)',
  `shijizbrs` int(11) DEFAULT NULL COMMENT '实际在班人数',
  `k01` int(11) DEFAULT NULL COMMENT 'K01',
  `k02` int(11) DEFAULT NULL COMMENT 'K02',
  `k03` int(11) DEFAULT NULL COMMENT 'K03',
  `k04` int(11) DEFAULT NULL COMMENT 'K04',
  `k05` int(11) DEFAULT NULL COMMENT 'K05',
  `k06` int(11) DEFAULT NULL COMMENT 'K06',
  `p01` int(11) DEFAULT NULL COMMENT 'P01',
  `p02` int(11) DEFAULT NULL COMMENT 'P02',
  `p03` int(11) DEFAULT NULL COMMENT 'P03',
  `p1a` int(11) DEFAULT NULL COMMENT 'P1A',
  `p1b` int(11) DEFAULT NULL COMMENT 'P1B',
  `p2a` int(11) DEFAULT NULL COMMENT 'P2A',
  `p2b` int(11) DEFAULT NULL COMMENT 'P2B',
  `p3a` int(11) DEFAULT NULL COMMENT 'P3A',
  `p3b` int(11) DEFAULT NULL COMMENT 'P3B',
  `p4a` int(11) DEFAULT NULL COMMENT 'P4A',
  `p4b` int(11) DEFAULT NULL COMMENT 'P4B',
  `p5a` int(11) DEFAULT NULL COMMENT 'P5A',
  `p5b` int(11) DEFAULT NULL COMMENT 'P5B',
  `p6a` int(11) DEFAULT NULL COMMENT 'P6A',
  `p6b` int(11) DEFAULT NULL COMMENT 'P6B',
  `j1a` int(11) DEFAULT NULL COMMENT 'J1A',
  `j1b` int(11) DEFAULT NULL COMMENT 'J1B',
  `j2a` int(11) DEFAULT NULL COMMENT 'J2A',
  `j2b` int(11) DEFAULT NULL COMMENT 'J2B',
  `j3a` int(11) DEFAULT NULL COMMENT 'J3A',
  `j3b` int(11) DEFAULT NULL COMMENT 'J3B',
  `yiduiyi` int(11) DEFAULT NULL COMMENT '一对一',
  `ns1` int(11) DEFAULT NULL COMMENT 'NS1',
  `suoshudd` int(11) DEFAULT NULL COMMENT '所属订单',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_zcxsxqztb
-- ----------------------------
INSERT INTO `stjy_zcxsxqztb` VALUES ('44', '合计', '251', '164', null, null, null, '87', null, null, null, null, null, null, null, '11', null, '54', '14', null, null, '8', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('43', '初二以上', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('42', '初二', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('40', '六年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('41', '初一', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('39', '五年级', '6', '6', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('37', '三年级', '53', '28', null, null, null, '25', null, null, null, null, null, null, null, '1', null, '15', '9', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('38', '四年级', '19', '11', null, null, null, '8', null, null, null, null, null, null, null, null, null, '1', null, null, null, '7', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('36', '二年级', '83', '34', null, null, null, '49', null, null, null, null, null, null, null, '10', null, '34', '4', null, null, '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('35', '一年级', '10', '10', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');
INSERT INTO `stjy_zcxsxqztb` VALUES ('34', '幼儿园', '79', '74', null, null, null, '5', null, null, null, null, null, null, null, null, null, '4', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '30', '2017-09-05 15:22:00');

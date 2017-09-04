/*
Navicat MySQL Data Transfer

Source Server         : mydb
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : stjy

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-09-04 15:40:20
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
INSERT INTO `stjy_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', '', '1,2,3', '1504508844', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('2', 'meimei', 'e962c96829241f53c3d68a67f80c4eb7', '梅梅', 'meimei@163.com', '1,2,4', '1504509810', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('3', 'maomao', 'e2145387bcc7842edef4ccecc34b7da4', 'maomao', 'maomao', '2,3', '1501780416', '127.0.0.1', '1');
INSERT INTO `stjy_admin` VALUES ('4', 'caiwu', 'f5b5ec699ed736de89336fbce0bc9890', '财务', 'caiwu@caiwu.com', '1,2,3,4', '1504510569', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('5', 'exlee', 'e10adc3949ba59abbe56e057f20f883e', '行政经理', 'exlee@stjy.com', '1,2,3,4,5', '1504510672', '127.0.0.1', '0');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COMMENT='班级编号表';

-- ----------------------------
-- Records of stjy_banjibianhao
-- ----------------------------
INSERT INTO `stjy_banjibianhao` VALUES ('2', 'K01', null, 'KGF', null, null, 'T', 'XD', '01', '幼儿部', '小班', 'K01KGFTXD01', 'kitty goes fishing（小猫钓鱼）', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('3', 'K02', null, '000', null, null, 'G', '0X', '02', '幼儿部', '小班', 'K02000G0X02', null, '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('4', 'K03', null, 'ADP', null, null, 'T', 'ZD', '03', '幼儿部', '中班', 'K03ADPTZD03', 'a Dirty Pig《小脏猪》', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('5', 'K04', null, 'CAB', null, null, 'G', '0Z', '04', '幼儿部', '中班', 'K04CABG0Z04', 'The Cat and the Bell《猫和铃铛》', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('6', 'K05', null, 'WAR', null, null, 'T', '0D', '05', '幼儿部', '大班', 'K05WART0D05', 'The Wolf and the Rabbits《大灰狼与兔子们》', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('7', 'K06', null, 'TLP', null, null, 'G', 'XZ', '06', '幼儿部', '大班', 'K06TLPGXZ06', 'Three Little Pigs《三只小猪》', '幼儿部');
INSERT INTO `stjy_banjibianhao` VALUES ('8', 'P01', null, 'K12', 'K34', 'K56', 'T', '12', '07', '小初部', '一年级', 'P01K12T1207', '故事一期 New Phonics for kids 1课本 原版', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('9', 'P02', null, 'K34', 'K12', 'K56', 'G', '12', '08', '小初部', '一年级', 'P02K34G1208', '故事二期', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('10', 'P03', null, 'K56', 'K12', 'K34', 'T', '12', '09', '小初部', '一年级', 'P03K56T1209', '故事三期', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('11', 'P1A', null, 'F01', null, null, 'G', '23', '10', '小初部', '二年级', 'P1AF01G2310', 'Phonics fun 1课本 原版', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('12', 'P1B', null, 'F02', null, null, 'T', '12', '11', '小初部', '二年级', 'P1BF02T1211', 'Phonics fun 2课本 原版', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('13', 'P2A', null, 'F03', null, null, 'G', '12', '12', '小初部', '二年级', 'P2AF03G1212', 'Phonics fun 3课本 原版', '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('14', 'P2B', null, 'F04', null, null, 'T', '34', '13', '小高部', '三年级', 'P2BF04T3413', 'Phonics fun 4课本 原版', '小高部');
INSERT INTO `stjy_banjibianhao` VALUES ('15', 'P3A', null, 'F05', null, null, 'G', '34', '14', '小高部', '三年级', 'P3AF05G3414', 'Phonics fun 5课本 原版', '小高部');
INSERT INTO `stjy_banjibianhao` VALUES ('16', 'P3B', null, 'F06', null, null, 'T', '34', '15', '小高部', '三年级', 'P3BF06T3415', 'Phonics fun 6课本 原版；bright readers 3 上册(A)', '小高部');
INSERT INTO `stjy_banjibianhao` VALUES ('17', 'P4A', null, 'BR3', null, null, 'G', '34', '16', '小高部', '四年级', 'P4ABR3G3416', 'bright readers 3 下册(B) ；X计划5', '小高部');
INSERT INTO `stjy_banjibianhao` VALUES ('18', 'P4B', null, 'BR4', null, null, 'T', '45', '17', '小高部', '四年级', 'P4BBR4T4517', 'bright readers 4 下册(A) ；X计划6', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('19', 'P5A', null, 'BR4', null, null, 'G', '34', '18', '初中部', '四年级', 'P5ABR4G3418', 'bright readers 4 下册(B) ；X计划7', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('20', 'P5B', null, 'BR5', null, null, 'T', '05', '19', '初中部', '五年级', 'P5BBR5T0519', 'bright readers 5 下册(A) ；X计划8', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('21', 'P6A', null, 'BR5', null, null, 'G', '56', '20', '初中部', '五年级', 'P6ABR5G5620', 'bright readers 5 下册(B) ；X计划9（夏季班）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('22', 'P6A', null, 'BR6', null, null, 'T', '05', '21', '初中部', '五年级', 'P6ABR6T0521', 'bright readers 6 下册(A) ；X计划10（秋季班）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('23', 'P6B', null, 'BR6', null, null, 'G', '56', '22', '初中部', '五年级', 'P6BBR6G5622', 'bright readers 6 下册(B) ；小升初冲刺', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('24', 'J1A', null, 'SR3', null, null, 'T', '56', '23', '初中部', '六年级', 'J1ASR3T5623', '新课标百科丛书3（1-7）  secondary readers', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('25', 'J1B', null, 'SR3', null, null, 'G', '56', '24', '初中部', '六年级', 'J1BSR3G5624', '新课标百科丛书3（8-14）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('26', 'J2A', null, 'SR5', 'SR7', null, 'T', '06', '25', '初中部', '初一', 'J2ASR5T0625', '新课标百科丛书5（1-7）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('27', 'J2B', null, 'SR5', 'SR7', null, 'G', '67', '26', '初中部', '初一', 'J2BSR5G6726', '新课标百科丛书5（8-14）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('28', 'J3A', null, 'SR7', 'SR9', null, 'T', '78', '27', '初中部', '初二', 'J3ASR7T7827', '新课标百科丛书7（1-7）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('29', 'J3B', null, 'SR7', 'SR9', null, 'G', '78', '28', '初中部', '初二', 'J3BSR7G7828', '新课标百科丛书7（8-14）', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('30', 'NS1', null, 'SR9', null, null, 'T', '09', '29', '初中部', '初三', 'NS1SR9T0929', '1-4单元', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('31', 'NS2', null, 'SR9', null, null, 'G', '89', '30', '初中部', '初三', 'NS2SR9G8930', '5-8单元', '初中部');
INSERT INTO `stjy_banjibianhao` VALUES ('32', 'SWN', null, null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO `stjy_banjibianhao` VALUES ('33', 'S1B', null, null, null, null, null, '01', '01', '小初部', '二年级', null, null, '小初部');
INSERT INTO `stjy_banjibianhao` VALUES ('34', 'S2B', null, null, null, null, null, '02', null, '小高部', '三年级', null, null, '小高部');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_bjxxb
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_bjxyxxb
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_kbmxb
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_kxmxb
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_qishu_history
-- ----------------------------

-- ----------------------------
-- Table structure for stjy_renshi
-- ----------------------------
DROP TABLE IF EXISTS `stjy_renshi`;
CREATE TABLE `stjy_renshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xingming` varchar(255) DEFAULT NULL COMMENT '姓名',
  `leixing` int(11) DEFAULT NULL COMMENT '类型:1,试用;2,正式;3,停薪留职;',
  `gangweilx` tinyint(1) DEFAULT NULL COMMENT '岗位类型:1,全职;2,兼职;',
  `quyu` varchar(255) DEFAULT NULL,
  `sid` int(11) DEFAULT NULL COMMENT '校区id',
  `yuangongbh` varchar(255) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL COMMENT '部门id:1,市场部;2,行政部;3,教学部;',
  `gid2` int(11) DEFAULT NULL COMMENT '第二部门id',
  `zhiwu` int(11) DEFAULT NULL COMMENT '职务:1,教师;2,外教;3,行政;4,行政经理;5,财务总监;6,总经理助理;7,副总经理;8,总经理;9,董事长;',
  `xingbie` tinyint(1) DEFAULT NULL COMMENT '性别:1,男;2,女;',
  `chushengrq` varchar(255) DEFAULT NULL COMMENT '出生日期',
  `hunfou` tinyint(4) DEFAULT NULL COMMENT '婚否:1,已婚;2,未婚;',
  `shengyuzh` tinyint(4) DEFAULT NULL COMMENT '生育状况:1,是;2,否;',
  `hukouxz` tinyint(4) DEFAULT NULL COMMENT '户口性质:1,外地农业户口;2,外地非农业户口;3,本地农业户口;4:本地非农业户口;',
  `gongzuoszd` varchar(255) DEFAULT NULL,
  `lianxidh` varchar(255) DEFAULT NULL,
  `tongxunsheng` varchar(255) DEFAULT NULL,
  `tongxunshi` varchar(255) DEFAULT NULL,
  `tongxunqu` varchar(255) DEFAULT NULL,
  `tongxundz` varchar(255) DEFAULT NULL,
  `hukouszd` varchar(255) DEFAULT NULL,
  `youxiang` varchar(255) DEFAULT NULL,
  `chuanyicc` varchar(255) DEFAULT NULL,
  `shengao` double(11,2) DEFAULT NULL,
  `tizhong` double(11,2) DEFAULT NULL,
  `diyixl` int(11) DEFAULT NULL,
  `diyixlyx` varchar(255) DEFAULT NULL,
  `diyixlzy` varchar(255) DEFAULT NULL,
  `diyixlbysj` varchar(255) DEFAULT NULL,
  `zuigaoxl` int(11) DEFAULT NULL,
  `zuigaoxlyx` varchar(255) DEFAULT NULL,
  `zuigaoxlzy` varchar(255) DEFAULT NULL,
  `zuigaoxlbysj` varchar(255) DEFAULT NULL,
  `zigezs` varchar(255) DEFAULT NULL,
  `ruzhirq` varchar(255) DEFAULT NULL,
  `hetongkssj` varchar(255) DEFAULT NULL,
  `hetongdqsj` varchar(255) DEFAULT NULL,
  `hetongqdgs` varchar(255) DEFAULT NULL,
  `shebaogmgs` varchar(255) DEFAULT NULL,
  `hujisheng` varchar(255) DEFAULT NULL,
  `hujishi` varchar(255) DEFAULT NULL,
  `hujiqu` varchar(255) DEFAULT NULL,
  `hujidz` varchar(255) DEFAULT NULL,
  `pinyongqd` int(11) DEFAULT NULL,
  `gongjijgmgs` varchar(255) DEFAULT NULL,
  `jinjilxr` varchar(255) DEFAULT NULL,
  `guanxi` varchar(255) DEFAULT NULL,
  `jinjilxrdh` varchar(255) DEFAULT NULL,
  `shebaohao` varchar(255) DEFAULT NULL,
  `xingyeyhkkh` varchar(255) DEFAULT NULL,
  `qitayhkkh` varchar(255) DEFAULT NULL,
  `shifouydbr` tinyint(4) DEFAULT NULL,
  `danbaorxm` varchar(255) DEFAULT NULL,
  `danbaordh` varchar(255) DEFAULT NULL,
  `danbaorsfzh` varchar(255) DEFAULT NULL,
  `huzhaohm` varchar(255) DEFAULT NULL,
  `huzhaoyxq` varchar(255) DEFAULT NULL,
  `chiyouqzlx` int(255) DEFAULT NULL,
  `qianzhengyxq` varchar(255) DEFAULT NULL,
  `guoji` varchar(255) DEFAULT NULL,
  `beizhu` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_renshi
-- ----------------------------

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
INSERT INTO `stjy_role_user` VALUES ('1', '1');
INSERT INTO `stjy_role_user` VALUES ('2', '3');
INSERT INTO `stjy_role_user` VALUES ('2', '2');
INSERT INTO `stjy_role_user` VALUES ('4', '4');
INSERT INTO `stjy_role_user` VALUES ('5', '6');
INSERT INTO `stjy_role_user` VALUES ('3', '5');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_scyjb
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_sczylb
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_sjjlb
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xxkedb
-- ----------------------------
INSERT INTO `stjy_xxkedb` VALUES ('7', '1', 'A类', '华景', '2017-07-01', '朱晓佳', '42451', '正式期', '0.00', '0.00', '0.00', '0.00', '否', '35', '2017-08-31 15:38:19');
INSERT INTO `stjy_xxkedb` VALUES ('8', '2', 'A类', '华景', '2017-07-01', '张松煌', '42791', '试用期', '0.00', '10.00', '10000.00', '75000.00', '', '35', '2017-08-31 15:38:19');
INSERT INTO `stjy_xxkedb` VALUES ('9', '3', 'A类', '华景', '2017-07-01', '翟志翔', '42748', '正式期', '50.00', '0.00', '50000.00', '240000.00', '否', '35', '2017-08-31 15:38:19');
INSERT INTO `stjy_xxkedb` VALUES ('10', '4', 'A类', '华景', '2017-07-01', '王圆圆', '42825', '试用期', '40.00', '10.00', '50000.00', '275000.00', '', '35', '2017-08-31 15:38:19');
INSERT INTO `stjy_xxkedb` VALUES ('11', '5', 'A类', '华景', '2017-07-01', '彭永红', '42217', '正式期', '30.00', '0.00', '30000.00', '120000.00', '否', '35', '2017-08-31 15:38:19');
INSERT INTO `stjy_xxkedb` VALUES ('12', '6', 'A类', '华景', '2017-07-01', '吴彩红', '2017-04-08', '试用期', '10.00', null, '10000.00', '75000.00', '', '35', '2017-08-31 15:38:19');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xyfyyjb
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=1484 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xyxxb
-- ----------------------------

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xzmxb
-- ----------------------------

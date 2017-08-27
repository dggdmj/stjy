/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : stjy

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-08-27 16:29:42
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
INSERT INTO `stjy_access` VALUES ('2', '5', '1', null);
INSERT INTO `stjy_access` VALUES ('2', '12', '2', null);
INSERT INTO `stjy_access` VALUES ('2', '14', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '15', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '16', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '17', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '18', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '28', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '30', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '35', '2', null);
INSERT INTO `stjy_access` VALUES ('2', '36', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '37', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '38', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '39', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '40', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '41', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '42', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '43', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '53', '3', null);
INSERT INTO `stjy_access` VALUES ('2', '54', '3', null);
INSERT INTO `stjy_access` VALUES ('4', '5', '1', null);
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
INSERT INTO `stjy_access` VALUES ('3', '5', '1', null);
INSERT INTO `stjy_access` VALUES ('3', '12', '2', null);
INSERT INTO `stjy_access` VALUES ('3', '14', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '15', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '16', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '17', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '18', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '28', '3', null);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of stjy_admin
-- ----------------------------
INSERT INTO `stjy_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', '', '1,2,3', '1503820127', '0.0.0.0', '0');
INSERT INTO `stjy_admin` VALUES ('2', 'meimei', 'e962c96829241f53c3d68a67f80c4eb7', '梅梅', 'meimei@163.com', '1,2,4', '1503629995', '0.0.0.0', '0');
INSERT INTO `stjy_admin` VALUES ('3', 'maomao', 'e2145387bcc7842edef4ccecc34b7da4', 'maomao', 'maomao', '2,3', '1501780416', '127.0.0.1', '1');
INSERT INTO `stjy_admin` VALUES ('4', 'caiwu', 'f5b5ec699ed736de89336fbce0bc9890', '财务', 'caiwu@caiwu.com', '1,2,3', '1502876005', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('5', 'exlee', 'e10adc3949ba59abbe56e057f20f883e', '行政经理', 'exlee@stjy.com', '1,2,3,4', '1503822069', '0.0.0.0', '0');

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
-- Table structure for stjy_bjxxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_bjxxb`;
CREATE TABLE `stjy_bjxxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `banjimc` varchar(255) DEFAULT NULL COMMENT '班级名称',
  `xiaoqumc` varchar(255) DEFAULT NULL COMMENT '校区名称',
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
) ENGINE=MyISAM AUTO_INCREMENT=214 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_bjxxb
-- ----------------------------
INSERT INTO `stjy_bjxxb` VALUES ('198', 'P1AF02G0203', '天河天府路中心', '翟志翔,郑琴,Zoe', '翟志翔', 'class03', '42910', '', '43022.375', '43645', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '8.00', '66.7%', '17.00', '次', '16.00', '1.00', null, '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('197', 'P1AF02G0202', '天河天府路中心', '翟志翔,Richar,郑琴', '翟志翔', 'class03', '42908', '', '43020.645833333', '43267', '周四15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '10.00', '83.3%', '17.00', '次', '16.00', '1.00', null, '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('196', 'P1AF02G0201', '天河天府路中心', '翟志翔,Richar,陈美全', '翟志翔', 'class03', '42905', '', '43017.645833333', '44370', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '9.00', '75.0%', '17.00', '次', '16.00', '1.00', null, '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('195', 'P02F01G0106', '天河天府路中心', '翟志翔,Zoe,陈美全', '翟志翔', 'class02', '42868', '', '42973.375', '43174', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '15.00', '10.00', '66.7%', '16.00', '次', '15.00', '7.00', null, '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('194', '游学会员', '天河天府路中心', '', '', '', '42826', '', '', '', '', '', '', '01-广州区域', '0.00', '7.00', '0.0%', '0.00', '次', '0.00', '0.00', null, '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('192', '未进班', '天河天府路中心', '', '', '', '1', '', '', '', '', '3小时', '00-小学英语课程', '01-广州区域', '0.00', '10.00', '0.0%', '0.00', '次', '0.00', '0.00', null, '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('193', '广州区域-周末班-英语-3.0小时次_补课班级', '天河天府路中心', '叶晓纯', '', '', '42840.383715394', '', '42838.6875', '', '', '3小时', '00-小学英语课程', '01-广州区域', '100.00', '0.00', '0.0%', '0.00', '次', '1.00', '0.00', null, '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('191', 'P1BF02G0205', '天河天府路中心', '彭永红,Richar,潘丽雄', '彭永红', 'class02', '42788', '', '42908.6875', '43109', '周四16:30~19:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '5.00', '41.7%', '16.00', '次', '18.00', '12.00', null, '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('190', 'P1AF01G0204', '天河天府路中心', '陈玲,Richar,潘丽雄', '叶晓纯', 'class02', '42785', '', '42905.645833333', '43109', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '10.00', '83.3%', '16.00', '次', '18.00', '12.00', null, '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('199', 'P02F01G0103', '天河天府路中心', '翟志翔,郑琴,Zoe', '翟志翔', 'class03', '42790', '', '42903.375', '43109', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '8.00', '66.7%', '16.00', '次', '10.00', '10.00', '已结业', '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('200', 'P02F01G0101', '天河天府路中心', '翟志翔,Richar,郑琴', '翟志翔', 'class03', '42785', '', '42898.645833333', '43109', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '9.00', '75.0%', '16.00', '次', '11.00', '11.00', '已结业', '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('201', 'P02F01G0102', '天河天府路中心', '翟志翔,Richar,郑琴', '翟志翔', 'class03', '42788', '', '42901.6875', '43109', '周四16:30~19:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '10.00', '83.3%', '16.00', '次', '11.00', '11.00', '已结业', '154', '2017-08-27 16:23:53');
INSERT INTO `stjy_bjxxb` VALUES ('202', 'P1AF01G0204', '天河天府路中心', '陈玲,Richar,潘丽雄', '叶晓纯', 'class02', '42785', '', '42905.645833333', '43109', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '10.00', '83.3%', '16.00', '次', '18.00', '12.00', '未结业', '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('203', 'P1BF02G0205', '天河天府路中心', '彭永红,Richar,潘丽雄', '彭永红', 'class02', '42788', '', '42908.6875', '43109', '周四16:30~19:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '5.00', '41.7%', '16.00', '次', '18.00', '12.00', '未结业', '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('204', '未进班', '天河天府路中心', '', '', '', '1', '', '', '', '', '3小时', '00-小学英语课程', '01-广州区域', '0.00', '10.00', '0.0%', '0.00', '次', '0.00', '0.00', null, '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('205', '广州区域-周末班-英语-3.0小时次_补课班级', '天河天府路中心', '叶晓纯', '', '', '42840.383715394', '', '42838.6875', '', '', '3小时', '00-小学英语课程', '01-广州区域', '100.00', '0.00', '0.0%', '0.00', '次', '1.00', '0.00', null, '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('206', '游学会员', '天河天府路中心', '', '', '', '42826', '', '', '', '', '', '', '01-广州区域', '0.00', '7.00', '0.0%', '0.00', '次', '0.00', '0.00', null, '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('207', 'P02F01G0106', '天河天府路中心', '翟志翔,Zoe,陈美全', '翟志翔', 'class02', '42868', '', '42973.375', '43174', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '15.00', '10.00', '66.7%', '16.00', '次', '15.00', '7.00', '未结业', '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('208', 'P1AF02G0201', '天河天府路中心', '翟志翔,Richar,陈美全', '翟志翔', 'class03', '42905', '', '43017.645833333', '44370', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '9.00', '75.0%', '17.00', '次', '16.00', '1.00', '未结业', '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('209', 'P1AF02G0202', '天河天府路中心', '翟志翔,Richar,郑琴', '翟志翔', 'class03', '42908', '', '43020.645833333', '43267', '周四15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '10.00', '83.3%', '17.00', '次', '16.00', '1.00', '未结业', '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('210', 'P1AF02G0203', '天河天府路中心', '翟志翔,郑琴,Zoe', '翟志翔', 'class03', '42910', '', '43022.375', '43645', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '8.00', '66.7%', '17.00', '次', '16.00', '1.00', '未结业', '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('211', 'P02F01G0103', '天河天府路中心', '翟志翔,郑琴,Zoe', '翟志翔', 'class03', '42790', '', '42903.375', '43109', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '8.00', '66.7%', '16.00', '次', '10.00', '10.00', '已结业', '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('212', 'P02F01G0101', '天河天府路中心', '翟志翔,Richar,郑琴', '翟志翔', 'class03', '42785', '', '42898.645833333', '43109', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '9.00', '75.0%', '16.00', '次', '11.00', '11.00', '已结业', '162', '2017-08-27 16:27:21');
INSERT INTO `stjy_bjxxb` VALUES ('213', 'P02F01G0102', '天河天府路中心', '翟志翔,Richar,郑琴', '翟志翔', 'class03', '42788', '', '42901.6875', '43109', '周四16:30~19:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '10.00', '83.3%', '16.00', '次', '11.00', '11.00', '已结业', '162', '2017-08-27 16:27:21');

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
) ENGINE=MyISAM AUTO_INCREMENT=3417 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_bjxyxxb
-- ----------------------------
INSERT INTO `stjy_bjxyxxb` VALUES ('2925', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09026', '陈锵铭', '三年级', '13802520060', '0.00', '00028504', '游学会员', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2923', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2924', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S01699', '曾砚斐', '三年级', '18818859966', '0.00', '00022079,00028042', '游学会员', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2922', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09326', '王子涵（1）', '二年级', '15011912587', '0.00', '', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2921', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09325', '朱彦坤', '二年级', '13527820131', '0.00', '', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2920', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09315', '蔡君昊', '二年级', '13603016366', '0.00', '', '', '广州市天河区天府路小学', '', '13603016366', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2917', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2918', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2919', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09309', '邱朔晴', '二年级', '18922734146', '0.00', '', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2915', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2916', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2914', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S07378', '谢宇博', '一年级', '13500000969', '0.00', '00028052', '', '广州市天河区天府路小学', '13500000969', '13926002979', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2913', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09199', '曾子希', '三年级', '13631499742', '0.00', '00028758', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2912', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09044', '柳皓轩', '三年级', '13560322898', '0.00', '00028501', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2911', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09040', '梁希', '三年级', '13556198719', '0.00', '00028500', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2910', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09026', '陈锵铭', '三年级', '13802520060', '0.00', '00028503', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2909', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S01699', '曾砚斐', '三年级', '18818859966', '0.00', '00028042', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2908', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S11238', '李羽涵', '一年级', '13640217144', '0.00', '00037371,00051565', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2907', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09051', '温静远', '一年级', '13922106580', '0.00', '00028489,00030611,00051575', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2906', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09049', '苏兴承', '一年级', '13922229923', '0.00', '00028508,00051573', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2905', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09045', '陆鸣飞', '二年级', '13609726477', '0.00', '00028492,00049555,00051569,00051571', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2904', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09038', '李紫嫣', '一年级', '18520121305', '0.00', '00028499,00051567', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2903', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09036', '李佩儿', '一年级', '13527882123', '0.00', '00030475,00051563', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2902', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09027', '龚子寅', '一年级', '13829759394', '0.00', '00028481,00051561', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2901', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S07377', '谢宇侨', '一年级', '13500000969', '0.00', '00011438,00028047,00028089,00051577,00051579', '', '广州市天河区天府路小学', '13500000969', '13926002979', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2900', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09055', '钟雨桐', '一年级', '18898605866', '0.00', '00028062,00028064,00051244,00051246', '', '天河区天府路小学（翠湖分校）', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2899', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09042', '刘芷睿', '一年级', '18665651008', '0.00', '00028511,00050335,00051238,00051240', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2898', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09039', '梁泓楠', '一年级', '13418072142', '0.00', '00028509,00041700,00041702,00045131,00045133,00051232,00051234', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2897', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09037', '李雅希', '一年级', '13533545832', '0.00', '00028497,00030364,00030368,00051226,00051228,00051230', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2896', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09035', '黎政鑫', '一年级', '13640846060', '0.00', '00028493,00040586,00041703,00045086,00045088,00051222,00051224', '', '天河区天府路小学（翠湖分校）', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2895', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09028', '郭梓聪', '一年级', '13502447171', '0.00', '00028502,00051220', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2894', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07733', '林承熙', '一年级', '13922386115', '0.00', '00028498,00051236', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2893', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07715', '钟子锟', '一年级', '18929593969', '0.00', '00028036,00051248', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2892', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07495', '邓汇子', '一年级', '13560478460', '0.00', '00028037,00051218', '', '广州市天河区天府路小学', '', '13560478460', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2891', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07379', '杨钶犇', '一年级', '13794367768', '0.00', '00028039,00051242', '', '广州市天河区天府路小学', '13794367768', '13826484457', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2890', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S13741', '何垚均', '一年级', '18688471778', '0.00', '00046748,00051190', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2889', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09613', '生艾霖', '一年级', '13392681558', '0.00', '00031350,00031351,00051200,00051202,00051214,00051216', '', '广州市天河区天府路小学', '', '13395681558', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2888', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09054', '张文一', '一年级', '13302336626', '0.00', '00028506,00051208', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2887', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09052', '吴欣诺', '一年级', '13632353832', '0.00', '00028480,00051206', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2886', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09050', '王子骅', '一年级', '13302291816', '0.00', '00028485,00051204', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2885', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09043', '刘芷妤', '一年级', '13501518927', '0.00', '00028507,00051198', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2884', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09034', '劳隽熙', '一年级', '13922166899', '0.00', '00028070,00028072,00051194,00051196,00051210,00051212', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2883', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09033', '黄梓峰', '一年级', '13560016636', '0.00', '00028484,00051192', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2882', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09025', '陈可馨8669', '一年级', '15622218669', '0.00', '00028491,00051188', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2881', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S11540', '张芷涵', '一年级', '13763366493', '0.00', '00047948', '', '广州市天河区天府路小学', '13825027568', '13763366493', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2880', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09056', '周子澄', '二年级', '13926468975', '0.00', '00028490', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2879', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09053', '姚怡然', '二年级', '13826485248', '0.00', '00028495,00030529,00030608,00030609', '', '天府路小学翠湖校区', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2878', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09046', '陆子叶', '二年级', '13632453211', '0.00', '00028510', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2877', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09032', '黄泽蕊', '二年级', '13802548976', '0.00', '00028505,00034061,00034062,00034075,00034078', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2876', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09031', '黄玮婷', '一年级', '18928895338', '0.00', '00028488', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2875', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09030', '侯宸卓', '一年级', '13802536119', '0.00', '00028482,00034055,00034057,00034068,00034069', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2874', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09029', '侯宸越', '一年级', '13802536119', '0.00', '00028496,00034059,00034060,00034071,00034072', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2873', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S01622', '邱刘哲', '二年级', '18620916361', '0.00', '00028046', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2872', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S01616', '彭希扬', '二年级', '18620488133', '0.00', '00028044', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2871', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S14517', '列羽芊', '一年级', '13828434397', '0.00', '00043962', '', '广州市天河区天府路小学', '', '13828434397', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2869', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11962', '李梓铖', '一年级', '13631317878', '0.00', '00042389', '', '天河区骏景小学', '', '13631317878', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2870', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11965', '杨天乐', '二年级', '13632358827', '0.00', '00038470', '', '广州市天河区第一实验小学', '135602498880', '13632358827', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2868', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11909', '尹梓溢', '一年级', '13527850817', '0.00', '00038385', '', '广州市天河区天府路小学', '', '13527850817', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2867', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11104', '黄鸿亮', '一年级', '13660538977', '0.00', '00037173', '', '广州市天河区天府路小学', '', '13660538977', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2866', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09478', '易其乐', '一年级', '13822188180', '0.00', '00030855,00030856', '', '广州市天河区天府路小学', '13925098792', '13822188180', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2865', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09204', '朱诗淇', '一年级', '13725200569', '0.00', '00028774,00036689,00051903', '', '广州市天河区天府路小学', '13725200569', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2864', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09203', '钟华华', '一年级', '13824424796', '0.00', '00028773,00036696,00051882', '', '广州市天河区天府路小学', '', '13824424796', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2863', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09202', '闾家熙', '一年级', '13570201921', '0.00', '00028769,00036705,00051902', '', '广州市天河区天府路小学', '18680287007', '13570201921', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2862', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09047', '潘浩智', '一年级', '13640768911', '0.00', '00028486', '', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2926', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09051', '温静远', '一年级', '13922106580', '0.00', '00029908,00030611', '游学会员', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2927', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09309', '邱朔晴', '二年级', '18922734146', '0.00', '00029998', '游学会员', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2928', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09315', '蔡君昊', '二年级', '13603016366', '0.00', '00030038', '游学会员', '广州市天河区天府路小学', '', '13603016366', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2929', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09325', '朱彦坤', '二年级', '13527820131', '0.00', '00030088', '游学会员', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2930', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09326', '王子涵（1）', '二年级', '15011912587', '0.00', '00030090', '游学会员', '广州市天河区天府路小学', '', '', '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2931', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10222', '李乐天', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2932', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10390', '詹靖宇', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2933', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10408', '谢语墨', '小班', null, null, null, null, '未读幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2934', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10414', '詹靖轩', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2935', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10555', '邓亦舟', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2936', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10626', '杨一诺（1）', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2937', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10636', '杨一言', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2938', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10708', '张曌仪', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2939', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10725', '张驰（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2940', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10745', '黎亮', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2941', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10759', '李澜昕', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2942', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2943', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10776', '李欣遥', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2944', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10783', '李宣霖', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2945', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10823', '王梓淇（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2946', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10889', '李烨铭', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2947', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10907', '梁钰', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2948', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10980', '林昕睿', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2949', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11022', '吴奕帆', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2950', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11028', '郑煜坤', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2951', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11036', '黄芷琳', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2952', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11046', '张奇钰', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2953', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11059', '黄元星', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2954', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11084', '邱堉庄', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2955', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11137', '杨熙峻', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2956', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11143', '林馨语', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2957', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11147', '陈明宇', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2958', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2959', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11217', '许雯婷', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2960', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11226', '林子淇（1）', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2961', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11242', '刘安淇（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2962', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11347', '王岱霖', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2963', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11534', '朱晓禾', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2964', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11543', '江益民', '小班', null, null, null, null, '未读幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2965', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11664', '张智钦', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2966', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11665', '潘钰辰', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2967', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11667', '周昱延', '小班', null, null, null, null, '未读幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2968', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11787', '罗悦宁', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2969', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11790', '张梓玥', '大班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2970', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11798', '邹亦非', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2971', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11883', '陈立言', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2972', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11900', '符方涓', '中班', null, null, null, null, '95107部队幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2973', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11938', '吴沐欣', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2974', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11940', '胡甜慈', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2975', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11950', '翁语欣（1）', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2976', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11964', '平皓中', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2977', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12258', '张语彤', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2978', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12366', '金昱谦', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2979', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12367', '彭芷晴', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2980', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12380', '张庭语', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2981', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12425', '熊忻仪', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2982', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12431', '唐茜薇', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2983', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12467', '杨芷澄', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2984', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12469', '万语笑', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2985', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12495', '陈宇华', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2986', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12545', '杨梓盈', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2987', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12550', '李沄天', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2988', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12820', '何雯', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2989', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12910', '龙心宜', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2990', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12911', '王稚尹', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2991', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12913', '蔡乐铭', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2992', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13026', '王加泓', '大班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2993', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13067', '唐希怡', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2994', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13103', '万博文', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2995', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13110', '姜昕屹', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2996', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13317', '陈姝含', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2997', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13320', '魏蔚然', '三年级', null, null, null, null, '广州市暨南大学附属小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2998', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13730', '何泳希', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('2999', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13744', '何柏沅', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3000', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13915', '宾诗琪', '一年级', null, null, null, null, '广州市天河区华景小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3001', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14355', '毛思羽', '一年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3002', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14675', '李梓杰', '小班', null, null, null, null, '未读幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3003', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14685', '高梓骞', '中班', null, null, null, null, '广州邮电通信设备公司幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3004', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14734', '张羽嫣', '小班', null, null, null, null, '广州都市兰亭幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3005', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S09879', '黄映衡', '中班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3006', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11473', '陈梓豪0326', '二年级', null, null, null, null, '广州市越秀区水荫路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3007', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17328', '姜卉', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3008', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17302', '胡世程', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3009', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17326', '林小轩', '中班', null, null, null, null, '新蕾幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3010', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17323', '林小哲（Austin）', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3011', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17318', '朱钰彤', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3012', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17309', '冯煦洋', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3013', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17314', '肖鑫彤', '一年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3014', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17311', '姚季芮', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3015', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17330', '汪宇丰', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3016', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17123', '黄思睿', '小班', null, null, null, null, '广州市天河区华景泽晖幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3017', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17110', '周梓麒', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3018', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17043', '王唯有', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3019', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17042', '李泓泽', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3020', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17040', '吴祝吉', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3021', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17035', '戴永航', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3022', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17019', '戴裕桐', '小班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3023', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17011', '吴志轩', '小班', null, null, null, null, '未读幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3024', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16940', '梁添翔', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3025', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16827', '黄祺茜-KIKI', '二年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3026', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16821', '邹沐彤', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3027', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16667', '曾芷睿rayna', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3028', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16658', '汲春杉', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3029', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16607', '雷鲁健', '小班', null, null, null, null, '未读幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3030', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16600', '李冠延', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3031', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16590', '崔雯睿', '小班', null, null, null, null, '未读幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3032', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16529', '何家坤', '二年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3033', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16415', '杨晨曦', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3034', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16323', '罗鸿铭', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3035', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S01612', '潘子颀', '六年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3036', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15861', '徐俊哲', '大班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3037', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15801', '杨雨浠', '二年级', null, null, null, null, '广州市越秀区水荫路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3038', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15854', '蒋沛霖', '大班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3039', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13243', '陈熹', '小班', null, null, null, null, '未读幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3040', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13198', '宋美京', '二年级', null, null, null, null, '东风东路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3041', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15713', '张思哲', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3042', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13089', '董陈蓓', '一年级', null, null, null, null, '广州大学附属小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3043', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12558', '勒瑞琦', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3044', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10868', '彭羽菲', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3045', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10853', '彭云翼', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3046', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10936', '詹以峤', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3047', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S01521', '杜航宇', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3048', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19180', 'timmy', '大班', null, null, null, null, '东莞市东城朝天实验小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3049', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19155', '熊峰', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3050', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18724', '陆文蓓', '二年级', null, null, null, null, '广州市天河区华景小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3051', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19122', '赵若菡', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3052', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19097', '冯钰淑', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3053', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18827', '徐宸', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3054', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18835', '曾子瀚', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3055', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18834', '王子荞', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3056', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18804', '陈博源', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3057', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18745', '肖昕瑶', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3058', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18734', '彭星语', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3059', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18632', '范越好', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3060', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18646', '黄楷邦', '大班', null, null, null, null, '朝阳东幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3061', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18645', '柯皓天', '中班', null, null, null, null, '广州邮电通信设备公司幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3062', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18628', '熊奕宁', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3063', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18626', '陈铭灏', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3064', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18599', '张书瑶4101', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3065', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18596', '胡遥', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3066', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18593', '胡逍', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3067', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18564', '何思睿', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3068', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18562', '骆伊洋Dora', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3069', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18407', '陈启', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3070', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18271', '陈悦心', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3071', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18229', '简耀龙', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3072', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18358', '刘烔燊', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3073', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18232', '杨旖妮', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3074', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18175', '李晓语', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3075', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18156', '蓝添', '四年级', null, null, null, null, '广州市番禺区华南碧桂园学校', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3076', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18057', '廖爱跃', '大班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3077', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17907', '江晓潼', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3078', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17905', '梁文迪', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3079', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17901', '林也淇', '二年级', null, null, null, null, '广州市天河区华景小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3080', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17865', '姚俊宏', '中班', null, null, null, null, '东华幼儿园', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3081', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17868', '纪博桓', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3082', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17930', '刘赜恺', '二年级', null, null, null, null, '广州市天河区华景小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3083', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17859', '许雯棋', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3084', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19524', '林子妍', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3085', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19504', '邓禹', '二年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3086', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19472', '吴家兆', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3087', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19470', '吴家诚', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3088', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13383', '杨恩昊', '三年级', null, null, null, null, '未知', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3089', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11566', '陈钧泽', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3090', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3091', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:10');
INSERT INTO `stjy_bjxyxxb` VALUES ('3092', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3093', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3094', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3095', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3096', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3097', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3098', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3099', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3100', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3101', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3102', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3103', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3104', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3105', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3106', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3107', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3108', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3109', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3110', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3111', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3112', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3113', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3114', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3115', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3116', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3117', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3118', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3119', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3120', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3121', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3122', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3123', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3124', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3125', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3126', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3127', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3128', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3129', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3130', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3131', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3132', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3133', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3134', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3135', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3136', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3137', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3138', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3139', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3140', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3141', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3142', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3143', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3144', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3145', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3146', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3147', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3148', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3149', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3150', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3151', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3152', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3153', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3154', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3155', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3156', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3157', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3158', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3159', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3160', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3161', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3162', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3163', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3164', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3165', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3166', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3167', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3168', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3169', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3170', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3171', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3172', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3173', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3174', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3175', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3176', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3177', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3178', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3179', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3180', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3181', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3182', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3183', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3184', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3185', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3186', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3187', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3188', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3189', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3190', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3191', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3192', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3193', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3194', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3195', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3196', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3197', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3198', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3199', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3200', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3201', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3202', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3203', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3204', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3205', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3206', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3207', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3208', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3209', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3210', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3211', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3212', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3213', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3214', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3215', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3216', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3217', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3218', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3219', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3220', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3221', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3222', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3223', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3224', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3225', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3226', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3227', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3228', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3229', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3230', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3231', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3232', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3233', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3234', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3235', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3236', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3237', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '155', '2017-08-27 16:24:11');
INSERT INTO `stjy_bjxyxxb` VALUES ('3238', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09047', '潘浩智', '一年级', '13640768911', '0.00', '00028486', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3239', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09202', '闾家熙', '一年级', '13570201921', '0.00', '00028769,00036705,00051902', '', '广州市天河区天府路小学', '18680287007', '13570201921', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3240', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09203', '钟华华', '一年级', '13824424796', '0.00', '00028773,00036696,00051882', '', '广州市天河区天府路小学', '', '13824424796', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3241', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09204', '朱诗淇', '一年级', '13725200569', '0.00', '00028774,00036689,00051903', '', '广州市天河区天府路小学', '13725200569', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3242', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09478', '易其乐', '一年级', '13822188180', '0.00', '00030855,00030856', '', '广州市天河区天府路小学', '13925098792', '13822188180', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3243', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11104', '黄鸿亮', '一年级', '13660538977', '0.00', '00037173', '', '广州市天河区天府路小学', '', '13660538977', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3244', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11909', '尹梓溢', '一年级', '13527850817', '0.00', '00038385', '', '广州市天河区天府路小学', '', '13527850817', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3245', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11962', '李梓铖', '一年级', '13631317878', '0.00', '00042389', '', '天河区骏景小学', '', '13631317878', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3246', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11965', '杨天乐', '二年级', '13632358827', '0.00', '00038470', '', '广州市天河区第一实验小学', '135602498880', '13632358827', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3247', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S14517', '列羽芊', '一年级', '13828434397', '0.00', '00043962', '', '广州市天河区天府路小学', '', '13828434397', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3248', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S01616', '彭希扬', '二年级', '18620488133', '0.00', '00028044', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3249', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S01622', '邱刘哲', '二年级', '18620916361', '0.00', '00028046', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3250', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09029', '侯宸越', '一年级', '13802536119', '0.00', '00028496,00034059,00034060,00034071,00034072', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3251', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09030', '侯宸卓', '一年级', '13802536119', '0.00', '00028482,00034055,00034057,00034068,00034069', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3252', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09031', '黄玮婷', '一年级', '18928895338', '0.00', '00028488', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3253', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09032', '黄泽蕊', '二年级', '13802548976', '0.00', '00028505,00034061,00034062,00034075,00034078', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3254', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09046', '陆子叶', '二年级', '13632453211', '0.00', '00028510', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3255', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09053', '姚怡然', '二年级', '13826485248', '0.00', '00028495,00030529,00030608,00030609', '', '天府路小学翠湖校区', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3256', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09056', '周子澄', '二年级', '13926468975', '0.00', '00028490', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3257', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S11540', '张芷涵', '一年级', '13763366493', '0.00', '00047948', '', '广州市天河区天府路小学', '13825027568', '13763366493', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3258', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09025', '陈可馨8669', '一年级', '15622218669', '0.00', '00028491,00051188', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3259', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09033', '黄梓峰', '一年级', '13560016636', '0.00', '00028484,00051192', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3260', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09034', '劳隽熙', '一年级', '13922166899', '0.00', '00028070,00028072,00051194,00051196,00051210,00051212', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3261', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09043', '刘芷妤', '一年级', '13501518927', '0.00', '00028507,00051198', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3262', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09050', '王子骅', '一年级', '13302291816', '0.00', '00028485,00051204', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3263', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09052', '吴欣诺', '一年级', '13632353832', '0.00', '00028480,00051206', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3264', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09054', '张文一', '一年级', '13302336626', '0.00', '00028506,00051208', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3265', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09613', '生艾霖', '一年级', '13392681558', '0.00', '00031350,00031351,00051200,00051202,00051214,00051216', '', '广州市天河区天府路小学', '', '13395681558', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3266', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S13741', '何垚均', '一年级', '18688471778', '0.00', '00046748,00051190', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3267', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07379', '杨钶犇', '一年级', '13794367768', '0.00', '00028039,00051242', '', '广州市天河区天府路小学', '13794367768', '13826484457', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3268', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07495', '邓汇子', '一年级', '13560478460', '0.00', '00028037,00051218', '', '广州市天河区天府路小学', '', '13560478460', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3269', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07715', '钟子锟', '一年级', '18929593969', '0.00', '00028036,00051248', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3270', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07733', '林承熙', '一年级', '13922386115', '0.00', '00028498,00051236', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3271', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09028', '郭梓聪', '一年级', '13502447171', '0.00', '00028502,00051220', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3272', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09035', '黎政鑫', '一年级', '13640846060', '0.00', '00028493,00040586,00041703,00045086,00045088,00051222,00051224', '', '天河区天府路小学（翠湖分校）', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3273', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09037', '李雅希', '一年级', '13533545832', '0.00', '00028497,00030364,00030368,00051226,00051228,00051230', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3274', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09039', '梁泓楠', '一年级', '13418072142', '0.00', '00028509,00041700,00041702,00045131,00045133,00051232,00051234', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3275', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09042', '刘芷睿', '一年级', '18665651008', '0.00', '00028511,00050335,00051238,00051240', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3276', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09055', '钟雨桐', '一年级', '18898605866', '0.00', '00028062,00028064,00051244,00051246', '', '天河区天府路小学（翠湖分校）', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3277', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S07377', '谢宇侨', '一年级', '13500000969', '0.00', '00011438,00028047,00028089,00051577,00051579', '', '广州市天河区天府路小学', '13500000969', '13926002979', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3278', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09027', '龚子寅', '一年级', '13829759394', '0.00', '00028481,00051561', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3279', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09036', '李佩儿', '一年级', '13527882123', '0.00', '00030475,00051563', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3280', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09038', '李紫嫣', '一年级', '18520121305', '0.00', '00028499,00051567', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3281', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09045', '陆鸣飞', '二年级', '13609726477', '0.00', '00028492,00049555,00051569,00051571', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3282', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09049', '苏兴承', '一年级', '13922229923', '0.00', '00028508,00051573', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3283', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09051', '温静远', '一年级', '13922106580', '0.00', '00028489,00030611,00051575', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3284', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S11238', '李羽涵', '一年级', '13640217144', '0.00', '00037371,00051565', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3285', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S01699', '曾砚斐', '三年级', '18818859966', '0.00', '00028042', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3286', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09026', '陈锵铭', '三年级', '13802520060', '0.00', '00028503', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3287', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09040', '梁希', '三年级', '13556198719', '0.00', '00028500', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3288', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09044', '柳皓轩', '三年级', '13560322898', '0.00', '00028501', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3289', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09199', '曾子希', '三年级', '13631499742', '0.00', '00028758', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3290', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S07378', '谢宇博', '一年级', '13500000969', '0.00', '00028052', '', '广州市天河区天府路小学', '13500000969', '13926002979', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3291', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3292', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3293', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3294', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3295', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09309', '邱朔晴', '二年级', '18922734146', '0.00', '', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3296', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09315', '蔡君昊', '二年级', '13603016366', '0.00', '', '', '广州市天河区天府路小学', '', '13603016366', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3297', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09325', '朱彦坤', '二年级', '13527820131', '0.00', '', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3298', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09326', '王子涵（1）', '二年级', '15011912587', '0.00', '', '', '广州市天河区天府路小学', '', '', '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3299', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3300', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10222', '李乐天', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3301', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10390', '詹靖宇', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3302', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10408', '谢语墨', '小班', null, null, null, null, '未读幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3303', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10414', '詹靖轩', '中班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3304', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10555', '邓亦舟', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3305', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10626', '杨一诺（1）', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3306', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10636', '杨一言', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3307', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10708', '张曌仪', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3308', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10725', '张驰（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3309', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10745', '黎亮', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3310', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10759', '李澜昕', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3311', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10771', '刘骐瑶', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3312', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10776', '李欣遥', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3313', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10783', '李宣霖', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3314', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10823', '王梓淇（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3315', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10889', '李烨铭', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3316', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10907', '梁钰', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3317', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10980', '林昕睿', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3318', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11022', '吴奕帆', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3319', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11028', '郑煜坤', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3320', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11036', '黄芷琳', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3321', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11046', '张奇钰', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3322', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11059', '黄元星', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3323', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11084', '邱堉庄', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3324', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11137', '杨熙峻', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3325', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11143', '林馨语', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3326', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11147', '陈明宇', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3327', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11163', '曾浩轩（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3328', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11217', '许雯婷', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3329', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11226', '林子淇（1）', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3330', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11242', '刘安淇（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3331', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11347', '王岱霖', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3332', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11534', '朱晓禾', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3333', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11543', '江益民', '小班', null, null, null, null, '未读幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3334', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11664', '张智钦', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3335', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11665', '潘钰辰', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3336', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11667', '周昱延', '小班', null, null, null, null, '未读幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3337', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11787', '罗悦宁', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3338', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11790', '张梓玥', '大班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3339', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11798', '邹亦非', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3340', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11883', '陈立言', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3341', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11900', '符方涓', '中班', null, null, null, null, '95107部队幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3342', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11938', '吴沐欣', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3343', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11940', '胡甜慈', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3344', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11950', '翁语欣（1）', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3345', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11964', '平皓中', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3346', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12258', '张语彤', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3347', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12366', '金昱谦', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3348', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12367', '彭芷晴', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3349', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12380', '张庭语', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3350', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12425', '熊忻仪', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3351', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12431', '唐茜薇', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3352', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12467', '杨芷澄', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3353', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12469', '万语笑', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3354', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12495', '陈宇华', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3355', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12545', '杨梓盈', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3356', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12550', '李沄天', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3357', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12820', '何雯', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3358', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12910', '龙心宜', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3359', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12911', '王稚尹', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3360', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12913', '蔡乐铭', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3361', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13026', '王加泓', '大班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3362', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13067', '唐希怡', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3363', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13103', '万博文', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3364', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13110', '姜昕屹', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3365', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13317', '陈姝含', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3366', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13320', '魏蔚然', '三年级', null, null, null, null, '广州市暨南大学附属小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3367', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13730', '何泳希', '中班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3368', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13744', '何柏沅', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3369', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13915', '宾诗琪', '一年级', null, null, null, null, '广州市天河区华景小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3370', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14355', '毛思羽', '一年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3371', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14675', '李梓杰', '小班', null, null, null, null, '未读幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3372', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14685', '高梓骞', '中班', null, null, null, null, '广州邮电通信设备公司幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3373', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14734', '张羽嫣', '小班', null, null, null, null, '广州都市兰亭幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3374', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S09879', '黄映衡', '中班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3375', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11473', '陈梓豪0326', '二年级', null, null, null, null, '广州市越秀区水荫路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3376', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17328', '姜卉', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3377', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17302', '胡世程', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3378', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17326', '林小轩', '中班', null, null, null, null, '新蕾幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3379', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17323', '林小哲（Austin）', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3380', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17318', '朱钰彤', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3381', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17309', '冯煦洋', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3382', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17314', '肖鑫彤', '一年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3383', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17311', '姚季芮', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3384', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17330', '汪宇丰', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3385', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17123', '黄思睿', '小班', null, null, null, null, '广州市天河区华景泽晖幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3386', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17110', '周梓麒', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3387', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17043', '王唯有', '中班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3388', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17042', '李泓泽', '中班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3389', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17040', '吴祝吉', '中班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3390', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17035', '戴永航', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3391', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17019', '戴裕桐', '小班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3392', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17011', '吴志轩', '小班', null, null, null, null, '未读幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3393', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16940', '梁添翔', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3394', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16827', '黄祺茜-KIKI', '二年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3395', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16821', '邹沐彤', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3396', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16667', '曾芷睿rayna', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3397', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16658', '汲春杉', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3398', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16607', '雷鲁健', '小班', null, null, null, null, '未读幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3399', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16600', '李冠延', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3400', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16590', '崔雯睿', '小班', null, null, null, null, '未读幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3401', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16529', '何家坤', '二年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3402', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16415', '杨晨曦', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3403', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16323', '罗鸿铭', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3404', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S01612', '潘子颀', '六年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3405', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15861', '徐俊哲', '大班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3406', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15801', '杨雨浠', '二年级', null, null, null, null, '广州市越秀区水荫路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3407', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15854', '蒋沛霖', '大班', null, null, null, null, '东华幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3408', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13243', '陈熹', '小班', null, null, null, null, '未读幼儿园', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3409', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13198', '宋美京', '二年级', null, null, null, null, '东风东路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3410', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15713', '张思哲', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3411', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13089', '董陈蓓', '一年级', null, null, null, null, '广州大学附属小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3412', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12558', '勒瑞琦', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:30');
INSERT INTO `stjy_bjxyxxb` VALUES ('3413', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10868', '彭羽菲', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:31');
INSERT INTO `stjy_bjxyxxb` VALUES ('3414', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10853', '彭云翼', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:31');
INSERT INTO `stjy_bjxyxxb` VALUES ('3415', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10936', '詹以峤', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:31');
INSERT INTO `stjy_bjxyxxb` VALUES ('3416', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S01521', '杜航宇', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '163', '2017-08-27 16:27:31');

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
) ENGINE=MyISAM AUTO_INCREMENT=236 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_kbmxb
-- ----------------------------
INSERT INTO `stjy_kbmxb` VALUES ('215', 'P1AF02G0201', '2017-06-19', '2021-06-23', 'class03', '15:30-18:30', '周一', '3.00', '1.50', '1.00', '0.50', '翟志翔', '陈美全', 'Richar', '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('216', 'P1AF02G0203', '2017-06-24', '2019-06-29', 'class03', '09:00-12:00', '周六', '3.00', '1.50', '1.00', '0.50', '翟志翔', '郑琴', 'Zoe', '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('217', 'P02F01G0106', '2017-05-13', '2018-03-15', 'class02', '09:00-12:00', '周六', '3.00', '1.50', '1.00', '0.50', '翟志翔', '陈美全', 'Zoe', '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('218', 'P1AF01G0204', '2017-02-19', '2018-01-09', 'class02', '15:30-18:30', '周一', '3.00', '1.50', '1.00', '0.50', '陈玲', '潘丽雄', 'Richar', '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('219', 'P1BF02G0205', '2017-02-22', '2018-01-09', 'class02', '16:30-19:30', '周四', '3.00', '1.50', '1.00', '0.50', '彭永红', '潘丽雄', 'Richar', '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('220', 'P1AF02G0202', '2017-06-22', '2018-06-16', 'class03', '15:30-18:30', '周四', '3.00', '1.50', '1.00', '0.50', '翟志翔', '郑琴', 'Richar', '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('221', '未进班', null, null, null, null, null, null, null, null, null, null, null, null, '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('222', '广州区域-周末班-英语-3.0小时次_补课班级', null, null, null, null, null, null, null, null, null, null, null, null, '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('223', '游学会员', null, null, null, null, null, null, null, null, null, null, null, null, '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('224', null, null, null, null, null, null, null, null, null, null, null, null, null, '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('225', null, null, null, null, null, null, null, null, null, null, null, null, null, '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('226', null, null, null, null, null, null, null, null, null, null, null, null, null, '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('227', null, null, null, null, null, null, null, null, null, null, null, null, null, '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('228', null, null, null, null, null, null, null, null, null, null, null, null, null, '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('229', null, null, null, null, null, null, null, null, null, null, null, null, null, '159', '2017-08-27 16:26:09');
INSERT INTO `stjy_kbmxb` VALUES ('230', 'P1AF02G0201', '2017-06-19', '2021-06-23', 'class03', '15:30-18:30', '周一', '3.00', '1.50', '1.00', '0.50', '翟志翔', '陈美全', 'Richar', '166', '2017-08-27 16:27:51');
INSERT INTO `stjy_kbmxb` VALUES ('231', 'P1AF02G0203', '2017-06-24', '2019-06-29', 'class03', '09:00-12:00', '周六', '3.00', '1.50', '1.00', '0.50', '翟志翔', '郑琴', 'Zoe', '166', '2017-08-27 16:27:51');
INSERT INTO `stjy_kbmxb` VALUES ('232', 'P02F01G0106', '2017-05-13', '2018-03-15', 'class02', '09:00-12:00', '周六', '3.00', '1.50', '1.00', '0.50', '翟志翔', '陈美全', 'Zoe', '166', '2017-08-27 16:27:51');
INSERT INTO `stjy_kbmxb` VALUES ('233', 'P1AF01G0204', '2017-02-19', '2018-01-09', 'class02', '15:30-18:30', '周一', '3.00', '1.50', '1.00', '0.50', '陈玲', '潘丽雄', 'Richar', '166', '2017-08-27 16:27:51');
INSERT INTO `stjy_kbmxb` VALUES ('234', 'P1BF02G0205', '2017-02-22', '2018-01-09', 'class02', '16:30-19:30', '周四', '3.00', '1.50', '1.00', '0.50', '彭永红', '潘丽雄', 'Richar', '166', '2017-08-27 16:27:51');
INSERT INTO `stjy_kbmxb` VALUES ('235', 'P1AF02G0202', '2017-06-22', '2018-06-16', 'class03', '15:30-18:30', '周四', '3.00', '1.50', '1.00', '0.50', '翟志翔', '郑琴', 'Richar', '166', '2017-08-27 16:27:51');

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
) ENGINE=MyISAM AUTO_INCREMENT=5128 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_kxmxb
-- ----------------------------
INSERT INTO `stjy_kxmxb` VALUES ('4878', 'S09026', '陈锵铭', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4877', 'S13317', '陈姝含', '三年级', null, null, '（6）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4876', 'S13243', '陈熹', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4875', 'S12495', '陈宇华', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4874', 'S11473', '陈梓豪0326', '二年级', null, null, '4', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4873', 'S16590', '崔雯睿', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4872', 'S17035', '戴永航', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4871', 'S17019', '戴裕桐', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4870', 'S07495', '邓汇子', '一年级', null, null, '8', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4869', 'S10555', '邓亦舟', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4868', 'S13089', '董陈蓓', '一年级', null, null, '6班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4867', 'S01521', '杜航宇', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4866', 'S17309', '冯煦洋', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4865', 'S11900', '符方涓', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4864', 'S14685', '高梓骞', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4863', 'S09027', '龚子寅', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4862', 'S09028', '郭梓聪', '一年级', null, null, '八班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4861', 'S13744', '何柏沅', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4860', 'S16529', '何家坤', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4859', 'S12820', '何雯', '四年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4858', 'S13741', '何垚均', '一年级', null, null, '四班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4857', 'S13730', '何泳希5668', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4856', 'S09029', '侯宸越', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4855', 'S09030', '侯宸卓', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4854', 'S17302', '胡世程', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4853', 'S11940', '胡甜慈', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4852', 'S11104', '黄鸿亮', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4851', 'S16827', '黄祺茜-KIKI', '二年级', null, null, '2', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4850', 'S17123', '黄思睿', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4849', 'S09031', '黄玮婷', '一年级', null, null, '四班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4848', 'S09879', '黄映衡', '中班', null, null, '天府路幼儿园', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4847', 'S11050', '黄元量', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4846', 'S11059', '黄元星', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4845', 'S09032', '黄泽蕊', '二年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4844', 'S11036', '黄芷琳0305', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4843', 'S09033', '黄梓峰', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4842', 'S16658', '汲春杉', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4841', 'S11543', '江益民', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4840', 'S17328', '姜卉', '二年级', null, null, '五班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4839', 'S17342', '姜卉', '二年级', null, null, '5', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4838', 'S13110', '姜昕屹', '一年级', null, null, '四班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4837', 'S15854', '蒋沛霖', '大班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4836', 'S12366', '金昱谦', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4835', 'S09034', '劳隽熙', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4834', 'S12558', '勒瑞琦', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4833', 'S16607', '雷鲁健', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4832', 'S10745', '黎亮', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4831', 'S09035', '黎政鑫', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4830', 'S16600', '李冠延', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4829', 'S17042', '李泓泽', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4828', 'S10759', '李澜昕', '二年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4827', 'S10222', '李乐天', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4826', 'S09036', '李佩儿', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4825', 'S10776', '李欣遥', '一年级', null, null, '1班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4824', 'S10783', '李宣霖', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4823', 'S09037', '李雅希', '一年级', null, null, '四班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4822', 'S10889', '李烨铭', '四年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4821', 'S11238', '李羽涵', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4820', 'S12550', '李沄天', '三年级', null, null, '八班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4819', 'S11962', '李梓铖', '一年级', null, null, '（3）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4818', 'S14675', '李梓杰', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4817', 'S09038', '李紫嫣', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4816', 'S09039', '梁泓楠', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4815', 'S16940', '梁添翔', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4814', 'S09040', '梁希', '三年级', null, null, '六班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4813', 'S10907', '梁钰', '四年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4812', 'S14517', '列羽芊', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4811', 'S07733', '林承熙', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4810', 'S17326', '林小轩', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4809', 'S17323', '林小哲（Austin）', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4808', 'S10980', '林昕睿', '一年级', null, null, '（3）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4807', 'S10966', '林欣锐', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4806', 'S11143', '林馨语', '小班', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4805', 'S11226', '林子淇（1）', '三年级', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4804', 'S11242', '刘安淇（1）', '一年级', null, null, '（8）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4803', 'S10771', '刘骐瑶', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4802', 'S09042', '刘芷睿', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4801', 'S09043', '刘芷妤', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4800', 'S09044', '柳皓轩', '三年级', null, null, '六班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4799', 'S12910', '龙心宜', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4798', 'S09045', '陆鸣飞', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4797', 'S09046', '陆子叶', '二年级', null, null, '五班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4796', 'S09202', '闾家熙', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4795', 'S16323', '罗鸿铭', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4794', 'S11787', '罗悦宁', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4793', 'S14355', '毛思羽', '一年级', null, null, '（3）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4792', 'S09047', '潘浩智', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4791', 'S11665', '潘钰辰', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4790', 'S01612', '潘子颀', '六年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4789', 'S01616', '彭希扬', '二年级', null, null, '', null, null, null, '邹丽萍', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4788', 'S10868', '彭羽菲', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4787', 'S10853', '彭云翼', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4786', 'S12367', '彭芷晴', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4785', 'S11964', '平皓中', '一年级', null, null, '七班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4784', 'S01622', '邱刘哲', '二年级', null, null, '', null, null, null, '邹丽萍', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4783', 'S09309', '邱朔晴', '二年级', null, null, '8班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4782', 'S11084', '邱堉庄', '一年级', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4781', 'S09613', '生艾霖', '一年级', null, null, '六班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4780', 'S13198', '宋美京', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4779', 'S09049', '苏兴承', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4778', 'S12431', '唐茜薇', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4777', 'S13067', '唐希怡', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4776', 'S13103', '万博文', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4775', 'S12469', '万语笑', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4774', 'S17330', '汪宇丰', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4773', 'S11347', '王岱霖', '一年级', null, null, '（4）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4772', 'S13026', '王加泓', '大班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4771', 'S17043', '王唯有', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4770', 'S12911', '王稚尹', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4769', 'S09326', '王子涵（1）', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4768', 'S09050', '王子骅', '一年级', null, null, '五班 ', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4767', 'S10823', '王梓淇（1）', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4766', 'S13320', '魏蔚然', '三年级', null, null, '（5）', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4765', 'S09051', '温静远', '一年级', null, null, '八班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4764', 'S11948', '翁语欣', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4763', 'S11950', '翁语欣（1）', '三年级', null, null, '九班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4762', 'S11938', '吴沐欣', '二年级', null, null, '七班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4761', 'S09052', '吴欣诺', '一年级', null, null, '五班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4760', 'S11022', '吴奕帆', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4759', 'S11803', '吴宇鑫', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4758', 'S17011', '吴志轩', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4757', 'S17040', '吴祝吉', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4756', 'S09228', '冼珈永', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4755', 'S17314', '肖鑫彤', '一年级', null, null, '2班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4754', 'S10069', '谢莉雯', '二年级', null, null, '13班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4753', 'S07378', '谢宇博', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4752', 'S07377', '谢宇侨', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4751', 'S10408', '谢语墨', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4750', 'S12425', '熊忻仪', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4749', 'S15861', '徐俊哲', '大班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4748', 'S11217', '许雯婷', '三年级', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4747', 'S16415', '杨晨曦', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4746', 'S07379', '杨钶犇', '一年级', null, null, '8', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4745', 'S11965', '杨天乐', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4744', 'S11137', '杨熙峻', '一年级', null, null, '（3）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4743', 'S10626', '杨一诺（1）', '二年级', null, null, '（8）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4742', 'S10636', '杨一言', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4741', 'S15801', '杨雨浠', '二年级', null, null, '六班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4740', 'S12467', '杨芷澄', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4739', 'S12545', '杨梓盈', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4738', 'S17311', '姚季芮', '一年级', null, null, '6', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4737', 'S09053', '姚怡然', '二年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4736', 'S09478', '易其乐', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4735', 'S11909', '尹梓溢', '一年级', null, null, '2班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4734', 'S11163', '曾浩轩（1）', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4733', 'S01699', '曾砚斐', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4732', 'S16667', '曾芷睿rayna', '二年级', null, null, '7', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4731', 'S09199', '曾子希', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4730', 'S10414', '詹靖轩', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4729', 'S10390', '詹靖宇', '二年级', null, null, '6班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4728', 'S10936', '詹以峤', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4727', 'S10725', '张驰（1）', '一年级', null, null, '（3）', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4726', 'S11046', '张奇钰', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4725', 'S15713', '张思哲', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4724', 'S12380', '张庭语', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4723', 'S09054', '张文一', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4722', 'S14734', '张羽嫣', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4721', 'S12258', '张语彤', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4720', 'S10708', '张曌仪', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4719', 'S11540', '张芷涵', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4718', 'S11664', '张智钦', '小班', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4717', 'S11790', '张梓玥', '大班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4716', 'S11028', '郑煜坤', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4715', 'S09203', '钟华华', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4714', 'S09055', '钟雨桐', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4713', 'S16474', '钟玥嘉', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4712', 'S07715', '钟子锟', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4711', 'S09664', '钟子淇', '四年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4710', 'S11667', '周昱延', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4709', 'S09056', '周子澄', '二年级', null, null, '五班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4708', 'S17110', '周梓麒', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4707', 'S09204', '朱诗淇', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4706', 'S11534', '朱晓禾', '四年级', null, null, '5班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4705', 'S09325', '朱彦坤', '二年级', null, null, '3班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4704', 'S17318', '朱钰彤', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4703', 'S16821', '邹沐彤', '二年级', null, null, '2班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4702', 'S11798', '邹亦非', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4879', 'S11147', '陈明宇', '小班', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4880', 'S11883', '陈立言', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4881', 'S09025', '陈可馨8669', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4882', 'S11566', '陈钧泽', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4883', 'S11953', '蔡斯丞', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4884', 'S12913', '蔡乐铭', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4885', 'S09315', '蔡君昊', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4886', 'S13915', '宾诗琪', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4887', 'S17905', '梁文迪', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4888', 'S18834', '王子荞', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4889', 'S18593', '胡逍', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4890', 'S19155', '熊峰', '三年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4891', 'S18229', '简耀龙', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4892', 'S18564', '何思睿', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4893', 'S18745', '肖昕瑶', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4894', 'S18724', '陆文蓓', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4895', 'S17901', '林也淇', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4896', 'S18596', '胡遥', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4897', 'S17930', '刘赜恺', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4898', 'S18734', '彭星语', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4899', 'S17865', '姚俊宏', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4900', 'S18626', '陈铭灏', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4901', 'S19097', '冯钰淑', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4902', 'S18271', '陈悦心', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4903', 'S18599', '张书瑶4101', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4904', 'S18562', '骆伊洋Dora', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4905', 'S18232', '杨旖妮', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:02');
INSERT INTO `stjy_kxmxb` VALUES ('4906', 'S17868', '纪博桓', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4907', 'S18632', '范越好', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4908', 'S18645', '柯皓天', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4909', 'S18628', '熊奕宁', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4910', 'S18407', '陈启', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4911', 'S18646', '黄楷邦', '大班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4912', 'S18175', '李晓语', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4913', 'S18057', '廖爱跃', '大班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4914', 'S18156', '蓝添', '四年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4915', 'S18827', '徐宸', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4916', 'S17907', '江晓潼', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4917', 'S19122', '赵若菡', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4918', 'S18835', '曾子瀚', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4919', 'S17859', '许雯棋', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4920', 'S18600', '张书瑶', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4921', 'S19180', 'timmy', '大班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4922', 'S18358', '刘烔燊', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4923', 'S18804', '陈博源', '三年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4924', 'S19504', '邓禹', '二年级', null, null, '1', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4925', 'S19470', '吴家诚', '一年级', null, null, '7', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4926', 'S19524', '林子妍', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4927', 'S19472', '吴家兆', '一年级', null, null, '7', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4928', 'S13383', '杨恩昊', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '158', '2017-08-27 16:26:03');
INSERT INTO `stjy_kxmxb` VALUES ('4929', 'S07715', '钟子锟', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028036', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4930', 'S07715', '钟子锟', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028036', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4931', 'S09040', '梁希', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028500', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4932', 'S11962', '李梓铖', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00042389', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4933', 'S09204', '朱诗淇', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028774', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4934', 'S07379', '杨钶犇', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '174.97', '0.00', '2017-06-16', '00051242', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4935', 'S09038', '李紫嫣', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '187.96', '0.00', '2017-04-01', '00028499', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4936', 'S01616', '彭希扬', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '邹丽萍', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '172.19', '0.00', '2017-04-01', '00028044', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4937', 'S11540', '张芷涵', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00047948', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4938', 'S09028', '郭梓聪', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028502', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4939', 'S09049', '苏兴承', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-17', '00051573', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4940', 'S09050', '王子骅', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '231.00', '0.00', '2017-04-01', '00028485', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4941', 'S07715', '钟子锟', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028036', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4942', 'S01699', '曾砚斐', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-01', '00028042', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4943', 'S01622', '邱刘哲', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '邹丽萍', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '172.10', '0.00', '2017-04-01', '00028046', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4944', 'S13741', '何垚均', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-26', '00046748', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4945', 'S09053', '姚怡然', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '212.51', '0.00', '2017-04-21', '00030608', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4946', 'S11104', '黄鸿亮', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037173', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4947', 'S09037', '李雅希', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-04-01', '00028497', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4948', 'S09051', '温静远', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-06-17', '00051575', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4949', 'S09042', '刘芷睿', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-06-16', '00051238', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4950', 'S11909', '尹梓溢', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038385', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4951', 'S07377', '谢宇侨', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '200.00', '0.00', '2017-06-17', '00051577', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4952', 'S09055', '钟雨桐', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051244', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4953', 'S09056', '周子澄', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028490', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4954', 'S09038', '李紫嫣', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '187.96', '0.00', '2017-06-17', '00051567', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4955', 'S09033', '黄梓峰', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-04-01', '00028484', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4956', 'S09034', '劳隽熙', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051210', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4957', 'S09056', '周子澄', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028490', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4958', 'S09027', '龚子寅', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-17', '00051561', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4959', 'S09055', '钟雨桐', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028062', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4960', 'S07379', '杨钶犇', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '174.97', '0.00', '2017-04-01', '00028039', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4961', 'S09028', '郭梓聪', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051220', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4962', 'S09039', '梁泓楠', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '210.05', '0.00', '2017-06-16', '00051232', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4963', 'S09478', '易其乐', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-04-22', '00030855', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4964', 'S09613', '生艾霖', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '208.33', '0.00', '2017-04-23', '00031350', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4965', 'S09478', '易其乐', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-04-22', '00030855', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4966', 'S07733', '林承熙', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028498', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4967', 'S11238', '李羽涵', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037371', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4968', 'S09054', '张文一', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028506', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4969', 'S09052', '吴欣诺', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051206', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4970', 'S09049', '苏兴承', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028508', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4971', 'S11962', '李梓铖', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00042389', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4972', 'S09032', '黄泽蕊', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '209.55', '0.00', '2017-05-03', '00034075', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4973', 'S09049', '苏兴承', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028508', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4974', 'S01622', '邱刘哲', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '邹丽萍', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '172.10', '0.00', '2017-04-01', '00028046', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4975', 'S01699', '曾砚斐', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-01', '00028042', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4976', 'S09045', '陆鸣飞', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '188.14', '0.00', '2017-04-01', '00028492', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4977', 'S01699', '曾砚斐', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-22 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-01', '00028042', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4978', 'S13741', '何垚均', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-26', '00046748', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4979', 'S09026', '陈锵铭', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-22 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-01', '00028503', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4980', 'S09478', '易其乐', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-04-22', '00030855', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4981', 'S14517', '列羽芊', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-19', '00043962', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4982', 'S07733', '林承熙', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028498', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4983', 'S09042', '刘芷睿', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-04-01', '00028511', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4984', 'S09050', '王子骅', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '231.00', '0.00', '2017-04-01', '00028485', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4985', 'S09047', '潘浩智', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '208.00', '0.00', '2017-04-01', '00028486', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4986', 'S09047', '潘浩智', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '208.00', '0.00', '2017-04-01', '00028486', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4987', 'S09043', '刘芷妤', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-06-16', '00051198', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4988', 'S09028', '郭梓聪', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028502', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4989', 'S09051', '温静远', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-21', '00030611', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4990', 'S11540', '张芷涵', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00047948', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4991', 'S11909', '尹梓溢', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038385', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4992', 'S09033', '黄梓峰', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-04-01', '00028484', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4993', 'S01616', '彭希扬', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '邹丽萍', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '172.19', '0.00', '2017-04-01', '00028044', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4994', 'S09042', '刘芷睿', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-04-01', '00028511', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4995', 'S01616', '彭希扬', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '邹丽萍', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '172.19', '0.00', '2017-04-01', '00028044', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4996', 'S09199', '曾子希', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '398.75', '0.00', '2017-04-07', '00028758', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4997', 'S11238', '李羽涵', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037371', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4998', 'S09056', '周子澄', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028490', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('4999', 'S14517', '列羽芊', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-19', '00043962', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('5000', 'S11238', '李羽涵', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037371', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('5001', 'S09030', '侯宸卓', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '230.59', '0.00', '2017-05-03', '00034068', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('5002', 'S11965', '杨天乐', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038470', '天河天府路中心', '165', '2017-08-27 16:27:44');
INSERT INTO `stjy_kxmxb` VALUES ('5003', 'S07733', '林承熙', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028498', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5004', 'S09046', '陆子叶', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '187.96', '0.00', '2017-04-01', '00028510', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5005', 'S09032', '黄泽蕊', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '209.55', '0.00', '2017-05-03', '00034075', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5006', 'S11909', '尹梓溢', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038385', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5007', 'S09053', '姚怡然', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '212.51', '0.00', '2017-04-21', '00030608', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5008', 'S09044', '柳皓轩', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-04-01', '00028501', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5009', 'S09043', '刘芷妤', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028507', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5010', 'S09052', '吴欣诺', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028480', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5011', 'S09032', '黄泽蕊', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '209.55', '0.00', '2017-05-03', '00034075', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5012', 'S09054', '张文一', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051208', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5013', 'S09025', '陈可馨8669', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028491', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5014', 'S09047', '潘浩智', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '208.00', '0.00', '2017-04-01', '00028486', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5015', 'S09039', '梁泓楠', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '210.05', '0.00', '2017-05-21', '00045131', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5016', 'S09204', '朱诗淇', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028774', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5017', 'S09027', '龚子寅', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028481', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5018', 'S09042', '刘芷睿', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-04-01', '00028511', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5019', 'S07377', '谢宇侨', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '200.00', '0.00', '2017-04-01', '00028047', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5020', 'S14517', '列羽芊', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-19', '00043962', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5021', 'S09045', '陆鸣飞', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '188.14', '0.00', '2017-06-17', '00051569', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5022', 'S09613', '生艾霖', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '208.33', '0.00', '2017-06-16', '00051214', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5023', 'S09034', '劳隽熙', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028070', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5024', 'S09036', '李佩儿', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '398.75', '0.00', '2017-04-19', '00030475', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5025', 'S01699', '曾砚斐', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-01', '00028042', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5026', 'S11104', '黄鸿亮', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037173', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5027', 'S07495', '邓汇子', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '174.98', '0.00', '2017-04-01', '00028037', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5028', 'S09039', '梁泓楠', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '210.05', '0.00', '2017-05-21', '00045131', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5029', 'S09030', '侯宸卓', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '230.59', '0.00', '2017-05-03', '00034068', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5030', 'S09051', '温静远', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-21', '00030611', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5031', 'S09040', '梁希', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028500', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5032', 'S09039', '梁泓楠', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '210.05', '0.00', '2017-05-21', '00045131', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5033', 'S01622', '邱刘哲', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '邹丽萍', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '172.10', '0.00', '2017-04-01', '00028046', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5034', 'S09053', '姚怡然', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '212.51', '0.00', '2017-04-21', '00030608', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5035', 'S09044', '柳皓轩', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-04-01', '00028501', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5036', 'S13741', '何垚均', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-06-16', '00051190', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5037', 'S11965', '杨天乐', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038470', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5038', 'S09203', '钟华华', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028773', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5039', 'S09030', '侯宸卓', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '230.59', '0.00', '2017-05-03', '00034068', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5040', 'S09204', '朱诗淇', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028774', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5041', 'S09054', '张文一', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028506', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5042', 'S09033', '黄梓峰', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '179.78', '0.00', '2017-06-16', '00051192', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5043', 'S11909', '尹梓溢', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038385', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5044', 'S14517', '列羽芊', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-19', '00043962', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5045', 'S09030', '侯宸卓', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '230.59', '0.00', '2017-05-03', '00034068', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5046', 'S09199', '曾子希', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-22 16:30', '3.00小时', '1.00次', '398.75', '0.00', '2017-04-07', '00028758', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5047', 'S09044', '柳皓轩', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-04-01', '00028501', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5048', 'S01616', '彭希扬', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '邹丽萍', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '172.19', '0.00', '2017-04-01', '00028044', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5049', 'S09053', '姚怡然', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '212.51', '0.00', '2017-04-21', '00030608', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5050', 'S07715', '钟子锟', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051248', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5051', 'S09031', '黄玮婷', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028488', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5052', 'S09036', '李佩儿', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '398.75', '0.00', '2017-04-19', '00030475', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5053', 'S09037', '李雅希', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-04-01', '00028497', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5054', 'S11962', '李梓铖', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00042389', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5055', 'S11104', '黄鸿亮', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037173', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5056', 'S09051', '温静远', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-21', '00030611', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5057', 'S09026', '陈锵铭', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-01', '00028503', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5058', 'S09026', '陈锵铭', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-01', '00028503', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5059', 'S09037', '李雅希', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-06-16', '00051226', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5060', 'S09052', '吴欣诺', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028480', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5061', 'S09203', '钟华华', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028773', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5062', 'S09046', '陆子叶', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '187.96', '0.00', '2017-04-01', '00028510', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5063', 'S09199', '曾子希', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '398.75', '0.00', '2017-04-07', '00028758', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5064', 'S09040', '梁希', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-22 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028500', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5065', 'S09199', '曾子希', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '398.75', '0.00', '2017-04-07', '00028758', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5066', 'S09028', '郭梓聪', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028502', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5067', 'S09034', '劳隽熙', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028070', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5068', 'S09202', '闾家熙', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028769', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5069', 'S09050', '王子骅', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '231.00', '0.00', '2017-06-16', '00051204', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5070', 'S09043', '刘芷妤', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028507', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5071', 'S07495', '邓汇子', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '174.98', '0.00', '2017-04-01', '00028037', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5072', 'S09202', '闾家熙', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028769', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5073', 'S09029', '侯宸越', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '214.15', '0.00', '2017-05-03', '00034071', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5074', 'S07379', '杨钶犇', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '174.97', '0.00', '2017-04-01', '00028039', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5075', 'S11104', '黄鸿亮', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00037173', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5076', 'S09047', '潘浩智', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '208.00', '0.00', '2017-04-01', '00028486', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5077', 'S09037', '李雅希', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-04-01', '00028497', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5078', 'S09046', '陆子叶', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '187.96', '0.00', '2017-04-01', '00028510', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5079', 'S09035', '黎政鑫', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '213.40', '0.00', '2017-05-21', '00045086', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5080', 'S09046', '陆子叶', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '187.96', '0.00', '2017-04-01', '00028510', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5081', 'S09478', '易其乐', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '208.33', '0.00', '2017-04-22', '00030855', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5082', 'S07733', '林承熙', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051236', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5083', 'S09202', '闾家熙', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028769', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5084', 'S09056', '周子澄', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028490', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5085', 'S09027', '龚子寅', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028481', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5086', 'S09029', '侯宸越', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '214.15', '0.00', '2017-05-03', '00034071', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5087', 'S07495', '邓汇子', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '174.98', '0.00', '2017-06-16', '00051218', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5088', 'S11238', '李羽涵', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-06-17', '00051565', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5089', 'S01622', '邱刘哲', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '邹丽萍', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '172.10', '0.00', '2017-04-01', '00028046', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5090', 'S09613', '生艾霖', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '208.33', '0.00', '2017-04-23', '00031350', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5091', 'S11965', '杨天乐', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038470', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5092', 'S09029', '侯宸越', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '214.15', '0.00', '2017-05-03', '00034071', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5093', 'S09026', '陈锵铭', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', 'Richar,潘丽雄', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '0.00', '0.00', '2017-04-01', '00028503', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5094', 'S09045', '陆鸣飞', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '188.14', '0.00', '2017-04-01', '00028492', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5095', 'S09203', '钟华华', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028773', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5096', 'S07377', '谢宇侨', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '200.00', '0.00', '2017-04-01', '00028047', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5097', 'S07379', '杨钶犇', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '174.97', '0.00', '2017-04-01', '00028039', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5098', 'S09027', '龚子寅', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028481', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5099', 'S09035', '黎政鑫', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '213.40', '0.00', '2017-05-21', '00045086', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5100', 'S11962', '李梓铖', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00042389', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5101', 'S11540', '张芷涵', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00047948', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5102', 'S09040', '梁希', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028500', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5103', 'S11965', '杨天乐', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-08', '00038470', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5104', 'S09055', '钟雨桐', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028062', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5105', 'S11540', '张芷涵', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '69.08', '0.00', '2017-05-07', '00047948', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5106', 'S09035', '黎政鑫', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0202', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-22 15:30', '3.00小时', '1.00次', '213.40', '0.00', '2017-06-16', '00051222', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5107', 'S09036', '李佩儿', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '398.75', '0.00', '2017-04-19', '00030475', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5108', 'S09038', '李紫嫣', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '187.96', '0.00', '2017-04-01', '00028499', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5109', 'S09031', '黄玮婷', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028488', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5110', 'S09202', '闾家熙', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028769', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5111', 'S09044', '柳皓轩', '三年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1BF02G0205', '天河天府路中心', '彭永红', '翟志翔,Richar', '', '全职', '', '2017-06-22 16:30', '3.00小时', '1.00次', '207.25', '0.00', '2017-04-01', '00028501', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5112', 'S07377', '谢宇侨', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '200.00', '0.00', '2017-04-01', '00028047', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5113', 'S09055', '钟雨桐', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-01 16:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028062', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5114', 'S09203', '钟华华', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028773', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5115', 'S09049', '苏兴承', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028508', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5116', 'S09204', '朱诗淇', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0106', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-17 09:00', '3.00小时', '1.00次', '308.33', '0.00', '2017-04-08', '00028774', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5117', 'S09031', '黄玮婷', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028488', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5118', 'S09035', '黎政鑫', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-08 16:30', '3.00小时', '1.00次', '213.40', '0.00', '2017-05-21', '00045086', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5119', 'S09025', '陈可馨8669', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF02G0201', '天河天府路中心', '翟志翔', '陈美全,Richar', '', '全职', '', '2017-06-19 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-06-16', '00051188', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5120', 'S09029', '侯宸越', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', '翟志翔,Richar', '', '全职', '', '2017-06-12 15:30', '3.00小时', '1.00次', '214.15', '0.00', '2017-05-03', '00034071', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5121', 'S09031', '黄玮婷', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '180.56', '0.00', '2017-04-01', '00028488', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5122', 'S09038', '李紫嫣', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-10 09:00', '3.00小时', '1.00次', '187.96', '0.00', '2017-04-01', '00028499', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5123', 'S09045', '陆鸣飞', '二年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P02F01G0103', '天河天府路中心', '翟志翔', '郑琴,Zoe', '', '全职', '', '2017-06-03 09:00', '3.00小时', '1.00次', '188.14', '0.00', '2017-04-01', '00028492', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5124', 'S07495', '邓汇子', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0102', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-15 16:30', '3.00小时', '1.00次', '174.98', '0.00', '2017-04-01', '00028037', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5125', 'S09032', '黄泽蕊', '二年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P1AF01G0204', '天河天府路中心', '陈玲', 'Richar,潘丽雄', '', '全职', '', '2017-06-01 15:30', '3.00小时', '1.00次', '209.55', '0.00', '2017-05-03', '00034075', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5126', 'S09025', '陈可馨8669', '一年级', '00-小学英语课程', '广州区域-平时班-英语-3.0小时次', 'P02F01G0101', '天河天府路中心', '翟志翔', 'Richar,郑琴', '', '全职', '', '2017-06-05 15:30', '3.00小时', '1.00次', '180.24', '0.00', '2017-04-01', '00028491', '天河天府路中心', '165', '2017-08-27 16:27:45');
INSERT INTO `stjy_kxmxb` VALUES ('5127', 'S09036', '李佩儿', '一年级', '00-小学英语课程', '广州区域-周末班-英语-3.0小时次', 'P1AF02G0203', '天河天府路中心', '翟志翔', '陈美全,Zoe', '', '全职', '', '2017-06-24 09:00', '3.00小时', '1.00次', '398.75', '0.00', '2017-06-17', '00051563', '天河天府路中心', '165', '2017-08-27 16:27:45');

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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8;

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
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '状态：1，未提交；2已提交;',
  `filename` varchar(255) NOT NULL COMMENT '上传的文件路径',
  `tid` int(11) DEFAULT NULL COMMENT '表类型id',
  `sid` int(11) DEFAULT NULL COMMENT '所属校区id',
  `uid` int(11) DEFAULT NULL COMMENT '登录用户id',
  `qishu` varchar(255) DEFAULT '' COMMENT '期数',
  `daorusj` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=168 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_qishu_history
-- ----------------------------
INSERT INTO `stjy_qishu_history` VALUES ('147', '1', './Public/Uploads/20170827/59a2810b24232.xlsx', '14', '4', '5', '201707', '2017-08-27 16:21:31');
INSERT INTO `stjy_qishu_history` VALUES ('158', '1', './Public/Uploads/20170827/59a28217b1184.xlsx', '5', '4', '5', '201707', '2017-08-27 16:25:59');
INSERT INTO `stjy_qishu_history` VALUES ('156', '1', './Public/Uploads/20170827/59a281b25bf07.xlsx', '4', '4', '5', '201707', '2017-08-27 16:24:18');
INSERT INTO `stjy_qishu_history` VALUES ('155', '1', './Public/Uploads/20170827/59a281a802706.xlsx', '3', '4', '5', '201707', '2017-08-27 16:24:08');
INSERT INTO `stjy_qishu_history` VALUES ('154', '1', './Public/Uploads/20170827/59a281997e429.xlsx', '2', '4', '5', '201707', '2017-08-27 16:23:53');
INSERT INTO `stjy_qishu_history` VALUES ('153', '1', './Public/Uploads/20170827/59a2818e33a3a.xlsx', '1', '4', '5', '201707', '2017-08-27 16:23:42');
INSERT INTO `stjy_qishu_history` VALUES ('159', '1', './Public/Uploads/20170827/59a282213ad1c.xlsx', '6', '4', '5', '201707', '2017-08-27 16:26:09');
INSERT INTO `stjy_qishu_history` VALUES ('160', '1', './Public/Uploads/20170827/59a282289e49c.xlsx', '7', '4', '5', '201707', '2017-08-27 16:26:16');
INSERT INTO `stjy_qishu_history` VALUES ('161', '1', './Public/Uploads/20170827/59a2825a83a41.xlsx', '1', '4', '5', '201706', '2017-08-27 16:27:06');
INSERT INTO `stjy_qishu_history` VALUES ('162', '1', './Public/Uploads/20170827/59a282694d677.xlsx', '2', '4', '5', '201706', '2017-08-27 16:27:21');
INSERT INTO `stjy_qishu_history` VALUES ('163', '1', './Public/Uploads/20170827/59a2827126f07.xlsx', '3', '4', '5', '201706', '2017-08-27 16:27:29');
INSERT INTO `stjy_qishu_history` VALUES ('164', '1', './Public/Uploads/20170827/59a28278cf427.xlsx', '4', '4', '5', '201706', '2017-08-27 16:27:36');
INSERT INTO `stjy_qishu_history` VALUES ('165', '1', './Public/Uploads/20170827/59a2827f0f352.xlsx', '5', '4', '5', '201706', '2017-08-27 16:27:43');
INSERT INTO `stjy_qishu_history` VALUES ('166', '1', './Public/Uploads/20170827/59a28286daee2.xlsx', '6', '4', '5', '201706', '2017-08-27 16:27:50');
INSERT INTO `stjy_qishu_history` VALUES ('167', '1', './Public/Uploads/20170827/59a2828c5b524.xlsx', '7', '4', '5', '201706', '2017-08-27 16:27:56');

-- ----------------------------
-- Table structure for stjy_renshi
-- ----------------------------
DROP TABLE IF EXISTS `stjy_renshi`;
CREATE TABLE `stjy_renshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xingming` varchar(255) DEFAULT NULL,
  `tid` int(11) DEFAULT NULL,
  `quyu` varchar(255) DEFAULT NULL,
  `xiaoqu` varchar(255) DEFAULT NULL,
  `yuangongbh` varchar(255) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL COMMENT '部门id',
  `gid2` int(11) DEFAULT NULL,
  `zhiwu` int(11) DEFAULT NULL,
  `xingbie` tinyint(1) DEFAULT NULL,
  `chushengrq` varchar(255) DEFAULT NULL,
  `fenfou` tinyint(4) DEFAULT NULL,
  `shengyuzh` tinyint(4) DEFAULT NULL,
  `hukouxz` tinyint(4) DEFAULT NULL,
  `gongzuoszd` varchar(255) DEFAULT NULL,
  `lianxidh` varchar(255) DEFAULT NULL,
  `tongxundz` varchar(255) DEFAULT NULL,
  `hukouszd` varchar(255) DEFAULT NULL,
  `youxiang` varchar(255) DEFAULT NULL,
  `chuanyicc` varchar(255) DEFAULT NULL,
  `shengao` int(11) DEFAULT NULL,
  `tizhong` int(11) DEFAULT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_role
-- ----------------------------
INSERT INTO `stjy_role` VALUES ('1', '管理员', null, '1', '超级管理员');
INSERT INTO `stjy_role` VALUES ('2', '行政', null, '1', '行政');
INSERT INTO `stjy_role` VALUES ('3', '行政经理', null, '1', '行政经理');
INSERT INTO `stjy_role` VALUES ('4', '财务', null, '1', '财务');

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
INSERT INTO `stjy_role_user` VALUES ('4', '4');
INSERT INTO `stjy_role_user` VALUES ('2', '2');
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
  `fencheng` varchar(255) DEFAULT NULL COMMENT '分成比例',
  `isuse` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启动：0，未启用；1，启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='校区列表';

-- ----------------------------
-- Records of stjy_school
-- ----------------------------
INSERT INTO `stjy_school` VALUES ('1', '华景分校', null, null, null, '1');
INSERT INTO `stjy_school` VALUES ('2', '番禺分校', null, null, null, '1');
INSERT INTO `stjy_school` VALUES ('3', '罗湖分校', null, null, null, '0');
INSERT INTO `stjy_school` VALUES ('4', '天府校区', '700.00', '2.00', '5,5', '1');

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
  `guojibanye1` double(11,2) DEFAULT NULL COMMENT '国际班(幼儿)1年',
  `guojibanye3` double(11,2) DEFAULT NULL COMMENT '国际班(幼儿)3年',
  `guojibanye5` double(11,2) DEFAULT NULL COMMENT '国际班(幼儿)5年',
  `guojibanxx1` double(11,2) DEFAULT NULL COMMENT '国际班(小学)1年',
  `guojibanxx2` double(11,2) DEFAULT NULL COMMENT '国际班(小学)2年',
  `guojibanxx5` double(11,2) DEFAULT NULL COMMENT '国际班(小学)5年',
  `xinshengyxhy` double(11,2) DEFAULT NULL COMMENT '新生游学会员',
  `guojilxkc` double(11,2) DEFAULT NULL COMMENT '国际领袖课程',
  `yiqims` double(11,2) DEFAULT NULL COMMENT '一期秒杀',
  `maisanse` double(11,2) DEFAULT NULL COMMENT '买三送二',
  `laoshengcsyxhy` double(11,2) DEFAULT NULL COMMENT '老生创始游学会员',
  `xinshengyxmfd` double(11,2) DEFAULT NULL COMMENT '新生游学免费读',
  `laoshengxf` double(11,2) DEFAULT NULL COMMENT '老生续费',
  `xinshengyye` double(11,2) DEFAULT NULL COMMENT '新生营业额',
  `xinshengynnzb` double(11,2) DEFAULT NULL COMMENT '新生1年内追补',
  `xinshengpsb` double(11,2) DEFAULT NULL COMMENT '新生平时班',
  `pingshibynnzb` double(11,2) DEFAULT NULL COMMENT '平时班1年内追补',
  `hejiyye` double(11,2) DEFAULT NULL COMMENT '合计营业额',
  `huiyuanldxyye` double(11,2) DEFAULT NULL COMMENT '会员老带新营业额',
  `qianming` varchar(255) DEFAULT NULL COMMENT '签名',
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
  `xuexiao` varchar(255) DEFAULT NULL COMMENT '学校',
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
) ENGINE=MyISAM AUTO_INCREMENT=1711 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_sjjlb
-- ----------------------------
INSERT INTO `stjy_sjjlb` VALUES ('1641', '42943', '66625', null, 'S19470', '吴家诚', '07-网络咨询', '一年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-27缴费／老带新：无／1期秒杀／其他说明：不退不转一期秒杀价，不转不退。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1640', '42939', '65733', null, 'S19180', 'timmy', '07-网络咨询', '大班', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '4910', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-23缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1638', '42939', '65564', null, 'S19155', '熊峰', '01-老带新', '三年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '1974', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1639', '42939', '65562', null, 'S19155', '熊峰', '01-老带新', '三年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '1974', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-23缴费／老带新：周梓麒／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1636', '42939', '65457', null, 'S19122', '赵若菡', '04-课题：演讲', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '10437', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1637', '42939', '65455', null, 'S19122', '赵若菡', '04-课题：演讲', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '10437', '已打印', '新增', '王圆圆(主签单人),吴彩红（副签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-23缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1635', '42939', '65462', null, 'S18724', '陆文蓓', '02-课题：童话剧', null, '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '4003', '已打印', '续费', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-23缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1634', '42939', '65624', null, 'S09199', '曾子希', '06-上门咨询', '三年级', '广州区域-平时班-英语-3.0小时次(80次)', null, null, '0.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', null, '天河天府路中心', '余洁玲', '交费', null, '3908', '已打印', '新增', '彭永红(主签单人)', '老生连报小学1年国际会员／16580X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：彭永红／首次缴费日期：2017-04-07缴费／老带新：曾子瀚／买三送二／其他说明：秒杀价一年送2期，买三送二。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1633', '42939', '65627', null, 'S09199', '曾子希', '06-上门咨询', '三年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '3908', '已打印', '新增', '张松煌(主签单人)', '老生连报幼儿1期国际学员／1880X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-23缴费／老带新：曾子瀚／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1632', '42938', '65384', null, 'S19097', '冯钰淑', '02-课题：童话剧', null, '广州区域-平时班-英语-3.0小时次(16次)', null, null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '6019', '已打印', '续费', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-22缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1631', '42938', '65380', null, 'S19097', '冯钰淑', '02-课题：童话剧', null, '广州区域-游学会员（美国线-48800元-21天）(1次)', null, null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', null, '天河天府路中心', '余洁玲', '交费', null, '1294', '已打印', '新增', '彭永红(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：彭永红／首次缴费日期：2017-07-22缴费／老带新：无／创始会员／其他说明：', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1630', '42935', '64234', null, 'S18827', '徐宸', '03-课题：自然拼音', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '141', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-19缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1629', '42935', '64236', null, 'S18827', '徐宸', '03-课题：自然拼音', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '141', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1627', '42934', '63983', null, 'S18835', '曾子瀚', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, null, '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1628', '42934', '63982', null, 'S18835', '曾子瀚', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '50590', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-18缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1626', '42934', '63977', null, 'S18834', '王子荞', '01-老带新,02-课题：童话剧', '二年级', '广州区域-游学会员（美国线-48800元-21天）(1次)', null, null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', null, '天河天府路中心', '余洁玲', '交费', null, '6373', '已打印', '新增', '彭永红(副签单人),张松煌(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-18缴费／老带新：罗鸿铭／创始会员／', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1625', '42934', '63832', null, 'S18804', '陈博源', '10-其他渠道推荐', '三年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '61208', '已打印', '新增', '翟志翔(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：翟志翔／首次缴费日期：2017-07-18缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1623', '42932', '63621', null, 'S18745', '肖昕瑶', '06-上门咨询,10-其他渠道推荐', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '27203', '已打印', '预存', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1624', '42932', '63616', null, 'S18745', '肖昕瑶', '06-上门咨询,10-其他渠道推荐', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '27203', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-16缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1622', '42932', '63564', null, 'S18734', '彭星语', '03-课题：自然拼音', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '684078', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-16缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1621', '42932', '63565', null, 'S18734', '彭星语', '03-课题：自然拼音', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, '684078', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1620', '42932', '63501', null, 'S18724', '陆文蓓', '02-课题：童话剧', null, '广州区域-游学会员（美国线-48800元-21天）(1次)', null, null, '0.00', null, '1000.00', null, '0.00', '0.00', '0.00', '0.00', '1000.00', null, '天河天府路中心', '余洁玲', '交费', null, '773', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-16缴费／老带新：无／创始会员／其他说明：', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1619', '42932', '63359', null, 'S18632', '范越好', '02-课题：童话剧,07-网络咨询', null, '广州区域-游学会员（美国线-48800元-21天）(1次)', null, null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', null, '天河天府路中心', '余洁玲', '交费', null, '6539', '已打印', '新增', '王圆圆(主签单人),彭永红（副签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-15缴费／老带新：无／创始会员／其他说明：', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1618', '42931', '63009', null, 'S18646', '黄楷邦', '03-课题：自然拼音', '大班', '广州区域-周末班-英语-3.0小时次(48次)', null, null, '5560.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', null, '天河天府路中心', '余洁玲', '交费', null, '1055', '已打印', '续费', '张松煌(主签单人)', '新生连报小学1年国际会员／16580X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-15缴费／老带新：无／买三送二／其他说明：秒杀价一年送2期，买三送二。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1616', '42931', '63013', null, 'S18646', '黄楷邦', '03-课题：自然拼音', '大班', '广州区域-周末班-英语-3.0小时次(32次)', null, null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '余洁玲', '交费', null, '1055', '已打印', '续费', '张松煌(主签单人)', '报读一年课程赠送32周次课，此课程不退费不结转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1617', '42931', '63007', null, 'S18646', '黄楷邦', '03-课题：自然拼音', '大班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '1055', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1615', '42931', '63014', null, 'S18646', '黄楷邦', '03-课题：自然拼音', '大班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '1055', '已打印', '预存', '张松煌(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1613', '42931', '63001', null, 'S18645', '柯皓天', '01-老带新', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '98850', '已打印', '预存', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1614', '42931', '62998', null, 'S18645', '柯皓天', '01-老带新', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '98850', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1612', '42931', '62926', null, 'S18628', '熊奕宁', '07-网络咨询', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '624508', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1611', '42931', '62929', null, 'S18628', '熊奕宁', '07-网络咨询', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '624508', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1610', '42931', '62920', null, 'S18626', '陈铭灏', '03-课题：自然拼音', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1609', '42931', '62921', null, 'S18626', '陈铭灏', '03-课题：自然拼音', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1608', '42930', '62794', null, 'S18599', '张书瑶4101', '03-课题：自然拼音', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '138455', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1607', '42930', '62793', null, 'S18599', '张书瑶4101', '03-课题：自然拼音', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '138455', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-14缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1606', '42930', '62783', null, 'S18596', '胡遥', '10-其他渠道推荐', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '5348', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-13缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1605', '42930', '62780', null, 'S18593', '胡逍', '10-其他渠道推荐', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '5348', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-13缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1604', '42930', '62781', null, 'S18593', '胡逍', '10-其他渠道推荐', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '5348', '已打印', '预存', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1603', '42930', '62786', null, 'S18593', '胡逍', '10-其他渠道推荐', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '5348', '已打印', '预存', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1602', '42930', '62568', null, 'S18564', '何思睿', '01-老带新', null, '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '897', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-12缴费／老带新：张_仪／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1600', '42930', '62556', null, 'S18562', '骆伊洋Dora', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1601', '42930', '62570', null, 'S18564', '何思睿', '01-老带新', null, null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '897', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1599', '42930', '62554', null, 'S18562', '骆伊洋Dora', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-13缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1598', '42927', '61787', null, 'S18407', '陈启', '01-老带新', null, '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '1358', '已打印', '新增', '王圆圆(主签单人),吴彩红（副签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-11缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1596', '42926', '61364', null, 'S09039', '梁泓楠', null, '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, '已打印', '预存', null, '教材费一套（150元代金券+130元）', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1597', '42927', '61789', null, 'S18407', '陈启', '01-老带新', null, null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, '已打印', '预存', '陈健霞(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1595', '42925', '60986', null, 'S18271', '陈悦心', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, '8641', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1594', '42925', '60984', null, 'S18271', '陈悦心', '03-课题：自然拼音', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '8641', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-09缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1591', '42924', '61310', null, 'S18358', '刘__', '07-网络咨询', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, null, '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1592', '42925', '60839', null, 'S18229', '简耀龙', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '773', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1593', '42925', '60835', null, 'S18229', '简耀龙', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '773', '已打印', '新增', '王圆圆(主签单人),翟志翔（副签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-09缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1590', '42924', '61307', null, 'S18358', '刘__', '07-网络咨询', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, null, '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1587', '42924', '60557', null, 'S18175', '李晓语', '01-老带新', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '梁言', '交费', null, '5349', '已打印', '预存', '张松煌(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1588', '42924', '60846', null, 'S18232', '杨旖妮', '06-上门咨询', null, null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '8038', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1589', '42924', '60845', null, 'S18232', '杨旖妮', '06-上门咨询', null, '广州区域-平时班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '8038', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1586', '42924', '60555', null, 'S18175', '李晓语', '01-老带新', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '5349', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1584', '42924', '60517', null, 'S18156', '蓝添', '01-老带新,06-上门咨询', '四年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '9635', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1585', '42924', '60516', null, 'S18156', '蓝添', '01-老带新,06-上门咨询', '四年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '9635', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1583', '42924', '60524', null, 'S18156', '蓝添', '01-老带新,06-上门咨询', '四年级', '广州区域-周末班-英语-3.0小时次(80次)', null, null, '0.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', null, '天河天府路中心', '梁言', '交费', null, '9635', '已打印', '续费', '王圆圆(主签单人)', '新生连报小学1年国际会员／16580X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-08缴费／老带新：无／买三送二／其他说明：秒杀价一年送2期，买三送二。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1582', '42922', '60186', null, 'S18057', '廖爱跃', '07-网络咨询', '大班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1580', '42921', '59018', null, 'S17907', '江晓潼', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '773', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1581', '42921', '59016', null, 'S17907', '江晓潼', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '773', '已打印', '新增', '王圆圆(主签单人),吴彩红（副签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／王圆圆／首次缴费日期：2017-07-05缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1579', '42921', '59015', null, 'S17905', '梁文迪', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '1945', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1578', '42921', '59013', null, 'S17905', '梁文迪', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '1945', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／王圆圆／首次缴费日期：2017-07-05缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1576', '42921', '59012', null, 'S17901', '林也淇', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '6612', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1577', '42921', '59010', null, 'S17901', '林也淇', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '6612', '已打印', '新增', '王圆圆(主签单人),吴彩红（副签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／王圆圆／首次缴费日期：2017-07-05缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1575', '42920', '58782', null, 'S17868', '纪博桓', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, null, '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1574', '42920', '58786', null, 'S17868', '纪博桓', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, null, '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／王圆圆／首次缴费日期：2017-07-04缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1573', '42920', '59233', null, 'S17865', '姚俊宏', '07-网络咨询', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '5593', null, '新增', '张松煌(主签单人)', '新生连报幼儿1期国际会员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／张松煌／首次缴费日期：2017-07-04缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1572', '42919', '59219', null, 'S17930', '刘赜恺', '07-网络咨询', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '5593', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／张松煌／首次缴费日期：2017-07-03缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1571', '42919', '58621', null, 'S17859', '许雯棋', '07-网络咨询', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, null, '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1570', '42919', '58620', null, 'S17859', '许雯棋', '07-网络咨询', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, null, '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-03缴费／老带新：无／1期秒杀／其他说明：不退不转', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1642', '42943', '66627', null, 'S19470', '吴家诚', '07-网络咨询', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, '6997', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1643', '42943', '66629', null, 'S19472', '吴家兆', '07-网络咨询', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, '6997', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:19');
INSERT INTO `stjy_sjjlb` VALUES ('1644', '42943', '66628', null, 'S19472', '吴家兆', '07-网络咨询', '一年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-27缴费／老带新：无／1期秒杀／其他说明：不退不转一期秒杀价，不转不退。', '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1645', '42945', '66736', null, 'S19504', '邓禹', '07-网络咨询', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, null, '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1646', '42945', '66735', null, 'S19504', '邓禹', '07-网络咨询', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '621497', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-27缴费／老带新：无／1期秒杀／其他说明：不退不转一期秒杀价，不转不退。', '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1647', '42945', '66789', null, 'S19524', '林子妍', '01-老带新', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '67888', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1648', '42945', '66788', null, 'S19524', '林子妍', '01-老带新', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '67888', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-27缴费／老带新：列语芊／1期秒杀／其他说明：不退不转一期秒杀价，不转不退。', '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1649', '42948', '67418', null, 'S11566', '陈钧泽', '01-老带新', '一年级', '广州区域-周末班-英语-3.0小时次(48次)', null, null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, null, '转校', '梁彩红(主签单人)', null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1650', '42948', '67417', null, 'S11566', '陈钧泽', '01-老带新', '一年级', '广州区域-周末班-英语-3.0小时次(-48次)', null, null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '陈燕梅', '结转', null, null, null, '新增', '梁彩红(主签单人)', null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1651', '42948', '67420', null, 'S13383', '杨恩昊', '01-老带新', '三年级', '广州区域-周末班-英语-3.0小时次(48次)', null, null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, null, '转校', '梁彩红(主签单人)', null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1652', '42948', '67419', null, 'S13383', '杨恩昊', '01-老带新', '三年级', '广州区域-周末班-英语-3.0小时次(-48次)', null, null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '陈燕梅', '结转', null, null, null, '新增', '梁彩红(主签单人)', null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1653', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1654', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1655', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1656', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1657', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1658', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1659', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1660', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1661', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1662', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1663', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1664', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1665', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1666', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1667', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1668', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1669', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1670', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1671', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1672', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1673', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1674', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1675', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1676', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1677', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1678', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1679', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1680', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1681', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '156', '2017-08-27 16:24:20');
INSERT INTO `stjy_sjjlb` VALUES ('1682', '42916', '00056464', '', 'S17328', '姜卉', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '8384', '已打印', '新增', '张松煌(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1683', '42916', '00056352', '', 'S17302', '胡世程', '03-课题：自然拼音', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '8260', '已打印', '新增', '翟志翔(副签单人),王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1684', '42915', '00056409', '', 'S17326', '林小轩', '07-网络咨询', '中班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '8798', '已打印', '新增', '张松煌(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1685', '42915', '00056405', '', 'S17323', '林小哲（Austin）', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', '', null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '8798', '已打印', '新增', '张松煌(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1686', '42915', '00056398', '', 'S17318', '朱钰彤', '01-老带新', '', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '8268', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1687', '42915', '00056394', '', 'S17309', '冯煦洋', '07-网络咨询', '', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '0986', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1688', '42915', '00056386', '', 'S17314', '肖鑫彤', '01-老带新', '一年级', '广州区域-平时班-英语-3.0小时次(120次)', '', null, '0.00', null, '25000.00', null, '0.00', '0.00', '0.00', '0.00', '25000.00', null, '天河天府路中心', '梁言', '交费', null, '4748', '已打印', '新增', '翟志翔(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1689', '42915', '00056385', '', 'S17311', '姚季芮', '07-网络咨询', '一年级', '广州区域-平时班-英语-3.0小时次(120次)', '', null, '0.00', null, '25000.00', null, '0.00', '0.00', '0.00', '0.00', '25000.00', null, '天河天府路中心', '梁言', '交费', null, '3123', '已打印', '续费', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1690', '42915', '00056378', '', 'S17311', '姚季芮', '07-网络咨询', '一年级', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '7674', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1691', '42915', '00056370', '', 'S16827', '黄祺茜-KIKI', '03-课题：自然拼音', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '', '已打印', '续费', '张松煌(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1692', '42914', '00056426', '', 'S17330', '汪宇丰', '01-老带新', '小班', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '4193', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1693', '42914', '00055768', '', 'S17123', '黄思睿', '10-其他渠道推荐', '小班', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '8384', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1694', '42914', '00055709', '', 'S17110', '周梓麒', '02-课题：童话剧', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '8627', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1695', '42914', '00055454', '', 'S17043', '王唯有', '07-网络咨询', '中班', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '3232', '已打印', '新增', '张松煌(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1696', '42914', '00055451', '', 'S17042', '李泓泽', '07-网络咨询', '中班', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '3232', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际会员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／张松煌／首次缴费日期：2017-06-28缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1697', '42914', '00055447', '', 'S17040', '吴祝吉', '07-网络咨询', '中班', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '3232', '已打印', '新增', '张松煌(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1698', '42914', '00055440', '', 'S17035', '戴永航', '在线报名,10-其他渠道推荐', '', '广州区域-平时班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '9868', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1699', '42914', '00055434', '', 'S17019', '戴裕桐', '03-课题：自然拼音', '', '广州区域-平时班-英语-3.0小时次(16次)', '', null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '8260', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1700', '42914', '00055391', '', 'S17011', '吴志轩', '01-老带新', '', '广州区域-周末班-英语-1.5小时次(16次)', '', null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '0773', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1701', '42911', '00055018', '', 'S11950', '翁语欣（1）', '', '三年级', '广州区域-游学会员（美国线-48800元-21天）(1次)', '', null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', null, '天河天府路中心', '梁言', '交费', null, '', '已打印', '续费', '王圆圆(副签单人),翟志翔(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：0）-0（剩余学费：0）-0（已交定金）-0（优惠：0）-0（预减：0）-0（老带新：无）=48800元／会员有效期：2017-06-25-2020-06-25／拼单对象：无／PRT跟进人：王圆圆50%翟志翔50%／首次缴费日期：2017-06-25／老带新：无／创始会员／其他说明：该生报名树童创始游学会员48800元(双游学', '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1702', '42911', '00054959', '', 'S16827', '黄祺茜-KIKI', '03-课题：自然拼音', '二年级', '广州区域-游学会员（美国线-48800元-21天）(1次)', '', null, '0.00', null, '10000.00', null, '0.00', '0.00', '0.00', '0.00', '10000.00', null, '天河天府路中心', '梁言', '交费', null, '3628', '已打印', '新增', '彭永红(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1703', '42911', '00054933', '', 'S16821', '邹沐彤', '01-老带新', '二年级', '广州区域-周末班-英语-3.0小时次(120次)', '', null, '0.00', null, '25000.00', null, '0.00', '0.00', '0.00', '0.00', '25000.00', null, '天河天府路中心', '梁言', '交费', null, '2110', '已打印', '新增', '吴彩红(副签单人),王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1704', '42911', '00054539', '', 'S16667', '曾芷睿rayna', '03-课题：自然拼音', '二年级', '广州区域-平时班-英语-3.0小时次(120次)', '', null, '0.00', null, '25000.00', null, '0.00', '0.00', '0.00', '0.00', '25000.00', null, '天河天府路中心', '梁言', '交费', null, '7973', '已打印', '新增', '陈美全(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1705', '42911', '00054511', '', 'S16658', '汲春杉', '02-课题：童话剧', '一年级', '广州区域-平时班-英语-3.0小时次(120次)', '', null, '0.00', null, '25000.00', null, '0.00', '0.00', '0.00', '0.00', '25000.00', null, '天河天府路中心', '梁言', '交费', null, '2972', '已打印', '新增', '吴彩红(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1706', '42904', '00051899', '', 'S15861', '徐俊哲', '05-地推', '大班', '广州区域-周末班-英语-3.0小时次(48次)', '', null, '0.00', null, '3316.00', null, '0.00', '0.00', '0.00', '0.00', '3316.00', null, '天河天府路中心', '梁言', '交费', null, '5677', '已打印', '续费', '彭永红(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1707', '42904', '00051896', '', 'S15861', '徐俊哲', '05-地推', '大班', '广州区域-周末班-英语-3.0小时次(120次)', '', null, '0.00', null, '25000.00', null, '0.00', '0.00', '0.00', '0.00', '25000.00', null, '天河天府路中心', '梁言', '交费', null, '5677', '已打印', '新增', '彭永红(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1708', '42903', '00051764', '', 'S15801', '杨雨浠', '', '二年级', '广州区域-周末班-英语-3.0小时次(120次)', '', null, '0.00', null, '25000.00', null, '0.00', '0.00', '0.00', '0.00', '25000.00', null, '天河天府路中心', '梁言', '交费', null, '8491', '已打印', '新增', '翟志翔(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1709', '42898', '00051879', '', 'S15854', '蒋沛霖', '06-上门咨询', '大班', '广州区域-周末班-英语-3.0小时次(48次)', '', null, '0.00', null, '3316.00', null, '0.00', '0.00', '0.00', '0.00', '3316.00', null, '天河天府路中心', '梁言', '交费', null, '6087', '已打印', '续费', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');
INSERT INTO `stjy_sjjlb` VALUES ('1710', '42898', '00051871', '', 'S15854', '蒋沛霖', '06-上门咨询', '大班', '广州区域-周末班-英语-3.0小时次(120次)', '', null, '0.00', null, '25000.00', null, '0.00', '0.00', '0.00', '0.00', '25000.00', null, '天河天府路中心', '梁言', '交费', null, '6087', '已打印', '新增', '王圆圆(主签单人)', null, '164', '2017-08-27 16:27:37');

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
  `status_xzjl` tinyint(1) DEFAULT NULL COMMENT '行政经理状态:1,未操作;2,已审核;3,退回;4,被退回;5,取消',
  `status_cw` tinyint(1) DEFAULT NULL COMMENT '财务状态:1,未操作;2,已审核;3,退回;4,取消;',
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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_sjzb
-- ----------------------------
INSERT INTO `stjy_sjzb` VALUES ('27', '201707', '4', '2', '2', '2', '2', '2', '2', '2', '2', '2', '1', null, null, '行政经理', '无', '无', '无', '2017-08-27 16:26:20', null, null, null);
INSERT INTO `stjy_sjzb` VALUES ('28', '201706', '4', '2', '2', '2', '2', '2', '2', '2', '1', '1', null, null, null, '无', '无', '无', '无', null, null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=301 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xxkedb
-- ----------------------------
INSERT INTO `stjy_xxkedb` VALUES ('295', '1', 'A类', '华景', '2017-07-01', '朱晓佳', '2016-03-22', '正式期', '0.00', '0.00', '0.00', '0.00', '否', '147', '2017-08-27 16:21:31');
INSERT INTO `stjy_xxkedb` VALUES ('296', '2', 'A类', '华景', '2017-07-01', '张松煌', '2017-02-25', '试用期', '0.00', '10.00', '10000.00', '75000.00', '', '147', '2017-08-27 16:21:31');
INSERT INTO `stjy_xxkedb` VALUES ('297', '3', 'A类', '华景', '2017-07-01', '翟志翔', '2017-01-13', '正式期', '50.00', '0.00', '50000.00', '240000.00', '否', '147', '2017-08-27 16:21:31');
INSERT INTO `stjy_xxkedb` VALUES ('298', '4', 'A类', '华景', '2017-07-01', '王圆圆', '2017-03-31', '试用期', '40.00', '10.00', '50000.00', '275000.00', '', '147', '2017-08-27 16:21:31');
INSERT INTO `stjy_xxkedb` VALUES ('299', '5', 'A类', '华景', '2017-07-01', '彭永红', '2015-08-01', '正式期', '30.00', '0.00', '30000.00', '120000.00', '否', '147', '2017-08-27 16:21:31');
INSERT INTO `stjy_xxkedb` VALUES ('300', '6', 'A类', '华景', '2017-07-01', '吴彩红', '2017-04-08', '试用期', '10.00', null, '10000.00', '75000.00', '', '147', '2017-08-27 16:21:31');

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
) ENGINE=MyISAM AUTO_INCREMENT=2718 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xyfyyjb
-- ----------------------------
INSERT INTO `stjy_xyfyyjb` VALUES ('2374', 'S15854', '蒋沛霖', '15360016840', null, '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2375', 'S13026', '王加泓', '13580325947', null, '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2376', 'S15861', '徐俊哲', '13640630605', null, '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2377', 'S17311', '姚季芮', '18922260526', null, '广州区域-平时班-英语-3.0小时次', '', '256.00', '次', '26880.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2378', 'S16658', '汲春杉', '13928893100', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2379', 'S17314', '肖鑫彤', '13710988399', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2380', 'S16529', '何家坤', '18026380649', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2381', 'S16667', '曾芷睿rayna', '13922147018', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2382', 'S16600', '李冠延', '13711288940', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2383', 'S16821', '邹沐彤', '13928866895', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2384', 'S10783', '李宣霖', '18620830552', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2385', 'S16607', '雷鲁健', '13798183155', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2386', 'S15801', '杨雨浠', '18665738556', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2387', 'S16415', '杨晨曦', '13922138919', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2388', 'S09478', '易其乐', '13822188180', null, '广州区域-周末班-英语-3.0小时次', '', '234.00', '次', '23750.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2389', 'S09039', '梁泓楠', '13418072142', null, '广州区域-平时班-英语-3.0小时次', '', '232.00', '次', '23524.94', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2390', 'S09032', '黄泽蕊', '13802548976', null, '广州区域-平时班-英语-3.0小时次', '', '232.00', '次', '23469.30', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2391', 'S09613', '生艾霖', '13392681558', null, '广州区域-平时班-英语-3.0小时次', '', '231.00', '次', '23125.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2392', 'S09037', '李雅希', '13533545832', null, '广州区域-平时班-英语-3.0小时次', '', '227.00', '次', '22305.75', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2393', 'S09053', '姚怡然', '13826485248', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '21463.34', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2394', 'S09029', '侯宸越', '13802536119', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '21629.39', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2395', 'S09030', '侯宸卓', '13802536119', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '23289.06', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2396', 'S09035', '黎政鑫', '13640846060', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '21552.91', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2397', 'S09204', '朱诗淇', '13725200569', null, '广州区域-周末班-英语-3.0小时次', '', '137.00', '次', '17737.67', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2398', 'S09202', '闾家熙', '13570201921', null, '广州区域-周末班-英语-3.0小时次', '', '137.00', '次', '17737.67', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2399', 'S09051', '温静远', '13922106580', null, '广州区域-周末班-英语-3.0小时次', '', '128.00', '次', '-0.46', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2400', 'S09203', '钟华华', '13824424796', null, '广州区域-周末班-英语-3.0小时次', '', '121.00', '次', '17737.67', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2401', 'S09042', '刘芷睿', '18665651008', null, '广州区域-平时班-英语-3.0小时次', '', '108.00', '次', '22759.31', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2402', 'S09045', '陆鸣飞', '13609726477', null, '广州区域-周末班-英语-3.0小时次', '', '107.00', '次', '22573.30', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2403', 'S09027', '龚子寅', '13829759394', null, '广州区域-周末班-英语-3.0小时次', '', '103.00', '次', '18564.58', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2404', 'S09034', '劳隽熙', '13922166899', null, '广州区域-平时班-英语-3.0小时次', '', '102.00', '次', '18380.55', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2405', 'S09025', '陈可馨8669', '15622218669', null, '广州区域-平时班-英语-3.0小时次', '', '102.00', '次', '18384.03', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2406', 'S07715', '钟子锟', '18929593969', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.83', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2407', 'S09056', '周子澄', '13926468975', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.79', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2408', 'S09054', '张文一', '13302336626', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.79', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2409', 'S09055', '钟雨桐', '18898605866', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18200.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2410', 'S07733', '林承熙', '13922386115', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.79', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2411', 'S13744', '何柏沅', '13070261292', null, '广州区域-周末班-英语-1.5小时次', '', '101.00', '次', '25960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2412', 'S09050', '王子骅', '13302291816', null, '广州区域-平时班-英语-3.0小时次', '', '97.00', '次', '22407.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2413', 'S09033', '黄梓峰', '13560016636', null, '广州区域-平时班-英语-3.0小时次', '', '97.00', '次', '17439.09', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2414', 'S16590', '崔雯睿', '13719056933', null, '广州区域-周末班-英语-1.5小时次', '', '96.00', '次', '11400.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2415', 'S09038', '李紫嫣', '18520121305', null, '广州区域-周末班-英语-3.0小时次', '', '94.00', '次', '17668.56', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2416', 'S09049', '苏兴承', '13922229923', null, '广州区域-周末班-英语-3.0小时次', '', '92.00', '次', '16611.06', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2417', 'S09047', '潘浩智', '13640768911', null, '广州区域-周末班-英语-3.0小时次', '', '92.00', '次', '19136.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2418', 'S09046', '陆子叶', '13632453211', null, '广州区域-平时班-英语-3.0小时次', '', '92.00', '次', '17292.63', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2419', 'S07495', '邓汇子', '13560478460', null, '广州区域-平时班-英语-3.0小时次', '', '92.00', '次', '16098.45', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2420', 'S09043', '刘芷妤', '13501518927', null, '广州区域-平时班-英语-3.0小时次', '', '91.00', '次', '16430.51', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2421', 'S09040', '梁希', '13556198719', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2422', 'S09031', '黄玮婷', '18928895338', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2423', 'S09052', '吴欣诺', '13632353832', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2424', 'S09028', '郭梓聪', '13502447171', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2425', 'S07379', '杨钶犇', '13794367768', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '15747.68', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2426', 'S09044', '柳皓轩', '13560322898', null, '广州区域-平时班-英语-3.0小时次', '', '67.00', '次', '13885.75', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2427', 'S07378', '谢宇博', '13500000969', null, '广州区域-平时班-英语-3.0小时次', '', '60.00', '次', '12000.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2428', 'S07377', '谢宇侨', '13500000969', null, '广州区域-周末班-英语-3.0小时次', '', '56.00', '次', '10950.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2429', 'S11787', '罗悦宁', '18602031560', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2430', 'S12545', '杨梓盈', '18588582151', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2431', 'S10626', '杨一诺（1）', '18688908150', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2432', 'S11226', '林子淇（1）', '13427585469', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2433', 'S10980', '林昕睿', '18998298281', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2434', 'S12913', '蔡乐铭', '13826173078', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2435', 'S11084', '邱堉庄', '13650896618', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2436', 'S11473', '陈梓豪0326', '13825130326', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2437', 'S10776', '李欣遥', '18620830552', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2438', 'S10725', '张驰（1）', '13825091202', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2439', 'S10889', '李烨铭', '13148948648', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2440', 'S12910', '龙心宜', '13622289238', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2441', 'S11347', '王岱霖', '13610178910', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2442', 'S10708', '张曌仪', '18903005813', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2443', 'S11790', '张梓玥', '18520191828', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2444', 'S12820', '何雯', '13068821834', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2445', 'S13103', '万博文', '13922274036', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2446', 'S10555', '邓亦舟', '18926224535', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2447', 'S11217', '许雯婷', '17817317308', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2448', 'S11883', '陈立言', '18680286506', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2449', 'S10907', '梁钰', '18122202254', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2450', 'S11940', '胡甜慈', '18022899616', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2451', 'S13110', '姜昕屹', '13725287618', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2452', 'S13320', '魏蔚然', '13926074520', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2453', 'S13317', '陈姝含', '13632496687', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2454', 'S14355', '毛思羽', '13602285805', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2455', 'S10222', '李乐天', '13556007650', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2456', 'S11938', '吴沐欣', '13922257745', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2457', 'S13915', '宾诗琪', '15989047046', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2458', 'S11163', '曾浩轩（1）', '13602234226', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2459', 'S10823', '王梓淇（1）', '18588508133', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2460', 'S10759', '李澜昕', '15975413984', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2461', 'S10636', '杨一言', '18688908150', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2462', 'S11950', '翁语欣（1）', '13580347076', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2463', 'S12550', '李沄天', '13719199190', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2464', 'S11242', '刘安淇（1）', '13822267285', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2465', 'S12495', '陈宇华', '13318838382', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2466', 'S11534', '朱晓禾', '18026275252', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2467', 'S11137', '杨熙峻', '13710589432', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2468', 'S10390', '詹靖宇', '13925092000', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2469', 'S11964', '平皓中', '18602015509', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2470', 'S12431', '唐茜薇', '13798159371', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2471', 'S12911', '王稚尹', '13632336039', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2472', 'S13741', '何垚均', '18688471778', null, '广州区域-平时班-英语-3.0小时次', '', '44.00', '次', '3039.67', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2473', 'S14517', '列羽芊', '13828434397', null, '广州区域-周末班-英语-3.0小时次', '', '43.00', '次', '2970.58', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2474', 'S11962', '李梓铖', '13631317878', null, '广州区域-周末班-英语-3.0小时次', '', '42.00', '次', '2901.50', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2475', 'S11238', '李羽涵', '13640217144', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2476', 'S11909', '尹梓溢', '13527850817', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2477', 'S11104', '黄鸿亮', '13660538977', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2478', 'S11965', '杨天乐', '13632358827', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2479', 'S11540', '张芷涵', '13763366493', null, '广州区域-平时班-英语-3.0小时次', '', '41.00', '次', '2832.42', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2480', 'S10408', '谢语墨', '13632190143', null, '广州区域-周末班-英语-3.0小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2481', 'S12380', '张庭语', '13808870314', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2482', 'S11059', '黄元星', '13711669179', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2483', 'S11143', '林馨语', '13609085038', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2484', 'S12258', '张语彤', '18680254600', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2485', 'S11543', '江益民', '13725105561', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2486', 'S12367', '彭芷晴', '18928861230', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2487', 'S09879', '黄映衡', '13560016636', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '1200.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2488', 'S10783', '李宣霖', '18620830552', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2489', 'S12469', '万语笑', '18022308486', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2490', 'S11664', '张智钦', '13602828746', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2491', 'S12366', '金昱谦', '13360008197', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2492', 'S14734', '张羽嫣', '13600058187', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2493', 'S11667', '周昱延', '15920834834', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2494', 'S13067', '唐希怡', '13560455525', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2495', 'S12425', '熊忻仪', '13922453679', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2496', 'S10771', '刘骐瑶', '13902202502', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2497', 'S10414', '詹靖轩', '13925092000', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2498', 'S12467', '杨芷澄', '13450399199', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2499', 'S11798', '邹亦非', '18926224335', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2500', 'S11665', '潘钰辰', '13922769637', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2501', 'S14675', '李梓杰', '15889391251', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2502', 'S14685', '高梓骞', '13922220087', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2503', 'S11900', '符方涓', '13808841422', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2504', 'S11036', '黄芷琳0305', '13560250305', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2505', 'S11147', '陈明宇', '15919305340', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2506', 'S11028', '郑煜坤', '13710392726', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2507', 'S11046', '张奇钰', '13580347594', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2508', 'S10745', '黎亮', '18100203550', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2509', 'S11022', '吴奕帆', '13312836220', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2510', 'S01699', '曾砚斐', '18818859966', null, '广州区域-平时班-英语-3.0小时次', '', '30.00', '次', '0.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2511', 'S01616', '彭希扬', '18620488133', null, '广州区域-平时班-英语-3.0小时次', '邹丽萍', '22.00', '次', '3788.17', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2512', 'S01622', '邱刘哲', '18620916361', null, '广州区域-平时班-英语-3.0小时次', '邹丽萍', '21.00', '次', '3614.18', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2513', 'S13730', '何泳希5668', '13022055668', null, '广州区域-周末班-英语-1.5小时次', '', '21.00', '次', '960.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2514', 'S09026', '陈锵铭', '13802520060', null, '广州区域-平时班-英语-3.0小时次', '', '19.00', '次', '0.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2515', 'S17323', '林小哲（Austin）', '15802016375', null, '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2516', 'S17019', '戴裕桐', '13688880119', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2517', 'S17110', '周梓麒', '15102069298', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2518', 'S16827', '黄祺茜-KIKI', '13503017628', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2519', 'S17302', '胡世程', '13925002550', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2520', 'S16474', '钟玥嘉', '13600080140', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2521', 'S17318', '朱钰彤', '13826452594', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2522', 'S17040', '吴祝吉', '13922257745', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2523', 'S17035', '戴永航', '13688880119', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2524', 'S17042', '李泓泽', '13609002006', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2525', 'S17043', '王唯有', '13922257745', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2526', 'S17326', '林小轩', '15802016375', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2527', 'S17123', '黄思睿', '13926022826', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2528', 'S17011', '吴志轩', '18928912032', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2529', 'S17328', '姜卉', '13533065839', null, '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2530', 'S17330', '汪宇丰', '18520664506', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2531', 'S17309', '冯煦洋', '13660776606', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2532', 'S09036', '李佩儿', '13527882123', null, '广州区域-周末班-英语-3.0小时次', '', '5.00', '次', '1993.75', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2533', 'S09199', '曾子希', '13631499742', null, '广州区域-平时班-英语-3.0小时次', '', '5.00', '次', '1993.75', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2534', 'S09051', '温静远', '13922106580', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '47536.56', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2535', 'S16827', '黄祺茜-KIKI', '13503017628', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2536', 'S09026', '陈锵铭', '13802520060', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2537', 'S09315', '蔡君昊', '13603016366', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2538', 'S13730', '何泳希5668', '13022055668', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2539', 'S13741', '何垚均', '18688471778', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2540', 'S16940', '梁添翔', '13610122142', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2541', 'S01699', '曾砚斐', '18818859966', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2542', 'S11950', '翁语欣（1）', '13580347076', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2543', 'S09309', '邱朔晴', '18922734146', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2544', 'S09325', '朱彦坤', '13527820131', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2545', 'S09326', '王子涵（1）', '15011912587', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '160', '2017-08-27 16:26:17');
INSERT INTO `stjy_xyfyyjb` VALUES ('2546', 'S15854', '蒋沛霖', '15360016840', null, '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2547', 'S13026', '王加泓', '13580325947', null, '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2548', 'S15861', '徐俊哲', '13640630605', null, '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2549', 'S17311', '姚季芮', '18922260526', null, '广州区域-平时班-英语-3.0小时次', '', '256.00', '次', '26880.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2550', 'S16658', '汲春杉', '13928893100', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2551', 'S17314', '肖鑫彤', '13710988399', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2552', 'S16529', '何家坤', '18026380649', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2553', 'S16667', '曾芷睿rayna', '13922147018', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2554', 'S16600', '李冠延', '13711288940', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2555', 'S16821', '邹沐彤', '13928866895', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2556', 'S10783', '李宣霖', '18620830552', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2557', 'S16607', '雷鲁健', '13798183155', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2558', 'S15801', '杨雨浠', '18665738556', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2559', 'S16415', '杨晨曦', '13922138919', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2560', 'S09478', '易其乐', '13822188180', null, '广州区域-周末班-英语-3.0小时次', '', '234.00', '次', '23750.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2561', 'S09039', '梁泓楠', '13418072142', null, '广州区域-平时班-英语-3.0小时次', '', '232.00', '次', '23524.94', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2562', 'S09032', '黄泽蕊', '13802548976', null, '广州区域-平时班-英语-3.0小时次', '', '232.00', '次', '23469.30', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2563', 'S09613', '生艾霖', '13392681558', null, '广州区域-平时班-英语-3.0小时次', '', '231.00', '次', '23125.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2564', 'S09037', '李雅希', '13533545832', null, '广州区域-平时班-英语-3.0小时次', '', '227.00', '次', '22305.75', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2565', 'S09053', '姚怡然', '13826485248', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '21463.34', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2566', 'S09029', '侯宸越', '13802536119', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '21629.39', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2567', 'S09030', '侯宸卓', '13802536119', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '23289.06', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2568', 'S09035', '黎政鑫', '13640846060', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '21552.91', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2569', 'S09204', '朱诗淇', '13725200569', null, '广州区域-周末班-英语-3.0小时次', '', '137.00', '次', '17737.67', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2570', 'S09202', '闾家熙', '13570201921', null, '广州区域-周末班-英语-3.0小时次', '', '137.00', '次', '17737.67', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2571', 'S09051', '温静远', '13922106580', null, '广州区域-周末班-英语-3.0小时次', '', '128.00', '次', '-0.46', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2572', 'S09203', '钟华华', '13824424796', null, '广州区域-周末班-英语-3.0小时次', '', '121.00', '次', '17737.67', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2573', 'S09042', '刘芷睿', '18665651008', null, '广州区域-平时班-英语-3.0小时次', '', '108.00', '次', '22759.31', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2574', 'S09045', '陆鸣飞', '13609726477', null, '广州区域-周末班-英语-3.0小时次', '', '107.00', '次', '22573.30', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2575', 'S09027', '龚子寅', '13829759394', null, '广州区域-周末班-英语-3.0小时次', '', '103.00', '次', '18564.58', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2576', 'S09034', '劳隽熙', '13922166899', null, '广州区域-平时班-英语-3.0小时次', '', '102.00', '次', '18380.55', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2577', 'S09025', '陈可馨8669', '15622218669', null, '广州区域-平时班-英语-3.0小时次', '', '102.00', '次', '18384.03', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2578', 'S07715', '钟子锟', '18929593969', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.83', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2579', 'S09056', '周子澄', '13926468975', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.79', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2580', 'S09054', '张文一', '13302336626', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.79', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2581', 'S09055', '钟雨桐', '18898605866', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18200.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2582', 'S07733', '林承熙', '13922386115', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.79', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2583', 'S13744', '何柏沅', '13070261292', null, '广州区域-周末班-英语-1.5小时次', '', '101.00', '次', '25960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2584', 'S09050', '王子骅', '13302291816', null, '广州区域-平时班-英语-3.0小时次', '', '97.00', '次', '22407.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2585', 'S09033', '黄梓峰', '13560016636', null, '广州区域-平时班-英语-3.0小时次', '', '97.00', '次', '17439.09', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2586', 'S16590', '崔雯睿', '13719056933', null, '广州区域-周末班-英语-1.5小时次', '', '96.00', '次', '11400.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2587', 'S09038', '李紫嫣', '18520121305', null, '广州区域-周末班-英语-3.0小时次', '', '94.00', '次', '17668.56', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2588', 'S09049', '苏兴承', '13922229923', null, '广州区域-周末班-英语-3.0小时次', '', '92.00', '次', '16611.06', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2589', 'S09047', '潘浩智', '13640768911', null, '广州区域-周末班-英语-3.0小时次', '', '92.00', '次', '19136.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2590', 'S09046', '陆子叶', '13632453211', null, '广州区域-平时班-英语-3.0小时次', '', '92.00', '次', '17292.63', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2591', 'S07495', '邓汇子', '13560478460', null, '广州区域-平时班-英语-3.0小时次', '', '92.00', '次', '16098.45', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2592', 'S09043', '刘芷妤', '13501518927', null, '广州区域-平时班-英语-3.0小时次', '', '91.00', '次', '16430.51', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2593', 'S09040', '梁希', '13556198719', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2594', 'S09031', '黄玮婷', '18928895338', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2595', 'S09052', '吴欣诺', '13632353832', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2596', 'S09028', '郭梓聪', '13502447171', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2597', 'S07379', '杨钶犇', '13794367768', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '15747.68', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2598', 'S09044', '柳皓轩', '13560322898', null, '广州区域-平时班-英语-3.0小时次', '', '67.00', '次', '13885.75', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2599', 'S07378', '谢宇博', '13500000969', null, '广州区域-平时班-英语-3.0小时次', '', '60.00', '次', '12000.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2600', 'S07377', '谢宇侨', '13500000969', null, '广州区域-周末班-英语-3.0小时次', '', '56.00', '次', '10950.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2601', 'S11787', '罗悦宁', '18602031560', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2602', 'S12545', '杨梓盈', '18588582151', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2603', 'S10626', '杨一诺（1）', '18688908150', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2604', 'S11226', '林子淇（1）', '13427585469', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2605', 'S10980', '林昕睿', '18998298281', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2606', 'S12913', '蔡乐铭', '13826173078', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2607', 'S11084', '邱堉庄', '13650896618', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2608', 'S11473', '陈梓豪0326', '13825130326', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2609', 'S10776', '李欣遥', '18620830552', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2610', 'S10725', '张驰（1）', '13825091202', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2611', 'S10889', '李烨铭', '13148948648', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2612', 'S12910', '龙心宜', '13622289238', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2613', 'S11347', '王岱霖', '13610178910', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2614', 'S10708', '张曌仪', '18903005813', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2615', 'S11790', '张梓玥', '18520191828', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2616', 'S12820', '何雯', '13068821834', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2617', 'S13103', '万博文', '13922274036', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2618', 'S10555', '邓亦舟', '18926224535', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2619', 'S11217', '许雯婷', '17817317308', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2620', 'S11883', '陈立言', '18680286506', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2621', 'S10907', '梁钰', '18122202254', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2622', 'S11940', '胡甜慈', '18022899616', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2623', 'S13110', '姜昕屹', '13725287618', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2624', 'S13320', '魏蔚然', '13926074520', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2625', 'S13317', '陈姝含', '13632496687', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2626', 'S14355', '毛思羽', '13602285805', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2627', 'S10222', '李乐天', '13556007650', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2628', 'S11938', '吴沐欣', '13922257745', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2629', 'S13915', '宾诗琪', '15989047046', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2630', 'S11163', '曾浩轩（1）', '13602234226', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2631', 'S10823', '王梓淇（1）', '18588508133', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2632', 'S10759', '李澜昕', '15975413984', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2633', 'S10636', '杨一言', '18688908150', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2634', 'S11950', '翁语欣（1）', '13580347076', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2635', 'S12550', '李沄天', '13719199190', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2636', 'S11242', '刘安淇（1）', '13822267285', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2637', 'S12495', '陈宇华', '13318838382', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2638', 'S11534', '朱晓禾', '18026275252', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2639', 'S11137', '杨熙峻', '13710589432', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2640', 'S10390', '詹靖宇', '13925092000', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2641', 'S11964', '平皓中', '18602015509', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2642', 'S12431', '唐茜薇', '13798159371', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2643', 'S12911', '王稚尹', '13632336039', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2644', 'S13741', '何垚均', '18688471778', null, '广州区域-平时班-英语-3.0小时次', '', '44.00', '次', '3039.67', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2645', 'S14517', '列羽芊', '13828434397', null, '广州区域-周末班-英语-3.0小时次', '', '43.00', '次', '2970.58', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2646', 'S11962', '李梓铖', '13631317878', null, '广州区域-周末班-英语-3.0小时次', '', '42.00', '次', '2901.50', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2647', 'S11238', '李羽涵', '13640217144', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2648', 'S11909', '尹梓溢', '13527850817', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2649', 'S11104', '黄鸿亮', '13660538977', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2650', 'S11965', '杨天乐', '13632358827', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2651', 'S11540', '张芷涵', '13763366493', null, '广州区域-平时班-英语-3.0小时次', '', '41.00', '次', '2832.42', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2652', 'S10408', '谢语墨', '13632190143', null, '广州区域-周末班-英语-3.0小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2653', 'S12380', '张庭语', '13808870314', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2654', 'S11059', '黄元星', '13711669179', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2655', 'S11143', '林馨语', '13609085038', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2656', 'S12258', '张语彤', '18680254600', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2657', 'S11543', '江益民', '13725105561', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2658', 'S12367', '彭芷晴', '18928861230', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2659', 'S09879', '黄映衡', '13560016636', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '1200.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2660', 'S10783', '李宣霖', '18620830552', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2661', 'S12469', '万语笑', '18022308486', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2662', 'S11664', '张智钦', '13602828746', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2663', 'S12366', '金昱谦', '13360008197', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2664', 'S14734', '张羽嫣', '13600058187', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2665', 'S11667', '周昱延', '15920834834', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2666', 'S13067', '唐希怡', '13560455525', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2667', 'S12425', '熊忻仪', '13922453679', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2668', 'S10771', '刘骐瑶', '13902202502', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2669', 'S10414', '詹靖轩', '13925092000', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2670', 'S12467', '杨芷澄', '13450399199', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2671', 'S11798', '邹亦非', '18926224335', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2672', 'S11665', '潘钰辰', '13922769637', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2673', 'S14675', '李梓杰', '15889391251', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2674', 'S14685', '高梓骞', '13922220087', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2675', 'S11900', '符方涓', '13808841422', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2676', 'S11036', '黄芷琳0305', '13560250305', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2677', 'S11147', '陈明宇', '15919305340', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2678', 'S11028', '郑煜坤', '13710392726', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2679', 'S11046', '张奇钰', '13580347594', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2680', 'S10745', '黎亮', '18100203550', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2681', 'S11022', '吴奕帆', '13312836220', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2682', 'S01699', '曾砚斐', '18818859966', null, '广州区域-平时班-英语-3.0小时次', '', '30.00', '次', '0.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2683', 'S01616', '彭希扬', '18620488133', null, '广州区域-平时班-英语-3.0小时次', '邹丽萍', '22.00', '次', '3788.17', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2684', 'S01622', '邱刘哲', '18620916361', null, '广州区域-平时班-英语-3.0小时次', '邹丽萍', '21.00', '次', '3614.18', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2685', 'S13730', '何泳希5668', '13022055668', null, '广州区域-周末班-英语-1.5小时次', '', '21.00', '次', '960.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2686', 'S09026', '陈锵铭', '13802520060', null, '广州区域-平时班-英语-3.0小时次', '', '19.00', '次', '0.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2687', 'S17323', '林小哲（Austin）', '15802016375', null, '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2688', 'S17019', '戴裕桐', '13688880119', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2689', 'S17110', '周梓麒', '15102069298', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2690', 'S16827', '黄祺茜-KIKI', '13503017628', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2691', 'S17302', '胡世程', '13925002550', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2692', 'S16474', '钟玥嘉', '13600080140', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2693', 'S17318', '朱钰彤', '13826452594', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2694', 'S17040', '吴祝吉', '13922257745', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2695', 'S17035', '戴永航', '13688880119', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2696', 'S17042', '李泓泽', '13609002006', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2697', 'S17043', '王唯有', '13922257745', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2698', 'S17326', '林小轩', '15802016375', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2699', 'S17123', '黄思睿', '13926022826', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2700', 'S17011', '吴志轩', '18928912032', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2701', 'S17328', '姜卉', '13533065839', null, '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2702', 'S17330', '汪宇丰', '18520664506', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2703', 'S17309', '冯煦洋', '13660776606', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2704', 'S09036', '李佩儿', '13527882123', null, '广州区域-周末班-英语-3.0小时次', '', '5.00', '次', '1993.75', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2705', 'S09199', '曾子希', '13631499742', null, '广州区域-平时班-英语-3.0小时次', '', '5.00', '次', '1993.75', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2706', 'S09051', '温静远', '13922106580', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '47536.56', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2707', 'S16827', '黄祺茜-KIKI', '13503017628', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2708', 'S09026', '陈锵铭', '13802520060', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2709', 'S09315', '蔡君昊', '13603016366', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2710', 'S13730', '何泳希5668', '13022055668', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2711', 'S13741', '何垚均', '18688471778', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2712', 'S16940', '梁添翔', '13610122142', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2713', 'S01699', '曾砚斐', '18818859966', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2714', 'S11950', '翁语欣（1）', '13580347076', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2715', 'S09309', '邱朔晴', '18922734146', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2716', 'S09325', '朱彦坤', '13527820131', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');
INSERT INTO `stjy_xyfyyjb` VALUES ('2717', 'S09326', '王子涵（1）', '15011912587', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '167', '2017-08-27 16:27:57');

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
  `daorusj` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '导入时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9939 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xyxxb
-- ----------------------------
INSERT INTO `stjy_xyxxb` VALUES ('9563', 'S17311', '姚季芮', '女', '', '', '', '', '18922260526', '07-网络咨询', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '18922260526', '', '', '广州市天河区天府路小学', '一年级', '6', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '26880.00', '27160.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9562', 'S09053', '姚怡然', '女', '', '', '2009-01-14', '8', '13826485248', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学翠湖校区', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '1950.00', '0.00', '21463.34', '23413.34', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9561', 'S09478', '易其乐', '女', '', '', '2009-12-15', '7', '13822188180', '03-课题：自然拼音', '天河天府路中心', '2017-04-22', '天河天府路中心', '', '', '13925098792', '', '13822188180', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23750.00', '23750.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9560', 'S11909', '尹梓溢', '男', '', '', '', '', '13527850817', '01-老带新', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '张婷', '13527850817', '', '', '天河区天府路小学', '一年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9559', 'S11163', '曾浩轩（1）', '男', '', '', '', '', '13602234226', '07-网络咨询', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '体育东路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9558', 'S01699', '曾砚斐', '女', '', '', '2008-02-21', '9', '18818859966', '', '', '', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '28800.00', '48800.00', '20000.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9557', 'S16667', '曾芷睿rayna', '女', '', '', '', '', '13922147018', '03-课题：自然拼音', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '13922147018', '', '', '天河区天府路小学', '二年级', '7', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9556', 'S09199', '曾子希', '女', '', '', '2007-09-22', '9', '13631499742', '06-上门咨询', '', '2017-04-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1993.75', '1993.75', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9555', 'S10414', '詹靖轩', '男', '', '', '', '', '13925092000', '', '', '2017-05-07', '天河天府路中心', '', '詹春涛', '13808880685', '刘秀玲', '13925092000', '', '', '东华幼儿园', '中班', '', '就读学校为华港幼儿园', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9554', 'S10390', '詹靖宇', '男', '', '', '2008-08-08', '8', '13925092000', '03-课题：自然拼音', '天河天府路中心', '2017-05-07', '天河骏景中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '6班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9553', 'S10936', '詹以峤', '女', '', '', '2013-08-03', '3', '18620807692', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9552', 'S10725', '张驰（1）', '男', '', '', '', '', '13825091202', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（3）', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9551', 'S11046', '张奇钰', '女', '', '', '', '', '13580347594', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9550', 'S15713', '张思哲', '男', '', '天河第一实验小学', '', '', '13928774047', '07-网络咨询', '海珠江南西中心', '2017-06-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9549', 'S12380', '张庭语', '女', '', '', '2012-12-12', '4', '13808870314', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9548', 'S09054', '张文一', '男', '', '', '2009-12-16', '7', '13302336626', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.79', '18203.79', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9547', 'S14734', '张羽嫣', '女', '', '', '2013-04-07', '4', '13600058187', '', '', '2017-05-20', '天河天府路中心', '', '张军', '', '', '', '', '', '广州都市兰亭幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9546', 'S12258', '张语彤', '女', '', '', '2012-10-07', '4', '18680254600', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '广州市天河区天晖幼儿园', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9545', 'S10708', '张曌仪', '男', '', '', '', '', '18903005813', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9543', 'S11664', '张智钦', '男', '', '', '', '', '13602828746', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9544', 'S11540', '张芷涵', '女', '', '', '', '', '13763366493', '', '', '2017-05-07', '天河天府路中心', '', '张仕宪', '13825027568', '杨莉娟', '13763366493', '', '', '广州市天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9542', 'S11790', '张梓玥', '女', '', '', '2011-07-08', '5', '18520191828', '', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9541', 'S11028', '郑煜坤', '男', '', '', '', '', '13710392726', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9540', 'S09203', '钟华华', '男', '', '', '2010-06-20', '7', '13824424796', '03-课题：自然拼音', '', '2017-04-08', '天河天府路中心', '', '钟运邦', '', '江庆梅', '13824424796', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17737.67', '17737.67', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9539', 'S09055', '钟雨桐', '女', '', '', '2009-09-13', '7', '18898605866', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '9500.00', '18200.00', '8700.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9538', 'S16474', '钟玥嘉', '女', '', '', '', '', '13600080140', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9537', 'S07715', '钟子锟', '男', '', '', '', '', '18929593969', '09-教师推荐', '天河华景中心', '2017-02-20', '天河华景中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.83', '18203.83', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9536', 'S09664', '钟子淇', '女', '', '', '2007-05-23', '10', '13924103232', '01-老带新', '', '2017-04-28', '天河天府路中心', '', '钟灿铭', '13002038650', '袁小娟', '13924103232', '', '', '广州市天河区棠下小学', '四年级', '（2）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '25000.00', '25280.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9535', 'S11667', '周昱延', '女', '', '', '', '', '15920834834', '06-上门咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9534', 'S09056', '周子澄', '女', '', '', '2009-03-01', '8', '13926468975', '03-课题：自然拼音', '', '2017-02-22', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.79', '18203.79', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9533', 'S17110', '周梓麒', '男', '', '', '', '', '15102069298', '02-课题：童话剧', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9532', 'S09204', '朱诗淇', '女', '', '', '2009-11-01', '7', '13725200569', '01-老带新', '', '2017-04-08', '天河天府路中心', '', '朱浩华', '13725200569', '', '', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17737.67', '17737.67', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9531', 'S11534', '朱晓禾', '女', '', '', '2007-08-19', '9', '18026275252', '01-老带新', '天河天府路中心', '2017-05-07', '天河华景中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '四年级', '5班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9530', 'S09325', '朱彦坤', '男', '', '', '2008-11-22', '8', '13527820131', '10-其他渠道推荐', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '3班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9529', 'S17318', '朱钰彤', '女', '', '', '', '', '13826452594', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9528', 'S16821', '邹沐彤', '女', '', '', '2009-06-21', '8', '13928866895', '01-老带新', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9527', 'S11798', '邹亦非', '女', '', '', '2013-03-28', '4', '18926224335', '', '', '2017-05-08', '天河天府路中心', '', '邓亮', '', '邹秧春', '18926224335', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:44');
INSERT INTO `stjy_xyxxb` VALUES ('9564', 'S12545', '杨梓盈', '女', '', '', '', '', '18588582151', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9565', 'S12467', '杨芷澄', '女', '', '', '', '', '13450399199', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9566', 'S15801', '杨雨浠', '女', '', '', '2009-02-25', '8', '18665738556', '03-课题：自然拼音', '', '2017-06-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市越秀区水荫路小学', '二年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9567', 'S10636', '杨一言', '男', '', '', '', '', '18688908150', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9568', 'S10626', '杨一诺（1）', '女', '', '', '', '', '18688908150', '', '', '2017-05-07', '天河天府路中心', '', '', '', '李立平', '18688908150', '', '', '天河区天府路小学', '二年级', '（8）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9569', 'S11137', '杨熙峻', '男', '', '', '', '', '13710589432', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '13710589432', '', '', '天河区天府路小学', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9570', 'S11965', '杨天乐', '男', '', '', '', '', '13632358827', '', '', '2017-05-08', '天河天府路中心', '', '杨明', '135602498880', '罗成林', '13632358827', '', '', '广州市天河区第一实验小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9571', 'S07379', '杨钶犇', '男', '', '', '2010-06-30', '7', '13794367768', '', '', '2016-12-11', '天河华景中心', '', '', '13794367768', '', '13826484457', '', '', '天河区天府路小学', '一年级', '8', '', '0.00', '', '在读', '', '', '', '0.00', '8900.00', '15747.68', '6847.68', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9572', 'S16415', '杨晨曦', '男', '', '', '', '', '13922138919', '08-电话咨询', '天河天府路中心', '2017-06-23', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9573', 'S11217', '许雯婷', '女', '', '', '', '', '17817317308', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '华阳小学', '三年级', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9574', 'S15861', '徐俊哲', '男', '', '', '', '', '13640630605', '05-地推', '天河天府路中心', '2017-06-18', '天河天府路中心', '', '', '', '沈燕燕', '13640630605', '', '', '幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '28316.00', '28316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9575', 'S12425', '熊忻仪', '女', '', '', '2012-12-02', '4', '13922453679', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9576', 'S10408', '谢语墨', '女', '', '', '2013-12-14', '3', '13632190143', '08-电话咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9577', 'S07377', '谢宇侨', '男', '', '', '2010-08-03', '6', '13500000969', '', '', '2016-12-11', '天河华景中心', '', '谢伟鹏', '13500000969', '黄思明', '13926002979', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '10950.00', '10950.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9578', 'S07378', '谢宇博', '男', '', '', '2010-08-03', '6', '13500000969', '', '', '2016-12-11', '天河华景中心', '', '谢伟鹏', '13500000969', '黄思明', '13926002979', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '12000.00', '12000.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9579', 'S10069', '谢莉雯', '女', '', '', '2009-03-12', '8', '18476301991', '', '', '2017-05-07', '天河天府路中心', '', '', '', '兰桂梅', '', '', '', '天河区华景小学', '二年级', '13班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9580', 'S17314', '肖鑫彤', '女', '', '', '', '', '13710988399', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '13710988399', '', '13798002334', '', '', '天河区天府路小学（翠湖分校）', '一年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9581', 'S09228', '冼珈永', '男', '', '', '2012-08-13', '4', '13527713196', '01-老带新', '', '2017-04-10', '越秀活动中心', '', '', '', '冼倩娣', '13527713196', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '3900.00', '4130.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9582', 'S17040', '吴祝吉', '男', '', '', '', '', '13922257745', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9583', 'S17011', '吴志轩', '男', '', '', '', '', '18928912032', '01-老带新', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9584', 'S11803', '吴宇鑫', '男', '', '', '2013-06-03', '4', '13822278767', '01-老带新', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '天河区骏景花园幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9585', 'S11022', '吴奕帆', '男', '', '', '', '', '13312836220', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9586', 'S09052', '吴欣诺', '女', '', '', '2009-09-08', '7', '13632353832', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16249.95', '16249.95', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9587', 'S11938', '吴沐欣', '女', '', '', '2009-03-21', '8', '13922257745', '', '', '2017-05-08', '天河天府路中心', '', '吴多理', '15618152782', '', '13922257745', '', '', '天河区天府路小学', '二年级', '七班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9588', 'S11950', '翁语欣（1）', '女', '', '', '2008-05-26', '9', '13580347076', '', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '九班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '52116.00', '52116.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9589', 'S11948', '翁语欣', '女', '', '', '', '', '13430126231', '06-上门咨询', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '', '13430126231', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9590', 'S09051', '温静远', '男', '', '', '2010-03-08', '7', '13922106580', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '八班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '47536.10', '47536.10', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9591', 'S13320', '魏蔚然', '女', '', '', '2007-12-16', '9', '13926074520', '01-老带新', '', '2017-05-13', '天河天府路中心', '', '', '', '葛畅', '13926074520', '', '', '广州市暨南大学附属小学', '三年级', '（5）', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9592', 'S10823', '王梓淇（1）', '男', '', '', '2010-01-10', '7', '18588508133', '', '', '2017-05-07', '天河天府路中心', '', '王伟', '18520330316', '赵俪芳', '18588508133', '', '', '天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9593', 'S09050', '王子骅', '男', '', '', '2010-08-13', '6', '13302291816', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '五班 ', '', '0.00', '', '在读', '', '', '', '23842.00', '0.00', '22407.00', '46249.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9594', 'S09326', '王子涵（1）', '男', '', '', '2008-12-27', '8', '15011912587', '01-老带新', '', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9595', 'S12911', '王稚尹', '女', '', '', '', '', '13632336039', '', '', '2017-05-11', '天河天府路中心', '', '', '', '', '13632336039', '', '', '天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9596', 'S17043', '王唯有', '', '', '', '', '', '13922257745', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9597', 'S13026', '王加泓', '男', '', '', '', '', '13580325947', '07-网络咨询', '天河天府路中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '28316.00', '28316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9598', 'S11347', '王岱霖', '女', '', '', '', '', '13610178910', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（4）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9599', 'S17330', '汪宇丰', '男', '', '', '', '', '18520664506', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9600', 'S12469', '万语笑', '女', '', '', '2012-09-16', '4', '18022308486', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9601', 'S13103', '万博文', '男', '', '', '2007-12-05', '9', '13922274036', '', '', '2017-05-12', '天河天府路中心', '', '万里洪', '18925117656', '杨明娟', '13922274036', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9602', 'S13067', '唐希怡', '女', '', '', '2012-09-11', '4', '13560455525', '07-网络咨询', '天河天府路中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9603', 'S12431', '唐茜薇', '女', '', '', '2008-03-31', '9', '13798159371', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9604', 'S09049', '苏兴承', '男', '', '', '2010-08-24', '6', '13922229923', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16611.06', '16611.06', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9605', 'S13198', '宋美京', '', '', '', '', '', '13922419984', '转入', '海珠滨江东中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东风东路小学', '二年级', '', '东风东路小学', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9606', 'S09613', '生艾霖', '女', '', '', '2010-07-20', '6', '13392681558', '03-课题：自然拼音', '天河天府路中心', '2017-04-23', '天河天府路中心', '', '', '', '', '13395681558', '', '', '天河区天府路小学', '一年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23125.00', '23125.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9607', 'S11084', '邱堉庄', '男', '', '', '', '', '13650896618', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9608', 'S09309', '邱朔晴', '女', '', '', '2008-07-21', '8', '18922734146', '10-其他渠道推荐', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '8班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9609', 'S01622', '邱刘哲', '男', '', '', '2009-02-16', '8', '18620916361', '', '', '', '天河华景中心', '邹丽萍', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '15000.00', '0.00', '3614.18', '18614.18', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9610', 'S11964', '平皓中', '男', '', '', '', '', '18602015509', '', '', '2017-05-08', '天河天府路中心', '', '', '18602015509', '', '', '', '', '天河区天府路小学', '一年级', '七班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9611', 'S12367', '彭芷晴', '女', '', '', '', '', '18928861230', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9612', 'S10853', '彭云翼', '男', '', '', '2010-01-04', '7', '13824432012', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9613', 'S10868', '彭羽菲', '女', '', '', '2007-07-27', '9', '13824432012', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9614', 'S01616', '彭希扬', '女', '', '', '2009-01-19', '8', '18620488133', '', '', '', '天河华景中心', '邹丽萍', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '15000.00', '0.00', '3788.17', '18788.17', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9615', 'S01612', '潘子颀', '男', '', '', '', '', '18588861991', '01-老带新', '', '', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '六年级', '', '', '0.00', '', '在读', '', '', '', '3280.00', '0.00', '26334.00', '29614.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9616', 'S11665', '潘钰辰', '女', '', '', '2013-02-08', '4', '13922769637', '06-上门咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9617', 'S09047', '潘浩智', '男', '', '', '2010-03-23', '7', '13640768911', '01-老带新', '', '2017-04-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路分校', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '19136.00', '19136.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9618', 'S14355', '毛思羽', '女', '', '', '2010-09-03', '6', '13602285805', '06-上门咨询', '', '2017-05-19', '天河天府路中心', '', '毛学庆', '13609790096', '周飞良', '13602285805', '', '', '天河区天府路小学（翠湖分校）', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9619', 'S11787', '罗悦宁', '女', '', '', '2010-05-11', '7', '18602031560', '', '', '2017-05-08', '天河天府路中心', '', '', '', '袁俊', '18602031560', '', '', '天河区天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9620', 'S16323', '罗鸿铭', '男', '', '', '', '', '18620889544', '03-课题：自然拼音', '天河天府路中心', '2017-06-23', '天河天府路中心', '', '', '', '', '18620889544', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '48800.00', '0.00', '0.00', '48800.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9621', 'S09202', '闾家熙', '男', '', '', '2010-06-17', '7', '13570201921', '03-课题：自然拼音', '', '2017-04-08', '天河天府路中心', '', '闾国耀', '18680287007', '刘少英', '13570201921', '', '', '天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17737.67', '17737.67', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9622', 'S09046', '陆子叶', '女', '', '440106200812302488', '2008-12-30', '8', '13632453211', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17292.63', '17292.63', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9623', 'S09045', '陆鸣飞', '女', '', '', '2009-07-14', '7', '13609726477', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '祈福新邨小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22573.30', '22573.30', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9624', 'S12910', '龙心宜', '女', '', '', '2008-09-25', '8', '13622289238', '', '', '2017-05-11', '天河天府路中心', '', '', '', '陈珊珊', '13622289238', '', '', '天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9625', 'S09044', '柳皓轩', '男', '', '', '2008-03-28', '9', '13560322898', '06-上门咨询', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '三年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '13885.75', '13885.75', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9626', 'S09043', '刘芷妤', '女', '', '', '2009-11-05', '7', '13501518927', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16430.51', '16430.51', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9627', 'S09042', '刘芷睿', '女', '', '', '2010-06-01', '7', '18665651008', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22759.31', '22759.31', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9628', 'S10771', '刘骐瑶', '女', '', '', '', '', '13902202502', '06-上门咨询', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9629', 'S11242', '刘安淇（1）', '女', '', '', '', '', '13822267285', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（8）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9630', 'S11226', '林子淇（1）', '女', '', '', '', '', '13427585469', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '华阳小学', '三年级', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9631', 'S11143', '林馨语', '女', '', '', '', '', '13609085038', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9632', 'S10966', '林欣锐', '男', '', '', '', '', '18998298281', '03-课题：自然拼音', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9633', 'S10980', '林昕睿', '男', '', '', '', '', '18998298281', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9634', 'S17323', '林小哲（Austin）', '男', '', '', '', '', '15802016375', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '15802016375', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9635', 'S17326', '林小轩', '', '', '', '', '', '15802016375', '07-网络咨询', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '新蕾幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9636', 'S07733', '林承熙', '男', '', '', '2009-10-23', '7', '13922386115', '09-教师推荐', '天河华景中心', '2017-01-15', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.79', '18203.79', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9637', 'S14517', '列羽芊', '女', '', '', '2010-01-10', '7', '13828434397', '', '', '2017-05-19', '天河天府路中心', '', '', '', '梁女士', '13828434397', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2970.58', '2970.58', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9638', 'S10907', '梁钰', '女', '', '', '', '', '18122202254', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区石牌小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9639', 'S09040', '梁希', '男', '', '', '2007-06-01', '10', '13556198719', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '三年级', '六班', '', '0.00', '', '在读', '', '', '', '5500.00', '0.00', '16249.95', '21749.95', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9640', 'S16940', '梁添翔', '男', '', '', '', '', '13610122142', '06-上门咨询', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9641', 'S09039', '梁泓楠', '男', '', '', '2010-10-19', '6', '13418072142', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23524.94', '23524.94', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9642', 'S09038', '李紫嫣', '女', '', '', '2010-07-09', '6', '18520121305', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17668.56', '17668.56', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9643', 'S14675', '李梓杰', '男', '', '', '', '', '15889391251', '05-地推', '天河天府路中心', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9644', 'S11962', '李梓铖', '男', '', '', '2010-03-02', '7', '13631317878', '03-课题：自然拼音', '天河骏景中心', '2017-05-08', '天河骏景中心', '', '', '', '', '13631317878', '', '', '天河区骏景小学', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2901.50', '2901.50', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9645', 'S12550', '李沄天', '男', '', '', '', '', '13719199190', '', '', '2017-05-10', '天河天府路中心', '', '李波', '18903003148', '陈 ', '13719199190', '', '', '天河区天府路小学', '三年级', '八班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9646', 'S11238', '李羽涵', '男', '', '', '', '', '13640217144', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9647', 'S10889', '李烨铭', '男', '', '', '', '', '13148948648', '预约试听', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区棠下小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9648', 'S09037', '李雅希', '女', '', '', '2009-09-09', '7', '13533545832', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22305.75', '22305.75', null, '153', '2017-08-27 16:23:45');
INSERT INTO `stjy_xyxxb` VALUES ('9649', 'S10783', '李宣霖', '男', '', '', '', '', '18620830552', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25960.00', '25960.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9650', 'S10776', '李欣遥', '女', '', '', '2010-03-18', '7', '18620830552', '08-电话咨询', '天河骏景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '1班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9651', 'S09036', '李佩儿', '女', '', '', '2010-03-27', '7', '13527882123', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1993.75', '1993.75', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9652', 'S10222', '李乐天', '女', '', '', '2010-01-03', '7', '13556007650', '03-课题：自然拼音', '', '2017-05-07', '天河天府路中心', '', '李建初', '1382187218', '黎雪芬', '13556007650', '', '', '广州市天河区天府路小学', '一年级', '（2）班', '翠湖校区', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9653', 'S10759', '李澜昕', '女', '', '', '', '', '15975413984', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9654', 'S17042', '李泓泽', '男', '', '', '', '', '13609002006', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9655', 'S16600', '李冠延', '男', '', '', '', '', '13711288940', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9656', 'S09035', '黎政鑫', '男', '', '', '2009-10-21', '7', '13640846060', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '21552.91', '21552.91', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9657', 'S10745', '黎亮', '男', '', '', '', '', '18100203550', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9658', 'S16607', '雷鲁健', '男', '', '', '', '', '13798183155', '03-课题：自然拼音', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9659', 'S12558', '勒瑞琦', '女', '', '', '', '', '13302337916', '03-课题：自然拼音', '天河华景中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9660', 'S09034', '劳隽熙', '女', '', '', '2010-08-02', '6', '13922166899', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '9500.00', '18380.55', '8880.55', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9661', 'S12366', '金昱谦', '男', '', '', '2012-11-04', '4', '13360008197', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9662', 'S15854', '蒋沛霖', '男', '', '', '', '', '15360016840', '06-上门咨询', '天河天府路中心', '2017-06-18', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '28316.00', '28316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9663', 'S13110', '姜昕屹', '男', '', '', '', '', '13725287618', '', '', '2017-05-12', '天河天府路中心', '', '', '', '申柯', '13725287618', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9664', 'S17342', '姜卉', '女', '', '', '', '', '13432004018', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '13432004018', '', '', '天河区天府路小学', '二年级', '5', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9665', 'S17328', '姜卉', '女', '', '', '2009-05-10', '8', '13533065839', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9666', 'S11543', '江益民', '男', '', '', '2013-01-16', '4', '13725105561', '01-老带新', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9667', 'S16658', '汲春杉', '女', '', '', '2011-05-13', '6', '13928893100', '02-课题：童话剧', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9668', 'S09033', '黄梓峰', '男', '', '', '2010-08-08', '6', '13560016636', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17439.09', '17439.09', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9669', 'S11036', '黄芷琳0305', '女', '', '', '', '', '13560250305', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9670', 'S09032', '黄泽蕊', '女', '', '', '2008-12-02', '8', '13802548976', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23469.30', '23469.30', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9671', 'S11059', '黄元星', '男', '', '', '', '', '13711669179', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9672', 'S11050', '黄元量', '女', '', '', '', '', '13711669179', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9673', 'S09879', '黄映衡', '男', '', '', '2012-11-08', '4', '13560016636', '', '', '2017-05-06', '天河天府路中心', '', '', '', '', '13560016636', '', '', '广州市天河区天府路小学', '中班', '天府路幼儿园', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1200.00', '1200.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9674', 'S09031', '黄玮婷', '女', '', '', '2009-01-07', '8', '18928895338', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16249.95', '16249.95', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9675', 'S17123', '黄思睿', '女', '', '', '', '', '13926022826', '10-其他渠道推荐', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区华景泽晖幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9676', 'S16827', '黄祺茜-KIKI', '女', '', '', '', '', '13503017628', '03-课题：自然拼音', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '13503017628', '', '', '天河区天府路小学（翠湖分校）', '二年级', '2', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '50680.00', '50680.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9677', 'S11104', '黄鸿亮', '男', '', '', '', '', '13660538977', '01-老带新', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '13660538977', '', '', '广州市天河区旭景小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9678', 'S11940', '胡甜慈', '女', '', '', '', '', '18022899616', '', '', '2017-05-08', '天河天府路中心', '', '', '18022899535', '', '18022899616', '', '', '广州市天河区天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9679', 'S17302', '胡世程', '女', '', '', '', '', '13925002550', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9680', 'S09030', '侯宸卓', '男', '', '', '2009-12-14', '7', '13802536119', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23289.06', '23289.06', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9681', 'S09029', '侯宸越', '男', '', '', '2009-12-14', '7', '13802536119', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '21629.39', '21629.39', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9682', 'S13730', '何泳希5668', '女', '', '', '', '', '13022055668', '06-上门咨询', '天河骏景中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '49760.00', '49760.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9683', 'S13741', '何垚均', '男', '', '', '', '', '18688471778', '06-上门咨询', '天河天府路中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '51839.67', '51839.67', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9684', 'S12820', '何雯', '女', '', '', '', '', '13068821834', '', '', '2017-05-11', '天河天府路中心', '', '何继成', '13924212778', '肖丽辉', '13068821834', '', '', '广州市天河区天府路小学', '四年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9685', 'S16529', '何家坤', '男', '', '', '', '', '18026380649', '03-课题：自然拼音', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9686', 'S13744', '何柏沅', '', '', '', '', '', '13070261292', '06-上门咨询', '天河天府路中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25960.00', '25960.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9687', 'S09028', '郭梓聪', '男', '', '', '2010-04-13', '7', '13502447171', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '八班', '', '0.00', '', '在读', '', '', '', '5500.00', '0.00', '16249.95', '21749.95', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9688', 'S09027', '龚子寅', '男', '', '', '2010-02-26', '7', '13829759394', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18564.58', '18564.58', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9689', 'S14685', '高梓骞', '女', '', '', '2012-08-02', '4', '13922220087', '', '', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '广州邮电通信设备公司幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9690', 'S11900', '符方涓', '女', '', '', '2012-09-26', '4', '13808841422', '', '', '2017-05-08', '天河骏景中心', '', '', '18688874048', '', '13808841422', '', '', '95107部队幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9691', 'S17309', '冯煦洋', '男', '', '', '', '', '13660776606', '07-网络咨询', '天河天府路中心', '2017-06-29', '天河天府路中心', '', '', '13763335867', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9692', 'S01521', '杜航宇', '男', '', '', '2009-02-07', '8', '18988800659', '转入', '', '', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '31570.08', '0.00', '0.00', '31570.08', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9693', 'S13089', '董陈蓓', '女', '', '', '2010-04-17', '7', '13560067893', '07-网络咨询', '天河骏景中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '广州大学附属小学', '一年级', '6班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9694', 'S10555', '邓亦舟', '女', '', '', '', '', '18926224535', '预约试听', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9695', 'S07495', '邓汇子', '女', '', '', '2010-05-17', '7', '13560478460', '', '', '2016-12-18', '天河华景中心', '', '', '', '', '13560478460', '', '', '天河区天府路小学', '一年级', '8', '', '0.00', '', '在读', '', '', '', '0.00', '8900.00', '16098.45', '7198.45', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9696', 'S17019', '戴裕桐', '女', '', '', '', '', '13688880119', '03-课题：自然拼音', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9697', 'S17035', '戴永航', '男', '', '', '', '', '13688880119', '在线报名,10-其他渠道推荐', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9698', 'S16590', '崔雯睿', '女', '', '', '', '', '13719056933', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '10.00', '6400.00', '11400.00', '5010.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9699', 'S11473', '陈梓豪0326', '女', '', '', '', '', '13825130326', '06-上门咨询', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市越秀区水荫路小学', '二年级', '4', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9700', 'S12495', '陈宇华', '男', '', '', '2008-06-18', '9', '13318838382', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9701', 'S13243', '陈熹', '', '', '', '', '', '13570263325', '转入', '海珠滨江东中心', '2017-05-13', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '未上幼儿园', '0.00', '', '在读', '', '', '', '460.00', '0.00', '960.00', '1420.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9702', 'S13317', '陈姝含', '女', '', '', '2008-07-06', '8', '13632496687', '07-网络咨询', '', '2017-05-13', '天河天府路中心', '', '陈德鸿', '13570206687', '郑少丽', '13632496687', '', '', '广州市天河区天府路小学', '三年级', '（6）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9703', 'S09026', '陈锵铭', '男', '', '', '2008-05-07', '9', '13802520060', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9704', 'S11147', '陈明宇', '男', '', '', '', '', '15919305340', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9705', 'S11883', '陈立言', '男', '', '', '', '', '18680286506', '06-上门咨询', '天河天府路中心', '2017-05-08', '天河骏景中心', '', '', '', '', '18680286506', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9706', 'S09025', '陈可馨8669', '女', '', '', '2010-06-02', '7', '15622218669', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18384.03', '18384.03', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9707', 'S11566', '陈钧泽', '男', '', '', '', '', '13286854113', '01-老带新', '海珠滨江东中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9708', 'S11953', '蔡斯丞', '男', '', '', '2010-06-08', '7', '13570052906', '10-其他渠道推荐', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '', '13570052906', '', '', '广州市天河区骏景小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9709', 'S12913', '蔡乐铭', '女', '', '', '', '', '13826173078', '', '', '2017-05-11', '天河天府路中心', '', '', '', '朱燕秋', '13826173078', '', '', '广州市天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9710', 'S09315', '蔡君昊', '男', '', '', '2009-02-14', '8', '13603016366', '01-老带新', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '13603016366', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '48800.00', '49080.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9711', 'S13915', '宾诗琪', '女', '', '', '2010-01-08', '7', '15989047046', '01-老带新', '天河天府路中心', '2017-05-18', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区华景小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9712', 'S17905', '梁文迪', '男', null, null, null, null, '13824469498', '03-课题：自然拼音', '天河天府路中心', '2017-07-05', '天河天府路中心', null, null, null, null, null, null, null, '天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9713', 'S18834', '王子荞', '女', null, null, null, null, '18666091785', '01-老带新,02-课题：童话剧', '天河天府路中心', '2017-07-18', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9714', 'S18593', '胡逍', '男', null, null, null, null, '13631346942', '10-其他渠道推荐', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9715', 'S19155', '熊峰', '男', null, null, null, null, '18925081158', '01-老带新', '天河天府路中心', '2017-07-23', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '三年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9716', 'S18229', '简耀龙', '男', null, null, null, null, '13318767909', '03-课题：自然拼音', '天河天府路中心', '2017-07-09', '天河天府路中心', null, null, null, null, null, null, null, '天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9717', 'S18564', '何思睿', '男', null, null, null, null, '13929558460', '01-老带新', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9718', 'S18745', '肖昕瑶', '男', null, null, null, null, '13570251087', '06-上门咨询,10-其他渠道推荐', '天河天府路中心', '2017-07-16', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9719', 'S18724', '陆文蓓', '女', null, null, null, null, '13719299327', '02-课题：童话剧', '天河天府路中心', '2017-07-16', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区华景小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9720', 'S17901', '林也淇', '男', null, null, null, null, '13660691390', '03-课题：自然拼音', '天河天府路中心', '2017-07-05', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区华景小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9721', 'S18596', '胡遥', '女', null, null, null, null, '13631346942', '10-其他渠道推荐', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9722', 'S17930', '刘赜恺', '男', null, null, null, null, '15899957099', '07-网络咨询', '天河天府路中心', '2017-07-05', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区华景小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9723', 'S18734', '彭星语', '女', null, null, null, null, '18688858951', '03-课题：自然拼音', '天河天府路中心', '2017-07-16', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9724', 'S17865', '姚俊宏', '男', null, null, null, null, '13922174670', '07-网络咨询', '天河天府路中心', '2017-07-04', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9725', 'S18626', '陈铭灏', '男', null, null, null, null, '13798058415', '03-课题：自然拼音', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9726', 'S19097', '冯钰淑', '女', null, null, null, null, '13928867265', '02-课题：童话剧', '天河天府路中心', '2017-07-22', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9727', 'S18271', '陈悦心', '女', null, null, null, null, '13302255996', '03-课题：自然拼音', '天河天府路中心', '2017-07-09', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9728', 'S18599', '张书瑶4101', '女', null, null, null, null, '13580554101', '03-课题：自然拼音', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9729', 'S18562', '骆伊洋Dora', '女', null, null, null, null, '13924227183', '03-课题：自然拼音', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9730', 'S18232', '杨旖妮', '女', null, null, null, null, '13922455606', '06-上门咨询', '天河天府路中心', '2017-07-09', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9731', 'S17868', '纪博桓', '男', null, null, null, null, '13380079255', '03-课题：自然拼音', '天河天府路中心', '2017-07-04', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9732', 'S18632', '范越好', '', null, null, null, null, '13570311969', '07-网络咨询,02-课题：童话剧', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9733', 'S18645', '柯皓天', '男', null, null, null, null, '15913164129', '01-老带新', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '广州邮电通信设备公司幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9734', 'S18628', '熊奕宁', '男', null, null, null, null, '13632404301', '07-网络咨询', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9735', 'S18407', '陈启', '', null, null, null, null, '13726789319', '01-老带新', '天河华景中心', '2017-07-11', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9736', 'S18646', '黄楷邦', '男', null, null, null, null, '13926477498', '03-课题：自然拼音', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '朝阳东幼儿园', '大班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9737', 'S18175', '李晓语', '女', null, null, null, null, '13602452352', '01-老带新', '天河天府路中心', '2017-07-08', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9738', 'S18057', '廖爱跃', '', null, null, null, null, '13602488168', '07-网络咨询', '天河天府路中心', '2017-07-07', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '大班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9739', 'S18156', '蓝添', '男', null, null, null, null, '13924268965', '06-上门咨询,01-老带新', '天河天府路中心', '2017-07-08', '天河天府路中心', null, null, null, null, null, null, null, '广州市番禺区华南碧桂园学校', '四年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9740', 'S18827', '徐宸', '', null, null, null, null, '15914290808', '03-课题：自然拼音', '天河天府路中心', '2017-07-18', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9741', 'S17907', '江晓潼', '女', null, null, null, null, '13925098803', '03-课题：自然拼音', '天河天府路中心', '2017-07-05', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9742', 'S19122', '赵若菡', '女', null, null, null, null, '13828420843', '04-课题：演讲', '天河天府路中心', '2017-07-23', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9743', 'S18835', '曾子瀚', '男', null, null, null, null, '18664866876', '03-课题：自然拼音', '天河天府路中心', '2017-07-18', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9744', 'S17859', '许雯棋', '女', null, null, null, null, '13632383973', '07-网络咨询', '天河天府路中心', '2017-07-03', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9745', 'S18600', '张书瑶', '女', null, null, null, null, '13632391405', '03-课题：自然拼音', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9746', 'S19180', 'timmy', '男', null, null, null, null, '18588661238', '07-网络咨询', '天河天府路中心', '2017-07-23', '天河天府路中心', null, null, null, null, null, null, null, '东莞市东城朝天实验小学', '大班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9747', 'S18358', '刘烔燊', '男', null, null, null, null, '13828081771', '07-网络咨询', '天河天府路中心', '2017-07-10', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9748', 'S18804', '陈博源', '男', null, null, null, null, '13560139305', '10-其他渠道推荐', '天河天府路中心', '2017-07-18', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '三年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9749', 'S19504', '邓禹', '男', '', '', '', '', '18925063330', '07-网络咨询', '天河天府路中心', '2017-07-29', '天河天府路中心', '', '', '18925063330', '', '18998367496', '', '', '天河区天府路小学（翠湖分校）', '二年级', '1', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9750', 'S19470', '吴家诚', '男', '', '', '', '', '13533099190', '07-网络咨询', '天河天府路中心', '2017-07-27', '天河天府路中心', '', '', '', '', '13533099190', '', '', '广州市天河区天府路小学', '一年级', '7', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9751', 'S19524', '林子妍', '女', '', '', '', '', '18922100301', '01-老带新', '天河天府路中心', '2017-07-29', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9752', 'S19472', '吴家兆', '男', '', '', '', '', '13533099190', '07-网络咨询', '天河天府路中心', '2017-07-27', '天河天府路中心', '', '', '', '', '13533099190', '', '', '广州市天河区天府路小学', '一年级', '7', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9753', 'S13383', '杨恩昊', '男', '', '', '', '', '13434361898', '01-老带新', '海珠滨江东中心', '2017-05-13', '天河天府路中心', '', '', '', '', '13434361898', '', '', '未知', '三年级', '', '', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', null, '153', '2017-08-27 16:23:46');
INSERT INTO `stjy_xyxxb` VALUES ('9754', 'S11798', '邹亦非', '女', '', '', '2013-03-28', '4', '18926224335', '', '', '2017-05-08', '天河天府路中心', '', '邓亮', '', '邹秧春', '18926224335', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9755', 'S16821', '邹沐彤', '女', '', '', '2009-06-21', '8', '13928866895', '01-老带新', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9756', 'S17318', '朱钰彤', '女', '', '', '', '', '13826452594', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9757', 'S09325', '朱彦坤', '男', '', '', '2008-11-22', '8', '13527820131', '10-其他渠道推荐', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '3班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9758', 'S11534', '朱晓禾', '女', '', '', '2007-08-19', '9', '18026275252', '01-老带新', '天河天府路中心', '2017-05-07', '天河华景中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '四年级', '5班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9759', 'S09204', '朱诗淇', '女', '', '', '2009-11-01', '7', '13725200569', '01-老带新', '', '2017-04-08', '天河天府路中心', '', '朱浩华', '13725200569', '', '', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17737.67', '17737.67', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9760', 'S17110', '周梓麒', '男', '', '', '', '', '15102069298', '02-课题：童话剧', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9761', 'S09056', '周子澄', '女', '', '', '2009-03-01', '8', '13926468975', '03-课题：自然拼音', '', '2017-02-22', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.79', '18203.79', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9762', 'S11667', '周昱延', '女', '', '', '', '', '15920834834', '06-上门咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9763', 'S09664', '钟子淇', '女', '', '', '2007-05-23', '10', '13924103232', '01-老带新', '', '2017-04-28', '天河天府路中心', '', '钟灿铭', '13002038650', '袁小娟', '13924103232', '', '', '广州市天河区棠下小学', '四年级', '（2）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '25000.00', '25280.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9764', 'S07715', '钟子锟', '男', '', '', '', '', '18929593969', '09-教师推荐', '天河华景中心', '2017-02-20', '天河华景中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.83', '18203.83', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9765', 'S16474', '钟玥嘉', '女', '', '', '', '', '13600080140', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9766', 'S09055', '钟雨桐', '女', '', '', '2009-09-13', '7', '18898605866', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '9500.00', '18200.00', '8700.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9767', 'S09203', '钟华华', '男', '', '', '2010-06-20', '7', '13824424796', '03-课题：自然拼音', '', '2017-04-08', '天河天府路中心', '', '钟运邦', '', '江庆梅', '13824424796', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17737.67', '17737.67', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9768', 'S11028', '郑煜坤', '男', '', '', '', '', '13710392726', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9769', 'S11790', '张梓玥', '女', '', '', '2011-07-08', '5', '18520191828', '', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9770', 'S11664', '张智钦', '男', '', '', '', '', '13602828746', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9771', 'S11540', '张芷涵', '女', '', '', '', '', '13763366493', '', '', '2017-05-07', '天河天府路中心', '', '张仕宪', '13825027568', '杨莉娟', '13763366493', '', '', '广州市天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9772', 'S10708', '张曌仪', '男', '', '', '', '', '18903005813', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:08');
INSERT INTO `stjy_xyxxb` VALUES ('9773', 'S12258', '张语彤', '女', '', '', '2012-10-07', '4', '18680254600', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '广州市天河区天晖幼儿园', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9774', 'S14734', '张羽嫣', '女', '', '', '2013-04-07', '4', '13600058187', '', '', '2017-05-20', '天河天府路中心', '', '张军', '', '', '', '', '', '广州都市兰亭幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9775', 'S09054', '张文一', '男', '', '', '2009-12-16', '7', '13302336626', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.79', '18203.79', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9776', 'S12380', '张庭语', '女', '', '', '2012-12-12', '4', '13808870314', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9777', 'S15713', '张思哲', '男', '', '天河第一实验小学', '', '', '13928774047', '07-网络咨询', '海珠江南西中心', '2017-06-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9778', 'S11046', '张奇钰', '女', '', '', '', '', '13580347594', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9779', 'S10725', '张驰（1）', '男', '', '', '', '', '13825091202', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（3）', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9780', 'S10936', '詹以峤', '女', '', '', '2013-08-03', '3', '18620807692', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9781', 'S10390', '詹靖宇', '男', '', '', '2008-08-08', '8', '13925092000', '03-课题：自然拼音', '天河天府路中心', '2017-05-07', '天河骏景中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '6班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9782', 'S10414', '詹靖轩', '男', '', '', '', '', '13925092000', '', '', '2017-05-07', '天河天府路中心', '', '詹春涛', '13808880685', '刘秀玲', '13925092000', '', '', '东华幼儿园', '中班', '', '就读学校为华港幼儿园', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9783', 'S09199', '曾子希', '女', '', '', '2007-09-22', '9', '13631499742', '06-上门咨询', '', '2017-04-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1993.75', '1993.75', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9784', 'S16667', '曾芷睿rayna', '女', '', '', '', '', '13922147018', '03-课题：自然拼音', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '13922147018', '', '', '天河区天府路小学', '二年级', '7', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9785', 'S01699', '曾砚斐', '女', '', '', '2008-02-21', '9', '18818859966', '', '', '', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '28800.00', '48800.00', '20000.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9786', 'S11163', '曾浩轩（1）', '男', '', '', '', '', '13602234226', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '体育东路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9787', 'S11909', '尹梓溢', '男', '', '', '', '', '13527850817', '01-老带新', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '张婷', '13527850817', '', '', '天河区天府路小学', '一年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9788', 'S09478', '易其乐', '女', '', '', '2009-12-15', '7', '13822188180', '03-课题：自然拼音', '天河天府路中心', '2017-04-22', '天河天府路中心', '', '', '13925098792', '', '13822188180', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23750.00', '23750.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9789', 'S09053', '姚怡然', '女', '', '', '2009-01-14', '8', '13826485248', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学翠湖校区', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '1950.00', '0.00', '21463.34', '23413.34', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9790', 'S17311', '姚季芮', '女', '', '', '', '', '18922260526', '07-网络咨询', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '18922260526', '', '', '广州市天河区天府路小学', '一年级', '6', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '26880.00', '27160.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9791', 'S12545', '杨梓盈', '女', '', '', '', '', '18588582151', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9792', 'S12467', '杨芷澄', '女', '', '', '', '', '13450399199', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9793', 'S15801', '杨雨浠', '女', '', '', '2009-02-25', '8', '18665738556', '03-课题：自然拼音', '', '2017-06-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市越秀区水荫路小学', '二年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9794', 'S10636', '杨一言', '男', '', '', '', '', '18688908150', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9795', 'S10626', '杨一诺（1）', '女', '', '', '', '', '18688908150', '', '', '2017-05-07', '天河天府路中心', '', '', '', '李立平', '18688908150', '', '', '天河区天府路小学', '二年级', '（8）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9796', 'S11137', '杨熙峻', '男', '', '', '', '', '13710589432', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '13710589432', '', '', '天河区天府路小学', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9797', 'S11965', '杨天乐', '男', '', '', '', '', '13632358827', '', '', '2017-05-08', '天河天府路中心', '', '杨明', '135602498880', '罗成林', '13632358827', '', '', '广州市天河区第一实验小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9798', 'S07379', '杨钶犇', '男', '', '', '2010-06-30', '7', '13794367768', '', '', '2016-12-11', '天河华景中心', '', '', '13794367768', '', '13826484457', '', '', '天河区天府路小学', '一年级', '8', '', '0.00', '', '在读', '', '', '', '0.00', '8900.00', '15747.68', '6847.68', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9799', 'S16415', '杨晨曦', '男', '', '', '', '', '13922138919', '08-电话咨询', '天河天府路中心', '2017-06-23', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9800', 'S11217', '许雯婷', '女', '', '', '', '', '17817317308', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '华阳小学', '三年级', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9801', 'S15861', '徐俊哲', '男', '', '', '', '', '13640630605', '05-地推', '天河天府路中心', '2017-06-18', '天河天府路中心', '', '', '', '沈燕燕', '13640630605', '', '', '幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '28316.00', '28316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9802', 'S12425', '熊忻仪', '女', '', '', '2012-12-02', '4', '13922453679', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9803', 'S10408', '谢语墨', '女', '', '', '2013-12-14', '3', '13632190143', '08-电话咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9804', 'S07377', '谢宇侨', '男', '', '', '2010-08-03', '6', '13500000969', '', '', '2016-12-11', '天河华景中心', '', '谢伟鹏', '13500000969', '黄思明', '13926002979', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '10950.00', '10950.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9805', 'S07378', '谢宇博', '男', '', '', '2010-08-03', '6', '13500000969', '', '', '2016-12-11', '天河华景中心', '', '谢伟鹏', '13500000969', '黄思明', '13926002979', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '12000.00', '12000.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9806', 'S10069', '谢莉雯', '女', '', '', '2009-03-12', '8', '18476301991', '', '', '2017-05-07', '天河天府路中心', '', '', '', '兰桂梅', '', '', '', '天河区华景小学', '二年级', '13班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9807', 'S17314', '肖鑫彤', '女', '', '', '', '', '13710988399', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '13710988399', '', '13798002334', '', '', '天河区天府路小学（翠湖分校）', '一年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9808', 'S09228', '冼珈永', '男', '', '', '2012-08-13', '4', '13527713196', '01-老带新', '', '2017-04-10', '越秀活动中心', '', '', '', '冼倩娣', '13527713196', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '3900.00', '4130.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9809', 'S17040', '吴祝吉', '男', '', '', '', '', '13922257745', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9810', 'S17011', '吴志轩', '男', '', '', '', '', '18928912032', '01-老带新', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9811', 'S11803', '吴宇鑫', '男', '', '', '2013-06-03', '4', '13822278767', '01-老带新', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '天河区骏景花园幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9812', 'S11022', '吴奕帆', '男', '', '', '', '', '13312836220', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9813', 'S09052', '吴欣诺', '女', '', '', '2009-09-08', '7', '13632353832', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16249.95', '16249.95', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9814', 'S11938', '吴沐欣', '女', '', '', '2009-03-21', '8', '13922257745', '', '', '2017-05-08', '天河天府路中心', '', '吴多理', '15618152782', '', '13922257745', '', '', '天河区天府路小学', '二年级', '七班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9815', 'S11950', '翁语欣（1）', '女', '', '', '2008-05-26', '9', '13580347076', '', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '九班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '52116.00', '52116.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9816', 'S11948', '翁语欣', '女', '', '', '', '', '13430126231', '06-上门咨询', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '', '13430126231', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9817', 'S09051', '温静远', '男', '', '', '2010-03-08', '7', '13922106580', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '八班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '47536.10', '47536.10', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9818', 'S13320', '魏蔚然', '女', '', '', '2007-12-16', '9', '13926074520', '01-老带新', '', '2017-05-13', '天河天府路中心', '', '', '', '葛畅', '13926074520', '', '', '广州市暨南大学附属小学', '三年级', '（5）', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9819', 'S10823', '王梓淇（1）', '男', '', '', '2010-01-10', '7', '18588508133', '', '', '2017-05-07', '天河天府路中心', '', '王伟', '18520330316', '赵俪芳', '18588508133', '', '', '天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9820', 'S09050', '王子骅', '男', '', '', '2010-08-13', '6', '13302291816', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '五班 ', '', '0.00', '', '在读', '', '', '', '23842.00', '0.00', '22407.00', '46249.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9821', 'S09326', '王子涵（1）', '男', '', '', '2008-12-27', '8', '15011912587', '01-老带新', '', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9822', 'S12911', '王稚尹', '女', '', '', '', '', '13632336039', '', '', '2017-05-11', '天河天府路中心', '', '', '', '', '13632336039', '', '', '天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9823', 'S17043', '王唯有', '', '', '', '', '', '13922257745', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9824', 'S13026', '王加泓', '男', '', '', '', '', '13580325947', '07-网络咨询', '天河天府路中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '28316.00', '28316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9825', 'S11347', '王岱霖', '女', '', '', '', '', '13610178910', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（4）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9826', 'S17330', '汪宇丰', '男', '', '', '', '', '18520664506', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9827', 'S12469', '万语笑', '女', '', '', '2012-09-16', '4', '18022308486', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9828', 'S13103', '万博文', '男', '', '', '2007-12-05', '9', '13922274036', '', '', '2017-05-12', '天河天府路中心', '', '万里洪', '18925117656', '杨明娟', '13922274036', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9829', 'S13067', '唐希怡', '女', '', '', '2012-09-11', '4', '13560455525', '07-网络咨询', '天河天府路中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9830', 'S12431', '唐茜薇', '女', '', '', '2008-03-31', '9', '13798159371', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9831', 'S09049', '苏兴承', '男', '', '', '2010-08-24', '6', '13922229923', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16611.06', '16611.06', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9832', 'S13198', '宋美京', '', '', '', '', '', '13922419984', '转入', '海珠滨江东中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东风东路小学', '二年级', '', '东风东路小学', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9833', 'S09613', '生艾霖', '女', '', '', '2010-07-20', '6', '13392681558', '03-课题：自然拼音', '天河天府路中心', '2017-04-23', '天河天府路中心', '', '', '', '', '13395681558', '', '', '天河区天府路小学', '一年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23125.00', '23125.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9834', 'S11084', '邱堉庄', '男', '', '', '', '', '13650896618', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9835', 'S09309', '邱朔晴', '女', '', '', '2008-07-21', '8', '18922734146', '10-其他渠道推荐', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '8班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9836', 'S01622', '邱刘哲', '男', '', '', '2009-02-16', '8', '18620916361', '', '', '', '天河华景中心', '邹丽萍', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '15000.00', '0.00', '3614.18', '18614.18', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9837', 'S11964', '平皓中', '男', '', '', '', '', '18602015509', '', '', '2017-05-08', '天河天府路中心', '', '', '18602015509', '', '', '', '', '天河区天府路小学', '一年级', '七班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9838', 'S12367', '彭芷晴', '女', '', '', '', '', '18928861230', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9839', 'S10853', '彭云翼', '男', '', '', '2010-01-04', '7', '13824432012', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9840', 'S10868', '彭羽菲', '女', '', '', '2007-07-27', '9', '13824432012', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9841', 'S01616', '彭希扬', '女', '', '', '2009-01-19', '8', '18620488133', '', '', '', '天河华景中心', '邹丽萍', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '15000.00', '0.00', '3788.17', '18788.17', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9842', 'S01612', '潘子颀', '男', '', '', '', '', '18588861991', '01-老带新', '', '', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '六年级', '', '', '0.00', '', '在读', '', '', '', '3280.00', '0.00', '26334.00', '29614.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9843', 'S11665', '潘钰辰', '女', '', '', '2013-02-08', '4', '13922769637', '06-上门咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9844', 'S09047', '潘浩智', '男', '', '', '2010-03-23', '7', '13640768911', '01-老带新', '', '2017-04-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路分校', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '19136.00', '19136.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9845', 'S14355', '毛思羽', '女', '', '', '2010-09-03', '6', '13602285805', '06-上门咨询', '', '2017-05-19', '天河天府路中心', '', '毛学庆', '13609790096', '周飞良', '13602285805', '', '', '天河区天府路小学（翠湖分校）', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9846', 'S11787', '罗悦宁', '女', '', '', '2010-05-11', '7', '18602031560', '', '', '2017-05-08', '天河天府路中心', '', '', '', '袁俊', '18602031560', '', '', '天河区天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9847', 'S16323', '罗鸿铭', '男', '', '', '', '', '18620889544', '03-课题：自然拼音', '天河天府路中心', '2017-06-23', '天河天府路中心', '', '', '', '', '18620889544', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '48800.00', '0.00', '0.00', '48800.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9848', 'S09202', '闾家熙', '男', '', '', '2010-06-17', '7', '13570201921', '03-课题：自然拼音', '', '2017-04-08', '天河天府路中心', '', '闾国耀', '18680287007', '刘少英', '13570201921', '', '', '天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17737.67', '17737.67', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9849', 'S09046', '陆子叶', '女', '', '440106200812302488', '2008-12-30', '8', '13632453211', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17292.63', '17292.63', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9850', 'S09045', '陆鸣飞', '女', '', '', '2009-07-14', '7', '13609726477', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '祈福新邨小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22573.30', '22573.30', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9851', 'S12910', '龙心宜', '女', '', '', '2008-09-25', '8', '13622289238', '', '', '2017-05-11', '天河天府路中心', '', '', '', '陈珊珊', '13622289238', '', '', '天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9852', 'S09044', '柳皓轩', '男', '', '', '2008-03-28', '9', '13560322898', '06-上门咨询', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '三年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '13885.75', '13885.75', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9853', 'S09043', '刘芷妤', '女', '', '', '2009-11-05', '7', '13501518927', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16430.51', '16430.51', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9854', 'S09042', '刘芷睿', '女', '', '', '2010-06-01', '7', '18665651008', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22759.31', '22759.31', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9855', 'S10771', '刘骐瑶', '女', '', '', '', '', '13902202502', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9856', 'S11242', '刘安淇（1）', '女', '', '', '', '', '13822267285', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（8）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9857', 'S11226', '林子淇（1）', '女', '', '', '', '', '13427585469', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '华阳小学', '三年级', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9858', 'S11143', '林馨语', '女', '', '', '', '', '13609085038', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9859', 'S10966', '林欣锐', '男', '', '', '', '', '18998298281', '03-课题：自然拼音', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9860', 'S10980', '林昕睿', '男', '', '', '', '', '18998298281', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9861', 'S17323', '林小哲（Austin）', '男', '', '', '', '', '15802016375', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '15802016375', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9862', 'S17326', '林小轩', '', '', '', '', '', '15802016375', '07-网络咨询', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '新蕾幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9863', 'S07733', '林承熙', '男', '', '', '2009-10-23', '7', '13922386115', '09-教师推荐', '天河华景中心', '2017-01-15', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.79', '18203.79', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9864', 'S14517', '列羽芊', '女', '', '', '2010-01-10', '7', '13828434397', '', '', '2017-05-19', '天河天府路中心', '', '', '', '梁女士', '13828434397', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2970.58', '2970.58', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9865', 'S10907', '梁钰', '女', '', '', '', '', '18122202254', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区石牌小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9866', 'S09040', '梁希', '男', '', '', '2007-06-01', '10', '13556198719', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '三年级', '六班', '', '0.00', '', '在读', '', '', '', '5500.00', '0.00', '16249.95', '21749.95', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9867', 'S16940', '梁添翔', '男', '', '', '', '', '13610122142', '06-上门咨询', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9868', 'S09039', '梁泓楠', '男', '', '', '2010-10-19', '6', '13418072142', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23524.94', '23524.94', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9869', 'S09038', '李紫嫣', '女', '', '', '2010-07-09', '6', '18520121305', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17668.56', '17668.56', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9870', 'S14675', '李梓杰', '男', '', '', '', '', '15889391251', '05-地推', '天河天府路中心', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9871', 'S11962', '李梓铖', '男', '', '', '2010-03-02', '7', '13631317878', '03-课题：自然拼音', '天河骏景中心', '2017-05-08', '天河骏景中心', '', '', '', '', '13631317878', '', '', '天河区骏景小学', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2901.50', '2901.50', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9872', 'S12550', '李沄天', '男', '', '', '', '', '13719199190', '', '', '2017-05-10', '天河天府路中心', '', '李波', '18903003148', '陈 ', '13719199190', '', '', '天河区天府路小学', '三年级', '八班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9873', 'S11238', '李羽涵', '男', '', '', '', '', '13640217144', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9874', 'S10889', '李烨铭', '男', '', '', '', '', '13148948648', '预约试听', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区棠下小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9875', 'S09037', '李雅希', '女', '', '', '2009-09-09', '7', '13533545832', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22305.75', '22305.75', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9876', 'S10783', '李宣霖', '男', '', '', '', '', '18620830552', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25960.00', '25960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9877', 'S10776', '李欣遥', '女', '', '', '2010-03-18', '7', '18620830552', '08-电话咨询', '天河骏景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '1班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9878', 'S09036', '李佩儿', '女', '', '', '2010-03-27', '7', '13527882123', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1993.75', '1993.75', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9879', 'S10222', '李乐天', '女', '', '', '2010-01-03', '7', '13556007650', '03-课题：自然拼音', '', '2017-05-07', '天河天府路中心', '', '李建初', '1382187218', '黎雪芬', '13556007650', '', '', '广州市天河区天府路小学', '一年级', '（2）班', '翠湖校区', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9880', 'S10759', '李澜昕', '女', '', '', '', '', '15975413984', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9881', 'S17042', '李泓泽', '男', '', '', '', '', '13609002006', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9882', 'S16600', '李冠延', '男', '', '', '', '', '13711288940', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9883', 'S09035', '黎政鑫', '男', '', '', '2009-10-21', '7', '13640846060', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '21552.91', '21552.91', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9884', 'S10745', '黎亮', '男', '', '', '', '', '18100203550', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9885', 'S16607', '雷鲁健', '男', '', '', '', '', '13798183155', '03-课题：自然拼音', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9886', 'S12558', '勒瑞琦', '女', '', '', '', '', '13302337916', '03-课题：自然拼音', '天河华景中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9887', 'S09034', '劳隽熙', '女', '', '', '2010-08-02', '6', '13922166899', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '9500.00', '18380.55', '8880.55', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9888', 'S12366', '金昱谦', '男', '', '', '2012-11-04', '4', '13360008197', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9889', 'S15854', '蒋沛霖', '男', '', '', '', '', '15360016840', '06-上门咨询', '天河天府路中心', '2017-06-18', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '28316.00', '28316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9890', 'S13110', '姜昕屹', '男', '', '', '', '', '13725287618', '', '', '2017-05-12', '天河天府路中心', '', '', '', '申柯', '13725287618', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9891', 'S17342', '姜卉', '女', '', '', '', '', '13432004018', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '13432004018', '', '', '天河区天府路小学', '二年级', '5', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9892', 'S17328', '姜卉', '女', '', '', '2009-05-10', '8', '13533065839', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9893', 'S11543', '江益民', '男', '', '', '2013-01-16', '4', '13725105561', '01-老带新', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9894', 'S16658', '汲春杉', '女', '', '', '2011-05-13', '6', '13928893100', '02-课题：童话剧', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '161', '2017-08-27 16:27:09');
INSERT INTO `stjy_xyxxb` VALUES ('9895', 'S09033', '黄梓峰', '男', '', '', '2010-08-08', '6', '13560016636', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17439.09', '17439.09', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9896', 'S11036', '黄芷琳0305', '女', '', '', '', '', '13560250305', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9897', 'S09032', '黄泽蕊', '女', '', '', '2008-12-02', '8', '13802548976', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23469.30', '23469.30', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9898', 'S11059', '黄元星', '男', '', '', '', '', '13711669179', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9899', 'S11050', '黄元量', '女', '', '', '', '', '13711669179', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9900', 'S09879', '黄映衡', '男', '', '', '2012-11-08', '4', '13560016636', '', '', '2017-05-06', '天河天府路中心', '', '', '', '', '13560016636', '', '', '广州市天河区天府路小学', '中班', '天府路幼儿园', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1200.00', '1200.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9901', 'S09031', '黄玮婷', '女', '', '', '2009-01-07', '8', '18928895338', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16249.95', '16249.95', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9902', 'S17123', '黄思睿', '女', '', '', '', '', '13926022826', '10-其他渠道推荐', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区华景泽晖幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9903', 'S16827', '黄祺茜-KIKI', '女', '', '', '', '', '13503017628', '03-课题：自然拼音', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '13503017628', '', '', '天河区天府路小学（翠湖分校）', '二年级', '2', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '50680.00', '50680.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9904', 'S11104', '黄鸿亮', '男', '', '', '', '', '13660538977', '01-老带新', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '13660538977', '', '', '广州市天河区旭景小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9905', 'S11940', '胡甜慈', '女', '', '', '', '', '18022899616', '', '', '2017-05-08', '天河天府路中心', '', '', '18022899535', '', '18022899616', '', '', '广州市天河区天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9906', 'S17302', '胡世程', '女', '', '', '', '', '13925002550', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9907', 'S09030', '侯宸卓', '男', '', '', '2009-12-14', '7', '13802536119', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23289.06', '23289.06', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9908', 'S09029', '侯宸越', '男', '', '', '2009-12-14', '7', '13802536119', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '21629.39', '21629.39', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9909', 'S13730', '何泳希5668', '女', '', '', '', '', '13022055668', '06-上门咨询', '天河骏景中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '49760.00', '49760.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9910', 'S13741', '何垚均', '男', '', '', '', '', '18688471778', '06-上门咨询', '天河天府路中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '51839.67', '51839.67', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9911', 'S12820', '何雯', '女', '', '', '', '', '13068821834', '', '', '2017-05-11', '天河天府路中心', '', '何继成', '13924212778', '肖丽辉', '13068821834', '', '', '广州市天河区天府路小学', '四年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9912', 'S16529', '何家坤', '男', '', '', '', '', '18026380649', '03-课题：自然拼音', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9913', 'S13744', '何柏沅', '', '', '', '', '', '13070261292', '06-上门咨询', '天河天府路中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25960.00', '25960.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9914', 'S09028', '郭梓聪', '男', '', '', '2010-04-13', '7', '13502447171', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '八班', '', '0.00', '', '在读', '', '', '', '5500.00', '0.00', '16249.95', '21749.95', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9915', 'S09027', '龚子寅', '男', '', '', '2010-02-26', '7', '13829759394', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18564.58', '18564.58', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9916', 'S14685', '高梓骞', '女', '', '', '2012-08-02', '4', '13922220087', '', '', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '广州邮电通信设备公司幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9917', 'S11900', '符方涓', '女', '', '', '2012-09-26', '4', '13808841422', '', '', '2017-05-08', '天河骏景中心', '', '', '18688874048', '', '13808841422', '', '', '95107部队幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9918', 'S17309', '冯煦洋', '男', '', '', '', '', '13660776606', '07-网络咨询', '天河天府路中心', '2017-06-29', '天河天府路中心', '', '', '13763335867', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9919', 'S01521', '杜航宇', '男', '', '', '2009-02-07', '8', '18988800659', '转入', '', '', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '31570.08', '0.00', '0.00', '31570.08', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9920', 'S13089', '董陈蓓', '女', '', '', '2010-04-17', '7', '13560067893', '07-网络咨询', '天河骏景中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '广州大学附属小学', '一年级', '6班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9921', 'S10555', '邓亦舟', '女', '', '', '', '', '18926224535', '预约试听', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9922', 'S07495', '邓汇子', '女', '', '', '2010-05-17', '7', '13560478460', '', '', '2016-12-18', '天河华景中心', '', '', '', '', '13560478460', '', '', '天河区天府路小学', '一年级', '8', '', '0.00', '', '在读', '', '', '', '0.00', '8900.00', '16098.45', '7198.45', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9923', 'S17019', '戴裕桐', '女', '', '', '', '', '13688880119', '03-课题：自然拼音', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9924', 'S17035', '戴永航', '男', '', '', '', '', '13688880119', '在线报名,10-其他渠道推荐', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9925', 'S16590', '崔雯睿', '女', '', '', '', '', '13719056933', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '10.00', '6400.00', '11400.00', '5010.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9926', 'S11473', '陈梓豪0326', '女', '', '', '', '', '13825130326', '06-上门咨询', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市越秀区水荫路小学', '二年级', '4', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9927', 'S12495', '陈宇华', '男', '', '', '2008-06-18', '9', '13318838382', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9928', 'S13243', '陈熹', '', '', '', '', '', '13570263325', '转入', '海珠滨江东中心', '2017-05-13', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '未上幼儿园', '0.00', '', '在读', '', '', '', '460.00', '0.00', '960.00', '1420.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9929', 'S13317', '陈姝含', '女', '', '', '2008-07-06', '8', '13632496687', '07-网络咨询', '', '2017-05-13', '天河天府路中心', '', '陈德鸿', '13570206687', '郑少丽', '13632496687', '', '', '广州市天河区天府路小学', '三年级', '（6）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9930', 'S09026', '陈锵铭', '男', '', '', '2008-05-07', '9', '13802520060', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9931', 'S11147', '陈明宇', '男', '', '', '', '', '15919305340', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9932', 'S11883', '陈立言', '男', '', '', '', '', '18680286506', '06-上门咨询', '天河天府路中心', '2017-05-08', '天河骏景中心', '', '', '', '', '18680286506', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9933', 'S09025', '陈可馨8669', '女', '', '', '2010-06-02', '7', '15622218669', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18384.03', '18384.03', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9934', 'S11566', '陈钧泽', '男', '', '', '', '', '13286854113', '01-老带新', '海珠滨江东中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9935', 'S11953', '蔡斯丞', '男', '', '', '2010-06-08', '7', '13570052906', '10-其他渠道推荐', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '', '13570052906', '', '', '广州市天河区骏景小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9936', 'S12913', '蔡乐铭', '女', '', '', '', '', '13826173078', '', '', '2017-05-11', '天河天府路中心', '', '', '', '朱燕秋', '13826173078', '', '', '广州市天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9937', 'S09315', '蔡君昊', '男', '', '', '2009-02-14', '8', '13603016366', '01-老带新', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '13603016366', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '48800.00', '49080.00', null, '161', '2017-08-27 16:27:10');
INSERT INTO `stjy_xyxxb` VALUES ('9938', 'S13915', '宾诗琪', '女', '', '', '2010-01-08', '7', '15989047046', '01-老带新', '天河天府路中心', '2017-05-18', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区华景小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '161', '2017-08-27 16:27:10');

-- ----------------------------
-- Table structure for stjy_xzmxb
-- ----------------------------
DROP TABLE IF EXISTS `stjy_xzmxb`;
CREATE TABLE `stjy_xzmxb` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `xuhao` int(11) DEFAULT NULL COMMENT '序号',
  `yuefen` varchar(255) DEFAULT NULL COMMENT '月份',
  `fenxiao` varchar(255) DEFAULT NULL COMMENT '分校',
  `jianshaolx` varchar(255) DEFAULT NULL COMMENT '减少类型',
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xzmxb
-- ----------------------------

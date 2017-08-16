/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : stjy

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-08-16 23:13:56
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
INSERT INTO `stjy_access` VALUES ('3', '5', '1', null);
INSERT INTO `stjy_access` VALUES ('3', '12', '2', null);
INSERT INTO `stjy_access` VALUES ('3', '14', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '15', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '16', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '17', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '18', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '28', '3', null);
INSERT INTO `stjy_access` VALUES ('3', '30', '3', null);
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
INSERT INTO `stjy_admin` VALUES ('1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', '', '1,2,3', '1502863530', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('2', 'meimei', 'e962c96829241f53c3d68a67f80c4eb7', '梅梅', 'meimei@163.com', '1,2,4', '1502795867', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('3', 'maomao', 'e2145387bcc7842edef4ccecc34b7da4', 'maomao', 'maomao', '2,3', '1501780416', '127.0.0.1', '1');
INSERT INTO `stjy_admin` VALUES ('4', 'caiwu', 'f5b5ec699ed736de89336fbce0bc9890', '财务', 'caiwu@caiwu.com', '1,2,3', '1502876005', '127.0.0.1', '0');
INSERT INTO `stjy_admin` VALUES ('5', 'exlee', 'e10adc3949ba59abbe56e057f20f883e', '行政经理', 'exlee@stjy.com', '1,2,3,4', '1502894261', '127.0.0.1', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_bjxxb
-- ----------------------------
INSERT INTO `stjy_bjxxb` VALUES ('112', 'P1AF01G0204', '天河天府路中心', '陈玲,Richar,潘丽雄', '叶晓纯', 'class02', '42785', '', '42905.645833333', '43109', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '10.00', '83.3%', '16.00', '次', '18.00', '12.00', null, '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('113', 'P1BF02G0205', '天河天府路中心', '彭永红,Richar,潘丽雄', '彭永红', 'class02', '42788', '', '42908.6875', '43109', '周四16:30~19:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '5.00', '41.7%', '16.00', '次', '18.00', '12.00', null, '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('114', '未进班', '天河天府路中心', '', '', '', '1', '', '', '', '', '3小时', '00-小学英语课程', '01-广州区域', '0.00', '10.00', '0.0%', '0.00', '次', '0.00', '0.00', null, '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('115', '广州区域-周末班-英语-3.0小时次_补课班级', '天河天府路中心', '叶晓纯', '', '', '42840.383715394', '', '42838.6875', '', '', '3小时', '00-小学英语课程', '01-广州区域', '100.00', '0.00', '0.0%', '0.00', '次', '1.00', '0.00', null, '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('116', '游学会员', '天河天府路中心', '', '', '', '42826', '', '', '', '', '', '', '01-广州区域', '0.00', '7.00', '0.0%', '0.00', '次', '0.00', '0.00', null, '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('117', 'P02F01G0106', '天河天府路中心', '翟志翔,Zoe,陈美全', '翟志翔', 'class02', '42868', '', '42973.375', '43174', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '15.00', '10.00', '66.7%', '16.00', '次', '15.00', '7.00', null, '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('118', 'P1AF02G0201', '天河天府路中心', '翟志翔,Richar,陈美全', '翟志翔', 'class03', '42905', '', '43017.645833333', '44370', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '9.00', '75.0%', '17.00', '次', '16.00', '1.00', null, '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('119', 'P1AF02G0202', '天河天府路中心', '翟志翔,Richar,郑琴', '翟志翔', 'class03', '42908', '', '43020.645833333', '43267', '周四15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '10.00', '83.3%', '17.00', '次', '16.00', '1.00', null, '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('120', 'P1AF02G0203', '天河天府路中心', '翟志翔,郑琴,Zoe', '翟志翔', 'class03', '42910', '', '43022.375', '43645', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '8.00', '66.7%', '17.00', '次', '16.00', '1.00', null, '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('121', 'P02F01G0103', '天河天府路中心', '翟志翔,郑琴,Zoe', '翟志翔', 'class03', '42790', '', '42903.375', '43109', '周六09:00~12:00', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '8.00', '66.7%', '16.00', '次', '10.00', '10.00', '已结业', '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('122', 'P02F01G0101', '天河天府路中心', '翟志翔,Richar,郑琴', '翟志翔', 'class03', '42785', '', '42898.645833333', '43109', '周一15:30~18:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '9.00', '75.0%', '16.00', '次', '11.00', '11.00', '已结业', '37', '2017-08-16 23:12:50');
INSERT INTO `stjy_bjxxb` VALUES ('123', 'P02F01G0102', '天河天府路中心', '翟志翔,Richar,郑琴', '翟志翔', 'class03', '42788', '', '42901.6875', '43109', '周四16:30~19:30', '3小时', '00-小学英语课程', '01-广州区域', '12.00', '10.00', '83.3%', '16.00', '次', '11.00', '11.00', '已结业', '37', '2017-08-16 23:12:50');

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
) ENGINE=MyISAM AUTO_INCREMENT=1531 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_bjxyxxb
-- ----------------------------
INSERT INTO `stjy_bjxyxxb` VALUES ('1155', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09047', '潘浩智', '一年级', '13640768911', '0.00', '00028486', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1156', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09202', '闾家熙', '一年级', '13570201921', '0.00', '00028769,00036705,00051902', '', '广州市天河区天府路小学', '18680287007', '13570201921', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1157', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09203', '钟华华', '一年级', '13824424796', '0.00', '00028773,00036696,00051882', '', '广州市天河区天府路小学', '', '13824424796', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1158', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09204', '朱诗淇', '一年级', '13725200569', '0.00', '00028774,00036689,00051903', '', '广州市天河区天府路小学', '13725200569', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1159', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S09478', '易其乐', '一年级', '13822188180', '0.00', '00030855,00030856', '', '广州市天河区天府路小学', '13925098792', '13822188180', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1160', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11104', '黄鸿亮', '一年级', '13660538977', '0.00', '00037173', '', '广州市天河区天府路小学', '', '13660538977', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1161', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11909', '尹梓溢', '一年级', '13527850817', '0.00', '00038385', '', '广州市天河区天府路小学', '', '13527850817', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1162', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11962', '李梓铖', '一年级', '13631317878', '0.00', '00042389', '', '天河区骏景小学', '', '13631317878', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1163', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S11965', '杨天乐', '二年级', '13632358827', '0.00', '00038470', '', '广州市天河区第一实验小学', '135602498880', '13632358827', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1164', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,Zoe,陈美全', 'S14517', '列羽芊', '一年级', '13828434397', '0.00', '00043962', '', '广州市天河区天府路小学', '', '13828434397', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1165', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S01616', '彭希扬', '二年级', '18620488133', '0.00', '00028044', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1166', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S01622', '邱刘哲', '二年级', '18620916361', '0.00', '00028046', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1167', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09029', '侯宸越', '一年级', '13802536119', '0.00', '00028496,00034059,00034060,00034071,00034072', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1168', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09030', '侯宸卓', '一年级', '13802536119', '0.00', '00028482,00034055,00034057,00034068,00034069', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1169', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09031', '黄玮婷', '一年级', '18928895338', '0.00', '00028488', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1170', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09032', '黄泽蕊', '二年级', '13802548976', '0.00', '00028505,00034061,00034062,00034075,00034078', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1171', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09046', '陆子叶', '二年级', '13632453211', '0.00', '00028510', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1172', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09053', '姚怡然', '二年级', '13826485248', '0.00', '00028495,00030529,00030608,00030609', '', '天府路小学翠湖校区', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1173', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S09056', '周子澄', '二年级', '13926468975', '0.00', '00028490', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1174', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '陈玲,Richar,潘丽雄', 'S11540', '张芷涵', '一年级', '13763366493', '0.00', '00047948', '', '广州市天河区天府路小学', '13825027568', '13763366493', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1175', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09025', '陈可馨8669', '一年级', '15622218669', '0.00', '00028491,00051188', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1176', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09033', '黄梓峰', '一年级', '13560016636', '0.00', '00028484,00051192', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1177', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09034', '劳隽熙', '一年级', '13922166899', '0.00', '00028070,00028072,00051194,00051196,00051210,00051212', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1178', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09043', '刘芷妤', '一年级', '13501518927', '0.00', '00028507,00051198', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1179', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09050', '王子骅', '一年级', '13302291816', '0.00', '00028485,00051204', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1180', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09052', '吴欣诺', '一年级', '13632353832', '0.00', '00028480,00051206', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1181', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09054', '张文一', '一年级', '13302336626', '0.00', '00028506,00051208', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1182', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S09613', '生艾霖', '一年级', '13392681558', '0.00', '00031350,00031351,00051200,00051202,00051214,00051216', '', '广州市天河区天府路小学', '', '13395681558', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1183', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周一15:30~18:30', '翟志翔,Richar,陈美全', 'S13741', '何垚均', '一年级', '18688471778', '0.00', '00046748,00051190', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1184', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07379', '杨钶犇', '一年级', '13794367768', '0.00', '00028039,00051242', '', '广州市天河区天府路小学', '13794367768', '13826484457', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1185', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07495', '邓汇子', '一年级', '13560478460', '0.00', '00028037,00051218', '', '广州市天河区天府路小学', '', '13560478460', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1186', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07715', '钟子锟', '一年级', '18929593969', '0.00', '00028036,00051248', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1187', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S07733', '林承熙', '一年级', '13922386115', '0.00', '00028498,00051236', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1188', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09028', '郭梓聪', '一年级', '13502447171', '0.00', '00028502,00051220', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1189', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09035', '黎政鑫', '一年级', '13640846060', '0.00', '00028493,00040586,00041703,00045086,00045088,00051222,00051224', '', '天河区天府路小学（翠湖分校）', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1190', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09037', '李雅希', '一年级', '13533545832', '0.00', '00028497,00030364,00030368,00051226,00051228,00051230', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1191', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09039', '梁泓楠', '一年级', '13418072142', '0.00', '00028509,00041700,00041702,00045131,00045133,00051232,00051234', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1192', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09042', '刘芷睿', '一年级', '18665651008', '0.00', '00028511,00050335,00051238,00051240', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1193', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四15:30~18:30', '翟志翔,Richar,郑琴', 'S09055', '钟雨桐', '一年级', '18898605866', '0.00', '00028062,00028064,00051244,00051246', '', '天河区天府路小学（翠湖分校）', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1194', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S07377', '谢宇侨', '一年级', '13500000969', '0.00', '00011438,00028047,00028089,00051577,00051579', '', '广州市天河区天府路小学', '13500000969', '13926002979', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1195', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09027', '龚子寅', '一年级', '13829759394', '0.00', '00028481,00051561', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1196', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09036', '李佩儿', '一年级', '13527882123', '0.00', '00030475,00051563', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1197', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09038', '李紫嫣', '一年级', '18520121305', '0.00', '00028499,00051567', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1198', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09045', '陆鸣飞', '二年级', '13609726477', '0.00', '00028492,00049555,00051569,00051571', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1199', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09049', '苏兴承', '一年级', '13922229923', '0.00', '00028508,00051573', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1200', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S09051', '温静远', '一年级', '13922106580', '0.00', '00028489,00030611,00051575', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1201', '天河天府路中心', '广州区域-周末班-英语-3.0小时次', '停读', '周六09:00~12:00', '翟志翔,郑琴,Zoe', 'S11238', '李羽涵', '一年级', '13640217144', '0.00', '00037371,00051565', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1202', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S01699', '曾砚斐', '三年级', '18818859966', '0.00', '00028042', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1203', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09026', '陈锵铭', '三年级', '13802520060', '0.00', '00028503', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1204', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09040', '梁希', '三年级', '13556198719', '0.00', '00028500', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1205', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09044', '柳皓轩', '三年级', '13560322898', '0.00', '00028501', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1206', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '停读', '周四16:30~19:30', '彭永红,Richar,潘丽雄', 'S09199', '曾子希', '三年级', '13631499742', '0.00', '00028758', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1207', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S07378', '谢宇博', '一年级', '13500000969', '0.00', '00028052', '', '广州市天河区天府路小学', '13500000969', '13926002979', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1208', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1209', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1210', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1211', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1212', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09309', '邱朔晴', '二年级', '18922734146', '0.00', '', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1213', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09315', '蔡君昊', '二年级', '13603016366', '0.00', '', '', '广州市天河区天府路小学', '', '13603016366', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1214', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09325', '朱彦坤', '二年级', '13527820131', '0.00', '', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1215', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', '', '', 'S09326', '王子涵（1）', '二年级', '15011912587', '0.00', '', '', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1216', null, null, null, null, null, null, null, null, null, '0.00', null, null, null, null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1217', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S01699', '曾砚斐', '三年级', '18818859966', '0.00', '00022079,00028042', '游学会员', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1218', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09026', '陈锵铭', '三年级', '13802520060', '0.00', '00028504', '游学会员', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1219', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09051', '温静远', '一年级', '13922106580', '0.00', '00029908,00030611', '游学会员', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1220', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09309', '邱朔晴', '二年级', '18922734146', '0.00', '00029998', '游学会员', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1221', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09315', '蔡君昊', '二年级', '13603016366', '0.00', '00030038', '游学会员', '广州市天河区天府路小学', '', '13603016366', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1222', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09325', '朱彦坤', '二年级', '13527820131', '0.00', '00030088', '游学会员', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1223', '天河天府路中心', '广州区域-游学会员（美国线-48800元-21天）', '游学会员', '', '', 'S09326', '王子涵（1）', '二年级', '15011912587', '0.00', '00030090', '游学会员', '广州市天河区天府路小学', '', '', '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1224', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10222', '李乐天', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1225', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10390', '詹靖宇', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1226', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10408', '谢语墨', '小班', null, null, null, null, '未读幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1227', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10414', '詹靖轩', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1228', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10555', '邓亦舟', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1229', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10626', '杨一诺（1）', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1230', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10636', '杨一言', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1231', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10708', '张曌仪', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1232', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10725', '张驰（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1233', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10745', '黎亮', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1234', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10759', '李澜昕', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1235', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1236', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10776', '李欣遥', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1237', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10783', '李宣霖', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1238', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10823', '王梓淇（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1239', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10889', '李烨铭', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1240', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10907', '梁钰', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1241', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10980', '林昕睿', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1242', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11022', '吴奕帆', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1243', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11028', '郑煜坤', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1244', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11036', '黄芷琳', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1245', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11046', '张奇钰', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1246', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11059', '黄元星', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1247', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11084', '邱堉庄', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1248', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11137', '杨熙峻', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1249', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11143', '林馨语', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1250', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11147', '陈明宇', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1251', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1252', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11217', '许雯婷', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1253', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11226', '林子淇（1）', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1254', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11242', '刘安淇（1）', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1255', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11347', '王岱霖', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1256', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11534', '朱晓禾', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1257', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11543', '江益民', '小班', null, null, null, null, '未读幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1258', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11664', '张智钦', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1259', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11665', '潘钰辰', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1260', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11667', '周昱延', '小班', null, null, null, null, '未读幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1261', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11787', '罗悦宁', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1262', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11790', '张梓玥', '大班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1263', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11798', '邹亦非', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1264', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11883', '陈立言', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1265', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11900', '符方涓', '中班', null, null, null, null, '95107部队幼儿园', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1266', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11938', '吴沐欣', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1267', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11940', '胡甜慈', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1268', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11950', '翁语欣（1）', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1269', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11964', '平皓中', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1270', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12258', '张语彤', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1271', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12366', '金昱谦', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1272', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12367', '彭芷晴', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1273', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12380', '张庭语', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1274', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12425', '熊忻仪', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1275', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12431', '唐茜薇', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1276', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12467', '杨芷澄', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1277', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12469', '万语笑', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:57');
INSERT INTO `stjy_bjxyxxb` VALUES ('1278', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12495', '陈宇华', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1279', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12545', '杨梓盈', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1280', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12550', '李沄天', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1281', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12820', '何雯', '四年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1282', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12910', '龙心宜', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1283', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12911', '王稚尹', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1284', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12913', '蔡乐铭', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1285', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13026', '王加泓', '大班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1286', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13067', '唐希怡', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1287', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13103', '万博文', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1288', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13110', '姜昕屹', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1289', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13317', '陈姝含', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1290', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13320', '魏蔚然', '三年级', null, null, null, null, '广州市暨南大学附属小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1291', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13730', '何泳希', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1292', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13744', '何柏沅', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1293', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13915', '宾诗琪', '一年级', null, null, null, null, '广州市天河区华景小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1294', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14355', '毛思羽', '一年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1295', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14675', '李梓杰', '小班', null, null, null, null, '未读幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1296', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14685', '高梓骞', '中班', null, null, null, null, '广州邮电通信设备公司幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1297', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S14734', '张羽嫣', '小班', null, null, null, null, '广州都市兰亭幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1298', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S09879', '黄映衡', '中班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1299', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11473', '陈梓豪0326', '二年级', null, null, null, null, '广州市越秀区水荫路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1300', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17328', '姜卉', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1301', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17302', '胡世程', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1302', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17326', '林小轩', '中班', null, null, null, null, '新蕾幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1303', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17323', '林小哲（Austin）', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1304', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17318', '朱钰彤', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1305', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17309', '冯煦洋', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1306', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17314', '肖鑫彤', '一年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1307', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17311', '姚季芮', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1308', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17330', '汪宇丰', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1309', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17123', '黄思睿', '小班', null, null, null, null, '广州市天河区华景泽晖幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1310', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17110', '周梓麒', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1311', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17043', '王唯有', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1312', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17042', '李泓泽', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1313', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17040', '吴祝吉', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1314', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17035', '戴永航', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1315', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17019', '戴裕桐', '小班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1316', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17011', '吴志轩', '小班', null, null, null, null, '未读幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1317', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16940', '梁添翔', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1318', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16827', '黄祺茜-KIKI', '二年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1319', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16821', '邹沐彤', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1320', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16667', '曾芷睿rayna', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1321', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16658', '汲春杉', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1322', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16607', '雷鲁健', '小班', null, null, null, null, '未读幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1323', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16600', '李冠延', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1324', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16590', '崔雯睿', '小班', null, null, null, null, '未读幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1325', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16529', '何家坤', '二年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1326', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16415', '杨晨曦', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1327', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S16323', '罗鸿铭', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1328', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S01612', '潘子颀', '六年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1329', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15861', '徐俊哲', '大班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1330', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15801', '杨雨浠', '二年级', null, null, null, null, '广州市越秀区水荫路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1331', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15854', '蒋沛霖', '大班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1332', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13243', '陈熹', '小班', null, null, null, null, '未读幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1333', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13198', '宋美京', '二年级', null, null, null, null, '东风东路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1334', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S15713', '张思哲', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1335', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13089', '董陈蓓', '一年级', null, null, null, null, '广州大学附属小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1336', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S12558', '勒瑞琦', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1337', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10868', '彭羽菲', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1338', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10853', '彭云翼', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1339', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S10936', '詹以峤', '小班', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1340', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S01521', '杜航宇', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1341', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19180', 'timmy', '大班', null, null, null, null, '东莞市东城朝天实验小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1342', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19155', '熊峰', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1343', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18724', '陆文蓓', '二年级', null, null, null, null, '广州市天河区华景小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1344', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19122', '赵若菡', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1345', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19097', '冯钰淑', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1346', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18827', '徐宸', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1347', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18835', '曾子瀚', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1348', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18834', '王子荞', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1349', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18804', '陈博源', '三年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1350', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18745', '肖昕瑶', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1351', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18734', '彭星语', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1352', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18632', '范越好', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1353', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18646', '黄楷邦', '大班', null, null, null, null, '朝阳东幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1354', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18645', '柯皓天', '中班', null, null, null, null, '广州邮电通信设备公司幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1355', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18628', '熊奕宁', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1356', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18626', '陈铭灏', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1357', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18599', '张书瑶4101', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1358', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18596', '胡遥', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1359', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18593', '胡逍', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1360', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18564', '何思睿', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1361', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18562', '骆伊洋Dora', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1362', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18407', '陈启', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1363', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18271', '陈悦心', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1364', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18229', '简耀龙', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1365', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18358', '刘烔燊', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1366', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18232', '杨旖妮', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1367', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18175', '李晓语', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1368', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18156', '蓝添', '四年级', null, null, null, null, '广州市番禺区华南碧桂园学校', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1369', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S18057', '廖爱跃', '大班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1370', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17907', '江晓潼', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1371', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17905', '梁文迪', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1372', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17901', '林也淇', '二年级', null, null, null, null, '广州市天河区华景小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1373', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17865', '姚俊宏', '中班', null, null, null, null, '东华幼儿园', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1374', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17868', '纪博桓', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1375', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17930', '刘赜恺', '二年级', null, null, null, null, '广州市天河区华景小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1376', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S17859', '许雯棋', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1377', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19524', '林子妍', '二年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1378', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19504', '邓禹', '二年级', null, null, null, null, '天河区天府路小学（翠湖分校）', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1379', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19472', '吴家兆', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1380', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S19470', '吴家诚', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1381', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S13383', '杨恩昊', '三年级', null, null, null, null, '未知', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1382', '天河天府路中心', '广州区域-平时班-英语-3.0小时次', '未进班', null, null, 'S11566', '陈钧泽', '一年级', null, null, null, null, '广州市天河区天府路小学', null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1383', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1384', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1385', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1386', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1387', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1388', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1389', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1390', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1391', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1392', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1393', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1394', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1395', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1396', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1397', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1398', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1399', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1400', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1401', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1402', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1403', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1404', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1405', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1406', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1407', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1408', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1409', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1410', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1411', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1412', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1413', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1414', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1415', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1416', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1417', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1418', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1419', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1420', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1421', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1422', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1423', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1424', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1425', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1426', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1427', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1428', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1429', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1430', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1431', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1432', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1433', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1434', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1435', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1436', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1437', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1438', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1439', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1440', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1441', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1442', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1443', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1444', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1445', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1446', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1447', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1448', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1449', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1450', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1451', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1452', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1453', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1454', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1455', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1456', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1457', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1458', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1459', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1460', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1461', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1462', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1463', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1464', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1465', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1466', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1467', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1468', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1469', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1470', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1471', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1472', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1473', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1474', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1475', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1476', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1477', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1478', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1479', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1480', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1481', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1482', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1483', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1484', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1485', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1486', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1487', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1488', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1489', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1490', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1491', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1492', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1493', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1494', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1495', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1496', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1497', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1498', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1499', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1500', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1501', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1502', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1503', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1504', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1505', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1506', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1507', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1508', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1509', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1510', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1511', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1512', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1513', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1514', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1515', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1516', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1517', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1518', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1519', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1520', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1521', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1522', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1523', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1524', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1525', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1526', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1527', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1528', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1529', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');
INSERT INTO `stjy_bjxyxxb` VALUES ('1530', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '38', '2017-08-16 23:12:58');

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
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_kbmxb
-- ----------------------------
INSERT INTO `stjy_kbmxb` VALUES ('82', 'P1AF02G0201', '2017-06-19', '2021-06-23', 'class03', '15:30-18:30', '周一', '3.00', '1.50', '1.00', '0.50', '翟志翔', '陈美全', 'Richar', '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('83', 'P1AF02G0203', '2017-06-24', '2019-06-29', 'class03', '09:00-12:00', '周六', '3.00', '1.50', '1.00', '0.50', '翟志翔', '郑琴', 'Zoe', '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('84', 'P02F01G0106', '2017-05-13', '2018-03-15', 'class02', '09:00-12:00', '周六', '3.00', '1.50', '1.00', '0.50', '翟志翔', '陈美全', 'Zoe', '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('85', 'P1AF01G0204', '2017-02-19', '2018-01-09', 'class02', '15:30-18:30', '周一', '3.00', '1.50', '1.00', '0.50', '陈玲', '潘丽雄', 'Richar', '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('86', 'P1BF02G0205', '2017-02-22', '2018-01-09', 'class02', '16:30-19:30', '周四', '3.00', '1.50', '1.00', '0.50', '彭永红', '潘丽雄', 'Richar', '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('87', 'P1AF02G0202', '2017-06-22', '2018-06-16', 'class03', '15:30-18:30', '周四', '3.00', '1.50', '1.00', '0.50', '翟志翔', '郑琴', 'Richar', '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('88', '未进班', null, null, null, null, null, null, null, null, null, null, null, null, '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('89', '广州区域-周末班-英语-3.0小时次_补课班级', null, null, null, null, null, null, null, null, null, null, null, null, '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('90', '游学会员', null, null, null, null, null, null, null, null, null, null, null, null, '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('91', null, null, null, null, null, null, null, null, null, null, null, null, null, '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('92', null, null, null, null, null, null, null, null, null, null, null, null, null, '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('93', null, null, null, null, null, null, null, null, null, null, null, null, null, '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('94', null, null, null, null, null, null, null, null, null, null, null, null, null, '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('95', null, null, null, null, null, null, null, null, null, null, null, null, null, '41', '2017-08-16 23:13:25');
INSERT INTO `stjy_kbmxb` VALUES ('96', null, null, null, null, null, null, null, null, null, null, null, null, null, '41', '2017-08-16 23:13:25');

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
) ENGINE=MyISAM AUTO_INCREMENT=2012 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_kxmxb
-- ----------------------------
INSERT INTO `stjy_kxmxb` VALUES ('1785', 'S11798', '邹亦非', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1786', 'S16821', '邹沐彤', '二年级', null, null, '2班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1787', 'S17318', '朱钰彤', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1788', 'S09325', '朱彦坤', '二年级', null, null, '3班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1789', 'S11534', '朱晓禾', '四年级', null, null, '5班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1790', 'S09204', '朱诗淇', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1791', 'S17110', '周梓麒', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1792', 'S09056', '周子澄', '二年级', null, null, '五班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1793', 'S11667', '周昱延', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1794', 'S09664', '钟子淇', '四年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1795', 'S07715', '钟子锟', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1796', 'S16474', '钟玥嘉', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1797', 'S09055', '钟雨桐', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1798', 'S09203', '钟华华', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1799', 'S11028', '郑煜坤', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1800', 'S11790', '张梓玥', '大班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1801', 'S11664', '张智钦', '小班', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1802', 'S11540', '张芷涵', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1803', 'S10708', '张曌仪', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1804', 'S12258', '张语彤', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1805', 'S14734', '张羽嫣', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1806', 'S09054', '张文一', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1807', 'S12380', '张庭语', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1808', 'S15713', '张思哲', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1809', 'S11046', '张奇钰', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1810', 'S10725', '张驰（1）', '一年级', null, null, '（3）', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1811', 'S10936', '詹以峤', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1812', 'S10390', '詹靖宇', '二年级', null, null, '6班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1813', 'S10414', '詹靖轩', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1814', 'S09199', '曾子希', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1815', 'S16667', '曾芷睿rayna', '二年级', null, null, '7', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1816', 'S01699', '曾砚斐', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1817', 'S11163', '曾浩轩（1）', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1818', 'S11909', '尹梓溢', '一年级', null, null, '2班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1819', 'S09478', '易其乐', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1820', 'S09053', '姚怡然', '二年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1821', 'S17311', '姚季芮', '一年级', null, null, '6', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1822', 'S12545', '杨梓盈', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1823', 'S12467', '杨芷澄', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1824', 'S15801', '杨雨浠', '二年级', null, null, '六班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1825', 'S10636', '杨一言', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1826', 'S10626', '杨一诺（1）', '二年级', null, null, '（8）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1827', 'S11137', '杨熙峻', '一年级', null, null, '（3）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1828', 'S11965', '杨天乐', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1829', 'S07379', '杨钶犇', '一年级', null, null, '8', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1830', 'S16415', '杨晨曦', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1831', 'S11217', '许雯婷', '三年级', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1832', 'S15861', '徐俊哲', '大班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1833', 'S12425', '熊忻仪', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1834', 'S10408', '谢语墨', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1835', 'S07377', '谢宇侨', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1836', 'S07378', '谢宇博', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1837', 'S10069', '谢莉雯', '二年级', null, null, '13班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1838', 'S17314', '肖鑫彤', '一年级', null, null, '2班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1839', 'S09228', '冼珈永', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1840', 'S17040', '吴祝吉', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1841', 'S17011', '吴志轩', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1842', 'S11803', '吴宇鑫', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1843', 'S11022', '吴奕帆', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1844', 'S09052', '吴欣诺', '一年级', null, null, '五班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1845', 'S11938', '吴沐欣', '二年级', null, null, '七班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1846', 'S11950', '翁语欣（1）', '三年级', null, null, '九班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1847', 'S11948', '翁语欣', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1848', 'S09051', '温静远', '一年级', null, null, '八班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1849', 'S13320', '魏蔚然', '三年级', null, null, '（5）', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1850', 'S10823', '王梓淇（1）', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1851', 'S09050', '王子骅', '一年级', null, null, '五班 ', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1852', 'S09326', '王子涵（1）', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1853', 'S12911', '王稚尹', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1854', 'S17043', '王唯有', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1855', 'S13026', '王加泓', '大班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1856', 'S11347', '王岱霖', '一年级', null, null, '（4）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1857', 'S17330', '汪宇丰', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1858', 'S12469', '万语笑', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1859', 'S13103', '万博文', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1860', 'S13067', '唐希怡', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1861', 'S12431', '唐茜薇', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1862', 'S09049', '苏兴承', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1863', 'S13198', '宋美京', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1864', 'S09613', '生艾霖', '一年级', null, null, '六班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1865', 'S11084', '邱堉庄', '一年级', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1866', 'S09309', '邱朔晴', '二年级', null, null, '8班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1867', 'S01622', '邱刘哲', '二年级', null, null, '', null, null, null, '邹丽萍', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1868', 'S11964', '平皓中', '一年级', null, null, '七班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1869', 'S12367', '彭芷晴', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1870', 'S10853', '彭云翼', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1871', 'S10868', '彭羽菲', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1872', 'S01616', '彭希扬', '二年级', null, null, '', null, null, null, '邹丽萍', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1873', 'S01612', '潘子颀', '六年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1874', 'S11665', '潘钰辰', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1875', 'S09047', '潘浩智', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1876', 'S14355', '毛思羽', '一年级', null, null, '（3）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1877', 'S11787', '罗悦宁', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1878', 'S16323', '罗鸿铭', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1879', 'S09202', '闾家熙', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1880', 'S09046', '陆子叶', '二年级', null, null, '五班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1881', 'S09045', '陆鸣飞', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1882', 'S12910', '龙心宜', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1883', 'S09044', '柳皓轩', '三年级', null, null, '六班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1884', 'S09043', '刘芷妤', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1885', 'S09042', '刘芷睿', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1886', 'S10771', '刘骐瑶', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1887', 'S11242', '刘安淇（1）', '一年级', null, null, '（8）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1888', 'S11226', '林子淇（1）', '三年级', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1889', 'S11143', '林馨语', '小班', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1890', 'S10966', '林欣锐', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1891', 'S10980', '林昕睿', '一年级', null, null, '（3）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1892', 'S17323', '林小哲（Austin）', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1893', 'S17326', '林小轩', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1894', 'S07733', '林承熙', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1895', 'S14517', '列羽芊', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1896', 'S10907', '梁钰', '四年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1897', 'S09040', '梁希', '三年级', null, null, '六班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1898', 'S16940', '梁添翔', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1899', 'S09039', '梁泓楠', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1900', 'S09038', '李紫嫣', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1901', 'S14675', '李梓杰', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1902', 'S11962', '李梓铖', '一年级', null, null, '（3）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1903', 'S12550', '李沄天', '三年级', null, null, '八班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1904', 'S11238', '李羽涵', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1905', 'S10889', '李烨铭', '四年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1906', 'S09037', '李雅希', '一年级', null, null, '四班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1907', 'S10783', '李宣霖', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1908', 'S10776', '李欣遥', '一年级', null, null, '1班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1909', 'S09036', '李佩儿', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1910', 'S10222', '李乐天', '一年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1911', 'S10759', '李澜昕', '二年级', null, null, '（2）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1912', 'S17042', '李泓泽', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1913', 'S16600', '李冠延', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1914', 'S09035', '黎政鑫', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1915', 'S10745', '黎亮', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1916', 'S16607', '雷鲁健', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1917', 'S12558', '勒瑞琦', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1918', 'S09034', '劳隽熙', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1919', 'S12366', '金昱谦', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1920', 'S15854', '蒋沛霖', '大班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1921', 'S13110', '姜昕屹', '一年级', null, null, '四班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1922', 'S17342', '姜卉', '二年级', null, null, '5', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1923', 'S17328', '姜卉', '二年级', null, null, '五班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1924', 'S11543', '江益民', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1925', 'S16658', '汲春杉', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1926', 'S09033', '黄梓峰', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1927', 'S11036', '黄芷琳0305', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1928', 'S09032', '黄泽蕊', '二年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1929', 'S11059', '黄元星', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1930', 'S11050', '黄元量', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1931', 'S09879', '黄映衡', '中班', null, null, '天府路幼儿园', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1932', 'S09031', '黄玮婷', '一年级', null, null, '四班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1933', 'S17123', '黄思睿', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1934', 'S16827', '黄祺茜-KIKI', '二年级', null, null, '2', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1935', 'S11104', '黄鸿亮', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1936', 'S11940', '胡甜慈', '一年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1937', 'S17302', '胡世程', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1938', 'S09030', '侯宸卓', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1939', 'S09029', '侯宸越', '一年级', null, null, '二班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1940', 'S13730', '何泳希5668', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1941', 'S13741', '何垚均', '一年级', null, null, '四班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1942', 'S12820', '何雯', '四年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1943', 'S16529', '何家坤', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1944', 'S13744', '何柏沅', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1945', 'S09028', '郭梓聪', '一年级', null, null, '八班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1946', 'S09027', '龚子寅', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1947', 'S14685', '高梓骞', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1948', 'S11900', '符方涓', '中班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1949', 'S17309', '冯煦洋', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1950', 'S01521', '杜航宇', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1951', 'S13089', '董陈蓓', '一年级', null, null, '6班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1952', 'S10555', '邓亦舟', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1953', 'S07495', '邓汇子', '一年级', null, null, '8', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1954', 'S17019', '戴裕桐', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1955', 'S17035', '戴永航', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1956', 'S16590', '崔雯睿', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1957', 'S11473', '陈梓豪0326', '二年级', null, null, '4', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1958', 'S12495', '陈宇华', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1959', 'S13243', '陈熹', '小班', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1960', 'S13317', '陈姝含', '三年级', null, null, '（6）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1961', 'S09026', '陈锵铭', '三年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1962', 'S11147', '陈明宇', '小班', null, null, '（1）班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1963', 'S11883', '陈立言', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1964', 'S09025', '陈可馨8669', '一年级', null, null, '三班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1965', 'S11566', '陈钧泽', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1966', 'S11953', '蔡斯丞', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1967', 'S12913', '蔡乐铭', '二年级', null, null, '一班', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1968', 'S09315', '蔡君昊', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1969', 'S13915', '宾诗琪', '一年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1970', 'S17905', '梁文迪', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1971', 'S18834', '王子荞', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1972', 'S18593', '胡逍', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1973', 'S19155', '熊峰', '三年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1974', 'S18229', '简耀龙', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1975', 'S18564', '何思睿', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1976', 'S18745', '肖昕瑶', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1977', 'S18724', '陆文蓓', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1978', 'S17901', '林也淇', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1979', 'S18596', '胡遥', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1980', 'S17930', '刘赜恺', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1981', 'S18734', '彭星语', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1982', 'S17865', '姚俊宏', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1983', 'S18626', '陈铭灏', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1984', 'S19097', '冯钰淑', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1985', 'S18271', '陈悦心', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1986', 'S18599', '张书瑶4101', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1987', 'S18562', '骆伊洋Dora', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1988', 'S18232', '杨旖妮', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1989', 'S17868', '纪博桓', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1990', 'S18632', '范越好', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1991', 'S18645', '柯皓天', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1992', 'S18628', '熊奕宁', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1993', 'S18407', '陈启', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1994', 'S18646', '黄楷邦', '大班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1995', 'S18175', '李晓语', '中班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:17');
INSERT INTO `stjy_kxmxb` VALUES ('1996', 'S18057', '廖爱跃', '大班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('1997', 'S18156', '蓝添', '四年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('1998', 'S18827', '徐宸', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('1999', 'S17907', '江晓潼', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2000', 'S19122', '赵若菡', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2001', 'S18835', '曾子瀚', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2002', 'S17859', '许雯棋', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2003', 'S18600', '张书瑶', '二年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2004', 'S19180', 'timmy', '大班', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2005', 'S18358', '刘烔燊', '一年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2006', 'S18804', '陈博源', '三年级', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2007', 'S19504', '邓禹', '二年级', null, null, '1', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2008', 'S19470', '吴家诚', '一年级', null, null, '7', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2009', 'S19524', '林子妍', '二年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2010', 'S19472', '吴家兆', '一年级', null, null, '7', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');
INSERT INTO `stjy_kxmxb` VALUES ('2011', 'S13383', '杨恩昊', '三年级', null, null, '', null, null, null, '', null, null, null, null, null, null, null, null, null, null, '40', '2017-08-16 23:13:18');

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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;

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
INSERT INTO `stjy_node` VALUES ('30', 'download', '数据总表下载已导入表格', '1', null, '9', '12', '3');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COMMENT='期数表';

-- ----------------------------
-- Records of stjy_qishu
-- ----------------------------
INSERT INTO `stjy_qishu` VALUES ('2', '201707', '1', '2017-08-02 23:59:00');
INSERT INTO `stjy_qishu` VALUES ('3', '201708', '1', '2017-08-04 21:23:22');
INSERT INTO `stjy_qishu` VALUES ('4', '201709', '1', '2017-08-04 21:23:34');

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
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_qishu_history
-- ----------------------------
INSERT INTO `stjy_qishu_history` VALUES ('36', '1', './Public/Uploads/20170816/599460e4c658f.xlsx', '1', '4', '5', '201707', '2017-08-16 23:12:36');
INSERT INTO `stjy_qishu_history` VALUES ('37', '1', './Public/Uploads/20170816/599460f21b640.xlsx', '2', '4', '5', '201707', '2017-08-16 23:12:50');
INSERT INTO `stjy_qishu_history` VALUES ('38', '1', './Public/Uploads/20170816/599460f7a6626.xlsx', '3', '4', '5', '201707', '2017-08-16 23:12:55');
INSERT INTO `stjy_qishu_history` VALUES ('39', '1', './Public/Uploads/20170816/59946103461c6.xlsx', '4', '4', '5', '201707', '2017-08-16 23:13:07');
INSERT INTO `stjy_qishu_history` VALUES ('40', '1', './Public/Uploads/20170816/5994610b1fa57.xlsx', '5', '4', '5', '201707', '2017-08-16 23:13:15');
INSERT INTO `stjy_qishu_history` VALUES ('41', '1', './Public/Uploads/20170816/59946115b91d6.xlsx', '6', '4', '5', '201707', '2017-08-16 23:13:25');
INSERT INTO `stjy_qishu_history` VALUES ('42', '1', './Public/Uploads/20170816/5994611c0aa46.xlsx', '7', '4', '5', '201707', '2017-08-16 23:13:32');

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
  `isuse` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否启动：0，未启用；1，启用',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='校区列表';

-- ----------------------------
-- Records of stjy_school
-- ----------------------------
INSERT INTO `stjy_school` VALUES ('1', '华景分校', '1');
INSERT INTO `stjy_school` VALUES ('2', '番禺分校', '1');
INSERT INTO `stjy_school` VALUES ('3', '罗湖分校', '0');
INSERT INTO `stjy_school` VALUES ('4', '天府校区', '1');

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
  `shoujihao` varchar(255) DEFAULT NULL COMMENT '收据号',
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
) ENGINE=MyISAM AUTO_INCREMENT=1297 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_sjjlb
-- ----------------------------
INSERT INTO `stjy_sjjlb` VALUES ('1185', '42919', '58620', null, 'S17859', '许雯棋', '07-网络咨询', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, null, '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-03缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1186', '42919', '58621', null, 'S17859', '许雯棋', '07-网络咨询', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, null, '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1187', '42919', '59219', null, 'S17930', '刘赜恺', '07-网络咨询', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '5593', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／张松煌／首次缴费日期：2017-07-03缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1188', '42920', '59233', null, 'S17865', '姚俊宏', '07-网络咨询', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '5593', null, '新增', '张松煌(主签单人)', '新生连报幼儿1期国际会员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／张松煌／首次缴费日期：2017-07-04缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1189', '42920', '58786', null, 'S17868', '纪博桓', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, null, '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／王圆圆／首次缴费日期：2017-07-04缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1190', '42920', '58782', null, 'S17868', '纪博桓', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, null, '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1191', '42921', '59012', null, 'S17901', '林也淇', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '6612', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1192', '42921', '59010', null, 'S17901', '林也淇', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '6612', '已打印', '新增', '王圆圆(主签单人),吴彩红（副签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／王圆圆／首次缴费日期：2017-07-05缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1193', '42921', '59013', null, 'S17905', '梁文迪', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '1945', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／王圆圆／首次缴费日期：2017-07-05缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1194', '42921', '59015', null, 'S17905', '梁文迪', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '1945', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1195', '42921', '59018', null, 'S17907', '江晓潼', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '773', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1196', '42921', '59016', null, 'S17907', '江晓潼', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '773', '已打印', '新增', '王圆圆(主签单人),吴彩红（副签单人)', '新生连报小学1期国际会员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／王圆圆／首次缴费日期：2017-07-05缴费／老带新：无／1期秒杀／其他说明：以第一次上课时间为准。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1197', '42922', '60186', null, 'S18057', '廖爱跃', '07-网络咨询', '大班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1198', '42924', '60524', null, 'S18156', '蓝添', '01-老带新,06-上门咨询', '四年级', '广州区域-周末班-英语-3.0小时次(80次)', null, null, '0.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', null, '天河天府路中心', '梁言', '交费', null, '9635', '已打印', '续费', '王圆圆(主签单人)', '新生连报小学1年国际会员／16580X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-08缴费／老带新：无／买三送二／其他说明：秒杀价一年送2期，买三送二。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1199', '42924', '60517', null, 'S18156', '蓝添', '01-老带新,06-上门咨询', '四年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '9635', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1200', '42924', '60516', null, 'S18156', '蓝添', '01-老带新,06-上门咨询', '四年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '9635', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1201', '42924', '60555', null, 'S18175', '李晓语', '01-老带新', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '0.00', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '梁言', '交费', null, '5349', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1202', '42924', '60557', null, 'S18175', '李晓语', '01-老带新', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '梁言', '交费', null, '5349', '已打印', '预存', '张松煌(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1203', '42924', '60846', null, 'S18232', '杨旖妮', '06-上门咨询', null, null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '8038', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1204', '42924', '60845', null, 'S18232', '杨旖妮', '06-上门咨询', null, '广州区域-平时班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '8038', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1205', '42924', '61307', null, 'S18358', '刘__', '07-网络咨询', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, null, '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-08缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1206', '42924', '61310', null, 'S18358', '刘__', '07-网络咨询', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, null, '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1207', '42925', '60839', null, 'S18229', '简耀龙', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '梁言', '交费', null, '773', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1208', '42925', '60835', null, 'S18229', '简耀龙', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '梁言', '交费', null, '773', '已打印', '新增', '王圆圆(主签单人),翟志翔（副签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-09缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1209', '42925', '60984', null, 'S18271', '陈悦心', '03-课题：自然拼音', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '8641', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-09缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1210', '42925', '60986', null, 'S18271', '陈悦心', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, '8641', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1211', '42926', '61364', null, 'S09039', '梁泓楠', null, '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, '已打印', '预存', null, '教材费一套（150元代金券+130元）', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1212', '42927', '61789', null, 'S18407', '陈启', '01-老带新', null, null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, '已打印', '预存', '陈健霞(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1213', '42927', '61787', null, 'S18407', '陈启', '01-老带新', null, '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '1358', '已打印', '新增', '王圆圆(主签单人),吴彩红（副签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-11缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1214', '42930', '62554', null, 'S18562', '骆伊洋Dora', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-13缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1215', '42930', '62556', null, 'S18562', '骆伊洋Dora', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1216', '42930', '62570', null, 'S18564', '何思睿', '01-老带新', null, null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '897', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1217', '42930', '62568', null, 'S18564', '何思睿', '01-老带新', null, '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '897', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-12缴费／老带新：张_仪／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1218', '42930', '62786', null, 'S18593', '胡逍', '10-其他渠道推荐', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '5348', '已打印', '预存', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1219', '42930', '62781', null, 'S18593', '胡逍', '10-其他渠道推荐', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '5348', '已打印', '预存', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1220', '42930', '62780', null, 'S18593', '胡逍', '10-其他渠道推荐', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '5348', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-13缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1221', '42930', '62783', null, 'S18596', '胡遥', '10-其他渠道推荐', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '5348', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-13缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1222', '42930', '62793', null, 'S18599', '张书瑶4101', '03-课题：自然拼音', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '138455', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-14缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1223', '42930', '62794', null, 'S18599', '张书瑶4101', '03-课题：自然拼音', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '138455', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1224', '42931', '62921', null, 'S18626', '陈铭灏', '03-课题：自然拼音', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1225', '42931', '62920', null, 'S18626', '陈铭灏', '03-课题：自然拼音', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1226', '42931', '62929', null, 'S18628', '熊奕宁', '07-网络咨询', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '624508', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1227', '42931', '62926', null, 'S18628', '熊奕宁', '07-网络咨询', '二年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '624508', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1228', '42931', '63001', null, 'S18645', '柯皓天', '01-老带新', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '98850', '已打印', '预存', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1229', '42931', '62998', null, 'S18645', '柯皓天', '01-老带新', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '98850', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1230', '42931', '63014', null, 'S18646', '黄楷邦', '03-课题：自然拼音', '大班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '1055', '已打印', '预存', '张松煌(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1231', '42931', '63013', null, 'S18646', '黄楷邦', '03-课题：自然拼音', '大班', '广州区域-周末班-英语-3.0小时次(32次)', null, null, '0.00', null, '0.00', null, '0.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '余洁玲', '交费', null, '1055', '已打印', '续费', '张松煌(主签单人)', '报读一年课程赠送32周次课，此课程不退费不结转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1232', '42931', '63007', null, 'S18646', '黄楷邦', '03-课题：自然拼音', '大班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '1055', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-15缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1233', '42931', '63009', null, 'S18646', '黄楷邦', '03-课题：自然拼音', '大班', '广州区域-周末班-英语-3.0小时次(48次)', null, null, '5560.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', null, '天河天府路中心', '余洁玲', '交费', null, '1055', '已打印', '续费', '张松煌(主签单人)', '新生连报小学1年国际会员／16580X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-15缴费／老带新：无／买三送二／其他说明：秒杀价一年送2期，买三送二。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1234', '42932', '63359', null, 'S18632', '范越好', '02-课题：童话剧,07-网络咨询', null, '广州区域-游学会员（美国线-48800元-21天）(1次)', null, null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', null, '天河天府路中心', '余洁玲', '交费', null, '6539', '已打印', '新增', '王圆圆(主签单人),彭永红（副签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-15缴费／老带新：无／创始会员／其他说明：', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1235', '42932', '63501', null, 'S18724', '陆文蓓', '02-课题：童话剧', null, '广州区域-游学会员（美国线-48800元-21天）(1次)', null, null, '0.00', null, '1000.00', null, '0.00', '0.00', '0.00', '0.00', '1000.00', null, '天河天府路中心', '余洁玲', '交费', null, '773', '已打印', '新增', '王圆圆(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-16缴费／老带新：无／创始会员／其他说明：', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1236', '42932', '63565', null, 'S18734', '彭星语', '03-课题：自然拼音', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, '684078', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1237', '42932', '63564', null, 'S18734', '彭星语', '03-课题：自然拼音', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '684078', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-16缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1238', '42932', '63621', null, 'S18745', '肖昕瑶', '06-上门咨询,10-其他渠道推荐', '中班', null, null, null, '0.00', null, '230.00', null, '230.00', '0.00', '0.00', '0.00', '230.00', null, '天河天府路中心', '余洁玲', '交费', null, '27203', '已打印', '预存', '王圆圆(主签单人)', '新生购买幼儿教材费一套：230元套ｘ1套=230元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1239', '42932', '63616', null, 'S18745', '肖昕瑶', '06-上门咨询,10-其他渠道推荐', '中班', '广州区域-周末班-英语-1.5小时次(16次)', null, null, '2738.10', null, '980.00', null, '0.00', '0.00', '0.00', '0.00', '980.00', null, '天河天府路中心', '余洁玲', '交费', null, '27203', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／980X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-16缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1240', '42934', '63832', null, 'S18804', '陈博源', '10-其他渠道推荐', '三年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '61208', '已打印', '新增', '翟志翔(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=980元／会员有效期：无／拼单对象：无／PRT跟进人：翟志翔／首次缴费日期：2017-07-18缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1241', '42934', '63977', null, 'S18834', '王子荞', '01-老带新,02-课题：童话剧', '二年级', '广州区域-游学会员（美国线-48800元-21天）(1次)', null, null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', null, '天河天府路中心', '余洁玲', '交费', null, '6373', '已打印', '新增', '彭永红(副签单人),张松煌(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-18缴费／老带新：罗鸿铭／创始会员／', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1242', '42934', '63983', null, 'S18835', '曾子瀚', '03-课题：自然拼音', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, null, '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1243', '42934', '63982', null, 'S18835', '曾子瀚', '03-课题：自然拼音', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '50590', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-18缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1244', '42935', '64236', null, 'S18827', '徐宸', '03-课题：自然拼音', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '141', '已打印', '预存', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1245', '42935', '64234', null, 'S18827', '徐宸', '03-课题：自然拼音', '一年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '141', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-19缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1246', '42938', '65380', null, 'S19097', '冯钰淑', '02-课题：童话剧', null, '广州区域-游学会员（美国线-48800元-21天）(1次)', null, null, '0.00', null, '48800.00', null, '0.00', '0.00', '0.00', '0.00', '48800.00', null, '天河天府路中心', '余洁玲', '交费', null, '1294', '已打印', '新增', '彭永红(主签单人)', '新生连报小学3年游学会员／48800X1（净人头：1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=48800元／会员有效期：无／拼单对象：无／PRT跟进人：彭永红／首次缴费日期：2017-07-22缴费／老带新：无／创始会员／其他说明：', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1247', '42938', '65384', null, 'S19097', '冯钰淑', '02-课题：童话剧', null, '广州区域-平时班-英语-3.0小时次(16次)', null, null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '6019', '已打印', '续费', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-22缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1248', '42939', '65627', null, 'S09199', '曾子希', '06-上门咨询', '三年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '3908', '已打印', '新增', '张松煌(主签单人)', '老生连报幼儿1期国际学员／1880X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-23缴费／老带新：曾子瀚／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1249', '42939', '65624', null, 'S09199', '曾子希', '06-上门咨询', '三年级', '广州区域-平时班-英语-3.0小时次(80次)', null, null, '0.00', null, '16580.00', null, '0.00', '0.00', '0.00', '0.00', '16580.00', null, '天河天府路中心', '余洁玲', '交费', null, '3908', '已打印', '新增', '彭永红(主签单人)', '老生连报小学1年国际会员／16580X1（净人头：0）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=16580元／会员有效期：无／拼单对象：无／PRT跟进人：彭永红／首次缴费日期：2017-04-07缴费／老带新：曾子瀚／买三送二／其他说明：秒杀价一年送2期，买三送二。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1250', '42939', '65462', null, 'S18724', '陆文蓓', '02-课题：童话剧', null, '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '4003', '已打印', '续费', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-23缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1251', '42939', '65457', null, 'S19122', '赵若菡', '04-课题：演讲', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '10437', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1252', '42939', '65455', null, 'S19122', '赵若菡', '04-课题：演讲', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '10437', '已打印', '新增', '王圆圆(主签单人),吴彩红（副签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-23缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1253', '42939', '65564', null, 'S19155', '熊峰', '01-老带新', '三年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '1974', '已打印', '预存', '王圆圆(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1254', '42939', '65562', null, 'S19155', '熊峰', '01-老带新', '三年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '1974', '已打印', '新增', '王圆圆(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：王圆圆／首次缴费日期：2017-07-23缴费／老带新：周梓麒／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1255', '42939', '65733', null, 'S19180', 'timmy', '07-网络咨询', '大班', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '3862.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '4910', '已打印', '新增', '张松煌(主签单人)', '新生连报幼儿1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-23缴费／老带新：无／1期秒杀／其他说明：不退不转', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1256', '42943', '66625', null, 'S19470', '吴家诚', '07-网络咨询', '一年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-27缴费／老带新：无／1期秒杀／其他说明：不退不转一期秒杀价，不转不退。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1257', '42943', '66627', null, 'S19470', '吴家诚', '07-网络咨询', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, '6997', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1258', '42943', '66629', null, 'S19472', '吴家兆', '07-网络咨询', '一年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '陈燕梅', '交费', null, '6997', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1259', '42943', '66628', null, 'S19472', '吴家兆', '07-网络咨询', '一年级', '广州区域-平时班-英语-3.0小时次(16次)', null, null, '0.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '陈燕梅', '交费', null, '6997', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-27缴费／老带新：无／1期秒杀／其他说明：不退不转一期秒杀价，不转不退。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1260', '42945', '66736', null, 'S19504', '邓禹', '07-网络咨询', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, null, '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1261', '42945', '66735', null, 'S19504', '邓禹', '07-网络咨询', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '621497', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-27缴费／老带新：无／1期秒杀／其他说明：不退不转一期秒杀价，不转不退。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1262', '42945', '66789', null, 'S19524', '林子妍', '01-老带新', '二年级', null, null, null, '0.00', null, '280.00', null, '280.00', '0.00', '0.00', '0.00', '280.00', null, '天河天府路中心', '余洁玲', '交费', null, '67888', '已打印', '续费', '张松煌(主签单人)', '新生购买小学教材费一套：280元套ｘ1套=280元', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1263', '42945', '66788', null, 'S19524', '林子妍', '01-老带新', '二年级', '广州区域-周末班-英语-3.0小时次(16次)', null, null, '5500.00', null, '1880.00', null, '0.00', '0.00', '0.00', '0.00', '1880.00', null, '天河天府路中心', '余洁玲', '交费', null, '67888', '已打印', '新增', '张松煌(主签单人)', '新生连报小学1期国际学员／1880X1（净人头：0.1）+0X0（教材费：）-0（剩余学费：无）-0（已交定金）-0（无）-0（预减：无）-0（老带新：无）=1880元／会员有效期：无／拼单对象：无／PRT跟进人：张松煌／首次缴费日期：2017-07-27缴费／老带新：列语芊／1期秒杀／其他说明：不退不转一期秒杀价，不转不退。', '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1264', '42948', '67418', null, 'S11566', '陈钧泽', '01-老带新', '一年级', '广州区域-周末班-英语-3.0小时次(48次)', null, null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, null, '转校', '梁彩红(主签单人)', null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1265', '42948', '67417', null, 'S11566', '陈钧泽', '01-老带新', '一年级', '广州区域-周末班-英语-3.0小时次(-48次)', null, null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '陈燕梅', '结转', null, null, null, '新增', '梁彩红(主签单人)', null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1266', '42948', '67420', null, 'S13383', '杨恩昊', '01-老带新', '三年级', '广州区域-周末班-英语-3.0小时次(48次)', null, null, '0.00', null, '0.00', null, '-3316.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '陈燕梅', '交费', null, null, null, '转校', '梁彩红(主签单人)', null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1267', '42948', '67419', null, 'S13383', '杨恩昊', '01-老带新', '三年级', '广州区域-周末班-英语-3.0小时次(-48次)', null, null, '0.00', null, '0.00', null, '3316.00', '0.00', '0.00', '0.00', '0.00', null, '天河天府路中心', '陈燕梅', '结转', null, null, null, '新增', '梁彩红(主签单人)', null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1268', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1269', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1270', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1271', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1272', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1273', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1274', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1275', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1276', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1277', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1278', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1279', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1280', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1281', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1282', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1283', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1284', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1285', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1286', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1287', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1288', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1289', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:08');
INSERT INTO `stjy_sjjlb` VALUES ('1290', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:09');
INSERT INTO `stjy_sjjlb` VALUES ('1291', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:09');
INSERT INTO `stjy_sjjlb` VALUES ('1292', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:09');
INSERT INTO `stjy_sjjlb` VALUES ('1293', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:09');
INSERT INTO `stjy_sjjlb` VALUES ('1294', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:09');
INSERT INTO `stjy_sjjlb` VALUES ('1295', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:09');
INSERT INTO `stjy_sjjlb` VALUES ('1296', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '39', '2017-08-16 23:13:09');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_sjzb
-- ----------------------------
INSERT INTO `stjy_sjzb` VALUES ('7', '201707', '4', '2', '2', '2', '2', '2', '2', '2', '1', null, null, null, '无', '无', '无', '无', null, null, null, null);

-- ----------------------------
-- Table structure for stjy_table_name
-- ----------------------------
DROP TABLE IF EXISTS `stjy_table_name`;
CREATE TABLE `stjy_table_name` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `xuhao` int(11) DEFAULT NULL COMMENT '表序号',
  `name` varchar(255) DEFAULT '' COMMENT '名称',
  `table_name` varchar(255) DEFAULT NULL COMMENT '数据表名',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型:1,导入表;2,导出表;',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_table_name
-- ----------------------------
INSERT INTO `stjy_table_name` VALUES ('1', '1', '学员信息表', 'xyxxb', null);
INSERT INTO `stjy_table_name` VALUES ('2', '2', '班级信息表', 'bjxxb', null);
INSERT INTO `stjy_table_name` VALUES ('3', '3', '班级学员信息表', 'bjxyxxb', null);
INSERT INTO `stjy_table_name` VALUES ('4', '4', '收据记录表', 'sjjlb', null);
INSERT INTO `stjy_table_name` VALUES ('5', '5', '课消明细表', 'kxmxb', null);
INSERT INTO `stjy_table_name` VALUES ('6', '6', '开班明细表', 'kbmxb', null);
INSERT INTO `stjy_table_name` VALUES ('7', '7', '学员费用预警表', 'xyfyyjb', null);
INSERT INTO `stjy_table_name` VALUES ('8', '8', '市场业绩表', 'scyjb', null);
INSERT INTO `stjy_table_name` VALUES ('9', '9', '市场占有率表', 'sczylb', null);
INSERT INTO `stjy_table_name` VALUES ('10', '10', '新增明细表', 'xzmxb', null);
INSERT INTO `stjy_table_name` VALUES ('11', '11', '减少明细表', 'jsmxb', null);
INSERT INTO `stjy_table_name` VALUES ('12', '12', '经营数据表', 'jysjb', null);
INSERT INTO `stjy_table_name` VALUES ('13', '13', '退费表', 'tfb', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=1268 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xyfyyjb
-- ----------------------------
INSERT INTO `stjy_xyfyyjb` VALUES ('1096', 'S15854', '蒋沛霖', '15360016840', null, '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1097', 'S13026', '王加泓', '13580325947', null, '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1098', 'S15861', '徐俊哲', '13640630605', null, '广州区域-周末班-英语-3.0小时次', '', '288.00', '次', '28316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1099', 'S17311', '姚季芮', '18922260526', null, '广州区域-平时班-英语-3.0小时次', '', '256.00', '次', '26880.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1100', 'S16658', '汲春杉', '13928893100', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1101', 'S17314', '肖鑫彤', '13710988399', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1102', 'S16529', '何家坤', '18026380649', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1103', 'S16667', '曾芷睿rayna', '13922147018', null, '广州区域-平时班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1104', 'S16600', '李冠延', '13711288940', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1105', 'S16821', '邹沐彤', '13928866895', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1106', 'S10783', '李宣霖', '18620830552', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1107', 'S16607', '雷鲁健', '13798183155', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1108', 'S15801', '杨雨浠', '18665738556', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1109', 'S16415', '杨晨曦', '13922138919', null, '广州区域-周末班-英语-3.0小时次', '', '240.00', '次', '25000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1110', 'S09478', '易其乐', '13822188180', null, '广州区域-周末班-英语-3.0小时次', '', '234.00', '次', '23750.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1111', 'S09039', '梁泓楠', '13418072142', null, '广州区域-平时班-英语-3.0小时次', '', '232.00', '次', '23524.94', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1112', 'S09032', '黄泽蕊', '13802548976', null, '广州区域-平时班-英语-3.0小时次', '', '232.00', '次', '23469.30', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1113', 'S09613', '生艾霖', '13392681558', null, '广州区域-平时班-英语-3.0小时次', '', '231.00', '次', '23125.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1114', 'S09037', '李雅希', '13533545832', null, '广州区域-平时班-英语-3.0小时次', '', '227.00', '次', '22305.75', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1115', 'S09053', '姚怡然', '13826485248', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '21463.34', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1116', 'S09029', '侯宸越', '13802536119', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '21629.39', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1117', 'S09030', '侯宸卓', '13802536119', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '23289.06', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1118', 'S09035', '黎政鑫', '13640846060', null, '广州区域-平时班-英语-3.0小时次', '', '221.00', '次', '21552.91', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1119', 'S09204', '朱诗淇', '13725200569', null, '广州区域-周末班-英语-3.0小时次', '', '137.00', '次', '17737.67', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1120', 'S09202', '闾家熙', '13570201921', null, '广州区域-周末班-英语-3.0小时次', '', '137.00', '次', '17737.67', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1121', 'S09051', '温静远', '13922106580', null, '广州区域-周末班-英语-3.0小时次', '', '128.00', '次', '-0.46', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1122', 'S09203', '钟华华', '13824424796', null, '广州区域-周末班-英语-3.0小时次', '', '121.00', '次', '17737.67', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1123', 'S09042', '刘芷睿', '18665651008', null, '广州区域-平时班-英语-3.0小时次', '', '108.00', '次', '22759.31', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1124', 'S09045', '陆鸣飞', '13609726477', null, '广州区域-周末班-英语-3.0小时次', '', '107.00', '次', '22573.30', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1125', 'S09027', '龚子寅', '13829759394', null, '广州区域-周末班-英语-3.0小时次', '', '103.00', '次', '18564.58', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1126', 'S09034', '劳隽熙', '13922166899', null, '广州区域-平时班-英语-3.0小时次', '', '102.00', '次', '18380.55', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1127', 'S09025', '陈可馨8669', '15622218669', null, '广州区域-平时班-英语-3.0小时次', '', '102.00', '次', '18384.03', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1128', 'S07715', '钟子锟', '18929593969', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.83', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1129', 'S09056', '周子澄', '13926468975', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.79', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1130', 'S09054', '张文一', '13302336626', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.79', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1131', 'S09055', '钟雨桐', '18898605866', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18200.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1132', 'S07733', '林承熙', '13922386115', null, '广州区域-平时班-英语-3.0小时次', '', '101.00', '次', '18203.79', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1133', 'S13744', '何柏沅', '13070261292', null, '广州区域-周末班-英语-1.5小时次', '', '101.00', '次', '25960.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1134', 'S09050', '王子骅', '13302291816', null, '广州区域-平时班-英语-3.0小时次', '', '97.00', '次', '22407.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1135', 'S09033', '黄梓峰', '13560016636', null, '广州区域-平时班-英语-3.0小时次', '', '97.00', '次', '17439.09', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1136', 'S16590', '崔雯睿', '13719056933', null, '广州区域-周末班-英语-1.5小时次', '', '96.00', '次', '11400.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1137', 'S09038', '李紫嫣', '18520121305', null, '广州区域-周末班-英语-3.0小时次', '', '94.00', '次', '17668.56', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1138', 'S09049', '苏兴承', '13922229923', null, '广州区域-周末班-英语-3.0小时次', '', '92.00', '次', '16611.06', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1139', 'S09047', '潘浩智', '13640768911', null, '广州区域-周末班-英语-3.0小时次', '', '92.00', '次', '19136.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1140', 'S09046', '陆子叶', '13632453211', null, '广州区域-平时班-英语-3.0小时次', '', '92.00', '次', '17292.63', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1141', 'S07495', '邓汇子', '13560478460', null, '广州区域-平时班-英语-3.0小时次', '', '92.00', '次', '16098.45', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1142', 'S09043', '刘芷妤', '13501518927', null, '广州区域-平时班-英语-3.0小时次', '', '91.00', '次', '16430.51', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1143', 'S09040', '梁希', '13556198719', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1144', 'S09031', '黄玮婷', '18928895338', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1145', 'S09052', '吴欣诺', '13632353832', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1146', 'S09028', '郭梓聪', '13502447171', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '16249.95', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1147', 'S07379', '杨钶犇', '13794367768', null, '广州区域-平时班-英语-3.0小时次', '', '90.00', '次', '15747.68', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1148', 'S09044', '柳皓轩', '13560322898', null, '广州区域-平时班-英语-3.0小时次', '', '67.00', '次', '13885.75', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1149', 'S07378', '谢宇博', '13500000969', null, '广州区域-平时班-英语-3.0小时次', '', '60.00', '次', '12000.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1150', 'S07377', '谢宇侨', '13500000969', null, '广州区域-周末班-英语-3.0小时次', '', '56.00', '次', '10950.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1151', 'S11787', '罗悦宁', '18602031560', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1152', 'S12545', '杨梓盈', '18588582151', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1153', 'S10626', '杨一诺（1）', '18688908150', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1154', 'S11226', '林子淇（1）', '13427585469', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1155', 'S10980', '林昕睿', '18998298281', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1156', 'S12913', '蔡乐铭', '13826173078', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1157', 'S11084', '邱堉庄', '13650896618', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1158', 'S11473', '陈梓豪0326', '13825130326', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1159', 'S10776', '李欣遥', '18620830552', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1160', 'S10725', '张驰（1）', '13825091202', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1161', 'S10889', '李烨铭', '13148948648', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1162', 'S12910', '龙心宜', '13622289238', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1163', 'S11347', '王岱霖', '13610178910', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1164', 'S10708', '张曌仪', '18903005813', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1165', 'S11790', '张梓玥', '18520191828', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1166', 'S12820', '何雯', '13068821834', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1167', 'S13103', '万博文', '13922274036', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1168', 'S10555', '邓亦舟', '18926224535', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1169', 'S11217', '许雯婷', '17817317308', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1170', 'S11883', '陈立言', '18680286506', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1171', 'S10907', '梁钰', '18122202254', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1172', 'S11940', '胡甜慈', '18022899616', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1173', 'S13110', '姜昕屹', '13725287618', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1174', 'S13320', '魏蔚然', '13926074520', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1175', 'S13317', '陈姝含', '13632496687', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1176', 'S14355', '毛思羽', '13602285805', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1177', 'S10222', '李乐天', '13556007650', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1178', 'S11938', '吴沐欣', '13922257745', null, '广州区域-平时班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1179', 'S13915', '宾诗琪', '15989047046', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1180', 'S11163', '曾浩轩（1）', '13602234226', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1181', 'S10823', '王梓淇（1）', '18588508133', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1182', 'S10759', '李澜昕', '15975413984', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1183', 'S10636', '杨一言', '18688908150', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1184', 'S11950', '翁语欣（1）', '13580347076', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1185', 'S12550', '李沄天', '13719199190', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1186', 'S11242', '刘安淇（1）', '13822267285', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1187', 'S12495', '陈宇华', '13318838382', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1188', 'S11534', '朱晓禾', '18026275252', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1189', 'S11137', '杨熙峻', '13710589432', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1190', 'S10390', '詹靖宇', '13925092000', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1191', 'S11964', '平皓中', '18602015509', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1192', 'S12431', '唐茜薇', '13798159371', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1193', 'S12911', '王稚尹', '13632336039', null, '广州区域-周末班-英语-3.0小时次', '', '48.00', '次', '3316.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1194', 'S13741', '何垚均', '18688471778', null, '广州区域-平时班-英语-3.0小时次', '', '44.00', '次', '3039.67', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1195', 'S14517', '列羽芊', '13828434397', null, '广州区域-周末班-英语-3.0小时次', '', '43.00', '次', '2970.58', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1196', 'S11962', '李梓铖', '13631317878', null, '广州区域-周末班-英语-3.0小时次', '', '42.00', '次', '2901.50', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1197', 'S11238', '李羽涵', '13640217144', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1198', 'S11909', '尹梓溢', '13527850817', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1199', 'S11104', '黄鸿亮', '13660538977', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1200', 'S11965', '杨天乐', '13632358827', null, '广州区域-周末班-英语-3.0小时次', '', '41.00', '次', '2832.42', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1201', 'S11540', '张芷涵', '13763366493', null, '广州区域-平时班-英语-3.0小时次', '', '41.00', '次', '2832.42', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1202', 'S10408', '谢语墨', '13632190143', null, '广州区域-周末班-英语-3.0小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1203', 'S12380', '张庭语', '13808870314', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1204', 'S11059', '黄元星', '13711669179', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1205', 'S11143', '林馨语', '13609085038', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1206', 'S12258', '张语彤', '18680254600', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1207', 'S11543', '江益民', '13725105561', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1208', 'S12367', '彭芷晴', '18928861230', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1209', 'S09879', '黄映衡', '13560016636', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '1200.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1210', 'S10783', '李宣霖', '18620830552', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1211', 'S12469', '万语笑', '18022308486', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1212', 'S11664', '张智钦', '13602828746', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '42', '2017-08-16 23:13:32');
INSERT INTO `stjy_xyfyyjb` VALUES ('1213', 'S12366', '金昱谦', '13360008197', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1214', 'S14734', '张羽嫣', '13600058187', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1215', 'S11667', '周昱延', '15920834834', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1216', 'S13067', '唐希怡', '13560455525', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1217', 'S12425', '熊忻仪', '13922453679', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1218', 'S10771', '刘骐瑶', '13902202502', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1219', 'S10414', '詹靖轩', '13925092000', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1220', 'S12467', '杨芷澄', '13450399199', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1221', 'S11798', '邹亦非', '18926224335', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1222', 'S11665', '潘钰辰', '13922769637', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1223', 'S14675', '李梓杰', '15889391251', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1224', 'S14685', '高梓骞', '13922220087', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1225', 'S11900', '符方涓', '13808841422', null, '广州区域-周末班-英语-1.5小时次', '', '32.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1226', 'S11036', '黄芷琳0305', '13560250305', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1227', 'S11147', '陈明宇', '15919305340', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1228', 'S11028', '郑煜坤', '13710392726', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1229', 'S11046', '张奇钰', '13580347594', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1230', 'S10745', '黎亮', '18100203550', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1231', 'S11022', '吴奕帆', '13312836220', null, '广州区域-平时班-英语-1.5小时次', '', '32.00', '次', '760.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1232', 'S01699', '曾砚斐', '18818859966', null, '广州区域-平时班-英语-3.0小时次', '', '30.00', '次', '0.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1233', 'S01616', '彭希扬', '18620488133', null, '广州区域-平时班-英语-3.0小时次', '邹丽萍', '22.00', '次', '3788.17', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1234', 'S01622', '邱刘哲', '18620916361', null, '广州区域-平时班-英语-3.0小时次', '邹丽萍', '21.00', '次', '3614.18', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1235', 'S13730', '何泳希5668', '13022055668', null, '广州区域-周末班-英语-1.5小时次', '', '21.00', '次', '960.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1236', 'S09026', '陈锵铭', '13802520060', null, '广州区域-平时班-英语-3.0小时次', '', '19.00', '次', '0.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1237', 'S17323', '林小哲（Austin）', '15802016375', null, '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1238', 'S17019', '戴裕桐', '13688880119', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1239', 'S17110', '周梓麒', '15102069298', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1240', 'S16827', '黄祺茜-KIKI', '13503017628', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1241', 'S17302', '胡世程', '13925002550', null, '广州区域-平时班-英语-3.0小时次', '', '16.00', '次', '1880.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1242', 'S16474', '钟玥嘉', '13600080140', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1243', 'S17318', '朱钰彤', '13826452594', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1244', 'S17040', '吴祝吉', '13922257745', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1245', 'S17035', '戴永航', '13688880119', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1246', 'S17042', '李泓泽', '13609002006', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1247', 'S17043', '王唯有', '13922257745', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1248', 'S17326', '林小轩', '15802016375', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1249', 'S17123', '黄思睿', '13926022826', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1250', 'S17011', '吴志轩', '18928912032', null, '广州区域-周末班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1251', 'S17328', '姜卉', '13533065839', null, '广州区域-周末班-英语-3.0小时次', '', '16.00', '次', '1880.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1252', 'S17330', '汪宇丰', '18520664506', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1253', 'S17309', '冯煦洋', '13660776606', null, '广州区域-平时班-英语-1.5小时次', '', '16.00', '次', '980.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1254', 'S09036', '李佩儿', '13527882123', null, '广州区域-周末班-英语-3.0小时次', '', '5.00', '次', '1993.75', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1255', 'S09199', '曾子希', '13631499742', null, '广州区域-平时班-英语-3.0小时次', '', '5.00', '次', '1993.75', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1256', 'S09051', '温静远', '13922106580', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '47536.56', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1257', 'S16827', '黄祺茜-KIKI', '13503017628', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1258', 'S09026', '陈锵铭', '13802520060', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1259', 'S09315', '蔡君昊', '13603016366', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1260', 'S13730', '何泳希5668', '13022055668', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1261', 'S13741', '何垚均', '18688471778', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1262', 'S16940', '梁添翔', '13610122142', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1263', 'S01699', '曾砚斐', '18818859966', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1264', 'S11950', '翁语欣（1）', '13580347076', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1265', 'S09309', '邱朔晴', '18922734146', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1266', 'S09325', '朱彦坤', '13527820131', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');
INSERT INTO `stjy_xyfyyjb` VALUES ('1267', 'S09326', '王子涵（1）', '15011912587', null, '广州区域-游学会员（美国线-48800元-21天）', '', '1.00', '次', '48800.00', '42', '2017-08-16 23:13:33');

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
) ENGINE=MyISAM AUTO_INCREMENT=2185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stjy_xyxxb
-- ----------------------------
INSERT INTO `stjy_xyxxb` VALUES ('1958', 'S11798', '邹亦非', '女', '', '', '2013-03-28', '4', '18926224335', '', '', '2017-05-08', '天河天府路中心', '', '邓亮', '', '邹秧春', '18926224335', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1959', 'S16821', '邹沐彤', '女', '', '', '2009-06-21', '8', '13928866895', '01-老带新', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1960', 'S17318', '朱钰彤', '女', '', '', '', '', '13826452594', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1961', 'S09325', '朱彦坤', '男', '', '', '2008-11-22', '8', '13527820131', '10-其他渠道推荐', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '3班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1962', 'S11534', '朱晓禾', '女', '', '', '2007-08-19', '9', '18026275252', '01-老带新', '天河天府路中心', '2017-05-07', '天河华景中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '四年级', '5班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1963', 'S09204', '朱诗淇', '女', '', '', '2009-11-01', '7', '13725200569', '01-老带新', '', '2017-04-08', '天河天府路中心', '', '朱浩华', '13725200569', '', '', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17737.67', '17737.67', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1964', 'S17110', '周梓麒', '男', '', '', '', '', '15102069298', '02-课题：童话剧', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1965', 'S09056', '周子澄', '女', '', '', '2009-03-01', '8', '13926468975', '03-课题：自然拼音', '', '2017-02-22', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.79', '18203.79', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1966', 'S11667', '周昱延', '女', '', '', '', '', '15920834834', '06-上门咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1967', 'S09664', '钟子淇', '女', '', '', '2007-05-23', '10', '13924103232', '01-老带新', '', '2017-04-28', '天河天府路中心', '', '钟灿铭', '13002038650', '袁小娟', '13924103232', '', '', '广州市天河区棠下小学', '四年级', '（2）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '25000.00', '25280.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1968', 'S07715', '钟子锟', '男', '', '', '', '', '18929593969', '09-教师推荐', '天河华景中心', '2017-02-20', '天河华景中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.83', '18203.83', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1969', 'S16474', '钟玥嘉', '女', '', '', '', '', '13600080140', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1970', 'S09055', '钟雨桐', '女', '', '', '2009-09-13', '7', '18898605866', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '9500.00', '18200.00', '8700.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1971', 'S09203', '钟华华', '男', '', '', '2010-06-20', '7', '13824424796', '03-课题：自然拼音', '', '2017-04-08', '天河天府路中心', '', '钟运邦', '', '江庆梅', '13824424796', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17737.67', '17737.67', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1972', 'S11028', '郑煜坤', '男', '', '', '', '', '13710392726', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1973', 'S11790', '张梓玥', '女', '', '', '2011-07-08', '5', '18520191828', '', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1974', 'S11664', '张智钦', '男', '', '', '', '', '13602828746', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1975', 'S11540', '张芷涵', '女', '', '', '', '', '13763366493', '', '', '2017-05-07', '天河天府路中心', '', '张仕宪', '13825027568', '杨莉娟', '13763366493', '', '', '广州市天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1976', 'S10708', '张曌仪', '男', '', '', '', '', '18903005813', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1977', 'S12258', '张语彤', '女', '', '', '2012-10-07', '4', '18680254600', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '广州市天河区天晖幼儿园', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1978', 'S14734', '张羽嫣', '女', '', '', '2013-04-07', '4', '13600058187', '', '', '2017-05-20', '天河天府路中心', '', '张军', '', '', '', '', '', '广州都市兰亭幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1979', 'S09054', '张文一', '男', '', '', '2009-12-16', '7', '13302336626', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.79', '18203.79', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1980', 'S12380', '张庭语', '女', '', '', '2012-12-12', '4', '13808870314', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1981', 'S15713', '张思哲', '男', '', '天河第一实验小学', '', '', '13928774047', '07-网络咨询', '海珠江南西中心', '2017-06-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1982', 'S11046', '张奇钰', '女', '', '', '', '', '13580347594', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1983', 'S10725', '张驰（1）', '男', '', '', '', '', '13825091202', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（3）', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1984', 'S10936', '詹以峤', '女', '', '', '2013-08-03', '3', '18620807692', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1985', 'S10390', '詹靖宇', '男', '', '', '2008-08-08', '8', '13925092000', '03-课题：自然拼音', '天河天府路中心', '2017-05-07', '天河骏景中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '6班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1986', 'S10414', '詹靖轩', '男', '', '', '', '', '13925092000', '', '', '2017-05-07', '天河天府路中心', '', '詹春涛', '13808880685', '刘秀玲', '13925092000', '', '', '东华幼儿园', '中班', '', '就读学校为华港幼儿园', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1987', 'S09199', '曾子希', '女', '', '', '2007-09-22', '9', '13631499742', '06-上门咨询', '', '2017-04-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1993.75', '1993.75', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1988', 'S16667', '曾芷睿rayna', '女', '', '', '', '', '13922147018', '03-课题：自然拼音', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '13922147018', '', '', '天河区天府路小学', '二年级', '7', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1989', 'S01699', '曾砚斐', '女', '', '', '2008-02-21', '9', '18818859966', '', '', '', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '28800.00', '48800.00', '20000.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1990', 'S11163', '曾浩轩（1）', '男', '', '', '', '', '13602234226', '07-网络咨询', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '体育东路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1991', 'S11909', '尹梓溢', '男', '', '', '', '', '13527850817', '01-老带新', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '张婷', '13527850817', '', '', '天河区天府路小学', '一年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1992', 'S09478', '易其乐', '女', '', '', '2009-12-15', '7', '13822188180', '03-课题：自然拼音', '天河天府路中心', '2017-04-22', '天河天府路中心', '', '', '13925098792', '', '13822188180', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23750.00', '23750.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1993', 'S09053', '姚怡然', '女', '', '', '2009-01-14', '8', '13826485248', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学翠湖校区', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '1950.00', '0.00', '21463.34', '23413.34', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1994', 'S17311', '姚季芮', '女', '', '', '', '', '18922260526', '07-网络咨询', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '18922260526', '', '', '广州市天河区天府路小学', '一年级', '6', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '26880.00', '27160.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1995', 'S12545', '杨梓盈', '女', '', '', '', '', '18588582151', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1996', 'S12467', '杨芷澄', '女', '', '', '', '', '13450399199', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1997', 'S15801', '杨雨浠', '女', '', '', '2009-02-25', '8', '18665738556', '03-课题：自然拼音', '', '2017-06-17', '天河天府路中心', '', '', '', '', '', '', '', '广州市越秀区水荫路小学', '二年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1998', 'S10636', '杨一言', '男', '', '', '', '', '18688908150', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('1999', 'S10626', '杨一诺（1）', '女', '', '', '', '', '18688908150', '', '', '2017-05-07', '天河天府路中心', '', '', '', '李立平', '18688908150', '', '', '天河区天府路小学', '二年级', '（8）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2000', 'S11137', '杨熙峻', '男', '', '', '', '', '13710589432', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '13710589432', '', '', '天河区天府路小学', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2001', 'S11965', '杨天乐', '男', '', '', '', '', '13632358827', '', '', '2017-05-08', '天河天府路中心', '', '杨明', '135602498880', '罗成林', '13632358827', '', '', '广州市天河区第一实验小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2002', 'S07379', '杨钶犇', '男', '', '', '2010-06-30', '7', '13794367768', '', '', '2016-12-11', '天河华景中心', '', '', '13794367768', '', '13826484457', '', '', '天河区天府路小学', '一年级', '8', '', '0.00', '', '在读', '', '', '', '0.00', '8900.00', '15747.68', '6847.68', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2003', 'S16415', '杨晨曦', '男', '', '', '', '', '13922138919', '08-电话咨询', '天河天府路中心', '2017-06-23', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2004', 'S11217', '许雯婷', '女', '', '', '', '', '17817317308', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '华阳小学', '三年级', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2005', 'S15861', '徐俊哲', '男', '', '', '', '', '13640630605', '05-地推', '天河天府路中心', '2017-06-18', '天河天府路中心', '', '', '', '沈燕燕', '13640630605', '', '', '幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '28316.00', '28316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2006', 'S12425', '熊忻仪', '女', '', '', '2012-12-02', '4', '13922453679', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2007', 'S10408', '谢语墨', '女', '', '', '2013-12-14', '3', '13632190143', '08-电话咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2008', 'S07377', '谢宇侨', '男', '', '', '2010-08-03', '6', '13500000969', '', '', '2016-12-11', '天河华景中心', '', '谢伟鹏', '13500000969', '黄思明', '13926002979', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '10950.00', '10950.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2009', 'S07378', '谢宇博', '男', '', '', '2010-08-03', '6', '13500000969', '', '', '2016-12-11', '天河华景中心', '', '谢伟鹏', '13500000969', '黄思明', '13926002979', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '12000.00', '12000.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2010', 'S10069', '谢莉雯', '女', '', '', '2009-03-12', '8', '18476301991', '', '', '2017-05-07', '天河天府路中心', '', '', '', '兰桂梅', '', '', '', '天河区华景小学', '二年级', '13班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2011', 'S17314', '肖鑫彤', '女', '', '', '', '', '13710988399', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '13710988399', '', '13798002334', '', '', '天河区天府路小学（翠湖分校）', '一年级', '2班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2012', 'S09228', '冼珈永', '男', '', '', '2012-08-13', '4', '13527713196', '01-老带新', '', '2017-04-10', '越秀活动中心', '', '', '', '冼倩娣', '13527713196', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '3900.00', '4130.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2013', 'S17040', '吴祝吉', '男', '', '', '', '', '13922257745', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2014', 'S17011', '吴志轩', '男', '', '', '', '', '18928912032', '01-老带新', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2015', 'S11803', '吴宇鑫', '男', '', '', '2013-06-03', '4', '13822278767', '01-老带新', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '天河区骏景花园幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2016', 'S11022', '吴奕帆', '男', '', '', '', '', '13312836220', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2017', 'S09052', '吴欣诺', '女', '', '', '2009-09-08', '7', '13632353832', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16249.95', '16249.95', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2018', 'S11938', '吴沐欣', '女', '', '', '2009-03-21', '8', '13922257745', '', '', '2017-05-08', '天河天府路中心', '', '吴多理', '15618152782', '', '13922257745', '', '', '天河区天府路小学', '二年级', '七班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2019', 'S11950', '翁语欣（1）', '女', '', '', '2008-05-26', '9', '13580347076', '', '', '2017-05-08', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '九班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '52116.00', '52116.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2020', 'S11948', '翁语欣', '女', '', '', '', '', '13430126231', '06-上门咨询', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '', '13430126231', '', '', '天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2021', 'S09051', '温静远', '男', '', '', '2010-03-08', '7', '13922106580', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '八班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '47536.10', '47536.10', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2022', 'S13320', '魏蔚然', '女', '', '', '2007-12-16', '9', '13926074520', '01-老带新', '', '2017-05-13', '天河天府路中心', '', '', '', '葛畅', '13926074520', '', '', '广州市暨南大学附属小学', '三年级', '（5）', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2023', 'S10823', '王梓淇（1）', '男', '', '', '2010-01-10', '7', '18588508133', '', '', '2017-05-07', '天河天府路中心', '', '王伟', '18520330316', '赵俪芳', '18588508133', '', '', '天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2024', 'S09050', '王子骅', '男', '', '', '2010-08-13', '6', '13302291816', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '五班 ', '', '0.00', '', '在读', '', '', '', '23842.00', '0.00', '22407.00', '46249.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2025', 'S09326', '王子涵（1）', '男', '', '', '2008-12-27', '8', '15011912587', '01-老带新', '', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2026', 'S12911', '王稚尹', '女', '', '', '', '', '13632336039', '', '', '2017-05-11', '天河天府路中心', '', '', '', '', '13632336039', '', '', '天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2027', 'S17043', '王唯有', '', '', '', '', '', '13922257745', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2028', 'S13026', '王加泓', '男', '', '', '', '', '13580325947', '07-网络咨询', '天河天府路中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '28316.00', '28316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2029', 'S11347', '王岱霖', '女', '', '', '', '', '13610178910', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（4）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2030', 'S17330', '汪宇丰', '男', '', '', '', '', '18520664506', '01-老带新', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2031', 'S12469', '万语笑', '女', '', '', '2012-09-16', '4', '18022308486', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2032', 'S13103', '万博文', '男', '', '', '2007-12-05', '9', '13922274036', '', '', '2017-05-12', '天河天府路中心', '', '万里洪', '18925117656', '杨明娟', '13922274036', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2033', 'S13067', '唐希怡', '女', '', '', '2012-09-11', '4', '13560455525', '07-网络咨询', '天河天府路中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:39');
INSERT INTO `stjy_xyxxb` VALUES ('2034', 'S12431', '唐茜薇', '女', '', '', '2008-03-31', '9', '13798159371', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2035', 'S09049', '苏兴承', '男', '', '', '2010-08-24', '6', '13922229923', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16611.06', '16611.06', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2036', 'S13198', '宋美京', '', '', '', '', '', '13922419984', '转入', '海珠滨江东中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '东风东路小学', '二年级', '', '东风东路小学', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2037', 'S09613', '生艾霖', '女', '', '', '2010-07-20', '6', '13392681558', '03-课题：自然拼音', '天河天府路中心', '2017-04-23', '天河天府路中心', '', '', '', '', '13395681558', '', '', '天河区天府路小学', '一年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23125.00', '23125.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2038', 'S11084', '邱堉庄', '男', '', '', '', '', '13650896618', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2039', 'S09309', '邱朔晴', '女', '', '', '2008-07-21', '8', '18922734146', '10-其他渠道推荐', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '8班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2040', 'S01622', '邱刘哲', '男', '', '', '2009-02-16', '8', '18620916361', '', '', '', '天河华景中心', '邹丽萍', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '15000.00', '0.00', '3614.18', '18614.18', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2041', 'S11964', '平皓中', '男', '', '', '', '', '18602015509', '', '', '2017-05-08', '天河天府路中心', '', '', '18602015509', '', '', '', '', '天河区天府路小学', '一年级', '七班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2042', 'S12367', '彭芷晴', '女', '', '', '', '', '18928861230', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2043', 'S10853', '彭云翼', '男', '', '', '2010-01-04', '7', '13824432012', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2044', 'S10868', '彭羽菲', '女', '', '', '2007-07-27', '9', '13824432012', '03-课题：自然拼音', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2045', 'S01616', '彭希扬', '女', '', '', '2009-01-19', '8', '18620488133', '', '', '', '天河华景中心', '邹丽萍', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '15000.00', '0.00', '3788.17', '18788.17', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2046', 'S01612', '潘子颀', '男', '', '', '', '', '18588861991', '01-老带新', '', '', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '六年级', '', '', '0.00', '', '在读', '', '', '', '3280.00', '0.00', '26334.00', '29614.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2047', 'S11665', '潘钰辰', '女', '', '', '2013-02-08', '4', '13922769637', '06-上门咨询', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '960.00', '1190.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2048', 'S09047', '潘浩智', '男', '', '', '2010-03-23', '7', '13640768911', '01-老带新', '', '2017-04-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路分校', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '19136.00', '19136.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2049', 'S14355', '毛思羽', '女', '', '', '2010-09-03', '6', '13602285805', '06-上门咨询', '', '2017-05-19', '天河天府路中心', '', '毛学庆', '13609790096', '周飞良', '13602285805', '', '', '天河区天府路小学（翠湖分校）', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2050', 'S11787', '罗悦宁', '女', '', '', '2010-05-11', '7', '18602031560', '', '', '2017-05-08', '天河天府路中心', '', '', '', '袁俊', '18602031560', '', '', '天河区天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2051', 'S16323', '罗鸿铭', '男', '', '', '', '', '18620889544', '03-课题：自然拼音', '天河天府路中心', '2017-06-23', '天河天府路中心', '', '', '', '', '18620889544', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '48800.00', '0.00', '0.00', '48800.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2052', 'S09202', '闾家熙', '男', '', '', '2010-06-17', '7', '13570201921', '03-课题：自然拼音', '', '2017-04-08', '天河天府路中心', '', '闾国耀', '18680287007', '刘少英', '13570201921', '', '', '天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17737.67', '17737.67', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2053', 'S09046', '陆子叶', '女', '', '440106200812302488', '2008-12-30', '8', '13632453211', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17292.63', '17292.63', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2054', 'S09045', '陆鸣飞', '女', '', '', '2009-07-14', '7', '13609726477', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '祈福新邨小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22573.30', '22573.30', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2055', 'S12910', '龙心宜', '女', '', '', '2008-09-25', '8', '13622289238', '', '', '2017-05-11', '天河天府路中心', '', '', '', '陈珊珊', '13622289238', '', '', '天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2056', 'S09044', '柳皓轩', '男', '', '', '2008-03-28', '9', '13560322898', '06-上门咨询', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '三年级', '六班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '13885.75', '13885.75', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2057', 'S09043', '刘芷妤', '女', '', '', '2009-11-05', '7', '13501518927', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16430.51', '16430.51', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2058', 'S09042', '刘芷睿', '女', '', '', '2010-06-01', '7', '18665651008', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22759.31', '22759.31', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2059', 'S10771', '刘骐瑶', '女', '', '', '', '', '13902202502', '06-上门咨询', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2060', 'S11242', '刘安淇（1）', '女', '', '', '', '', '13822267285', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（8）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2061', 'S11226', '林子淇（1）', '女', '', '', '', '', '13427585469', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '华阳小学', '三年级', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2062', 'S11143', '林馨语', '女', '', '', '', '', '13609085038', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2063', 'S10966', '林欣锐', '男', '', '', '', '', '18998298281', '03-课题：自然拼音', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2064', 'S10980', '林昕睿', '男', '', '', '', '', '18998298281', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2065', 'S17323', '林小哲（Austin）', '男', '', '', '', '', '15802016375', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '15802016375', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2066', 'S17326', '林小轩', '', '', '', '', '', '15802016375', '07-网络咨询', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '新蕾幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2067', 'S07733', '林承熙', '男', '', '', '2009-10-23', '7', '13922386115', '09-教师推荐', '天河华景中心', '2017-01-15', '天河华景中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18203.79', '18203.79', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2068', 'S14517', '列羽芊', '女', '', '', '2010-01-10', '7', '13828434397', '', '', '2017-05-19', '天河天府路中心', '', '', '', '梁女士', '13828434397', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2970.58', '2970.58', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2069', 'S10907', '梁钰', '女', '', '', '', '', '18122202254', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区石牌小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2070', 'S09040', '梁希', '男', '', '', '2007-06-01', '10', '13556198719', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '三年级', '六班', '', '0.00', '', '在读', '', '', '', '5500.00', '0.00', '16249.95', '21749.95', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2071', 'S16940', '梁添翔', '男', '', '', '', '', '13610122142', '06-上门咨询', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2072', 'S09039', '梁泓楠', '男', '', '', '2010-10-19', '6', '13418072142', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23524.94', '23524.94', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2073', 'S09038', '李紫嫣', '女', '', '', '2010-07-09', '6', '18520121305', '01-老带新', '', '2017-03-01', '天河天府路中心', '', '', '', '', '', '', '', '天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17668.56', '17668.56', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2074', 'S14675', '李梓杰', '男', '', '', '', '', '15889391251', '05-地推', '天河天府路中心', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2075', 'S11962', '李梓铖', '男', '', '', '2010-03-02', '7', '13631317878', '03-课题：自然拼音', '天河骏景中心', '2017-05-08', '天河骏景中心', '', '', '', '', '13631317878', '', '', '天河区骏景小学', '一年级', '（3）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2901.50', '2901.50', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2076', 'S12550', '李沄天', '男', '', '', '', '', '13719199190', '', '', '2017-05-10', '天河天府路中心', '', '李波', '18903003148', '陈 ', '13719199190', '', '', '天河区天府路小学', '三年级', '八班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2077', 'S11238', '李羽涵', '男', '', '', '', '', '13640217144', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2078', 'S10889', '李烨铭', '男', '', '', '', '', '13148948648', '预约试听', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '天河区棠下小学', '四年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2079', 'S09037', '李雅希', '女', '', '', '2009-09-09', '7', '13533545832', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '22305.75', '22305.75', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2080', 'S10783', '李宣霖', '男', '', '', '', '', '18620830552', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25960.00', '25960.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2081', 'S10776', '李欣遥', '女', '', '', '2010-03-18', '7', '18620830552', '08-电话咨询', '天河骏景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '1班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2082', 'S09036', '李佩儿', '女', '', '', '2010-03-27', '7', '13527882123', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1993.75', '1993.75', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2083', 'S10222', '李乐天', '女', '', '', '2010-01-03', '7', '13556007650', '03-课题：自然拼音', '', '2017-05-07', '天河天府路中心', '', '李建初', '1382187218', '黎雪芬', '13556007650', '', '', '广州市天河区天府路小学', '一年级', '（2）班', '翠湖校区', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2084', 'S10759', '李澜昕', '女', '', '', '', '', '15975413984', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '（2）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2085', 'S17042', '李泓泽', '男', '', '', '', '', '13609002006', '07-网络咨询', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2086', 'S16600', '李冠延', '男', '', '', '', '', '13711288940', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2087', 'S09035', '黎政鑫', '男', '', '', '2009-10-21', '7', '13640846060', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '21552.91', '21552.91', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2088', 'S10745', '黎亮', '男', '', '', '', '', '18100203550', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2089', 'S16607', '雷鲁健', '男', '', '', '', '', '13798183155', '03-课题：自然拼音', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2090', 'S12558', '勒瑞琦', '女', '', '', '', '', '13302337916', '03-课题：自然拼音', '天河华景中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2091', 'S09034', '劳隽熙', '女', '', '', '2010-08-02', '6', '13922166899', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '9500.00', '18380.55', '8880.55', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2092', 'S12366', '金昱谦', '男', '', '', '2012-11-04', '4', '13360008197', '07-网络咨询', '天河天府路中心', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2093', 'S15854', '蒋沛霖', '男', '', '', '', '', '15360016840', '06-上门咨询', '天河天府路中心', '2017-06-18', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '大班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '28316.00', '28316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2094', 'S13110', '姜昕屹', '男', '', '', '', '', '13725287618', '', '', '2017-05-12', '天河天府路中心', '', '', '', '申柯', '13725287618', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2095', 'S17342', '姜卉', '女', '', '', '', '', '13432004018', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '13432004018', '', '', '天河区天府路小学', '二年级', '5', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2096', 'S17328', '姜卉', '女', '', '', '2009-05-10', '8', '13533065839', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '五班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2097', 'S11543', '江益民', '男', '', '', '2013-01-16', '4', '13725105561', '01-老带新', '天河华景中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2098', 'S16658', '汲春杉', '女', '', '', '2011-05-13', '6', '13928893100', '02-课题：童话剧', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2099', 'S09033', '黄梓峰', '男', '', '', '2010-08-08', '6', '13560016636', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '17439.09', '17439.09', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2100', 'S11036', '黄芷琳0305', '女', '', '', '', '', '13560250305', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2101', 'S09032', '黄泽蕊', '女', '', '', '2008-12-02', '8', '13802548976', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23469.30', '23469.30', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2102', 'S11059', '黄元星', '男', '', '', '', '', '13711669179', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2103', 'S11050', '黄元量', '女', '', '', '', '', '13711669179', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '0.00', '0.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2104', 'S09879', '黄映衡', '男', '', '', '2012-11-08', '4', '13560016636', '', '', '2017-05-06', '天河天府路中心', '', '', '', '', '13560016636', '', '', '广州市天河区天府路小学', '中班', '天府路幼儿园', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '1200.00', '1200.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2105', 'S09031', '黄玮婷', '女', '', '', '2009-01-07', '8', '18928895338', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '16249.95', '16249.95', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2106', 'S17123', '黄思睿', '女', '', '', '', '', '13926022826', '10-其他渠道推荐', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区华景泽晖幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2107', 'S16827', '黄祺茜-KIKI', '女', '', '', '', '', '13503017628', '03-课题：自然拼音', '天河天府路中心', '2017-06-25', '天河天府路中心', '', '', '', '', '13503017628', '', '', '天河区天府路小学（翠湖分校）', '二年级', '2', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '50680.00', '50680.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2108', 'S11104', '黄鸿亮', '男', '', '', '', '', '13660538977', '01-老带新', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '13660538977', '', '', '广州市天河区旭景小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '2832.42', '2832.42', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2109', 'S11940', '胡甜慈', '女', '', '', '', '', '18022899616', '', '', '2017-05-08', '天河天府路中心', '', '', '18022899535', '', '18022899616', '', '', '广州市天河区天府路小学', '一年级', '一班', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2110', 'S17302', '胡世程', '女', '', '', '', '', '13925002550', '03-课题：自然拼音', '天河天府路中心', '2017-06-30', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2111', 'S09030', '侯宸卓', '男', '', '', '2009-12-14', '7', '13802536119', '03-课题：自然拼音', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '23289.06', '23289.06', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2112', 'S09029', '侯宸越', '男', '', '', '2009-12-14', '7', '13802536119', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '二班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '21629.39', '21629.39', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2113', 'S13730', '何泳希5668', '女', '', '', '', '', '13022055668', '06-上门咨询', '天河骏景中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '49760.00', '49760.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2114', 'S13741', '何垚均', '男', '', '', '', '', '18688471778', '06-上门咨询', '天河天府路中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '四班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '51839.67', '51839.67', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2115', 'S12820', '何雯', '女', '', '', '', '', '13068821834', '', '', '2017-05-11', '天河天府路中心', '', '何继成', '13924212778', '肖丽辉', '13068821834', '', '', '广州市天河区天府路小学', '四年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2116', 'S16529', '何家坤', '男', '', '', '', '', '18026380649', '03-课题：自然拼音', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学（翠湖分校）', '二年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25000.00', '25000.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2117', 'S13744', '何柏沅', '', '', '', '', '', '13070261292', '06-上门咨询', '天河天府路中心', '2017-05-15', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '25960.00', '25960.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2118', 'S09028', '郭梓聪', '男', '', '', '2010-04-13', '7', '13502447171', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '八班', '', '0.00', '', '在读', '', '', '', '5500.00', '0.00', '16249.95', '21749.95', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2119', 'S09027', '龚子寅', '男', '', '', '2010-02-26', '7', '13829759394', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18564.58', '18564.58', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2120', 'S14685', '高梓骞', '女', '', '', '2012-08-02', '4', '13922220087', '', '', '2017-05-20', '天河天府路中心', '', '', '', '', '', '', '', '广州邮电通信设备公司幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2121', 'S11900', '符方涓', '女', '', '', '2012-09-26', '4', '13808841422', '', '', '2017-05-08', '天河骏景中心', '', '', '18688874048', '', '13808841422', '', '', '95107部队幼儿园', '中班', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '960.00', '960.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2122', 'S17309', '冯煦洋', '男', '', '', '', '', '13660776606', '07-网络咨询', '天河天府路中心', '2017-06-29', '天河天府路中心', '', '', '13763335867', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2123', 'S01521', '杜航宇', '男', '', '', '2009-02-07', '8', '18988800659', '转入', '', '', '天河天府路中心', '', '', '', '', '', '', '', '天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '31570.08', '0.00', '0.00', '31570.08', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2124', 'S13089', '董陈蓓', '女', '', '', '2010-04-17', '7', '13560067893', '07-网络咨询', '天河骏景中心', '2017-05-12', '天河天府路中心', '', '', '', '', '', '', '', '广州大学附属小学', '一年级', '6班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2125', 'S10555', '邓亦舟', '女', '', '', '', '', '18926224535', '预约试听', '天河天府路中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '3316.00', '3596.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2126', 'S07495', '邓汇子', '女', '', '', '2010-05-17', '7', '13560478460', '', '', '2016-12-18', '天河华景中心', '', '', '', '', '13560478460', '', '', '天河区天府路小学', '一年级', '8', '', '0.00', '', '在读', '', '', '', '0.00', '8900.00', '16098.45', '7198.45', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2127', 'S17019', '戴裕桐', '女', '', '', '', '', '13688880119', '03-课题：自然拼音', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2128', 'S17035', '戴永航', '男', '', '', '', '', '13688880119', '在线报名,10-其他渠道推荐', '天河天府路中心', '2017-06-28', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '230.00', '0.00', '980.00', '1210.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2129', 'S16590', '崔雯睿', '女', '', '', '', '', '13719056933', '10-其他渠道推荐', '天河天府路中心', '2017-06-24', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '', '0.00', '', '在读', '', '', '', '10.00', '6400.00', '11400.00', '5010.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2130', 'S11473', '陈梓豪0326', '女', '', '', '', '', '13825130326', '06-上门咨询', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市越秀区水荫路小学', '二年级', '4', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2131', 'S12495', '陈宇华', '男', '', '', '2008-06-18', '9', '13318838382', '', '', '2017-05-10', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2132', 'S13243', '陈熹', '', '', '', '', '', '13570263325', '转入', '海珠滨江东中心', '2017-05-13', '天河天府路中心', '', '', '', '', '', '', '', '未读幼儿园', '小班', '', '未上幼儿园', '0.00', '', '在读', '', '', '', '460.00', '0.00', '960.00', '1420.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2133', 'S13317', '陈姝含', '女', '', '', '2008-07-06', '8', '13632496687', '07-网络咨询', '', '2017-05-13', '天河天府路中心', '', '陈德鸿', '13570206687', '郑少丽', '13632496687', '', '', '广州市天河区天府路小学', '三年级', '（6）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2134', 'S09026', '陈锵铭', '男', '', '', '2008-05-07', '9', '13802520060', '', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '三年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '48800.00', '48800.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2135', 'S11147', '陈明宇', '男', '', '', '', '', '15919305340', '', '', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '东华幼儿园', '小班', '（1）班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '760.00', '760.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2136', 'S11883', '陈立言', '男', '', '', '', '', '18680286506', '06-上门咨询', '天河天府路中心', '2017-05-08', '天河骏景中心', '', '', '', '', '18680286506', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2137', 'S09025', '陈可馨8669', '女', '', '', '2010-06-02', '7', '15622218669', '01-老带新', '', '2017-02-20', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '三班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '18384.03', '18384.03', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2138', 'S11566', '陈钧泽', '男', '', '', '', '', '13286854113', '01-老带新', '海珠滨江东中心', '2017-05-07', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2139', 'S11953', '蔡斯丞', '男', '', '', '2010-06-08', '7', '13570052906', '10-其他渠道推荐', '天河天府路中心', '2017-05-08', '天河天府路中心', '', '', '', '', '13570052906', '', '', '广州市天河区骏景小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2140', 'S12913', '蔡乐铭', '女', '', '', '', '', '13826173078', '', '', '2017-05-11', '天河天府路中心', '', '', '', '朱燕秋', '13826173078', '', '', '广州市天河区天府路小学', '二年级', '一班', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2141', 'S09315', '蔡君昊', '男', '', '', '2009-02-14', '8', '13603016366', '01-老带新', '天河天府路中心', '2017-04-15', '天河天府路中心', '', '', '', '', '13603016366', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '48800.00', '49080.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2142', 'S13915', '宾诗琪', '女', '', '', '2010-01-08', '7', '15989047046', '01-老带新', '天河天府路中心', '2017-05-18', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区华景小学', '一年级', '', '', '0.00', '', '在读', '', '', '', '0.00', '0.00', '3316.00', '3316.00', null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2143', 'S17905', '梁文迪', '男', null, null, null, null, '13824469498', '03-课题：自然拼音', '天河天府路中心', '2017-07-05', '天河天府路中心', null, null, null, null, null, null, null, '天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2144', 'S18834', '王子荞', '女', null, null, null, null, '18666091785', '01-老带新,02-课题：童话剧', '天河天府路中心', '2017-07-18', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2145', 'S18593', '胡逍', '男', null, null, null, null, '13631346942', '10-其他渠道推荐', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2146', 'S19155', '熊峰', '男', null, null, null, null, '18925081158', '01-老带新', '天河天府路中心', '2017-07-23', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '三年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2147', 'S18229', '简耀龙', '男', null, null, null, null, '13318767909', '03-课题：自然拼音', '天河天府路中心', '2017-07-09', '天河天府路中心', null, null, null, null, null, null, null, '天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2148', 'S18564', '何思睿', '男', null, null, null, null, '13929558460', '01-老带新', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2149', 'S18745', '肖昕瑶', '男', null, null, null, null, '13570251087', '06-上门咨询,10-其他渠道推荐', '天河天府路中心', '2017-07-16', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2150', 'S18724', '陆文蓓', '女', null, null, null, null, '13719299327', '02-课题：童话剧', '天河天府路中心', '2017-07-16', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区华景小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2151', 'S17901', '林也淇', '男', null, null, null, null, '13660691390', '03-课题：自然拼音', '天河天府路中心', '2017-07-05', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区华景小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2152', 'S18596', '胡遥', '女', null, null, null, null, '13631346942', '10-其他渠道推荐', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2153', 'S17930', '刘赜恺', '男', null, null, null, null, '15899957099', '07-网络咨询', '天河天府路中心', '2017-07-05', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区华景小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2154', 'S18734', '彭星语', '女', null, null, null, null, '18688858951', '03-课题：自然拼音', '天河天府路中心', '2017-07-16', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2155', 'S17865', '姚俊宏', '男', null, null, null, null, '13922174670', '07-网络咨询', '天河天府路中心', '2017-07-04', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2156', 'S18626', '陈铭灏', '男', null, null, null, null, '13798058415', '03-课题：自然拼音', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2157', 'S19097', '冯钰淑', '女', null, null, null, null, '13928867265', '02-课题：童话剧', '天河天府路中心', '2017-07-22', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2158', 'S18271', '陈悦心', '女', null, null, null, null, '13302255996', '03-课题：自然拼音', '天河天府路中心', '2017-07-09', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2159', 'S18599', '张书瑶4101', '女', null, null, null, null, '13580554101', '03-课题：自然拼音', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2160', 'S18562', '骆伊洋Dora', '女', null, null, null, null, '13924227183', '03-课题：自然拼音', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2161', 'S18232', '杨旖妮', '女', null, null, null, null, '13922455606', '06-上门咨询', '天河天府路中心', '2017-07-09', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2162', 'S17868', '纪博桓', '男', null, null, null, null, '13380079255', '03-课题：自然拼音', '天河天府路中心', '2017-07-04', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2163', 'S18632', '范越好', '', null, null, null, null, '13570311969', '07-网络咨询,02-课题：童话剧', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2164', 'S18645', '柯皓天', '男', null, null, null, null, '15913164129', '01-老带新', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '广州邮电通信设备公司幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2165', 'S18628', '熊奕宁', '男', null, null, null, null, '13632404301', '07-网络咨询', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2166', 'S18407', '陈启', '', null, null, null, null, '13726789319', '01-老带新', '天河华景中心', '2017-07-11', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:40');
INSERT INTO `stjy_xyxxb` VALUES ('2167', 'S18646', '黄楷邦', '男', null, null, null, null, '13926477498', '03-课题：自然拼音', '天河天府路中心', '2017-07-15', '天河天府路中心', null, null, null, null, null, null, null, '朝阳东幼儿园', '大班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2168', 'S18175', '李晓语', '女', null, null, null, null, '13602452352', '01-老带新', '天河天府路中心', '2017-07-08', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '中班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2169', 'S18057', '廖爱跃', '', null, null, null, null, '13602488168', '07-网络咨询', '天河天府路中心', '2017-07-07', '天河天府路中心', null, null, null, null, null, null, null, '东华幼儿园', '大班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2170', 'S18156', '蓝添', '男', null, null, null, null, '13924268965', '06-上门咨询,01-老带新', '天河天府路中心', '2017-07-08', '天河天府路中心', null, null, null, null, null, null, null, '广州市番禺区华南碧桂园学校', '四年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2171', 'S18827', '徐宸', '', null, null, null, null, '15914290808', '03-课题：自然拼音', '天河天府路中心', '2017-07-18', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2172', 'S17907', '江晓潼', '女', null, null, null, null, '13925098803', '03-课题：自然拼音', '天河天府路中心', '2017-07-05', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2173', 'S19122', '赵若菡', '女', null, null, null, null, '13828420843', '04-课题：演讲', '天河天府路中心', '2017-07-23', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2174', 'S18835', '曾子瀚', '男', null, null, null, null, '18664866876', '03-课题：自然拼音', '天河天府路中心', '2017-07-18', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2175', 'S17859', '许雯棋', '女', null, null, null, null, '13632383973', '07-网络咨询', '天河天府路中心', '2017-07-03', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2176', 'S18600', '张书瑶', '女', null, null, null, null, '13632391405', '03-课题：自然拼音', '天河天府路中心', '2017-07-14', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '二年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2177', 'S19180', 'timmy', '男', null, null, null, null, '18588661238', '07-网络咨询', '天河天府路中心', '2017-07-23', '天河天府路中心', null, null, null, null, null, null, null, '东莞市东城朝天实验小学', '大班', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2178', 'S18358', '刘烔燊', '男', null, null, null, null, '13828081771', '07-网络咨询', '天河天府路中心', '2017-07-10', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '一年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2179', 'S18804', '陈博源', '男', null, null, null, null, '13560139305', '10-其他渠道推荐', '天河天府路中心', '2017-07-18', '天河天府路中心', null, null, null, null, null, null, null, '广州市天河区天府路小学', '三年级', null, null, null, null, '在读', null, null, null, null, null, null, null, null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2180', 'S19504', '邓禹', '男', '', '', '', '', '18925063330', '07-网络咨询', '天河天府路中心', '2017-07-29', '天河天府路中心', '', '', '18925063330', '', '18998367496', '', '', '天河区天府路小学（翠湖分校）', '二年级', '1', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2181', 'S19470', '吴家诚', '男', '', '', '', '', '13533099190', '07-网络咨询', '天河天府路中心', '2017-07-27', '天河天府路中心', '', '', '', '', '13533099190', '', '', '广州市天河区天府路小学', '一年级', '7', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2182', 'S19524', '林子妍', '女', '', '', '', '', '18922100301', '01-老带新', '天河天府路中心', '2017-07-29', '天河天府路中心', '', '', '', '', '', '', '', '广州市天河区天府路小学', '二年级', '', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2183', 'S19472', '吴家兆', '男', '', '', '', '', '13533099190', '07-网络咨询', '天河天府路中心', '2017-07-27', '天河天府路中心', '', '', '', '', '13533099190', '', '', '广州市天河区天府路小学', '一年级', '7', '', '0.00', '', '在读', '', '', '', '280.00', '0.00', '1880.00', '2160.00', null, '36', '2017-08-16 23:12:41');
INSERT INTO `stjy_xyxxb` VALUES ('2184', 'S13383', '杨恩昊', '男', '', '', '', '', '13434361898', '01-老带新', '海珠滨江东中心', '2017-05-13', '天河天府路中心', '', '', '', '', '13434361898', '', '', '未知', '三年级', '', '', '0.00', '', '在读', '', '', '', '840.00', '0.00', '3316.00', '4156.00', null, '36', '2017-08-16 23:12:41');

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

/*
Navicat MySQL Data Transfer

Source Server         : fengchao
Source Server Version : 50547
Source Host           : 172.16.20.191:3306
Source Database       : newdb

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-09-12 15:52:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a_user
-- ----------------------------
DROP TABLE IF EXISTS `a_user`;
CREATE TABLE `a_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `jobnumber` varchar(32) NOT NULL COMMENT '工号',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `credientialnu` varchar(32) DEFAULT NULL COMMENT '身份证',
  `createtime` int(11) DEFAULT NULL,
  `ipaddr` int(255) DEFAULT NULL COMMENT '上次登陆ip',
  `lastlogintime` int(11) DEFAULT NULL COMMENT '上次登陆时间',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `isdeleted` tinyint(255) DEFAULT NULL COMMENT '是否删除',
  `userlevel` tinyint(255) DEFAULT NULL COMMENT '客户级别',
  `computerlevel` varchar(32) DEFAULT NULL,
  `englishlevel` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `degree` varchar(32) DEFAULT NULL COMMENT '学位',
  `education` varchar(32) DEFAULT NULL COMMENT '学历',
  `expiredate` int(11) DEFAULT '0' COMMENT '账户有效期',
  `company` varchar(100) DEFAULT '',
  `department` varchar(32) DEFAULT NULL COMMENT '部门',
  `position` varchar(32) DEFAULT NULL,
  `telphone` varchar(32) DEFAULT NULL COMMENT '固话',
  `birthday` int(11) DEFAULT NULL COMMENT '出生日期',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`id`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_user
-- ----------------------------
INSERT INTO `a_user` VALUES ('1', 'FM00010001', 'Im A user', 'admin@fm.com', '18801621639', 'e10adc3949ba59abbe56e057f20f883e', '140321111111111111', null, null, null, null, null, null, null, null, null, null, null, '1536735673', '', null, '', '', '0');

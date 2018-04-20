/*
Navicat MySQL Data Transfer

Source Server         : fengchao 云测试
Source Server Version : 50621
Source Host           : 139.224.27.12:3306
Source Database       : Fengchao

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-10-07 16:38:54
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for #a_menu
-- ----------------------------
DROP TABLE IF EXISTS `#a_menu`;
CREATE TABLE `#a_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '目录名称',
  `parentid` int(11) NOT NULL DEFAULT '0' COMMENT '父节点',
  `nodepath` varchar(255) NOT NULL COMMENT '节点路径',
  `isleaf` tinyint(1) NOT NULL COMMENT '是否是子节点',
  `path` varchar(255) DEFAULT NULL COMMENT '菜单路径',
  `isdeleted` tinyint(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parentid` (`parentid`) USING BTREE,
  KEY `isleaf` (`isleaf`) USING BTREE,
  KEY `isdeleted` (`isdeleted`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of #a_menu
-- ----------------------------

-- ----------------------------
-- Table structure for #a_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `#a_menu_role`;
CREATE TABLE `#a_menu_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleid` (`roleid`) USING BTREE,
  KEY `menuid` (`menuid`) USING BTREE,
  KEY `isdeleted` (`isdeleted`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of #a_menu_role
-- ----------------------------

-- ----------------------------
-- Table structure for #a_role
-- ----------------------------
DROP TABLE IF EXISTS `#a_role`;
CREATE TABLE `#a_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of #a_role
-- ----------------------------

-- ----------------------------
-- Table structure for #b_agent_function
-- ----------------------------
DROP TABLE IF EXISTS `#b_agent_function`;
CREATE TABLE `#b_agent_function` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA 账户功能表';

-- ----------------------------
-- Records of #b_agent_function
-- ----------------------------

-- ----------------------------
-- Table structure for #b_refund
-- ----------------------------
DROP TABLE IF EXISTS `#b_refund`;
CREATE TABLE `#b_refund` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '体现状态',
  `ipaddr` int(11) DEFAULT NULL COMMENT '体现用户ip地址',
  `bankcard` tinyint(4) DEFAULT NULL COMMENT '本次提现使用的银行卡',
  `createtime` int(11) DEFAULT NULL,
  `successtime` int(11) DEFAULT NULL COMMENT '提现成功时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `buserid` (`buserid`),
  UNIQUE KEY `ipaddr` (`ipaddr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA用户提现操作表';

-- ----------------------------
-- Records of #b_refund
-- ----------------------------

-- ----------------------------
-- Table structure for #b_user
-- ----------------------------
DROP TABLE IF EXISTS `#b_user`;
CREATE TABLE `#b_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `password` varchar(64) DEFAULT NULL,
  `credientialnu` varchar(20) DEFAULT NULL COMMENT '身份证',
  `createtime` int(11) DEFAULT NULL,
  `ipaddr` int(11) DEFAULT NULL COMMENT '上次登陆ip',
  `lastlogintime` int(11) DEFAULT NULL COMMENT '上次登陆时间',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `isdeleted` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  `userlevel` tinyint(4) DEFAULT NULL COMMENT '客户级别',
  `computerlevel` varchar(32) DEFAULT NULL,
  `englishlevel` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `degree` varchar(32) DEFAULT NULL COMMENT '学位',
  `education` varchar(32) DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `ipaddr` (`phone`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='B端用户表';

-- ----------------------------
-- Records of #b_user
-- ----------------------------
INSERT INTO `#b_user` VALUES ('1', 'chery1', 'chen2@fm.com', '18888888888', 'asdasdasdsad', null, null, null, null, null, null, null, null, null, null, null, null);

-- ----------------------------
-- Table structure for #b_user_account
-- ----------------------------
DROP TABLE IF EXISTS `#b_user_account`;
CREATE TABLE `#b_user_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) DEFAULT NULL,
  `profit` decimal(14,3) DEFAULT NULL COMMENT '收益',
  `commission` decimal(14,3) DEFAULT NULL COMMENT '已收佣金',
  `balance` decimal(14,3) DEFAULT NULL COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `buserid` (`buserid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA 方账户表';

-- ----------------------------
-- Records of #b_user_account
-- ----------------------------

-- ----------------------------
-- Table structure for a_access
-- ----------------------------
DROP TABLE IF EXISTS `a_access`;
CREATE TABLE `a_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台管理员权限表';

-- ----------------------------
-- Records of a_access
-- ----------------------------
INSERT INTO `a_access` VALUES ('1', '1', '1', null);
INSERT INTO `a_access` VALUES ('1', '3', '1', null);
INSERT INTO `a_access` VALUES ('1', '4', '1', null);
INSERT INTO `a_access` VALUES ('1', '5', '1', null);
INSERT INTO `a_access` VALUES ('1', '6', '1', null);
INSERT INTO `a_access` VALUES ('1', '7', '1', null);
INSERT INTO `a_access` VALUES ('1', '8', '1', null);
INSERT INTO `a_access` VALUES ('1', '9', '2', null);
INSERT INTO `a_access` VALUES ('1', '10', '2', null);
INSERT INTO `a_access` VALUES ('1', '11', '2', null);
INSERT INTO `a_access` VALUES ('1', '12', '2', null);
INSERT INTO `a_access` VALUES ('1', '13', '2', null);
INSERT INTO `a_access` VALUES ('1', '14', '2', null);
INSERT INTO `a_access` VALUES ('1', '15', '2', null);
INSERT INTO `a_access` VALUES ('1', '16', '2', null);
INSERT INTO `a_access` VALUES ('1', '17', '2', null);
INSERT INTO `a_access` VALUES ('1', '18', '3', null);
INSERT INTO `a_access` VALUES ('1', '19', '3', null);
INSERT INTO `a_access` VALUES ('1', '20', '3', null);
INSERT INTO `a_access` VALUES ('1', '21', '3', null);
INSERT INTO `a_access` VALUES ('1', '22', '3', null);
INSERT INTO `a_access` VALUES ('1', '23', '3', null);
INSERT INTO `a_access` VALUES ('1', '24', '2', null);
INSERT INTO `a_access` VALUES ('1', '25', '3', null);
INSERT INTO `a_access` VALUES ('1', '144', '2', null);
INSERT INTO `a_access` VALUES ('1', '145', '2', null);
INSERT INTO `a_access` VALUES ('1', '146', '3', null);
INSERT INTO `a_access` VALUES ('1', '147', '3', null);
INSERT INTO `a_access` VALUES ('1', '148', '3', null);
INSERT INTO `a_access` VALUES ('1', '149', '3', null);
INSERT INTO `a_access` VALUES ('1', '150', '3', null);
INSERT INTO `a_access` VALUES ('1', '151', '3', null);
INSERT INTO `a_access` VALUES ('1', '152', '3', null);
INSERT INTO `a_access` VALUES ('1', '152', '3', null);
INSERT INTO `a_access` VALUES ('1', '154', '3', null);
INSERT INTO `a_access` VALUES ('1', '155', '3', null);
INSERT INTO `a_access` VALUES ('1', '156', '3', null);
INSERT INTO `a_access` VALUES ('1', '157', '3', null);
INSERT INTO `a_access` VALUES ('1', '158', '3', null);
INSERT INTO `a_access` VALUES ('1', '159', '3', null);
INSERT INTO `a_access` VALUES ('1', '160', '3', null);
INSERT INTO `a_access` VALUES ('1', '161', '3', null);
INSERT INTO `a_access` VALUES ('1', '162', '3', null);
INSERT INTO `a_access` VALUES ('1', '163', '2', null);
INSERT INTO `a_access` VALUES ('1', '164', '3', null);
INSERT INTO `a_access` VALUES ('1', '165', '3', null);
INSERT INTO `a_access` VALUES ('1', '166', '3', null);
INSERT INTO `a_access` VALUES ('1', '167', '3', null);
INSERT INTO `a_access` VALUES ('1', '168', '3', null);
INSERT INTO `a_access` VALUES ('1', '169', '3', null);
INSERT INTO `a_access` VALUES ('1', '170', '3', null);
INSERT INTO `a_access` VALUES ('1', '171', '3', null);
INSERT INTO `a_access` VALUES ('1', '172', '3', null);
INSERT INTO `a_access` VALUES ('1', '173', '3', null);
INSERT INTO `a_access` VALUES ('1', '188', '3', null);
INSERT INTO `a_access` VALUES ('1', '175', '2', null);
INSERT INTO `a_access` VALUES ('1', '176', '3', null);
INSERT INTO `a_access` VALUES ('1', '177', '3', null);
INSERT INTO `a_access` VALUES ('1', '178', '3', null);
INSERT INTO `a_access` VALUES ('1', '179', '3', null);
INSERT INTO `a_access` VALUES ('1', '180', '3', null);
INSERT INTO `a_access` VALUES ('1', '181', '3', null);
INSERT INTO `a_access` VALUES ('1', '182', '3', null);
INSERT INTO `a_access` VALUES ('1', '183', '3', null);
INSERT INTO `a_access` VALUES ('1', '184', '3', null);
INSERT INTO `a_access` VALUES ('1', '185', '3', null);
INSERT INTO `a_access` VALUES ('1', '186', '3', null);
INSERT INTO `a_access` VALUES ('1', '187', '3', null);
INSERT INTO `a_access` VALUES ('1', '189', '3', null);
INSERT INTO `a_access` VALUES ('1', '189', '3', null);
INSERT INTO `a_access` VALUES ('1', '190', '3', null);
INSERT INTO `a_access` VALUES ('1', '191', '3', null);
INSERT INTO `a_access` VALUES ('1', '192', '3', null);
INSERT INTO `a_access` VALUES ('1', '193', '3', null);
INSERT INTO `a_access` VALUES ('1', '194', '3', null);
INSERT INTO `a_access` VALUES ('1', '195', '3', null);
INSERT INTO `a_access` VALUES ('1', '196', '3', null);
INSERT INTO `a_access` VALUES ('1', '197', '3', null);
INSERT INTO `a_access` VALUES ('1', '198', '3', null);
INSERT INTO `a_access` VALUES ('1', '199', '3', null);
INSERT INTO `a_access` VALUES ('1', '200', '3', null);
INSERT INTO `a_access` VALUES ('1', '201', '3', null);
INSERT INTO `a_access` VALUES ('1', '202', '3', null);
INSERT INTO `a_access` VALUES ('1', '203', '3', null);
INSERT INTO `a_access` VALUES ('1', '204', '3', null);
INSERT INTO `a_access` VALUES ('1', '205', '3', null);
INSERT INTO `a_access` VALUES ('1', '206', '3', null);
INSERT INTO `a_access` VALUES ('1', '207', '3', null);
INSERT INTO `a_access` VALUES ('1', '208', '3', null);
INSERT INTO `a_access` VALUES ('1', '209', '3', null);
INSERT INTO `a_access` VALUES ('1', '210', '3', null);
INSERT INTO `a_access` VALUES ('1', '211', '3', null);
INSERT INTO `a_access` VALUES ('1', '2', '1', null);
INSERT INTO `a_access` VALUES ('1', '212', '2', null);
INSERT INTO `a_access` VALUES ('1', '213', '3', null);
INSERT INTO `a_access` VALUES ('1', '214', '3', null);
INSERT INTO `a_access` VALUES ('1', '215', '3', null);
INSERT INTO `a_access` VALUES ('21', '4', '1', null);
INSERT INTO `a_access` VALUES ('1', '3', '1', null);
INSERT INTO `a_access` VALUES ('1', '216', '2', null);
INSERT INTO `a_access` VALUES ('1', '217', '3', null);
INSERT INTO `a_access` VALUES ('1', '218', '2', null);
INSERT INTO `a_access` VALUES ('1', '219', '3', null);
INSERT INTO `a_access` VALUES ('1', '220', '3', null);
INSERT INTO `a_access` VALUES ('1', '221', '3', null);
INSERT INTO `a_access` VALUES ('1', '222', '3', null);
INSERT INTO `a_access` VALUES ('1', '223', '3', null);
INSERT INTO `a_access` VALUES ('1', '224', '3', null);
INSERT INTO `a_access` VALUES ('1', '225', '2', null);
INSERT INTO `a_access` VALUES ('1', '226', '3', null);
INSERT INTO `a_access` VALUES ('1', '227', '3', null);
INSERT INTO `a_access` VALUES ('1', '228', '3', null);
INSERT INTO `a_access` VALUES ('1', '229', '3', null);
INSERT INTO `a_access` VALUES ('1', '230', '3', null);
INSERT INTO `a_access` VALUES ('1', '231', '3', null);
INSERT INTO `a_access` VALUES ('1', '232', '3', null);
INSERT INTO `a_access` VALUES ('1', '233', '3', null);
INSERT INTO `a_access` VALUES ('1', '234', '3', null);

-- ----------------------------
-- Table structure for a_activity
-- ----------------------------
DROP TABLE IF EXISTS `a_activity`;
CREATE TABLE `a_activity` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL DEFAULT '' COMMENT '活动名称',
  `content` varchar(10000) NOT NULL DEFAULT '' COMMENT '活动说明',
  `budget` int(11) DEFAULT '0' COMMENT '预算',
  `isforce` tinyint(1) DEFAULT '0' COMMENT '是否强制参加',
  `phonenotify` tinyint(1) DEFAULT '0' COMMENT '是否电话通知',
  `emailnotify` tinyint(1) DEFAULT '0' COMMENT '是否邮件通知',
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT '0',
  `begintime` int(11) DEFAULT NULL COMMENT '活动开始时间',
  `endtime` int(11) DEFAULT NULL COMMENT '活动结束时间',
  PRIMARY KEY (`id`),
  KEY `name` (`name`) USING BTREE,
  KEY `isforce` (`isforce`) USING BTREE,
  KEY `phonenotify` (`phonenotify`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台活动';

-- ----------------------------
-- Records of a_activity
-- ----------------------------

-- ----------------------------
-- Table structure for a_activity_check
-- ----------------------------
DROP TABLE IF EXISTS `a_activity_check`;
CREATE TABLE `a_activity_check` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) NOT NULL,
  `ischeck` tinyint(1) DEFAULT '0' COMMENT '是否参加',
  `budget` int(11) DEFAULT '0' COMMENT '预算',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `buserid` (`buserid`) USING BTREE,
  KEY `ischeck` (`ischeck`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='活动回复表';

-- ----------------------------
-- Records of a_activity_check
-- ----------------------------

-- ----------------------------
-- Table structure for a_agent_access
-- ----------------------------
DROP TABLE IF EXISTS `a_agent_access`;
CREATE TABLE `a_agent_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台管理员权限表';

-- ----------------------------
-- Records of a_agent_access
-- ----------------------------
INSERT INTO `a_agent_access` VALUES ('1', '1', '1', null);
INSERT INTO `a_agent_access` VALUES ('1', '3', '1', null);
INSERT INTO `a_agent_access` VALUES ('1', '4', '1', null);
INSERT INTO `a_agent_access` VALUES ('1', '5', '1', null);
INSERT INTO `a_agent_access` VALUES ('1', '6', '1', null);
INSERT INTO `a_agent_access` VALUES ('1', '7', '1', null);
INSERT INTO `a_agent_access` VALUES ('1', '8', '1', null);
INSERT INTO `a_agent_access` VALUES ('1', '9', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '10', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '11', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '12', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '13', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '14', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '15', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '16', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '17', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '18', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '19', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '20', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '21', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '22', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '23', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '24', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '25', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '144', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '145', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '146', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '147', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '148', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '149', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '150', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '151', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '152', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '152', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '154', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '155', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '156', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '157', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '158', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '159', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '160', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '161', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '162', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '163', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '164', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '165', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '166', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '167', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '168', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '169', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '170', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '171', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '172', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '173', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '188', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '175', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '176', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '177', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '178', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '179', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '180', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '181', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '182', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '183', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '184', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '185', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '186', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '187', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '189', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '189', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '190', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '191', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '192', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '193', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '194', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '195', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '196', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '197', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '198', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '199', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '200', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '201', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '202', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '203', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '204', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '205', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '206', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '207', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '208', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '209', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '210', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '211', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '2', '1', null);
INSERT INTO `a_agent_access` VALUES ('1', '212', '2', null);
INSERT INTO `a_agent_access` VALUES ('1', '213', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '214', '3', null);
INSERT INTO `a_agent_access` VALUES ('1', '215', '3', null);
INSERT INTO `a_agent_access` VALUES ('21', '4', '1', null);

-- ----------------------------
-- Table structure for a_b_user_template
-- ----------------------------
DROP TABLE IF EXISTS `a_b_user_template`;
CREATE TABLE `a_b_user_template` (
  `id` int(11) NOT NULL,
  `code` varchar(32) DEFAULT NULL COMMENT '编码',
  `level` int(11) DEFAULT NULL COMMENT '层级',
  `isleaf` int(1) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `path` varchar(32) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `ischeck` tinyint(1) DEFAULT NULL COMMENT '是否启用',
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ischeck` (`ischeck`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='客户模板表';

-- ----------------------------
-- Records of a_b_user_template
-- ----------------------------

-- ----------------------------
-- Table structure for a_domain
-- ----------------------------
DROP TABLE IF EXISTS `a_domain`;
CREATE TABLE `a_domain` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL COMMENT '商城id',
  `agentname` varchar(255) NOT NULL COMMENT '商城名',
  `subdomain` varchar(255) DEFAULT NULL,
  `userdomain` varchar(255) DEFAULT NULL,
  `subdomaincreatetime` int(11) DEFAULT NULL,
  `userdomaincreatetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shopid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='域名管理';

-- ----------------------------
-- Records of a_domain
-- ----------------------------

-- ----------------------------
-- Table structure for a_domain_apply
-- ----------------------------
DROP TABLE IF EXISTS `a_domain_apply`;
CREATE TABLE `a_domain_apply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL COMMENT '商城id',
  `buserid` varchar(255) NOT NULL COMMENT '商城名',
  `domain` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shopid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='域名申请记录管理';

-- ----------------------------
-- Records of a_domain_apply
-- ----------------------------

-- ----------------------------
-- Table structure for a_feedback
-- ----------------------------
DROP TABLE IF EXISTS `a_feedback`;
CREATE TABLE `a_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sendid` int(11) NOT NULL COMMENT '投诉方id',
  `recieveid` int(11) NOT NULL COMMENT '接受方id',
  `type` int(4) NOT NULL COMMENT '类型 1 c-b   2小b-大b',
  `content` varchar(1000) NOT NULL,
  `replyid` int(11) DEFAULT '0',
  `replycontent` varchar(1000) DEFAULT NULL COMMENT '回复内容',
  `replytime` int(11) DEFAULT '0',
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `isread` tinyint(1) DEFAULT NULL COMMENT '被回复方是否阅读',
  `isdone` tinyint(1) DEFAULT '0' COMMENT '是否处理',
  PRIMARY KEY (`id`),
  KEY `sendid` (`sendid`) USING BTREE,
  KEY `recieveid` (`recieveid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `followid` (`replyid`) USING BTREE,
  KEY `isread` (`isread`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='意见反馈表';

-- ----------------------------
-- Records of a_feedback
-- ----------------------------
INSERT INTO `a_feedback` VALUES ('1', '1001', '1', '2', '产品不错呢？？继续努力！', null, 'hahhahahaha', '1474622832', '1400000000', '0', '1', '1');
INSERT INTO `a_feedback` VALUES ('3', '1002', '1', '2', 'OK的', '1', '感谢你的支持！', '1474691997', '1474170072', '0', '0', '1');
INSERT INTO `a_feedback` VALUES ('4', '1003', '1', '2', 'fine...', '1', 'you always know what i want to do, you do good...', '1474684047', '1456000954', '0', '0', '1');
INSERT INTO `a_feedback` VALUES ('5', '1002', '1001', '1', '这家店不错,搞一个比较长的内容，主要写写什么呢？主要写写赞美吧！互联网金融还真的比较复杂呢...', '1', '感谢你的支持！', '1474874689', '1474856184', '0', '0', '1');

-- ----------------------------
-- Table structure for a_help
-- ----------------------------
DROP TABLE IF EXISTS `a_help`;
CREATE TABLE `a_help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='帮助表';

-- ----------------------------
-- Records of a_help
-- ----------------------------

-- ----------------------------
-- Table structure for a_marketing_strategy
-- ----------------------------
DROP TABLE IF EXISTS `a_marketing_strategy`;
CREATE TABLE `a_marketing_strategy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT '0',
  `createuser` varchar(32) DEFAULT NULL COMMENT '创建人名称',
  `createuserid` int(11) DEFAULT NULL COMMENT '创建人id',
  `updateuser` varchar(32) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `updateuserid` int(11) DEFAULT NULL COMMENT '修改人id',
  PRIMARY KEY (`id`),
  KEY `isdeleted` (`isdeleted`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='营销策略表';

-- ----------------------------
-- Records of a_marketing_strategy
-- ----------------------------
INSERT INTO `a_marketing_strategy` VALUES ('1', '集合打折策略1', '两个', '1474097691', '0', null, null, null, '1474171896', null);
INSERT INTO `a_marketing_strategy` VALUES ('11', '集合打折策略 2', '没有添加描述 有描述了', '1474099477', '0', '待处理', '10086', null, '1474102365', null);
INSERT INTO `a_marketing_strategy` VALUES ('12', '就打一个折', '没有添加描述 1', '1474099793', '0', '待处理', '10086', null, '1474102380', null);
INSERT INTO `a_marketing_strategy` VALUES ('13', '集合打折5', '集合 5 策略描述', '1474100212', '0', '待处理', '10086', null, null, null);

-- ----------------------------
-- Table structure for a_marketing_strategy_item
-- ----------------------------
DROP TABLE IF EXISTS `a_marketing_strategy_item`;
CREATE TABLE `a_marketing_strategy_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '方案名称',
  `description` varchar(2000) NOT NULL,
  `type` int(4) NOT NULL COMMENT '类型 ',
  `value` int(11) NOT NULL COMMENT '根据type值不同，填写不同的值。如：打折，填写1，表示为打1折；返现10，表示返现10元',
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE,
  KEY `isdeleted` (`isdeleted`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='营销策略项';

-- ----------------------------
-- Records of a_marketing_strategy_item
-- ----------------------------
INSERT INTO `a_marketing_strategy_item` VALUES ('1', '打9折', '打9折lalal 1', '1', '9', '1474084013', '0');
INSERT INTO `a_marketing_strategy_item` VALUES ('2', '打5折', '没有添加描述', '1', '5', '1474090865', '0');
INSERT INTO `a_marketing_strategy_item` VALUES ('3', '打3折', '没有添加描述', '1', '3', '1474099923', '0');
INSERT INTO `a_marketing_strategy_item` VALUES ('4', '打4折', '打4折啊啊啊策略项描述', '1', '4', '1474100176', '0');
INSERT INTO `a_marketing_strategy_item` VALUES ('5', '返现9元', '策略项描述 返现9元', '2', '9', '1474103636', '0');

-- ----------------------------
-- Table structure for a_marketing_strategy_relation
-- ----------------------------
DROP TABLE IF EXISTS `a_marketing_strategy_relation`;
CREATE TABLE `a_marketing_strategy_relation` (
  `strategyid` int(11) NOT NULL COMMENT '策略id',
  `itemid` int(11) NOT NULL COMMENT '策略项id',
  KEY `itemid` (`itemid`) USING BTREE,
  KEY `strategyid` (`strategyid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='营销策略关联表';

-- ----------------------------
-- Records of a_marketing_strategy_relation
-- ----------------------------
INSERT INTO `a_marketing_strategy_relation` VALUES ('11', '1');
INSERT INTO `a_marketing_strategy_relation` VALUES ('11', '2');
INSERT INTO `a_marketing_strategy_relation` VALUES ('12', '1');
INSERT INTO `a_marketing_strategy_relation` VALUES ('13', '1');
INSERT INTO `a_marketing_strategy_relation` VALUES ('13', '2');
INSERT INTO `a_marketing_strategy_relation` VALUES ('13', '3');
INSERT INTO `a_marketing_strategy_relation` VALUES ('13', '4');
INSERT INTO `a_marketing_strategy_relation` VALUES ('1', '1');

-- ----------------------------
-- Table structure for a_message
-- ----------------------------
DROP TABLE IF EXISTS `a_message`;
CREATE TABLE `a_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(32) DEFAULT NULL COMMENT '消息类型',
  `level` tinyint(4) DEFAULT '0' COMMENT '消息接收方IFA级别',
  `levelmatch` tinyint(4) DEFAULT '0' COMMENT '级别匹配方式0:=, 1:>, 2:>= , 3:<, 4:<= ',
  `content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `createtime` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0' COMMENT '0: 未发送，1：已发送',
  `sendtime` int(11) DEFAULT '0' COMMENT '发送时间',
  `isdelete` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='消息管理';

-- ----------------------------
-- Records of a_message
-- ----------------------------
INSERT INTO `a_message` VALUES ('1', null, '1', '0', '这是条发给级别为1的IFA的消息', '1474170072', '1', '1474170079', '0');
INSERT INTO `a_message` VALUES ('2', null, '2', '2', '这是发送给级别为2级及2级以上的消息', '1474170079', '2', null, '0');
INSERT INTO `a_message` VALUES ('3', null, '1', '4', '这是发送给级别为4级及4级以下的消息', '1474170099', '0', null, '0');
INSERT INTO `a_message` VALUES ('5', null, '1', '0', '时间过的真是快啊...', '1474253998', '0', '0', '0');
INSERT INTO `a_message` VALUES ('6', null, '2', '0', 'setInc和setDec方法支持延迟更新', '1474258246', '0', '0', '1');
INSERT INTO `a_message` VALUES ('7', null, '3', '0', '我们的祖国多么伟大！', '1474258395', '0', '0', '0');
INSERT INTO `a_message` VALUES ('8', null, '1', '0', '填写消息内容', '1474380352', '0', '0', '0');
INSERT INTO `a_message` VALUES ('9', null, '1', '2', '添加一条消息', '1474526733', '0', '0', '0');

-- ----------------------------
-- Table structure for a_message_email_queue
-- ----------------------------
DROP TABLE IF EXISTS `a_message_email_queue`;
CREATE TABLE `a_message_email_queue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `messageid` int(11) NOT NULL,
  `type` varchar(32) DEFAULT NULL COMMENT '消息类型: 1短信，2邮件',
  `level` tinyint(4) DEFAULT '0' COMMENT '消息接收方IFA级别',
  `levelmatch` tinyint(4) DEFAULT '0' COMMENT '级别匹配方式0:=, 1:>, 2:>= , 3:<, 4:<= ',
  `recievetype` tinyint(4) DEFAULT '0' COMMENT '接受方类型，0：IFA， 1：小c',
  `content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='消息管理';

-- ----------------------------
-- Records of a_message_email_queue
-- ----------------------------
INSERT INTO `a_message_email_queue` VALUES ('1', '0', null, '1', '0', null, '这是条发给级别为1的IFA的消息', '1474170072');
INSERT INTO `a_message_email_queue` VALUES ('2', '0', null, '2', '2', null, '这是发送给级别为2级及2级以上的消息', '1474170079');
INSERT INTO `a_message_email_queue` VALUES ('3', '0', null, '4', '4', null, '这是发送给级别为4级及4级以下的消息', '1474170099');
INSERT INTO `a_message_email_queue` VALUES ('5', '0', null, '3', '2', null, '时间过的真是快啊...', '1474253998');
INSERT INTO `a_message_email_queue` VALUES ('6', '0', null, '2', '0', null, 'setInc和setDec方法支持延迟更新', '1474258246');
INSERT INTO `a_message_email_queue` VALUES ('7', '0', null, '3', '0', null, '我们的祖国多么伟大！', '1474258395');

-- ----------------------------
-- Table structure for a_message_read
-- ----------------------------
DROP TABLE IF EXISTS `a_message_read`;
CREATE TABLE `a_message_read` (
  `messageid` int(11) NOT NULL,
  `buserid` int(11) NOT NULL,
  `createtime` int(11) DEFAULT NULL,
  KEY `createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息阅读记录表';

-- ----------------------------
-- Records of a_message_read
-- ----------------------------

-- ----------------------------
-- Table structure for a_news
-- ----------------------------
DROP TABLE IF EXISTS `a_news`;
CREATE TABLE `a_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL COMMENT '标题',
  `keyword` varchar(255) NOT NULL COMMENT '关键词',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `style` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0:普通文章 1:图片文章',
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `categoryid` int(11) NOT NULL,
  `weight` int(11) unsigned NOT NULL DEFAULT '0' COMMENT '越大越靠前',
  `publishtime` int(11) NOT NULL COMMENT '发布时间',
  `publishstatus` tinyint(4) DEFAULT NULL COMMENT '发布状态',
  `publisher` varchar(32) DEFAULT NULL COMMENT '发布人',
  `publisherid` int(11) DEFAULT NULL COMMENT '发布者id',
  PRIMARY KEY (`id`),
  KEY `catagoryid` (`categoryid`) USING BTREE,
  KEY `isdeleted` (`isdeleted`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=113 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of a_news
-- ----------------------------
INSERT INTO `a_news` VALUES ('112', '测试', '测试', '测试', '测试', '1', '1474944865', '1', '测试', '48', '123', '1474944865', '0', '', '0');
INSERT INTO `a_news` VALUES ('110', 'f倒萨', '范德萨', '反对撒反对撒', 'fdsa', '1', '1474858772', '0', 'fds放', '56', '2', '1474858772', '1', 'root', '1');
INSERT INTO `a_news` VALUES ('111', '反对撒法', 'fdsa ', '烦烦烦的撒', '范德萨', '1', '1474859316', '0', 'fds ', '57', '4', '1474859316', '0', '', '0');

-- ----------------------------
-- Table structure for a_news_attachement
-- ----------------------------
DROP TABLE IF EXISTS `a_news_attachement`;
CREATE TABLE `a_news_attachement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '附件名称',
  `type` int(4) NOT NULL COMMENT '类型 1:缩略图 2:普通新闻插图',
  `path` varchar(255) NOT NULL COMMENT '路径',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=158 DEFAULT CHARSET=utf8 COMMENT='新闻附件';

-- ----------------------------
-- Records of a_news_attachement
-- ----------------------------
INSERT INTO `a_news_attachement` VALUES ('150', '110', 'thumb_f倒萨', '1', '/Uploads/news/2016-09-26/57e88e0f5f337.jpg', '1474858772');
INSERT INTO `a_news_attachement` VALUES ('156', '111', '1474859390172645.jpg', '2', '/Uploads/ueditor/image/20160926/1474859390172645.jpg', '1474944657');
INSERT INTO `a_news_attachement` VALUES ('157', '111', 'thumb_反对撒法', '1', '/Uploads/news/2016-09-26/57e8913004f9c.jpg', '1474944657');

-- ----------------------------
-- Table structure for a_news_category
-- ----------------------------
DROP TABLE IF EXISTS `a_news_category`;
CREATE TABLE `a_news_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `pid` int(11) NOT NULL COMMENT '父栏目id',
  `level` smallint(3) NOT NULL DEFAULT '1' COMMENT '层级关系：1=>顶层,2=>第二层,类推',
  `code` varchar(255) DEFAULT NULL COMMENT '新闻编码分类',
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COMMENT='新闻分类表';

-- ----------------------------
-- Records of a_news_category
-- ----------------------------
INSERT INTO `a_news_category` VALUES ('48', '一层', '0', '1', 'yiceng', '1474612676', '0');
INSERT INTO `a_news_category` VALUES ('49', '二层1', '48', '2', 'erceng1', '1474612691', '0');
INSERT INTO `a_news_category` VALUES ('50', '二层2', '48', '2', 'erceng2', '1474612706', '0');
INSERT INTO `a_news_category` VALUES ('51', '三层1', '49', '3', 'sanceng1', '1474612719', '0');
INSERT INTO `a_news_category` VALUES ('52', '三层2', '50', '3', 'sanceng2', '1474612731', '0');
INSERT INTO `a_news_category` VALUES ('53', '一层2', '0', '1', 'yiceng2', '1474612750', '0');
INSERT INTO `a_news_category` VALUES ('54', '二层3', '53', '2', 'erceng3', '1474612766', '0');
INSERT INTO `a_news_category` VALUES ('55', '一层3', '0', '1', 'yiceng3', '1474615052', '0');
INSERT INTO `a_news_category` VALUES ('56', '四层1', '51', '4', 'siceng1', '1474711913', '0');
INSERT INTO `a_news_category` VALUES ('57', '四层2', '51', '4', 'siceng2', '1474712112', '0');
INSERT INTO `a_news_category` VALUES ('58', '四层3', '52', '4', 'siceng3', '1474712133', '0');
INSERT INTO `a_news_category` VALUES ('59', '一层4', '0', '1', 'yiceng4', '1474712225', '0');
INSERT INTO `a_news_category` VALUES ('61', '二层三', '48', '2', 'ss', '1475823262', '0');

-- ----------------------------
-- Table structure for a_news_content
-- ----------------------------
DROP TABLE IF EXISTS `a_news_content`;
CREATE TABLE `a_news_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsid` int(11) NOT NULL,
  `content` text NOT NULL COMMENT '新闻内容',
  PRIMARY KEY (`id`),
  KEY `newsid` (`newsid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='新闻内容表';

-- ----------------------------
-- Records of a_news_content
-- ----------------------------
INSERT INTO `a_news_content` VALUES ('77', '110', '&lt;p&gt;范德萨&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('76', '109', '&lt;p&gt;FDSAFDSA&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('79', '112', '&lt;p&gt;测试&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('78', '111', '&lt;p&gt;范德萨&lt;/p&gt;&lt;p&gt;&lt;img src=&quot;/Uploads/ueditor/image/20160926/1474859390172645.jpg&quot; title=&quot;1474859390172645.jpg&quot; alt=&quot;Koala.jpg&quot;/&gt;&lt;/p&gt;');

-- ----------------------------
-- Table structure for a_node
-- ----------------------------
DROP TABLE IF EXISTS `a_node`;
CREATE TABLE `a_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=235 DEFAULT CHARSET=utf8 COMMENT='功能节点表';

-- ----------------------------
-- Records of a_node
-- ----------------------------
INSERT INTO `a_node` VALUES ('210', 'edit', '编辑动作', '1', '', '6', '13', '3');
INSERT INTO `a_node` VALUES ('3', 'Product', '产品管理', '1', null, '2', '1', '1');
INSERT INTO `a_node` VALUES ('4', 'Train', '培训管理', '1', null, '3', '1', '1');
INSERT INTO `a_node` VALUES ('5', 'Crm', 'CRM管理', '1', null, '4', '1', '1');
INSERT INTO `a_node` VALUES ('6', 'Trans', '交易管理', '1', null, '5', '1', '1');
INSERT INTO `a_node` VALUES ('7', 'Admin', '用户中心', '1', null, '6', '1', '1');
INSERT INTO `a_node` VALUES ('8', 'News', '新闻管理', '1', null, '7', '1', '1');
INSERT INTO `a_node` VALUES ('9', 'BAgent', '会员管理', '1', null, '1', '5', '2');
INSERT INTO `a_node` VALUES ('10', 'Customer', '客户管理', '1', null, '2', '5', '2');
INSERT INTO `a_node` VALUES ('11', 'Service', '服务管理', '1', null, '3', '5', '2');
INSERT INTO `a_node` VALUES ('12', 'Active', '活动管理', '1', null, '4', '5', '2');
INSERT INTO `a_node` VALUES ('13', 'SalesStrategy', '营销策略配置', '1', null, '5', '5', '2');
INSERT INTO `a_node` VALUES ('14', 'User', '用户管理', '1', null, '1', '7', '2');
INSERT INTO `a_node` VALUES ('15', 'Role', '角色管理', '1', null, '2', '7', '2');
INSERT INTO `a_node` VALUES ('16', 'Message', '消息中心', '1', null, '3', '7', '2');
INSERT INTO `a_node` VALUES ('17', 'Feedback', '意见反馈', '1', null, '4', '7', '2');
INSERT INTO `a_node` VALUES ('18', 'index', '消息列表', '1', null, '1', '16', '3');
INSERT INTO `a_node` VALUES ('19', 'addPage', '添加消息', '1', null, '2', '16', '3');
INSERT INTO `a_node` VALUES ('20', 'add', '保存添加消息', '1', null, '3', '16', '3');
INSERT INTO `a_node` VALUES ('21', 'editPage', '修改消息', '1', null, '4', '16', '3');
INSERT INTO `a_node` VALUES ('22', 'edit', '保存修改消息', '1', null, '5', '16', '3');
INSERT INTO `a_node` VALUES ('23', 'send', '发送消息', '1', null, '6', '16', '3');
INSERT INTO `a_node` VALUES ('25', 'index', '客户列表', '1', null, '1', '14', '3');
INSERT INTO `a_node` VALUES ('211', 'delete', '删除动作', '1', '', '7', '13', '3');
INSERT INTO `a_node` VALUES ('1', 'System', '蜂巢系统管理后台', '1', null, '1', '0', '0');
INSERT INTO `a_node` VALUES ('144', 'Newscat', '新闻栏目', '1', null, '1', '8', '2');
INSERT INTO `a_node` VALUES ('145', 'Newscon', '新闻内容', '1', null, '2', '8', '2');
INSERT INTO `a_node` VALUES ('146', 'index', '新闻栏目列表', '1', null, '1', '144', '3');
INSERT INTO `a_node` VALUES ('147', 'addPage', '添加新闻栏目', '1', null, '2', '144', '3');
INSERT INTO `a_node` VALUES ('148', 'add', '保存添加新闻栏目', '1', null, '3', '144', '3');
INSERT INTO `a_node` VALUES ('149', 'editPage', '编辑新闻栏目', '1', null, '4', '144', '3');
INSERT INTO `a_node` VALUES ('150', 'edit', '保存编辑新闻栏目', '1', null, '5', '144', '3');
INSERT INTO `a_node` VALUES ('151', 'delete', '删除新闻栏目', '1', null, '6', '144', '3');
INSERT INTO `a_node` VALUES ('152', 'index', '意见反馈列表', '1', null, '1', '17', '3');
INSERT INTO `a_node` VALUES ('153', 'handle', '处理意见反馈', '1', null, '2', '17', '3');
INSERT INTO `a_node` VALUES ('154', 'search', '搜索意见反馈', '1', null, '3', '17', '3');
INSERT INTO `a_node` VALUES ('155', 'reply', '回复意见反馈', '1', null, '4', '17', '3');
INSERT INTO `a_node` VALUES ('156', 'index', '角色列表', '1', null, '1', '15', '3');
INSERT INTO `a_node` VALUES ('157', 'addPage', '添加角色页', '1', null, '2', '15', '3');
INSERT INTO `a_node` VALUES ('158', 'add', '添加角色', '1', null, '3', '15', '3');
INSERT INTO `a_node` VALUES ('159', 'editPage', '编辑角色页', '1', null, '4', '15', '3');
INSERT INTO `a_node` VALUES ('160', 'edit', '保存编辑角色', '1', null, '5', '15', '3');
INSERT INTO `a_node` VALUES ('161', 'enable', '启用角色', '1', null, '6', '15', '3');
INSERT INTO `a_node` VALUES ('162', 'disable', '禁用角色', '1', null, '7', '15', '3');
INSERT INTO `a_node` VALUES ('163', 'Access', '权限管理', '1', null, '5', '7', '2');
INSERT INTO `a_node` VALUES ('164', 'allotNodePage', '分配角色权限页', '1', null, '1', '163', '3');
INSERT INTO `a_node` VALUES ('165', 'allotNode', '分配角色权限', '1', null, '2', '163', '3');
INSERT INTO `a_node` VALUES ('166', 'index', '系统用户列表', '1', null, '1', '14', '3');
INSERT INTO `a_node` VALUES ('167', 'addPage', '添加用户页', '1', null, '2', '14', '3');
INSERT INTO `a_node` VALUES ('168', 'add', '添加用户', '1', null, '3', '14', '3');
INSERT INTO `a_node` VALUES ('169', 'editPage', '修改用户页', '1', null, '4', '14', '3');
INSERT INTO `a_node` VALUES ('170', 'edit', '修改用户', '1', null, '5', '14', '3');
INSERT INTO `a_node` VALUES ('171', 'enable', '启用用户', '1', null, '6', '14', '3');
INSERT INTO `a_node` VALUES ('172', 'temporaryDisable', '临时禁用用户', '1', null, '7', '14', '3');
INSERT INTO `a_node` VALUES ('173', 'disable', '禁用用户', '1', null, '8', '14', '3');
INSERT INTO `a_node` VALUES ('175', 'Sales', '营销策略项管理', '1', null, '6', '5', '2');
INSERT INTO `a_node` VALUES ('176', 'index', '查看列表', '1', null, '1', '9', '3');
INSERT INTO `a_node` VALUES ('177', 'addPage', '添加会员页面', '1', null, '2', '9', '3');
INSERT INTO `a_node` VALUES ('178', 'add', '添加会员动作', '1', null, '3', '9', '3');
INSERT INTO `a_node` VALUES ('179', 'userDetail', '查看用户详情', '1', null, '4', '9', '3');
INSERT INTO `a_node` VALUES ('180', 'review', 'IFA审核页面', '1', null, '5', '9', '3');
INSERT INTO `a_node` VALUES ('181', 'edit', '修改IFA信息动作', '1', null, '6', '9', '3');
INSERT INTO `a_node` VALUES ('182', 'reviewPass', '审核通过', '1', null, '7', '9', '3');
INSERT INTO `a_node` VALUES ('183', 'reviewNotPass', '审核不通过', '1', null, '8', '9', '3');
INSERT INTO `a_node` VALUES ('184', 'freeze', '冻结用户', '1', null, '9', '9', '3');
INSERT INTO `a_node` VALUES ('185', 'unFreeze', '解冻用户', '1', null, '10', '9', '3');
INSERT INTO `a_node` VALUES ('186', 'inviteUser', '邀请用户注册界面', '1', null, '11', '9', '3');
INSERT INTO `a_node` VALUES ('187', 'doInvite', '邀请用户动作', '1', null, '12', '9', '3');
INSERT INTO `a_node` VALUES ('188', 'index', '查看列表', '1', null, '1', '10', '3');
INSERT INTO `a_node` VALUES ('189', 'addPage', '添加客户页面', '1', null, '2', '10', '3');
INSERT INTO `a_node` VALUES ('190', 'add', '添加客户动作', '1', null, '3', '10', '3');
INSERT INTO `a_node` VALUES ('191', 'userDetail', '查看客户详情', '1', null, '4', '10', '3');
INSERT INTO `a_node` VALUES ('192', 'review', '客户审核页面', '1', null, '5', '10', '3');
INSERT INTO `a_node` VALUES ('193', 'edit', '修改客户信息动作', '1', null, '6', '10', '3');
INSERT INTO `a_node` VALUES ('194', 'reviewPass', '审核通过', '1', null, '7', '10', '3');
INSERT INTO `a_node` VALUES ('195', 'reviewNotPass', '审核不通过', '1', null, '8', '10', '3');
INSERT INTO `a_node` VALUES ('196', 'freeze', '冻结客户', '1', null, '9', '10', '3');
INSERT INTO `a_node` VALUES ('197', 'unFreeze', '解冻客户', '1', null, '10', '10', '3');
INSERT INTO `a_node` VALUES ('198', 'index', '策略项列表', '1', null, '1', '175', '3');
INSERT INTO `a_node` VALUES ('199', 'showPage', '查看详情', '1', '', '2', '175', '3');
INSERT INTO `a_node` VALUES ('200', 'addPage', '添加页面', '1', '', '3', '175', '3');
INSERT INTO `a_node` VALUES ('201', 'add', '添加动作', '1', '', '4', '175', '3');
INSERT INTO `a_node` VALUES ('202', 'editPage', '编辑页面', '1', '', '5', '175', '3');
INSERT INTO `a_node` VALUES ('203', 'edit', '编辑动作', '1', null, '6', '175', '3');
INSERT INTO `a_node` VALUES ('204', 'delete', '删除动作', '1', null, '7', '175', '3');
INSERT INTO `a_node` VALUES ('205', 'index', '策略项列表', '1', '', '1', '13', '3');
INSERT INTO `a_node` VALUES ('206', 'showPage', '查看详情', '1', '', '2', '13', '3');
INSERT INTO `a_node` VALUES ('207', 'addPage', '添加页面', '1', '', '3', '13', '3');
INSERT INTO `a_node` VALUES ('208', 'add', '添加动作', '1', '', '4', '13', '3');
INSERT INTO `a_node` VALUES ('209', 'editPage', '编辑页面', '1', '', '5', '13', '3');
INSERT INTO `a_node` VALUES ('2', 'Workbench', '控制台', '1', null, '1', '1', '1');
INSERT INTO `a_node` VALUES ('212', 'Index', '控制台', '1', null, '1', '2', '2');
INSERT INTO `a_node` VALUES ('213', 'index', '控制台页', '1', null, '2', '212', '3');
INSERT INTO `a_node` VALUES ('214', 'dashboard', '控制台展示', '1', null, '3', '212', '3');
INSERT INTO `a_node` VALUES ('215', 'replyPage', '意见反馈回复页', '1', null, '5', '17', '3');
INSERT INTO `a_node` VALUES ('216', 'Product', '产品发布', '1', null, '1', '3', '2');
INSERT INTO `a_node` VALUES ('217', 'index', '产品列表', '1', null, '1', '216', '3');
INSERT INTO `a_node` VALUES ('218', 'Order', '订单中心', '1', null, '1', '6', '2');
INSERT INTO `a_node` VALUES ('219', 'index', '订单列表', '1', null, '1', '218', '3');
INSERT INTO `a_node` VALUES ('220', 'search', '订单搜索', '1', null, '2', '218', '3');
INSERT INTO `a_node` VALUES ('221', 'view', '订单详情', '1', null, '3', '218', '3');
INSERT INTO `a_node` VALUES ('222', 'editPage', '产品编辑', '1', null, '2', '216', '3');
INSERT INTO `a_node` VALUES ('223', 'addPage', '添加产品页面', '1', null, '3', '216', '3');
INSERT INTO `a_node` VALUES ('224', 'add', '添加产品动作', '1', null, '4', '216', '3');
INSERT INTO `a_node` VALUES ('225', 'Catagroy', '分类管理', '1', null, '1', '3', '2');
INSERT INTO `a_node` VALUES ('226', 'getBList', '获取产品二级列表', '1', null, '1', '225', '3');
INSERT INTO `a_node` VALUES ('227', 'getCList', '获取产品三级列表', '1', null, '2', '225', '3');
INSERT INTO `a_node` VALUES ('228', 'publish', '产品上架', '1', null, '5', '216', '3');
INSERT INTO `a_node` VALUES ('229', 'unPublish', '产品下架', '1', null, '6', '216', '3');
INSERT INTO `a_node` VALUES ('230', 'edit', '产品编辑动作', '1', null, '7', '216', '3');
INSERT INTO `a_node` VALUES ('231', 'productInfoDisclosurePage', '产品披露页面', '1', null, '8', '216', '3');
INSERT INTO `a_node` VALUES ('232', 'addDisclosureInfo', '添加产品披露信息', '1', null, '9', '216', '3');
INSERT INTO `a_node` VALUES ('233', 'addFile', '添加产品附件', '1', null, '10', '216', '3');
INSERT INTO `a_node` VALUES ('234', 'deletedDisclosureInfo', '删除产品披露信息', '1', null, '11', '216', '3');

-- ----------------------------
-- Table structure for a_product
-- ----------------------------
DROP TABLE IF EXISTS `a_product`;
CREATE TABLE `a_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productno` varchar(32) DEFAULT NULL COMMENT '产品编号',
  `name` varchar(300) DEFAULT NULL COMMENT '产品名称',
  `catagroyida` tinyint(4) DEFAULT NULL COMMENT '类型id',
  `catagroyidb` tinyint(4) DEFAULT NULL,
  `catagroyidc` tinyint(4) DEFAULT NULL,
  `tradingstructure` varchar(300) DEFAULT NULL COMMENT '交易结构',
  `productscale` float(13,2) DEFAULT NULL COMMENT '产品规模',
  `productform` varchar(300) DEFAULT NULL COMMENT '产品形态',
  `publisher` varchar(90) DEFAULT NULL COMMENT '发行人',
  `custodian` varchar(90) DEFAULT NULL COMMENT '托管人',
  `issuesize` float(13,2) DEFAULT NULL COMMENT '发行规模',
  `minimuminvestmentamount` float(13,2) DEFAULT NULL COMMENT '最低投资额',
  `increasingunit` float(13,2) DEFAULT NULL COMMENT '递增单位',
  `producttermmonth` int(11) DEFAULT NULL COMMENT '产品期限 月',
  `producttermday` int(2) DEFAULT NULL COMMENT '产品期限 日',
  `ror` float(7,4) DEFAULT NULL COMMENT '预期收益率 实际10.40% 保存0.1040',
  `distributionmethod` varchar(300) DEFAULT NULL COMMENT '收益分配方式',
  `tradingrivals` varchar(1500) DEFAULT NULL COMMENT '交易对手',
  `investmenttargets` varchar(1500) DEFAULT NULL COMMENT '投资标的',
  `assetguarantee` varchar(1500) DEFAULT NULL COMMENT '资产保证',
  `contractquantity` int(4) DEFAULT NULL COMMENT '合同数量',
  `establishedconditions` varchar(300) DEFAULT NULL COMMENT '成立条件',
  `establishmentscale` float(13,2) DEFAULT NULL COMMENT '成立规模',
  `note` varchar(1500) DEFAULT NULL COMMENT '备注信息',
  `riskrating` tinyint(4) DEFAULT NULL COMMENT '风险评级',
  `commissionratio` float(7,4) DEFAULT NULL COMMENT '佣金比例',
  `saleslevel` tinyint(4) DEFAULT NULL COMMENT '销售等级',
  `producttype` tinyint(4) DEFAULT NULL COMMENT '产品类型（公募私募）',
  `type` tinyint(4) DEFAULT NULL COMMENT '产品状态 0 编辑   1 上架',
  `qualifiedinvestors` tinyint(4) DEFAULT NULL COMMENT '是否合格投资人仅见',
  `overseasinvestors` tinyint(4) DEFAULT NULL COMMENT '是否适应海外投资人',
  `closedperiodmonth` int(11) DEFAULT NULL COMMENT '封闭期 月',
  `closedperiodday` int(11) DEFAULT NULL COMMENT '封闭期 日',
  `investmentteam` varchar(1500) DEFAULT NULL COMMENT '投资团队',
  `investmentstrategy` varchar(1500) DEFAULT NULL COMMENT '投资策略',
  `investmentprocess` varchar(1500) DEFAULT NULL COMMENT '投资流程',
  `investmentperformance` varchar(1500) DEFAULT NULL COMMENT '投资业绩',
  `subscriptionfee` float(7,4) DEFAULT NULL COMMENT '认购费',
  `managementexpense` float(7,4) DEFAULT NULL COMMENT '管理费',
  `redemptionfee` float(7,4) DEFAULT NULL COMMENT '赎回费',
  `performancereward` float(7,4) DEFAULT NULL COMMENT '业绩报酬',
  `onlinedate` int(11) DEFAULT NULL COMMENT '上线日期',
  `establishmentday` int(11) DEFAULT NULL COMMENT '成立日',
  `openday` int(11) DEFAULT NULL COMMENT '开放日',
  `duedate` int(11) DEFAULT NULL COMMENT '到期日',
  `terminationday` int(11) DEFAULT NULL COMMENT '终止日',
  `abletobuy` tinyint(4) DEFAULT NULL COMMENT '是否可以申购',
  `share` mediumint(9) DEFAULT NULL COMMENT '份额',
  `networth` float(10,3) DEFAULT NULL COMMENT '净值',
  `abletoredeem` tinyint(4) DEFAULT NULL COMMENT '能够赎回',
  `createuser` varchar(32) DEFAULT NULL COMMENT '创建者',
  `createuserid` int(11) DEFAULT NULL COMMENT '创建者id',
  `createtime` int(11) NOT NULL,
  `abletotransfer` int(1) DEFAULT NULL COMMENT '是否允许转让',
  `minitransfershare` int(11) DEFAULT NULL COMMENT '最低转让份数',
  `minitransfershareunit` int(11) DEFAULT NULL COMMENT '转让额最小递增单位',
  `productstatus` int(11) DEFAULT '0' COMMENT '产品状态 0 编辑状态  1 产品上架状态   2 产品下架状态',
  PRIMARY KEY (`id`),
  KEY `id` (`catagroyida`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of a_product
-- ----------------------------
INSERT INTO `a_product` VALUES ('1', 'CP001', '吃土', '1', '2', '3', '交易结构文本', '10000000.00', '产品形态文本', '发行人', '托管人', '10000000.00', '100000.00', '100000.00', '3', '15', '0.1011', '收益分配方式文本', '交易对手文本', '投资标的文本', '资产保证文本', '100', '成立条件文本', '10000000.00', '备注信息文本', '2', '0.0200', '2', '1', '1', '1', '0', '2', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1500000000', null, null, null, '0');
INSERT INTO `a_product` VALUES ('2', 'CP002', '中海可转换债券债券型证券投资基金A类份额', '1', '3', '16', '即方正证券收益凭证系列产品，是指我司通过中证报价系统或者OTC柜台市场发行的、约定本金和收益的偿付与特定标的挂钩的有价证券（特定标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货', '11111112704.00', '即方正证券收益凭证系列产品，是指我司通过中证报价系统或者OTC柜台市场发行的、约定本金和收益的偿付与特定标的挂钩的有价证券（特定标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货', '张三', '哈哈', '11111222.00', '11111111.00', '220.00', '14', '0', '0.1300', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '20', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '10000.00', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '10', '0.3300', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '2016', '2016', '0', '2016', '2016', '1', null, null, '1', null, null, '1474964484', null, null, null, '1');
INSERT INTO `a_product` VALUES ('3', 'CP003', '易方达天天理财货币A', '2', '6', '19', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1474964544', null, null, null, '2');
INSERT INTO `a_product` VALUES ('4', 'CP004', 'A股上市企业存货质押融资项目', '2', '2', '22', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1475044982', null, null, null, '1');

-- ----------------------------
-- Table structure for a_product_catagroy_a
-- ----------------------------
DROP TABLE IF EXISTS `a_product_catagroy_a`;
CREATE TABLE `a_product_catagroy_a` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  `description` text COMMENT '说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `catagroyid` (`id`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='产品类别 一级';

-- ----------------------------
-- Records of a_product_catagroy_a
-- ----------------------------
INSERT INTO `a_product_catagroy_a` VALUES ('1', '固定收益', null, null, null);
INSERT INTO `a_product_catagroy_a` VALUES ('2', '浮动收益', null, null, null);
INSERT INTO `a_product_catagroy_a` VALUES ('3', '固定/保本+浮动收益', null, null, null);

-- ----------------------------
-- Table structure for a_product_catagroy_b
-- ----------------------------
DROP TABLE IF EXISTS `a_product_catagroy_b`;
CREATE TABLE `a_product_catagroy_b` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  `description` text COMMENT '说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `catagroyid` (`id`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='产品类别 二级';

-- ----------------------------
-- Records of a_product_catagroy_b
-- ----------------------------
INSERT INTO `a_product_catagroy_b` VALUES ('1', '房地产', null, null, null);
INSERT INTO `a_product_catagroy_b` VALUES ('2', '二级市场', null, null, null);
INSERT INTO `a_product_catagroy_b` VALUES ('3', '地方政府', null, null, null);
INSERT INTO `a_product_catagroy_b` VALUES ('4', '金融市场', null, null, null);
INSERT INTO `a_product_catagroy_b` VALUES ('5', '工商企业', null, null, null);
INSERT INTO `a_product_catagroy_b` VALUES ('6', '股权投资', null, null, null);

-- ----------------------------
-- Table structure for a_product_catagroy_c
-- ----------------------------
DROP TABLE IF EXISTS `a_product_catagroy_c`;
CREATE TABLE `a_product_catagroy_c` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  `description` text COMMENT '说明',
  PRIMARY KEY (`id`),
  UNIQUE KEY `catagroyid` (`id`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COMMENT='产品类别 三级';

-- ----------------------------
-- Records of a_product_catagroy_c
-- ----------------------------
INSERT INTO `a_product_catagroy_c` VALUES ('10', '债权', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('11', '优先股', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('12', '混合融资', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('13', '股票质押', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('14', '证券结构化', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('15', '省级政府', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('16', '地级政府', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('17', '县级政府', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('18', '资金池', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('19', '种子期投资', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('20', '成长期投资', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('21', '上市期投资', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('22', '新股申购', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('23', '定向增发', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('24', '大宗交易', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('25', '阳光私募', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('26', '指定项目', null, null, null);
INSERT INTO `a_product_catagroy_c` VALUES ('27', '不定向', null, null, null);

-- ----------------------------
-- Table structure for a_product_catagroy_relation_ab
-- ----------------------------
DROP TABLE IF EXISTS `a_product_catagroy_relation_ab`;
CREATE TABLE `a_product_catagroy_relation_ab` (
  `a_id` int(11) DEFAULT NULL,
  `b_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='一级二级分类对应表';

-- ----------------------------
-- Records of a_product_catagroy_relation_ab
-- ----------------------------
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('1', '1');
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('1', '2');
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('1', '3');
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('1', '4');
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('1', '5');
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('2', '6');
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('2', '1');
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('2', '2');
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('3', '2');
INSERT INTO `a_product_catagroy_relation_ab` VALUES ('3', '6');

-- ----------------------------
-- Table structure for a_product_catagroy_relation_bc
-- ----------------------------
DROP TABLE IF EXISTS `a_product_catagroy_relation_bc`;
CREATE TABLE `a_product_catagroy_relation_bc` (
  `b_id` int(11) DEFAULT NULL,
  `c_id` int(11) DEFAULT NULL,
  `a_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='二级三级分类对应表';

-- ----------------------------
-- Records of a_product_catagroy_relation_bc
-- ----------------------------
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('1', '10', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('1', '11', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('1', '12', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('2', '13', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('2', '14', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('3', '15', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('3', '16', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('3', '17', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('4', '18', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('5', '10', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('5', '11', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('5', '12', '1');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('6', '19', '2');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('6', '20', '2');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('6', '21', '2');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('2', '22', '2');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('2', '23', '2');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('2', '24', '2');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('2', '25', '2');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('1', '26', '2');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('1', '27', '2');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('2', '22', '3');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('2', '23', '3');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('2', '25', '3');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('6', '19', '3');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('6', '20', '3');
INSERT INTO `a_product_catagroy_relation_bc` VALUES ('6', '21', '3');

-- ----------------------------
-- Table structure for a_product_contract
-- ----------------------------
DROP TABLE IF EXISTS `a_product_contract`;
CREATE TABLE `a_product_contract` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productid` int(11) DEFAULT NULL,
  `contractcontent` text COMMENT '合同内容',
  `createtime` int(11) DEFAULT NULL,
  `createuser` varchar(32) DEFAULT NULL,
  `createid` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `updateuser` varchar(32) DEFAULT NULL,
  `updateid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品合同表';

-- ----------------------------
-- Records of a_product_contract
-- ----------------------------

-- ----------------------------
-- Table structure for a_product_disclosure
-- ----------------------------
DROP TABLE IF EXISTS `a_product_disclosure`;
CREATE TABLE `a_product_disclosure` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productid` int(11) NOT NULL,
  `name` varchar(32) NOT NULL DEFAULT '' COMMENT '文件名',
  `path` varchar(255) NOT NULL COMMENT '产品路径',
  `createtime` int(11) NOT NULL,
  `isdeleted` int(4) NOT NULL DEFAULT '0' COMMENT '是否删除',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='产品信息披露记录表';

-- ----------------------------
-- Records of a_product_disclosure
-- ----------------------------
INSERT INTO `a_product_disclosure` VALUES ('1', '2', '图片 (线上.png)', '/Uploads/disclosure/2016-09-29/57ecba9f8dc25.png', '1475132072', '1');
INSERT INTO `a_product_disclosure` VALUES ('2', '2', '(问题清单20160926.xls)', '/Uploads/disclosure/2016-09-29/57ecbd9a4dcd8.xls', '1475132841', '0');
INSERT INTO `a_product_disclosure` VALUES ('3', '3', '(进度计划表.xls)', '/Uploads/disclosure/2016-09-30/57ee046e18f21.xls', '1475216503', '0');

-- ----------------------------
-- Table structure for a_product_networth
-- ----------------------------
DROP TABLE IF EXISTS `a_product_networth`;
CREATE TABLE `a_product_networth` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `datetime` date NOT NULL COMMENT '净值日期',
  `networth` float(11,4) unsigned NOT NULL,
  `createuser` varchar(32) NOT NULL COMMENT '创建人名称',
  `createuserid` int(11) NOT NULL COMMENT '创建人id',
  `createtime` int(11) NOT NULL COMMENT '创建时间',
  `updateuser` varchar(32) DEFAULT NULL COMMENT '修改人名称',
  `updateuserid` int(11) DEFAULT NULL COMMENT '修改人id',
  `updatetime` int(11) DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品净值表';

-- ----------------------------
-- Records of a_product_networth
-- ----------------------------
INSERT INTO `a_product_networth` VALUES ('1', '4', '2016-10-06', '1.0006', 'zhangsan', '1', '1', '我就是管理员', '1', '1475823600');
INSERT INTO `a_product_networth` VALUES ('2', '4', '2016-10-07', '0.9000', 'zhangsan', '1', '1', '我就是管理员', '1', '1475823886');
INSERT INTO `a_product_networth` VALUES ('3', '4', '2016-10-08', '1.2000', 'zhangsan', '1', '1', '我就是管理员', '1', '1475823903');

-- ----------------------------
-- Table structure for a_product_recommend
-- ----------------------------
DROP TABLE IF EXISTS `a_product_recommend`;
CREATE TABLE `a_product_recommend` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `bagentid` int(11) NOT NULL COMMENT '代理商id',
  `buserid` int(11) NOT NULL COMMENT '反馈用户的id',
  `createtime` int(11) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `auserid` int(11) DEFAULT NULL COMMENT '接收反馈确认信息的平台用户id',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品推荐表';

-- ----------------------------
-- Records of a_product_recommend
-- ----------------------------

-- ----------------------------
-- Table structure for a_role
-- ----------------------------
DROP TABLE IF EXISTS `a_role`;
CREATE TABLE `a_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='平台管理员角色表';

-- ----------------------------
-- Records of a_role
-- ----------------------------
INSERT INTO `a_role` VALUES ('1', '超级管理员', '0', '0', '1', '超级用户, 拥有全部权限');
INSERT INTO `a_role` VALUES ('18', '产品部', '1', '1', '1', '产品部: 负责平台金融产品的创建，修改，披露，上架等');
INSERT INTO `a_role` VALUES ('19', '市场部', '1', '1', '1', '负责峰萌产品的市场调研，销售决策制定等');
INSERT INTO `a_role` VALUES ('20', '公关部', '1', '1', '1', '公关部：负责公司对外宣传，新闻制定等');
INSERT INTO `a_role` VALUES ('21', '培训部', '1', '1', '1', '培训部： 负责公司业务与产品等相关知识培训');
INSERT INTO `a_role` VALUES ('22', '客户服务部', '1', '1', '1', '客户服务部：CRM系统管理');
INSERT INTO `a_role` VALUES ('23', '客服组A', '22', '2', '1', '客服组A: 负责意见反馈处理');
INSERT INTO `a_role` VALUES ('24', '客服组B', '22', '2', '1', '客服组B: 消息中心消息制定发送');
INSERT INTO `a_role` VALUES ('25', '企划组', '20', '2', '1', '企划组：负责企业企划');
INSERT INTO `a_role` VALUES ('26', '新闻组', '20', '2', '1', '新闻组：负责企业新闻制定，发布');
INSERT INTO `a_role` VALUES ('27', '培训A', '21', '2', '1', '培训A权限');
INSERT INTO `a_role` VALUES ('28', '培训B', '21', '2', '1', '培训');

-- ----------------------------
-- Table structure for a_role_user
-- ----------------------------
DROP TABLE IF EXISTS `a_role_user`;
CREATE TABLE `a_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  `type` int(4) DEFAULT NULL COMMENT '平台划分  1：大B   2:IFA',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台角色用户关联表';

-- ----------------------------
-- Records of a_role_user
-- ----------------------------
INSERT INTO `a_role_user` VALUES ('1', '1', null);
INSERT INTO `a_role_user` VALUES ('27', '18', null);
INSERT INTO `a_role_user` VALUES ('28', '18', null);
INSERT INTO `a_role_user` VALUES ('1', '19', null);
INSERT INTO `a_role_user` VALUES ('1', '20', null);
INSERT INTO `a_role_user` VALUES ('1', '21', null);
INSERT INTO `a_role_user` VALUES ('1', '22', null);

-- ----------------------------
-- Table structure for a_thirdpart
-- ----------------------------
DROP TABLE IF EXISTS `a_thirdpart`;
CREATE TABLE `a_thirdpart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL,
  `description` text COMMENT '说明',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `thirdpartid` (`id`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方';

-- ----------------------------
-- Records of a_thirdpart
-- ----------------------------

-- ----------------------------
-- Table structure for a_thirdpart_param
-- ----------------------------
DROP TABLE IF EXISTS `a_thirdpart_param`;
CREATE TABLE `a_thirdpart_param` (
  `id` int(11) NOT NULL,
  `thirdpartid` int(11) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='第三方参数';

-- ----------------------------
-- Records of a_thirdpart_param
-- ----------------------------

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
  `ipaddr` varchar(255) DEFAULT NULL COMMENT '上次登陆ip',
  `lastlogintime` int(11) DEFAULT NULL COMMENT '上次登陆时间',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `isdeleted` tinyint(255) DEFAULT '0' COMMENT '是否删除',
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
  `status` tinyint(4) DEFAULT '1' COMMENT '1: 正常使用 2: 临时禁用 3:禁用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`id`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_user
-- ----------------------------
INSERT INTO `a_user` VALUES ('1', 'FM00010001', '我就是管理员', 'admin@fm.com', '18801621638', 'ad626a07765d44476c9040c7b39c4937', '140321111111111111', '1483434334', '116.231.71.35', '1475823504', '1', '0', null, '4', '4', null, null, null, '1536854400', '大公司A', '产品部', '总监', '', '1453434335', '1');
INSERT INTO `a_user` VALUES ('2', 'FM00010002', 'chery', 'chery@fm.com', '18930948590', 'ad626a07765d44476c9040c7b39c4937', '140321111111111112', '1483434334', '145.54.43.123', '1483434334', '2', '0', null, '4', '6', null, null, null, '1493434334', '小公司B', '运营部', '副总监', null, '1453434335', '1');
INSERT INTO `a_user` VALUES ('3', 'FM00010003', 'haha', 'haha@chery.com', '17878276374', 'ad626a07765d44476c9040c7b39c4937', '140321111111111113', '1483434335', '145.54.43.123', '1483434336', null, '1', null, '4', '6', null, null, null, '1493434335', '', '运营部', '助手', null, '1453434335', '2');
INSERT INTO `a_user` VALUES ('5', 'FM00100101', 'chery8907', '576078325@qq.com', '13234334446', null, null, null, null, null, null, '0', null, null, null, null, null, null, '2736000', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('6', '10000111', 'FM1111111', '783@qq.com', '18939840579', null, null, null, null, null, null, '1', null, null, null, null, null, null, '1483372800', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('7', '10004', 'chenyt', 'yingting.chen@intelpure.com', '13918001270', null, null, null, null, null, null, '0', null, null, null, null, null, null, '1485964800', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('8', '279115', 'chenyingting', '277797552@qq.com', '13918001270', null, null, null, null, null, null, '0', null, null, null, null, null, null, '0', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('16', 'NB001', '牛逼货', '90@intelpure.com', '110110110', null, null, null, null, null, null, '0', null, null, null, null, null, null, '0', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('17', 'KJ333', '流创', 'asdasd@qq.com', '18885888888', null, null, null, null, null, null, '0', null, null, null, null, null, null, '9', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('18', 'asdasd', 'chery8907', 'asd@qq.com', '4545', null, null, null, null, null, null, '0', null, null, null, null, null, null, '1506787200', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('19', '0000', '赵佳乐', 'franky.zhao@intelpure.com', '15502173369', 'ad626a07765d44476c9040c7b39c4937', null, null, '116.231.71.35', '1475804914', null, '0', null, null, null, null, null, null, '1506787200', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('20', '0000', 'ronnie', 'ronnie.pan@v-times.info', '18016032202', 'ad626a07765d44476c9040c7b39c4937', null, null, null, null, null, '0', null, null, null, null, null, null, '1506700800', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('21', 'jb008978', '987654', '4654@123.com', '16601621693', 'ad626a07765d44476c9040c7b39c4937', null, null, '116.231.71.35', '1475200301', null, '0', null, null, null, null, null, null, '1506700800', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('22', '111111111', '111111111', '11111@156.com', '18801621655', 'ad626a07765d44476c9040c7b39c4937', null, null, '116.231.71.35', '1475201023', null, '0', null, null, null, null, null, null, '1506700800', '', null, null, null, null, '1');

-- ----------------------------
-- Table structure for a_user_attachment
-- ----------------------------
DROP TABLE IF EXISTS `a_user_attachment`;
CREATE TABLE `a_user_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `type` tinyint(255) DEFAULT NULL COMMENT '类型',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(255) DEFAULT NULL,
  `path` varchar(80) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_user_attachment
-- ----------------------------

-- ----------------------------
-- Table structure for application
-- ----------------------------
DROP TABLE IF EXISTS `application`;
CREATE TABLE `application` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '应用名',
  `path` varchar(80) DEFAULT NULL COMMENT '应用路径',
  `isuse` tinyint(4) DEFAULT NULL COMMENT '是否启用',
  `isdeleted` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`),
  UNIQUE KEY `appid` (`id`) USING HASH,
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `name` (`name`) USING HASH,
  KEY `path` (`path`) USING HASH,
  KEY `isuse` (`isuse`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用管理';

-- ----------------------------
-- Records of application
-- ----------------------------

-- ----------------------------
-- Table structure for application_relation
-- ----------------------------
DROP TABLE IF EXISTS `application_relation`;
CREATE TABLE `application_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `isuse` tinyint(4) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用关联表';

-- ----------------------------
-- Records of application_relation
-- ----------------------------

-- ----------------------------
-- Table structure for b_agent
-- ----------------------------
DROP TABLE IF EXISTS `b_agent`;
CREATE TABLE `b_agent` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `creditno` varchar(255) DEFAULT NULL COMMENT '企业唯一信用代码',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(30) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `credientialnu` varchar(20) DEFAULT NULL COMMENT '身份证',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL COMMENT '是否删除',
  `userlevel` tinyint(4) DEFAULT NULL COMMENT '销售等级',
  `computerlevel` varchar(32) DEFAULT NULL,
  `englishlevel` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `degree` varchar(32) DEFAULT NULL COMMENT '学位',
  `education` varchar(32) DEFAULT NULL COMMENT '学历',
  `risklevel` varchar(32) DEFAULT NULL COMMENT '风险测试等级',
  `cuserid` int(11) DEFAULT NULL COMMENT 'agent 默认拥有的c账户id',
  `status` tinyint(4) DEFAULT NULL COMMENT '用户可用状态 0正常  3 不可用（被冻结） 4 可用（解冻） ',
  `reviewstatus` tinyint(4) DEFAULT '0' COMMENT '审核状态 0 待审核 1通过 2不通过',
  `reviewnote` varchar(255) DEFAULT NULL COMMENT '审核意见',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `ipaddr` (`phone`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_agent
-- ----------------------------
INSERT INTO `b_agent` VALUES ('1', 'IFA1', 'IFA 11', 'chen123@qq.com', '18801621631', '14032111111111111', '1', null, '3', '熟练', '中等', '其他国家', '博士', '博士', '1', '1', '3', '1', '审核不通过，哈哈哈');
INSERT INTO `b_agent` VALUES ('2', 'xyongdaima12345', 'IFA2', 'chen11@fm.com', '18373885166', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '3', '1', null);
INSERT INTO `b_agent` VALUES ('3', 'xyongdaima12345', 'IFA3', 'chen1@fm1.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '3', '1', null);
INSERT INTO `b_agent` VALUES ('4', 'xyongdaima123456', 'IFA4', 'chen1@fm.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '3', '0', null);
INSERT INTO `b_agent` VALUES ('5', 'xyongdaima12347', 'IFA5', 'chen2@fm.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '4', '0', null);
INSERT INTO `b_agent` VALUES ('36', null, 'vadfasdf', '1321321@qq.com', '18801565656', '140321199108020011', '1474270563', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('37', null, 'vestin', '11@qq.com', '18800000000', '140321199108020012', '1474337711', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('38', 'hahahdlkfjlkjlkjlkadsfasdf', 'vestin2', 'bombzds@163.com', '18801621639', '140321199108020012', '1474341045', null, '5', '一般', '一般', '中国', '小学', '小学', null, null, '4', '2', '资料都没有，审核毛线，不通过');
INSERT INTO `b_agent` VALUES ('39', null, '张三', 'bombzds2@163.com', '18801621640', '140321111102020012', '1474448361', null, null, null, null, null, null, null, null, null, '1', '1', null);
INSERT INTO `b_agent` VALUES ('40', null, '123456', '456@qq.com', '18801621637', '140321199105050045', '1474525739', null, null, null, null, null, null, null, null, null, '1', '0', null);

-- ----------------------------
-- Table structure for b_agent_access
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_access`;
CREATE TABLE `b_agent_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台管理员权限表';

-- ----------------------------
-- Records of b_agent_access
-- ----------------------------
INSERT INTO `b_agent_access` VALUES ('18', '1', '0', null);
INSERT INTO `b_agent_access` VALUES ('18', '2', '1', null);
INSERT INTO `b_agent_access` VALUES ('18', '3', '1', null);
INSERT INTO `b_agent_access` VALUES ('18', '4', '1', null);
INSERT INTO `b_agent_access` VALUES ('18', '5', '1', null);
INSERT INTO `b_agent_access` VALUES ('18', '6', '2', null);
INSERT INTO `b_agent_access` VALUES ('18', '7', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '8', '2', null);
INSERT INTO `b_agent_access` VALUES ('18', '9', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '10', '2', null);
INSERT INTO `b_agent_access` VALUES ('18', '11', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '12', '3', null);

-- ----------------------------
-- Table structure for b_agent_account
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_account`;
CREATE TABLE `b_agent_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `profit` decimal(14,3) DEFAULT NULL COMMENT '收益',
  `commission` decimal(14,3) DEFAULT NULL COMMENT '已收佣金',
  `balance` decimal(14,3) DEFAULT NULL COMMENT '余额',
  `status` int(4) DEFAULT NULL COMMENT '审核状态',
  `paystatus` int(4) DEFAULT NULL COMMENT '支付状态',
  `reviewer` varchar(32) DEFAULT NULL COMMENT '审核人名称',
  `reviewerid` int(11) DEFAULT NULL COMMENT '审核人id',
  `reviewtime` int(11) DEFAULT NULL COMMENT '审核时间',
  `payer` varchar(32) DEFAULT NULL COMMENT '支付人名称',
  `payerid` int(11) DEFAULT NULL COMMENT '支付人id',
  `paytime` int(11) DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `buserid` (`agentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA 方账户表';

-- ----------------------------
-- Records of b_agent_account
-- ----------------------------

-- ----------------------------
-- Table structure for b_agent_app_apply
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_app_apply`;
CREATE TABLE `b_agent_app_apply` (
  `id` int(11) NOT NULL,
  `agentid` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '状态',
  `createtime` int(11) DEFAULT NULL,
  `note` varchar(1000) DEFAULT NULL COMMENT '要求',
  `requireonlinetime` int(11) DEFAULT NULL COMMENT '期望上线时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='app申请表';

-- ----------------------------
-- Records of b_agent_app_apply
-- ----------------------------

-- ----------------------------
-- Table structure for b_agent_attachment
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_attachment`;
CREATE TABLE `b_agent_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `type` tinyint(255) DEFAULT NULL COMMENT '类型',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(255) DEFAULT NULL,
  `path` varchar(80) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='agent 附件表 （审核用）';

-- ----------------------------
-- Records of b_agent_attachment
-- ----------------------------
INSERT INTO `b_agent_attachment` VALUES ('5', '38', '0', '1474613790', null, '/Uploads/bagent/2016-09-23/57e4d21e5ef68.jpg');
INSERT INTO `b_agent_attachment` VALUES ('3', '38', '0', '1474613564', null, '/Uploads/bagent/2016-09-23/57e4d13c3c988.jpg');
INSERT INTO `b_agent_attachment` VALUES ('4', '38', '0', '1474613581', null, '/Uploads/bagent/2016-09-23/57e4d14dbc8cb.jpg');
INSERT INTO `b_agent_attachment` VALUES ('6', '38', '0', '1474613796', null, '/Uploads/bagent/2016-09-23/57e4d22497727.jpg');
INSERT INTO `b_agent_attachment` VALUES ('7', '38', '0', '1474613873', null, '/Uploads/bagent/2016-09-23/57e4d270f3c08.jpg');
INSERT INTO `b_agent_attachment` VALUES ('8', '38', '1', '1474615120', null, '/Uploads/bagent/2016-09-23/57e4d750c3b0d.jpg');
INSERT INTO `b_agent_attachment` VALUES ('9', '38', '2', '1474616165', null, '/Uploads/bagent/2016-09-23/57e4db652b0f8.jpg');

-- ----------------------------
-- Table structure for b_agent_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_collect`;
CREATE TABLE `b_agent_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`userid`) USING BTREE,
  KEY `productid` (`productid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA产品收藏表';

-- ----------------------------
-- Records of b_agent_collect
-- ----------------------------

-- ----------------------------
-- Table structure for b_agent_message
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_message`;
CREATE TABLE `b_agent_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sendid` int(11) DEFAULT NULL COMMENT '发送方',
  `reciveid` int(11) DEFAULT NULL COMMENT '接收方',
  `content` text COMMENT '消息内容',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING HASH,
  KEY `sendid` (`sendid`),
  KEY `reciveid` (`reciveid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息管理';

-- ----------------------------
-- Records of b_agent_message
-- ----------------------------

-- ----------------------------
-- Table structure for b_agent_node
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_node`;
CREATE TABLE `b_agent_node` (
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
) ENGINE=MyISAM AUTO_INCREMENT=218 DEFAULT CHARSET=utf8 COMMENT='功能节点表';

-- ----------------------------
-- Records of b_agent_node
-- ----------------------------
INSERT INTO `b_agent_node` VALUES ('1', 'System', '蜂巢系统管理后台', '1', '', '1', '0', '0');
INSERT INTO `b_agent_node` VALUES ('2', 'AgentHome', '工作台', '1', null, '1', '1', '1');
INSERT INTO `b_agent_node` VALUES ('3', 'Product', '产品管理', '1', null, '2', '1', '1');
INSERT INTO `b_agent_node` VALUES ('4', 'AgentCrm', 'CRM管理', '1', null, '3', '1', '1');
INSERT INTO `b_agent_node` VALUES ('5', 'AgentAdmin', '用户中心', '1', null, '4', '1', '1');
INSERT INTO `b_agent_node` VALUES ('6', 'UserAccount', '账号管理', '1', null, '1', '5', '2');
INSERT INTO `b_agent_node` VALUES ('7', 'index', '账号信息展示', '1', null, '1', '6', '3');
INSERT INTO `b_agent_node` VALUES ('8', 'Review', '资料审核', '1', null, '2', '5', '2');
INSERT INTO `b_agent_node` VALUES ('9', 'editPage', '编辑资料', '1', null, '1', '8', '3');
INSERT INTO `b_agent_node` VALUES ('10', 'Index', '工作台', '1', null, '1', '2', '2');
INSERT INTO `b_agent_node` VALUES ('11', 'index', '工作台首页', '1', null, '1', '10', '3');
INSERT INTO `b_agent_node` VALUES ('12', 'dashboard', '工作台图表', '1', null, '2', '10', '3');

-- ----------------------------
-- Table structure for b_agent_product
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_product`;
CREATE TABLE `b_agent_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `buserid` int(11) DEFAULT NULL COMMENT '所属b用户',
  `productno` varchar(32) DEFAULT NULL COMMENT '产品编号',
  `productid` int(11) DEFAULT NULL COMMENT 'a产品id',
  `name` varchar(32) DEFAULT NULL COMMENT '产品名称',
  `catagroyid` tinyint(4) DEFAULT NULL COMMENT '类型id',
  `tradingstructure` varchar(255) DEFAULT NULL COMMENT '交易结构',
  `productscale` tinyint(4) DEFAULT NULL COMMENT '产品规模',
  `productform` tinyint(4) DEFAULT NULL COMMENT '产品形态',
  `publisher` varchar(32) DEFAULT NULL COMMENT '发行人',
  `custodian` varchar(32) DEFAULT NULL COMMENT '托管人',
  `issuesize` tinyint(4) DEFAULT NULL COMMENT '发行规模',
  `minimuminvestmentamount` int(11) DEFAULT NULL COMMENT '最低投资额',
  `increasingunit` varchar(10) DEFAULT NULL COMMENT '递增单位',
  `productterm` int(255) DEFAULT NULL COMMENT '产品期限',
  `ror` decimal(10,3) DEFAULT NULL COMMENT '预期收益率',
  `distributionmethod` tinyint(255) DEFAULT NULL COMMENT '收益分配方式',
  `tradingrivals` varchar(32) DEFAULT NULL COMMENT '交易对手',
  `investmenttargets` varchar(32) DEFAULT NULL COMMENT '投资标的',
  `contractquantity` mediumint(9) DEFAULT NULL COMMENT '合同数量',
  `assetguarantee` varchar(255) DEFAULT NULL COMMENT '资产保证',
  `establishedconditions` varchar(255) DEFAULT NULL COMMENT '成立条件',
  `establishmentscale` tinyint(4) DEFAULT NULL COMMENT '成立规模',
  `note` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `riskrating` tinyint(4) DEFAULT NULL COMMENT '风险评级',
  `commissionratio` decimal(10,3) DEFAULT NULL COMMENT '佣金比例',
  `saleslevel` tinyint(4) DEFAULT NULL COMMENT '销售等级',
  `createtime` int(11) NOT NULL,
  `producttype` tinyint(4) DEFAULT NULL COMMENT '产品类型（公募私募）',
  `type` tinyint(4) DEFAULT NULL COMMENT '产品状态 0 编辑   1 上架',
  `qualifiedinvestors` tinyint(4) DEFAULT NULL COMMENT '是否合格投资人仅见',
  `overseasinvestors` tinyint(4) DEFAULT NULL COMMENT '是否适应海外投资人',
  `closedperiod` int(11) DEFAULT NULL COMMENT '封闭期',
  `investmentteam` varchar(32) DEFAULT NULL COMMENT '投资团队',
  `investmentstrategy` tinytext COMMENT '投资策略',
  `investmentprocess` text COMMENT '投资流程',
  `investmentperformance` varchar(255) DEFAULT NULL COMMENT '投资业绩',
  `subscriptionfee` decimal(13,3) DEFAULT NULL COMMENT '认购费',
  `managementexpense` decimal(13,3) DEFAULT NULL COMMENT '管理费',
  `redemptionfee` decimal(13,3) DEFAULT NULL COMMENT '赎回费',
  `performancereward` decimal(13,3) DEFAULT NULL COMMENT '业绩报酬',
  `onlinedate` int(11) DEFAULT NULL COMMENT '上线日期',
  `establishmentday` int(11) DEFAULT NULL COMMENT '成立日',
  `openday` int(11) DEFAULT NULL COMMENT '开放日',
  `duedate` int(11) DEFAULT NULL COMMENT '到期日',
  `terminationday` int(11) DEFAULT NULL COMMENT '终止日',
  `abletobuy` tinyint(4) DEFAULT NULL COMMENT '是否可以申购',
  `share` mediumint(9) DEFAULT NULL COMMENT '份额',
  `networth` decimal(10,3) DEFAULT NULL COMMENT '净值',
  `abletoredeem` tinyint(4) DEFAULT NULL COMMENT '能够赎回',
  PRIMARY KEY (`id`),
  KEY `id` (`catagroyid`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of b_agent_product
-- ----------------------------

-- ----------------------------
-- Table structure for b_agent_role
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_role`;
CREATE TABLE `b_agent_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `level` tinyint(4) DEFAULT '0',
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='平台管理员角色表';

-- ----------------------------
-- Records of b_agent_role
-- ----------------------------
INSERT INTO `b_agent_role` VALUES ('1', '超级用户', '0', '0', '1', '拥有全部权限');
INSERT INTO `b_agent_role` VALUES ('18', '普通用户', '1', '1', '1', '');
INSERT INTO `b_agent_role` VALUES ('19', '只读用户', '1', '1', '1', '只读，不能修改，添加');

-- ----------------------------
-- Table structure for b_agent_role_user
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_role_user`;
CREATE TABLE `b_agent_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  `type` int(4) DEFAULT NULL COMMENT '平台划分  1：大B   2:IFA',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台角色用户关联表';

-- ----------------------------
-- Records of b_agent_role_user
-- ----------------------------
INSERT INTO `b_agent_role_user` VALUES ('18', '1015', null);

-- ----------------------------
-- Table structure for b_agent_settlement
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_settlement`;
CREATE TABLE `b_agent_settlement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `aproductid` int(11) DEFAULT NULL,
  `bproductid` int(11) DEFAULT NULL,
  `normalcommissionrate` float(11,0) DEFAULT NULL COMMENT '标准佣金比例',
  `commissionrate` float(11,0) DEFAULT NULL COMMENT '真实佣金比例',
  `normalcommissionfee` float(11,0) DEFAULT NULL COMMENT '正常情况下应付的佣金额',
  `commissionfee` float(11,0) DEFAULT NULL COMMENT '实际支付的额度',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '结算状态',
  `paystatus` int(4) DEFAULT NULL COMMENT '支付状态',
  `reviewer` varchar(32) DEFAULT NULL COMMENT '审核人',
  `reviewerid` int(11) DEFAULT NULL COMMENT '审核人id',
  `reviewetime` int(11) DEFAULT NULL COMMENT '审核时间',
  `reviewnote` varchar(1000) DEFAULT NULL COMMENT '审核意见',
  `payer` varchar(32) DEFAULT NULL COMMENT '支付人名称',
  `payerid` int(11) DEFAULT NULL COMMENT '支付人id',
  `paytime` int(11) DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `buserid` (`agentid`),
  KEY `productid` (`aproductid`),
  KEY `normalcommissionrate` (`normalcommissionrate`),
  KEY `commissionrate` (`commissionrate`),
  KEY `createtime` (`createtime`),
  KEY `isdeleted` (`isdeleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小B结算表';

-- ----------------------------
-- Records of b_agent_settlement
-- ----------------------------

-- ----------------------------
-- Table structure for b_agent_shop_template
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_shop_template`;
CREATE TABLE `b_agent_shop_template` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '模板名称',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `createtime` int(11) DEFAULT NULL,
  `isfree` varchar(255) DEFAULT NULL COMMENT '是否免费',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `name` (`name`),
  KEY `path` (`path`),
  KEY `createtime` (`createtime`),
  KEY `isfree` (`isfree`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商城模板表';

-- ----------------------------
-- Records of b_agent_shop_template
-- ----------------------------

-- ----------------------------
-- Table structure for b_agent_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_subscribe`;
CREATE TABLE `b_agent_subscribe` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`userid`),
  KEY `catagroyid` (`productid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA 产品订阅表';

-- ----------------------------
-- Records of b_agent_subscribe
-- ----------------------------

-- ----------------------------
-- Table structure for b_agent_user
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_user`;
CREATE TABLE `b_agent_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `roleid` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `validatetime` int(11) DEFAULT NULL COMMENT '账户有效期',
  `status` int(11) DEFAULT '1' COMMENT '0 未审核 1审核通过 2审核不通过 3被冻结 4取消冻结',
  `ipaddr` varchar(255) DEFAULT NULL COMMENT '上次登陆ip地址',
  `lastlogintime` int(11) DEFAULT NULL COMMENT '上次登陆时间',
  PRIMARY KEY (`id`),
  KEY `bagentid` (`agentid`) USING BTREE,
  KEY `roleid` (`roleid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=1018 DEFAULT CHARSET=utf8 COMMENT='IFA 用户登陆账户表';

-- ----------------------------
-- Records of b_agent_user
-- ----------------------------
INSERT INTO `b_agent_user` VALUES ('1001', '1', 'Chery1', '7853@qq.com', '1898989898', 'sdasdasdasda', '1', '1', '1', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1002', '1', 'chery2', 'sad@qq.com', '123232323', 'adsfsdfsdf', '2', '1', '1', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1003', '2', 'Chery3', 'sdaf@qq.com', '12232323', 'aasdfadsfadsf', '1', '1', '1', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1013', '36', 'vadfasdf', '1321321@qq.com', '18801565656', 'ad626a07765d44476c9040c7b39c4937', null, '1474270563', null, '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1014', '37', 'vestin', '11@qq.com', '18800000000', 'ad626a07765d44476c9040c7b39c4937', null, '1474337711', null, '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1015', '38', 'vestin2', 'bombzds@163.com', '18801621639', 'ad626a07765d44476c9040c7b39c4937', null, '1474341045', '1505877045', '1', '116.231.71.35', '1475203971');
INSERT INTO `b_agent_user` VALUES ('1016', '39', '张三', 'bombzds2@163.com', '18801621640', 'ad626a07765d44476c9040c7b39c4937', null, '1474448361', '1505984361', '1', '116.231.71.35', '1474448420');
INSERT INTO `b_agent_user` VALUES ('1017', '40', '123456', '456@qq.com', '18801621637', 'ad626a07765d44476c9040c7b39c4937', null, '1474525739', '1506061739', '1', '116.231.71.35', '1474532622');

-- ----------------------------
-- Table structure for b_agent_user_attachment
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_user_attachment`;
CREATE TABLE `b_agent_user_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `type` tinyint(255) DEFAULT NULL COMMENT '类型',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(255) DEFAULT NULL,
  `path` varchar(80) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='agent 附件表 （审核用）';

-- ----------------------------
-- Records of b_agent_user_attachment
-- ----------------------------
INSERT INTO `b_agent_user_attachment` VALUES ('5', '38', '0', '1474613790', null, '/Uploads/bagent/2016-09-23/57e4d21e5ef68.jpg');
INSERT INTO `b_agent_user_attachment` VALUES ('3', '38', '0', '1474613564', null, '/Uploads/bagent/2016-09-23/57e4d13c3c988.jpg');
INSERT INTO `b_agent_user_attachment` VALUES ('4', '38', '0', '1474613581', null, '/Uploads/bagent/2016-09-23/57e4d14dbc8cb.jpg');
INSERT INTO `b_agent_user_attachment` VALUES ('6', '38', '0', '1474613796', null, '/Uploads/bagent/2016-09-23/57e4d22497727.jpg');
INSERT INTO `b_agent_user_attachment` VALUES ('7', '38', '0', '1474613873', null, '/Uploads/bagent/2016-09-23/57e4d270f3c08.jpg');
INSERT INTO `b_agent_user_attachment` VALUES ('8', '38', '1', '1474615120', null, '/Uploads/bagent/2016-09-23/57e4d750c3b0d.jpg');

-- ----------------------------
-- Table structure for b_agent_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_withdraw`;
CREATE TABLE `b_agent_withdraw` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `buserid` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '体现状态',
  `ipaddr` int(11) DEFAULT NULL COMMENT '体现用户ip地址',
  `bankcard` tinyint(4) DEFAULT NULL COMMENT '本次提现使用的银行卡',
  `createtime` int(11) DEFAULT NULL,
  `successtime` int(11) DEFAULT NULL COMMENT '提现成功时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `buserid` (`buserid`),
  UNIQUE KEY `ipaddr` (`ipaddr`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA用户提现操作表';

-- ----------------------------
-- Records of b_agent_withdraw
-- ----------------------------

-- ----------------------------
-- Table structure for c_asset
-- ----------------------------
DROP TABLE IF EXISTS `c_asset`;
CREATE TABLE `c_asset` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cuserid` int(11) NOT NULL,
  `aproductid` int(11) NOT NULL,
  `bproductid` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(4) NOT NULL COMMENT '资产状态 申购成功，申请退款，认购成功，转让中，赎回中',
  `amount` float(11,0) DEFAULT NULL COMMENT '总金额',
  `price` float(11,0) DEFAULT NULL COMMENT '单价',
  `share` int(11) DEFAULT NULL COMMENT '份数',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='c 资产表';

-- ----------------------------
-- Records of c_asset
-- ----------------------------

-- ----------------------------
-- Table structure for c_asset_income
-- ----------------------------
DROP TABLE IF EXISTS `c_asset_income`;
CREATE TABLE `c_asset_income` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cuserid` int(11) NOT NULL,
  `aproductid` int(11) NOT NULL,
  `bproductid` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `status` int(4) NOT NULL COMMENT '资产状态 申购成功，申请退款，认购成功，转让中，赎回中',
  `amount` float(11,0) DEFAULT NULL COMMENT '总金额',
  `price` float(11,0) DEFAULT NULL COMMENT '单价',
  `share` int(11) DEFAULT NULL COMMENT '份数',
  `interest` float(11,0) DEFAULT NULL COMMENT '利率',
  `cassetid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='c 资产表';

-- ----------------------------
-- Records of c_asset_income
-- ----------------------------

-- ----------------------------
-- Table structure for c_collect
-- ----------------------------
DROP TABLE IF EXISTS `c_collect`;
CREATE TABLE `c_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`userid`) USING BTREE,
  KEY `productid` (`productid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='customer 产品订阅表';

-- ----------------------------
-- Records of c_collect
-- ----------------------------

-- ----------------------------
-- Table structure for c_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `c_subscribe`;
CREATE TABLE `c_subscribe` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `catagroyid` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`userid`),
  KEY `catagroyid` (`catagroyid`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='customer 产品订阅表';

-- ----------------------------
-- Records of c_subscribe
-- ----------------------------

-- ----------------------------
-- Table structure for c_user
-- ----------------------------
DROP TABLE IF EXISTS `c_user`;
CREATE TABLE `c_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) NOT NULL COMMENT '所属B用户ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `phone` bigint(20) NOT NULL COMMENT '电话',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `credientialnu` varchar(32) NOT NULL COMMENT '身份证',
  `createtime` int(11) DEFAULT NULL COMMENT '注册时间',
  `ipaddr` varchar(64) DEFAULT NULL COMMENT '上次登陆ip',
  `lastlogintime` int(11) DEFAULT NULL COMMENT '上次登陆时间',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `isdeleted` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  `userlevel` tinyint(2) DEFAULT NULL COMMENT '客户级别',
  `computerlevel` tinyint(2) DEFAULT NULL COMMENT '计算机级别',
  `englishlevel` tinyint(2) DEFAULT NULL COMMENT '外语级别',
  `country` varchar(32) DEFAULT NULL COMMENT '国家',
  `degree` varchar(32) DEFAULT NULL COMMENT '学位',
  `education` varchar(32) DEFAULT NULL COMMENT '学历',
  `risklevel` varchar(32) DEFAULT NULL COMMENT '风险等级',
  `status` varchar(255) DEFAULT NULL COMMENT '用户状态',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `buserid` (`agentid`) USING BTREE,
  KEY `username` (`username`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `phone` (`phone`) USING BTREE,
  KEY `password` (`password`) USING BTREE,
  KEY `credientialnu` (`credientialnu`),
  KEY `createtime` (`createtime`),
  KEY `ipaddr` (`ipaddr`),
  KEY `lastlogintime` (`lastlogintime`),
  KEY `roleid` (`roleid`),
  KEY `isdeleted` (`isdeleted`),
  KEY `userlevel` (`userlevel`),
  KEY `computerlevel` (`computerlevel`),
  KEY `englishlevel` (`englishlevel`),
  KEY `country` (`country`),
  KEY `degree` (`degree`),
  KEY `education` (`education`)
) ENGINE=MyISAM AUTO_INCREMENT=1004 DEFAULT CHARSET=utf8 COMMENT='C端用户表';

-- ----------------------------
-- Records of c_user
-- ----------------------------
INSERT INTO `c_user` VALUES ('1001', '1', '124831', '60012@qq1.com', '20826786058', '1ee9a202f7cfc9d350c7c6a2d0db0797', '59092082789308095', null, null, null, null, null, '1', null, null, null, null, null, null, '4');
INSERT INTO `c_user` VALUES ('1002', '2', '81686', '76878@qq.com', '45895256879', 'ad626a07765d44476c9040c7b39c4937', '34047057058237183', null, null, null, null, null, '1', null, null, null, null, null, null, '1');
INSERT INTO `c_user` VALUES ('1003', '38', '61051A', '61519@qq.com', '24086004449', '1ee9a202f7cfc9d350c7c6a2d0db0797', '57116768114153055', null, null, null, null, null, '1', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for c_user_attachment
-- ----------------------------
DROP TABLE IF EXISTS `c_user_attachment`;
CREATE TABLE `c_user_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `type` tinyint(255) DEFAULT NULL COMMENT '类型',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(255) DEFAULT NULL,
  `path` varchar(80) DEFAULT NULL COMMENT '路径',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='agent 附件表 （审核用）';

-- ----------------------------
-- Records of c_user_attachment
-- ----------------------------
INSERT INTO `c_user_attachment` VALUES ('5', '38', '0', '1474613790', null, '/Uploads/bagent/2016-09-23/57e4d21e5ef68.jpg');
INSERT INTO `c_user_attachment` VALUES ('3', '38', '0', '1474613564', null, '/Uploads/bagent/2016-09-23/57e4d13c3c988.jpg');
INSERT INTO `c_user_attachment` VALUES ('4', '38', '0', '1474613581', null, '/Uploads/bagent/2016-09-23/57e4d14dbc8cb.jpg');
INSERT INTO `c_user_attachment` VALUES ('6', '38', '0', '1474613796', null, '/Uploads/bagent/2016-09-23/57e4d22497727.jpg');
INSERT INTO `c_user_attachment` VALUES ('7', '38', '0', '1474613873', null, '/Uploads/bagent/2016-09-23/57e4d270f3c08.jpg');
INSERT INTO `c_user_attachment` VALUES ('8', '38', '1', '1474615120', null, '/Uploads/bagent/2016-09-23/57e4d750c3b0d.jpg');

-- ----------------------------
-- Table structure for fm_action_record
-- ----------------------------
DROP TABLE IF EXISTS `fm_action_record`;
CREATE TABLE `fm_action_record` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) NOT NULL,
  `type` int(4) NOT NULL DEFAULT '1' COMMENT '用户类型 1 a平台用户 2 b平台用户',
  `createtime` int(11) NOT NULL,
  `action` varchar(255) NOT NULL COMMENT '原始动作',
  `actiondes` varchar(255) NOT NULL COMMENT '动作描述',
  `params` varchar(10000) DEFAULT NULL COMMENT '操作参数',
  `method` varchar(32) NOT NULL COMMENT '提交类型 post / get / delete ',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=878 DEFAULT CHARSET=utf8 COMMENT='用户操作动作记录表';

-- ----------------------------
-- Records of fm_action_record
-- ----------------------------
INSERT INTO `fm_action_record` VALUES ('3', '1', '1', '1475033400', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2', '1', '1', '1475033388', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4', '1', '1', '1475033408', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('5', '1', '1', '1475033411', 'Crm/BAgent/reviewPass', 'CRM管理/会员管理/审核通过', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('6', '1', '1', '1475033412', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('7', '1', '1', '1475033424', 'Crm/BAgent/freeze', 'CRM管理/会员管理/冻结用户', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('8', '1', '1', '1475033425', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('9', '1', '1', '1475033508', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('10', '1', '1', '1475033572', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('11', '1', '1', '1475033589', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('12', '1', '1', '1475033734', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('13', '1', '1', '1475033738', 'Crm/Customer/userDetail', 'CRM管理/客户管理/查看客户详情', '{\"id\":\"1001\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('14', '1', '1', '1475033963', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('15', '1', '1', '1475033964', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('16', '1', '1', '1475033971', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('17', '1', '1', '1475033976', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('18', '1', '1', '1475033979', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('19', '1', '1', '1475033983', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('20', '1', '1', '1475033989', 'Trans/Order/search', '交易管理/订单中心/订单搜索', '{\"orderno\":\"DDasda93749850840504\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('21', '1', '1', '1475034042', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('22', '1', '1', '1475034143', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('23', '1', '1', '1475034145', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('24', '1', '1', '1475034150', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('25', '1', '1', '1475036162', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('26', '1', '1', '1475036369', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('27', '1', '1', '1475036387', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('28', '1', '1', '1475036398', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('29', '1', '1', '1475038538', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('30', '1', '1', '1475038542', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('31', '1', '1', '1475038814', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('32', '1', '1', '1475039241', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('33', '1', '1', '1475039242', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('34', '1', '1', '1475044020', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('35', '1', '1', '1475044028', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('36', '1015', '2', '1475044295', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('37', '1', '1', '1475044317', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('38', '1', '1', '1475044320', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('39', '1', '1', '1475044323', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('40', '1', '1', '1475044370', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('41', '1', '1', '1475044399', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('42', '1015', '2', '1475044583', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('43', '1', '1', '1475044595', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('44', '1', '1', '1475044598', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('45', '1', '1', '1475044600', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('46', '1', '1', '1475044862', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('47', '1', '1', '1475044866', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('48', '1', '1', '1475044870', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('49', '1', '1', '1475044872', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('50', '1', '1', '1475044873', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('51', '1', '1', '1475044890', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('52', '1', '1', '1475044899', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('53', '1', '1', '1475044901', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('54', '1', '1', '1475044920', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('55', '1', '1', '1475044921', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('56', '1', '1', '1475044922', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('57', '1', '1', '1475044941', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('58', '1', '1', '1475044941', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('59', '1', '1', '1475044944', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('60', '1', '1', '1475044947', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('61', '1', '1', '1475044948', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('62', '1', '1', '1475044949', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('63', '1', '1', '1475044951', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('64', '1', '1', '1475044952', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('65', '1', '1', '1475044954', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"4\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('66', '1', '1', '1475044957', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"5\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('67', '1', '1', '1475044962', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('68', '1', '1', '1475044962', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('69', '1', '1', '1475044969', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('70', '1', '1', '1475044973', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('71', '1', '1', '1475044975', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('72', '1', '1', '1475044982', 'Product/Product/add', '产品管理/产品发布/添加产品动作', '{\"name\":\"A\\u80a1\\u4e0a\\u5e02\\u4f01\\u4e1a\\u5b58\\u8d27\\u8d28\\u62bc\\u878d\\u8d44\\u9879\\u76ee\",\"catagroyida\":\"2\",\"catagroyidb\":\"2\",\"catagroyidc\":\"22\",\"tradingstructure\":\"\",\"productscale\":\"0.00\",\"productform\":\"\",\"publisher\":\"\",\"custodian\":\"\",\"issuesize\":\"0.00\",\"minimuminvestmentamount\":\"0.00\",\"increasingunit\":\"0.00\",\"producttermmonth\":\"0\",\"producttermday\":\"0\",\"contractquantity\":\"0\",\"establishmentscale\":\"0.00\",\"riskrating\":\"\",\"saleslevel\":\"1\",\"producttype\":\"1\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"\",\"closedperiodday\":\"\",\"ror\":\"0.00\",\"commissionratio\":\"0.00\",\"subscriptionfee\":\"0.00\",\"performancereward\":\"0.00\",\"managementexpense\":\"0.00\",\"redemptionfee\":\"0.00\",\"onlinedate\":\"\",\"establishmentday\":\"\",\"openday\":\"\",\"duedate\":\"\",\"terminationday\":\"\",\"distributionmethod\":\"\",\"tradingrivals\":\"\",\"investmenttargets\":\"\",\"assetguarantee\":\"\",\"establishedconditions\":\"\",\"note\":\"\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('73', '1', '1', '1475044983', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('74', '1', '1', '1475045027', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('75', '1', '1', '1475045029', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('76', '1', '1', '1475045029', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"\",\"b_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('77', '1', '1', '1475045039', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('78', '1', '1', '1475045040', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('79', '1', '1', '1475045040', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"\",\"b_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('80', '1', '1', '1475045047', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('81', '1', '1', '1475045051', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('82', '1', '1', '1475045052', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('83', '1', '1', '1475045053', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"\",\"b_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('84', '1', '1', '1475045073', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('85', '1', '1', '1475045076', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('86', '1', '1', '1475045077', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"\",\"b_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('87', '1', '1', '1475045307', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('88', '1', '1', '1475045328', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('89', '1', '1', '1475045330', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('90', '1', '1', '1475045333', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('91', '1', '1', '1475045336', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('92', '1', '1', '1475045353', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('93', '1', '1', '1475045387', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('94', '1', '1', '1475045424', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('95', '1', '1', '1475045425', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('96', '1', '1', '1475045427', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('97', '1', '1', '1475045428', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('98', '1', '1', '1475045499', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('99', '1', '1', '1475045501', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('100', '1', '1', '1475045614', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('101', '1', '1', '1475045615', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('102', '1', '1', '1475045622', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('103', '1', '1', '1475045623', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('104', '1', '1', '1475045624', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('105', '1', '1', '1475045626', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('106', '1', '1', '1475045630', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('107', '1', '1', '1475045631', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('108', '1', '1', '1475045631', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('109', '1', '1', '1475045633', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('110', '1', '1', '1475045634', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('111', '1', '1', '1475045697', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('112', '1', '1', '1475045699', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('113', '1', '1', '1475045699', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('114', '1', '1', '1475045702', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('115', '1', '1', '1475045704', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('116', '1', '1', '1475045808', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('117', '1', '1', '1475045809', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('118', '1', '1', '1475045809', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"\",\"b_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('119', '1', '1', '1475045994', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('120', '1', '1', '1475046002', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('121', '1', '1', '1475046003', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"\",\"b_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('122', '1', '1', '1475046219', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('123', '1', '1', '1475046224', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('124', '1', '1', '1475046225', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('125', '1', '1', '1475046800', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('126', '1', '1', '1475046804', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('127', '1', '1', '1475047078', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('128', '1', '1', '1475047081', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('129', '1', '1', '1475047082', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('130', '1', '1', '1475047109', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('131', '1', '1', '1475047110', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('132', '1', '1', '1475047111', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('133', '1', '1', '1475047151', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('134', '1', '1', '1475047154', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('135', '1', '1', '1475047155', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('136', '1', '1', '1475047163', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('137', '1', '1', '1475047166', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('138', '1', '1', '1475047166', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('139', '1', '1', '1475047389', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('140', '1', '1', '1475047392', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('141', '1', '1', '1475047393', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('142', '1', '1', '1475047394', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('143', '1', '1', '1475047508', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('144', '1', '1', '1475047515', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('145', '1', '1', '1475047515', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('146', '1', '1', '1475047763', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('147', '1', '1', '1475047764', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('148', '1', '1', '1475047813', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('149', '1', '1', '1475047836', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('150', '1', '1', '1475047838', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('151', '1', '1', '1475047839', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('152', '1', '1', '1475047839', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('153', '1', '1', '1475047851', 'Product/Product/edit', '产品管理/产品发布/产品编辑动作', '{\"id\":\"2\",\"name\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\",\"catagroyida\":\"1\",\"catagroyidb\":\"1\",\"catagroyidc\":\"10\",\"tradingstructure\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"productscale\":\"0.00\",\"productform\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"publisher\":\"\",\"custodian\":\"\",\"issuesize\":\"0.00\",\"minimuminvestmentamount\":\"0.00\",\"increasingunit\":\"0.00\",\"producttermmonth\":\"0\",\"producttermday\":\"0\",\"contractquantity\":\"0\",\"establishmentscale\":\"0.00\",\"riskrating\":\"0\",\"saleslevel\":\"1\",\"producttype\":\"1\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"0\",\"closedperiodday\":\"0\",\"ror\":\"0.0000\",\"commissionratio\":\"0.0000\",\"subscriptionfee\":\"0.0000\",\"performancereward\":\"0.0000\",\"managementexpense\":\"0.0000\",\"redemptionfee\":\"0.0000\",\"onlinedate\":\"0\",\"establishmentday\":\"0\",\"openday\":\"0\",\"duedate\":\"0\",\"terminationday\":\"0\",\"distributionmethod\":\"\",\"tradingrivals\":\"\",\"investmenttargets\":\"\",\"assetguarantee\":\"\",\"establishedconditions\":\"\",\"note\":\"\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('154', '1', '1', '1475047852', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('155', '1', '1', '1475047856', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('156', '1', '1', '1475047857', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('157', '1', '1', '1475047858', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('158', '1', '1', '1475048322', 'Product/Product/edit', '产品管理/产品发布/产品编辑动作', '{\"id\":\"2\",\"name\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\",\"catagroyida\":\"1\",\"catagroyidb\":\"1\",\"catagroyidc\":\"10\",\"tradingstructure\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"productscale\":\"0.00\",\"productform\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"publisher\":\"\\u5f20\\u4e09\",\"custodian\":\"\\u54c8\\u54c8\",\"issuesize\":\"11111222.19\",\"minimuminvestmentamount\":\"11111111.22\",\"increasingunit\":\"220.00\",\"producttermmonth\":\"14\",\"producttermday\":\"0\",\"contractquantity\":\"20\",\"establishmentscale\":\"10000.00\",\"riskrating\":\"10\",\"saleslevel\":\"1\",\"producttype\":\"1\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"0\",\"closedperiodday\":\"0\",\"ror\":\"0.0000\",\"commissionratio\":\"0.0000\",\"subscriptionfee\":\"0.0000\",\"performancereward\":\"0.0000\",\"managementexpense\":\"0.0000\",\"redemptionfee\":\"0.0000\",\"onlinedate\":\"2016-09-07\",\"establishmentday\":\"2016-09-08\",\"openday\":\"0\",\"duedate\":\"2016-09-30\",\"terminationday\":\"2016-09-30\",\"distributionmethod\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"tradingrivals\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmenttargets\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"assetguarantee\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"establishedconditions\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"note\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('159', '1', '1', '1475048324', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('160', '1', '1', '1475048326', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('161', '1', '1', '1475048328', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('162', '1', '1', '1475048328', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('163', '1', '1', '1475048340', 'Product/Product/edit', '产品管理/产品发布/产品编辑动作', '{\"id\":\"2\",\"name\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\",\"catagroyida\":\"1\",\"catagroyidb\":\"1\",\"catagroyidc\":\"10\",\"tradingstructure\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"productscale\":\"0.00\",\"productform\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"publisher\":\"\\u5f20\\u4e09\",\"custodian\":\"\\u54c8\\u54c8\",\"issuesize\":\"11111222.00\",\"minimuminvestmentamount\":\"11111111.00\",\"increasingunit\":\"220.00\",\"producttermmonth\":\"14\",\"producttermday\":\"0\",\"contractquantity\":\"20\",\"establishmentscale\":\"10000.00\",\"riskrating\":\"10\",\"saleslevel\":\"1\",\"producttype\":\"1\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"0\",\"closedperiodday\":\"0\",\"ror\":\"0.13\",\"commissionratio\":\"0.33\",\"subscriptionfee\":\"0.0000\",\"performancereward\":\"0.0000\",\"managementexpense\":\"0.0000\",\"redemptionfee\":\"0.0000\",\"onlinedate\":\"2016\",\"establishmentday\":\"2016\",\"openday\":\"0\",\"duedate\":\"2016\",\"terminationday\":\"2016\",\"distributionmethod\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"tradingrivals\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmenttargets\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"assetguarantee\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"establishedconditions\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"note\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('164', '1', '1', '1475048341', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('165', '1', '1', '1475048344', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('166', '1', '1', '1475048345', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('167', '1', '1', '1475048346', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('168', '1', '1', '1475049200', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('169', '1', '1', '1475049205', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('170', '1', '1', '1475049207', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('171', '1', '1', '1475049207', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('172', '1', '1', '1475049223', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('173', '1', '1', '1475049224', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('174', '1', '1', '1475049227', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('175', '1', '1', '1475049235', 'Product/Product/edit', '产品管理/产品发布/产品编辑动作', '{\"id\":\"2\",\"name\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\",\"catagroyida\":\"2\",\"catagroyidb\":\"2\",\"catagroyidc\":\"24\",\"tradingstructure\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"productscale\":\"0.00\",\"productform\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"publisher\":\"\\u5f20\\u4e09\",\"custodian\":\"\\u54c8\\u54c8\",\"issuesize\":\"11111222.00\",\"minimuminvestmentamount\":\"11111111.00\",\"increasingunit\":\"220.00\",\"producttermmonth\":\"14\",\"producttermday\":\"0\",\"contractquantity\":\"20\",\"establishmentscale\":\"10000.00\",\"riskrating\":\"10\",\"saleslevel\":\"1\",\"producttype\":\"1\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"0\",\"closedperiodday\":\"0\",\"ror\":\"0.1300\",\"commissionratio\":\"0.3300\",\"subscriptionfee\":\"0.0000\",\"performancereward\":\"0.0000\",\"managementexpense\":\"0.0000\",\"redemptionfee\":\"0.0000\",\"onlinedate\":\"2016\",\"establishmentday\":\"2016\",\"openday\":\"0\",\"duedate\":\"2016\",\"terminationday\":\"2016\",\"distributionmethod\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"tradingrivals\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmenttargets\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"assetguarantee\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"establishedconditions\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"note\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('176', '1', '1', '1475049236', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('177', '1', '1', '1475049236', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('178', '1', '1', '1475049356', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('179', '1', '1', '1475049379', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('180', '1', '1', '1475049555', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('181', '1', '1', '1475049584', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('182', '1', '1', '1475049594', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('183', '1', '1', '1475049594', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('184', '1', '1', '1475049633', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('185', '1', '1', '1475049636', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('186', '1', '1', '1475049637', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('187', '1', '1', '1475049679', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('188', '1', '1', '1475049681', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('189', '1', '1', '1475049682', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('190', '1', '1', '1475049689', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('191', '1', '1', '1475049690', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('192', '1', '1', '1475049947', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('193', '1', '1', '1475049973', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('194', '1', '1', '1475050001', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('195', '1', '1', '1475050001', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('196', '1', '1', '1475050050', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('197', '1', '1', '1475050054', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('198', '1', '1', '1475050058', 'Product/Product/edit', '产品管理/产品发布/产品编辑动作', '{\"id\":\"2\",\"name\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\",\"catagroyida\":\"2\",\"catagroyidb\":\"1\",\"catagroyidc\":\"27\",\"tradingstructure\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"productscale\":\"0.00\",\"productform\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"publisher\":\"\\u5f20\\u4e09\",\"custodian\":\"\\u54c8\\u54c8\",\"issuesize\":\"11111222.00\",\"minimuminvestmentamount\":\"11111111.00\",\"increasingunit\":\"220.00\",\"producttermmonth\":\"14\",\"producttermday\":\"0\",\"contractquantity\":\"20\",\"establishmentscale\":\"10000.00\",\"riskrating\":\"10\",\"saleslevel\":\"1\",\"producttype\":\"1\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"0\",\"closedperiodday\":\"0\",\"ror\":\"0.1300\",\"commissionratio\":\"0.3300\",\"subscriptionfee\":\"0.0000\",\"performancereward\":\"0.0000\",\"managementexpense\":\"0.0000\",\"redemptionfee\":\"0.0000\",\"onlinedate\":\"2016\",\"establishmentday\":\"2016\",\"openday\":\"0\",\"duedate\":\"2016\",\"terminationday\":\"2016\",\"distributionmethod\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"tradingrivals\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmenttargets\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"assetguarantee\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"establishedconditions\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"note\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('199', '1', '1', '1475050059', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('200', '1', '1', '1475050059', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('201', '1', '1', '1475050061', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('202', '1', '1', '1475050062', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('203', '1', '1', '1475050063', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('204', '1', '1', '1475050076', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('205', '1', '1', '1475050078', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('206', '1', '1', '1475050080', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('207', '1', '1', '1475050080', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('208', '1', '1', '1475050081', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('209', '1', '1', '1475050082', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('210', '1', '1', '1475050083', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"4\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('211', '1', '1', '1475050086', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('212', '1', '1', '1475050091', 'Product/Product/edit', '产品管理/产品发布/产品编辑动作', '{\"id\":\"2\",\"name\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\",\"catagroyida\":\"1\",\"catagroyidb\":\"3\",\"catagroyidc\":\"16\",\"tradingstructure\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"productscale\":\"0.00\",\"productform\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"publisher\":\"\\u5f20\\u4e09\",\"custodian\":\"\\u54c8\\u54c8\",\"issuesize\":\"11111222.00\",\"minimuminvestmentamount\":\"11111111.00\",\"increasingunit\":\"220.00\",\"producttermmonth\":\"14\",\"producttermday\":\"0\",\"contractquantity\":\"20\",\"establishmentscale\":\"10000.00\",\"riskrating\":\"10\",\"saleslevel\":\"1\",\"producttype\":\"1\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"0\",\"closedperiodday\":\"0\",\"ror\":\"0.1300\",\"commissionratio\":\"0.3300\",\"subscriptionfee\":\"0.0000\",\"performancereward\":\"0.0000\",\"managementexpense\":\"0.0000\",\"redemptionfee\":\"0.0000\",\"onlinedate\":\"2016\",\"establishmentday\":\"2016\",\"openday\":\"0\",\"duedate\":\"2016\",\"terminationday\":\"2016\",\"distributionmethod\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"tradingrivals\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmenttargets\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"assetguarantee\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"establishedconditions\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"note\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('213', '1', '1', '1475050093', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('214', '1', '1', '1475050095', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('215', '1', '1', '1475050097', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('216', '1', '1', '1475050097', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('217', '1', '1', '1475050111', 'Product/Product/edit', '产品管理/产品发布/产品编辑动作', '{\"id\":\"2\",\"name\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\",\"catagroyida\":\"1\",\"catagroyidb\":\"3\",\"catagroyidc\":\"16\",\"tradingstructure\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"productscale\":\"11111112220.00\",\"productform\":\"\\u5373\\u65b9\\u6b63\\u8bc1\\u5238\\u6536\\u76ca\\u51ed\\u8bc1\\u7cfb\\u5217\\u4ea7\\u54c1\\uff0c\\u662f\\u6307\\u6211\\u53f8\\u901a\\u8fc7\\u4e2d\\u8bc1\\u62a5\\u4ef7\\u7cfb\\u7edf\\u6216\\u8005OTC\\u67dc\\u53f0\\u5e02\\u573a\\u53d1\\u884c\\u7684\\u3001\\u7ea6\\u5b9a\\u672c\\u91d1\\u548c\\u6536\\u76ca\\u7684\\u507f\\u4ed8\\u4e0e\\u7279\\u5b9a\\u6807\\u7684\\u6302\\u94a9\\u7684\\u6709\\u4ef7\\u8bc1\\u5238\\uff08\\u7279\\u5b9a\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\",\"publisher\":\"\\u5f20\\u4e09\",\"custodian\":\"\\u54c8\\u54c8\",\"issuesize\":\"11111222.00\",\"minimuminvestmentamount\":\"11111111.00\",\"increasingunit\":\"220.00\",\"producttermmonth\":\"14\",\"producttermday\":\"0\",\"contractquantity\":\"20\",\"establishmentscale\":\"10000.00\",\"riskrating\":\"10\",\"saleslevel\":\"1\",\"producttype\":\"1\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"0\",\"closedperiodday\":\"0\",\"ror\":\"0.1300\",\"commissionratio\":\"0.3300\",\"subscriptionfee\":\"0.0000\",\"performancereward\":\"0.0000\",\"managementexpense\":\"0.0000\",\"redemptionfee\":\"0.0000\",\"onlinedate\":\"2016\",\"establishmentday\":\"2016\",\"openday\":\"0\",\"duedate\":\"2016\",\"terminationday\":\"2016\",\"distributionmethod\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"tradingrivals\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmenttargets\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"assetguarantee\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"establishedconditions\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"note\":\"\\u6807\\u7684\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u80a1\\u6743\\u3001\\u503a\\u6743\\u3001\\u4fe1\\u7528\\u3001\\u57fa\\u91d1\\u3001\\u5229\\u7387\\u3001\\u6c47\\u7387\\u3001\\u6307\\u6570\\u3001\\u671f\\u8d27\\u53ca\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('218', '1', '1', '1475050112', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('219', '1', '1', '1475050370', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('220', '1', '1', '1475050376', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('221', '1', '1', '1475050377', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('222', '1', '1', '1475050378', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('223', '1', '1', '1475050379', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('224', '1', '1', '1475050381', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('225', '1', '1', '1475050382', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('226', '1', '1', '1475050383', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('227', '1', '1', '1475050387', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('228', '1', '1', '1475050388', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('229', '1', '1', '1475050388', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('230', '1', '1', '1475050406', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('231', '1', '1', '1475050408', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('232', '1', '1', '1475050408', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('233', '1', '1', '1475050442', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('234', '1', '1', '1475050577', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('235', '1', '1', '1475050578', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"1\",\"phone\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('236', '1', '1', '1475050680', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('237', '1', '1', '1475050681', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"1\",\"phone\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('238', '1', '1', '1475050686', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"phone\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('239', '1', '1', '1475050691', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"phone\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('240', '1', '1', '1475050695', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"phone\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('241', '1', '1', '1475050713', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('242', '1', '1', '1475050731', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"name\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('243', '1', '1', '1475050734', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('244', '1', '1', '1475056260', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('245', '1', '1', '1475056284', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('246', '1', '1', '1475117137', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('247', '1', '1', '1475117181', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('248', '1', '1', '1475117182', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('249', '1', '1', '1475117182', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('250', '1', '1', '1475117185', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('251', '1', '1', '1475117186', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('252', '1', '1', '1475117186', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('253', '1', '1', '1475120882', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('254', '1', '1', '1475124436', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('255', '1', '1', '1475124451', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('256', '1', '1', '1475124463', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('257', '1', '1', '1475124482', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('258', '1', '1', '1475124489', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('259', '1', '1', '1475124492', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('260', '1', '1', '1475124501', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('261', '1', '1', '1475124517', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('262', '1', '1', '1475124520', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('263', '1', '1', '1475124540', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('264', '1', '1', '1475124542', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('265', '1', '1', '1475124547', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('266', '1', '1', '1475124556', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('267', '1', '1', '1475124558', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('268', '1', '1', '1475124577', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('269', '1', '1', '1475124582', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('270', '1', '1', '1475124593', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('271', '1', '1', '1475124614', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('272', '1', '1', '1475124634', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('273', '1', '1', '1475124635', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('274', '1', '1', '1475124638', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('275', '1', '1', '1475124644', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('276', '1', '1', '1475124644', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('277', '1', '1', '1475124646', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('278', '1', '1', '1475124649', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('279', '1', '1', '1475124651', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('280', '1', '1', '1475124661', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('281', '1', '1', '1475124676', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('282', '1', '1', '1475124689', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('283', '1', '1', '1475124822', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('284', '1', '1', '1475125339', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('285', '1', '1', '1475125353', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('286', '1', '1', '1475125444', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('287', '1', '1', '1475125449', 'Crm/Sales/addPage', 'CRM管理/营销策略项管理/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('288', '1', '1', '1475125476', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('289', '1', '1', '1475125483', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('290', '1', '1', '1475125486', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('291', '1', '1', '1475127895', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('292', '1', '1', '1475127924', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('293', '1', '1', '1475128208', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('294', '1', '1', '1475128568', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('295', '1', '1', '1475128572', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('296', '1', '1', '1475128577', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('297', '1', '1', '1475128707', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('298', '1', '1', '1475128711', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('299', '1', '1', '1475128715', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('300', '1', '1', '1475128718', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('301', '1', '1', '1475128730', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('302', '1', '1', '1475129252', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('303', '1', '1', '1475129271', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('304', '1', '1', '1475129294', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('305', '1', '1', '1475129429', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('306', '1', '1', '1475129740', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('307', '1', '1', '1475129833', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('308', '1', '1', '1475130306', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('309', '1', '1', '1475130311', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('310', '1', '1', '1475130314', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"58\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('311', '1', '1', '1475130315', 'News/Newscat/edit', '新闻管理/新闻栏目/保存编辑新闻栏目', '{\"id\":\"58\",\"name\":\"\\u56db\\u5c423\",\"pid\":\"52\",\"level\":\"4\",\"code\":\"siceng3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('312', '1', '1', '1475130317', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('313', '1', '1', '1475130340', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('314', '1', '1', '1475130343', 'Crm/BAgent/freeze', 'CRM管理/会员管理/冻结用户', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('315', '1', '1', '1475130344', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('316', '1', '1', '1475130356', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"39\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('317', '1', '1', '1475130750', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('318', '1', '1', '1475130765', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('319', '1', '1', '1475130805', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('320', '1', '1', '1475130813', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('321', '1', '1', '1475130843', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('322', '1', '1', '1475130866', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('323', '1', '1', '1475130956', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('324', '1', '1', '1475131103', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('325', '1', '1', '1475131132', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\",\"name\":\"\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('326', '1', '1', '1475131179', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('327', '1', '1', '1475131183', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\",\"name\":\"\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('328', '1', '1', '1475131189', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('329', '1', '1', '1475131191', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\",\"name\":\"\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('330', '1', '1', '1475131202', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('331', '1', '1', '1475131257', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('332', '1', '1', '1475131260', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('333', '1', '1', '1475131265', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('334', '1', '1', '1475131428', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('335', '1', '1', '1475131472', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('336', '1', '1', '1475131691', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('337', '1', '1', '1475131692', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('338', '1', '1', '1475131694', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('339', '1', '1', '1475131695', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('340', '1', '1', '1475131733', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('341', '1', '1', '1475131757', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('342', '1', '1', '1475131762', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('343', '1', '1', '1475131832', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('344', '1', '1', '1475131837', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('345', '1', '1', '1475132005', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('346', '1', '1', '1475132009', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('347', '1', '1', '1475132059', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('348', '1', '1', '1475132063', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('349', '1', '1', '1475132072', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\\/Uploads\\/disclosure\\/2016-09-29\\/57ecba9f8dc25.png\",\"name\":\"\\u56fe\\u7247 (\\u7ebf\\u4e0a.png)\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('350', '1', '1', '1475132073', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('351', '1', '1', '1475132142', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('352', '1', '1', '1475132519', 'Product/Product/deletedDisclosureInfo', '产品管理/产品发布/删除产品披露信息', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('353', '1', '1', '1475132520', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('354', '1', '1', '1475132529', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('355', '1', '1', '1475132777', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('356', '1', '1', '1475132796', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('357', '1', '1', '1475132806', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('358', '1', '1', '1475132810', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('359', '1', '1', '1475132826', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('360', '1', '1', '1475132841', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\\/Uploads\\/disclosure\\/2016-09-29\\/57ecbd9a4dcd8.xls\",\"name\":\"(\\u95ee\\u9898\\u6e05\\u535520160926.xls)\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('361', '1', '1', '1475132842', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('362', '1', '1', '1475132904', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('363', '1', '1', '1475132907', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('364', '1', '1', '1475135065', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('365', '1', '1', '1475135105', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('366', '1', '1', '1475135108', 'Product/Product/deletedDisclosureInfo', '产品管理/产品发布/删除产品披露信息', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('367', '1', '1', '1475135110', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('368', '1', '1', '1475135119', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('369', '1', '1', '1475135892', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('370', '1', '1', '1475135918', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('371', '1', '1', '1475135928', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('372', '1', '1', '1475135933', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('373', '1', '1', '1475135973', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('374', '1', '1', '1475135980', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('375', '1', '1', '1475136007', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('376', '1', '1', '1475136012', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('377', '1', '1', '1475136015', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('378', '1', '1', '1475136020', 'Admin/Message/addPage', '用户中心/消息中心/添加消息', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('379', '1', '1', '1475136101', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('380', '1', '1', '1475136136', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('381', '1', '1', '1475136143', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('382', '1', '1', '1475136154', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('383', '1', '1', '1475136184', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('384', '1', '1', '1475136192', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('385', '1', '1', '1475136287', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('386', '1', '1', '1475136301', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('387', '1', '1', '1475136306', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('388', '1', '1', '1475136320', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('389', '1', '1', '1475136342', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('390', '1', '1', '1475136518', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('391', '1', '1', '1475136528', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('392', '1', '1', '1475136529', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('393', '1', '1', '1475136530', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('394', '1', '1', '1475136557', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('395', '1', '1', '1475136580', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('396', '1', '1', '1475136611', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('397', '1', '1', '1475136666', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('398', '1', '1', '1475136675', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"2\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('399', '1', '1', '1475136677', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('400', '1', '1', '1475136679', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('401', '1', '1', '1475136695', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('402', '1', '1', '1475136703', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"48\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('403', '1', '1', '1475136792', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('404', '1', '1', '1475136802', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('405', '1', '1', '1475136818', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('406', '1', '1', '1475136866', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"39\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('407', '1', '1', '1475136882', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('408', '1', '1', '1475136990', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('409', '1', '1', '1475137056', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('410', '1', '1', '1475137095', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('411', '1', '1', '1475137101', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('412', '1', '1', '1475137118', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('413', '1', '1', '1475137233', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('414', '1', '1', '1475137253', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('415', '1', '1', '1475137305', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"39\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('416', '1', '1', '1475137333', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('417', '1', '1', '1475137341', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('418', '1', '1', '1475137352', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('419', '1', '1', '1475137424', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('420', '1', '1', '1475137445', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('421', '1', '1', '1475137472', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('422', '1', '1', '1475137478', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('423', '1', '1', '1475137498', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('424', '1', '1', '1475137507', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('425', '1', '1', '1475137522', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('426', '1', '1', '1475137547', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('427', '1', '1', '1475137554', 'Admin/Message/addPage', '用户中心/消息中心/添加消息', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('428', '1', '1', '1475137571', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('429', '1', '1', '1475137627', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('430', '1', '1', '1475137649', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('431', '1', '1', '1475137659', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('432', '1', '1', '1475137669', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('433', '1', '1', '1475137706', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('434', '1', '1', '1475137765', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('435', '1', '1', '1475137775', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('436', '1', '1', '1475137789', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('437', '1', '1', '1475137801', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('438', '1', '1', '1475137940', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('439', '1', '1', '1475137943', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('440', '1', '1', '1475137947', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('441', '1', '1', '1475138020', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u535e\\u6069\\u4f1a\",\"credientialno\":\"342422199007072076\",\"phone\":\"15755129785\",\"email\":\"13637103410@163.com\",\"password\":\"13637103410@163.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('442', '1', '1', '1475138021', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('443', '1', '1', '1475138024', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('444', '1', '1', '1475138038', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('445', '1', '1', '1475138072', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('446', '1', '1', '1475138092', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('447', '1', '1', '1475138278', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('448', '1', '1', '1475138317', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('449', '1', '1', '1475138370', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('450', '1', '1', '1475138387', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('451', '1', '1', '1475138394', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('452', '1', '1', '1475138435', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('453', '1', '1', '1475138572', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('454', '1', '1', '1475140979', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('455', '1', '1', '1475141124', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('456', '1', '1', '1475141705', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('457', '1', '1', '1475141737', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"51\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('458', '1', '1', '1475142060', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('459', '1', '1', '1475142071', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('460', '1', '1', '1475142095', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('461', '1', '1', '1475198720', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('462', '1', '1', '1475198731', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('463', '1', '1', '1475198732', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('464', '1', '1', '1475198768', 'Admin/User/add', '用户中心/用户管理/添加用户', '{\"username\":\"\\u8d75\\u4f73\\u4e50\",\"jobnumber\":\"0000\",\"email\":\"franky.zhao@intelpure.com\",\"phone\":\"15502173369\",\"role\":[\"1\"],\"expiredate\":\"09\\/30\\/2017\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('465', '1', '1', '1475198769', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('466', '1', '1', '1475198799', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('467', '1', '1', '1475198817', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('468', '1', '1', '1475198822', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('469', '1', '1', '1475198824', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"19\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('470', '1', '1', '1475198830', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('471', '1', '1', '1475198983', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('472', '1', '1', '1475199089', 'Admin/User/add', '用户中心/用户管理/添加用户', '{\"username\":\"ronnie\",\"jobnumber\":\"0000\",\"email\":\"ronnie.pan@v-times.info\",\"phone\":\"18016032202\",\"role\":[\"1\"],\"expiredate\":\"09\\/30\\/2017\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('473', '1', '1', '1475199090', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('474', '1', '1', '1475199154', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('475', '1', '1', '1475199167', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('476', '1', '1', '1475199181', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('477', '1', '1', '1475199195', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('478', '1', '1', '1475199281', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('479', '1', '1', '1475199633', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('480', '1', '1', '1475199637', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('481', '1', '1', '1475199639', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('482', '1', '1', '1475199671', 'Admin/User/add', '用户中心/用户管理/添加用户', '{\"username\":\"987654\",\"jobnumber\":\"jb008978\",\"email\":\"4654@123.com\",\"phone\":\"16601621693\",\"role\":[\"1\"],\"expiredate\":\"09\\/30\\/2017\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('483', '1', '1', '1475199672', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('484', '1', '1', '1475199765', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('485', '21', '1', '1475199885', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('486', '21', '1', '1475199889', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('487', '21', '1', '1475199892', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('488', '21', '1', '1475199905', 'Admin/User/add', '用户中心/用户管理/添加用户', '{\"username\":\"111111111\",\"jobnumber\":\"111111111\",\"email\":\"11111@156.com\",\"phone\":\"18801621655\",\"role\":[\"1\"],\"expiredate\":\"09\\/30\\/2017\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('489', '21', '1', '1475199906', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('490', '22', '1', '1475199917', 'AgentHome/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('491', '22', '1', '1475199975', 'AgentHome/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('492', '22', '1', '1475200193', 'AgentHome/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('493', '1', '1', '1475200201', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('494', '1', '1', '1475200229', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('495', '1', '1', '1475200236', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('496', '19', '1', '1475200292', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('497', '22', '1', '1475200295', 'AgentHome/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('498', '21', '1', '1475200301', 'AgentHome/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('499', '1', '1', '1475200398', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('500', '1', '1', '1475200403', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('501', '1', '1', '1475200415', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('502', '1', '1', '1475200514', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('503', '1', '1', '1475200530', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('504', '1015', '2', '1475200542', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('505', '1015', '2', '1475200569', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('506', '1015', '2', '1475200587', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('507', '1015', '2', '1475200595', 'Product/Product/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('508', '1', '1', '1475200781', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('509', '1', '1', '1475200786', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('510', '1', '1', '1475200864', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('511', '1', '1', '1475200901', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('512', '1', '1', '1475200902', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('513', '1', '1', '1475200904', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('514', '1', '1', '1475200909', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('515', '1', '1', '1475200914', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('516', '1', '1', '1475200927', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('517', '1', '1', '1475200931', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('518', '1', '1', '1475200943', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('519', '22', '1', '1475201016', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('520', '22', '1', '1475201023', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('521', '1', '1', '1475201179', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('522', '1', '1', '1475201251', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('523', '1', '1', '1475201620', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('524', '1', '1', '1475201699', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('525', '1', '1', '1475201703', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('526', '1', '1', '1475201712', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('527', '1', '1', '1475201724', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('528', '1', '1', '1475201748', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('529', '1', '1', '1475201768', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('530', '1', '1', '1475201784', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('531', '1', '1', '1475201801', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('532', '1', '1', '1475201829', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('533', '1', '1', '1475201955', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('534', '1', '1', '1475201969', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('535', '1', '1', '1475202025', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('536', '1', '1', '1475202034', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('537', '1', '1', '1475202048', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('538', '1', '1', '1475202101', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('539', '1', '1', '1475202293', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('540', '1', '1', '1475202340', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('541', '1', '1', '1475202367', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('542', '1', '1', '1475202377', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('543', '1', '1', '1475202419', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('544', '1', '1', '1475202604', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('545', '1', '1', '1475202631', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('546', '1', '1', '1475202660', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('547', '1', '1', '1475202663', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('548', '1', '1', '1475202666', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('549', '1', '1', '1475202812', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('550', '1', '1', '1475202830', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('551', '1', '1', '1475202848', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('552', '1', '1', '1475202879', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('553', '1', '1', '1475202917', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('554', '1', '1', '1475202922', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('555', '1', '1', '1475202935', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('556', '1', '1', '1475202938', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('557', '1', '1', '1475202948', 'Admin/User/edit', '用户中心/用户管理/修改用户', '{\"id\":\"1\",\"username\":\"\\u6211\\u5c31\\u662f\\u7ba1\\u7406\\u5458\",\"jobnumber\":\"FM00010001\",\"email\":\"admin@fm.com\",\"phone\":\"18801621638\",\"role\":[\"1\"],\"expiredate\":\"09\\/12\\/2018\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('558', '1', '1', '1475202949', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('559', '1', '1', '1475202952', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('560', '1', '1', '1475202955', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('561', '1', '1', '1475202958', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('562', '1', '1', '1475202960', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('563', '1', '1', '1475202969', 'Admin/User/edit', '用户中心/用户管理/修改用户', '{\"id\":\"1\",\"username\":\"\\u6211\\u5c31\\u662f\\u7ba1\\u7406\\u5458\",\"jobnumber\":\"FM00010001\",\"email\":\"admin@fm.com\",\"phone\":\"18801621638\",\"role\":[\"1\"],\"expiredate\":\"09\\/13\\/2018\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('564', '1', '1', '1475202970', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('565', '1', '1', '1475202993', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('566', '1', '1', '1475202995', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('567', '1', '1', '1475203010', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('568', '1', '1', '1475203040', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('569', '1', '1', '1475203053', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('570', '1', '1', '1475203120', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('571', '1', '1', '1475203187', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('572', '1', '1', '1475203190', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('573', '1', '1', '1475203212', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('574', '1', '1', '1475203215', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('575', '1', '1', '1475203348', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('576', '1', '1', '1475203349', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('577', '1', '1', '1475203355', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('578', '1', '1', '1475203356', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('579', '1', '1', '1475203364', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('580', '1', '1', '1475203367', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('581', '1', '1', '1475203367', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('582', '1', '1', '1475203471', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('583', '1', '1', '1475203473', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('584', '1', '1', '1475203473', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('585', '1', '1', '1475203474', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('586', '1', '1', '1475203482', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('587', '1', '1', '1475203485', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('588', '1', '1', '1475203486', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('589', '1', '1', '1475203487', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('590', '1', '1', '1475203502', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('591', '19', '1', '1475203716', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('592', '1015', '2', '1475203971', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('593', '1015', '2', '1475204021', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('594', '1015', '2', '1475204140', 'AgentProduct/Market/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('595', '1015', '2', '1475204225', 'AgentProduct/Market/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('596', '1015', '2', '1475204227', 'AgentProduct/Market/index', '//', '{\"id\":\"1\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('597', '1015', '2', '1475204230', 'AgentProduct/Market/index', '//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('598', '1015', '2', '1475204488', 'AgentProduct/Market/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('599', '1', '1', '1475216272', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('600', '1', '1', '1475216279', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('601', '1', '1', '1475216290', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('602', '1', '1', '1475216291', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('603', '1', '1', '1475216293', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('604', '1', '1', '1475216294', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('605', '1', '1', '1475216298', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('606', '1', '1', '1475216299', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('607', '1', '1', '1475216326', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('608', '1', '1', '1475216328', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('609', '1', '1', '1475216329', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('610', '1', '1', '1475216330', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('611', '1', '1', '1475216368', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('612', '1', '1', '1475216375', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('613', '1', '1', '1475216375', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('614', '1', '1', '1475216376', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('615', '1', '1', '1475216384', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('616', '1', '1', '1475216388', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('617', '1', '1', '1475216399', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('618', '1', '1', '1475216401', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('619', '1', '1', '1475216407', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"3\",\"path\":\"\",\"name\":\"\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('620', '1', '1', '1475216494', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('621', '1', '1', '1475216503', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"3\",\"path\":\"\\/Uploads\\/disclosure\\/2016-09-30\\/57ee046e18f21.xls\",\"name\":\"(\\u8fdb\\u5ea6\\u8ba1\\u5212\\u8868.xls)\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('622', '1', '1', '1475216504', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('623', '1', '1', '1475216522', 'Product/Product/deletedDisclosureInfo', '产品管理/产品发布/删除产品披露信息', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('624', '1', '1', '1475216523', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('625', '1', '1', '1475216536', 'Product/Product/deletedDisclosureInfo', '产品管理/产品发布/删除产品披露信息', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('626', '1', '1', '1475216537', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('627', '1', '1', '1475216541', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('628', '1', '1', '1475216543', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('629', '1', '1', '1475216545', 'Product/Product/deletedDisclosureInfo', '产品管理/产品发布/删除产品披露信息', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('630', '1', '1', '1475216546', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('631', '1', '1', '1475216761', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"52\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('632', '1', '1', '1475216774', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('633', '1', '1', '1475216784', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"50\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('634', '1', '1', '1475216788', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('635', '1', '1', '1475804497', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('636', '1', '1', '1475804503', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('637', '1', '1', '1475804507', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('638', '1', '1', '1475804519', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('639', '1', '1', '1475804522', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('640', '1', '1', '1475804773', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('641', '1', '1', '1475804863', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('642', '19', '1', '1475804914', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('643', '19', '1', '1475804955', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('644', '19', '1', '1475804971', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('645', '19', '1', '1475804973', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('646', '19', '1', '1475805002', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('647', '19', '1', '1475805020', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('648', '19', '1', '1475805025', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('649', '19', '1', '1475805037', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"19\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('650', '19', '1', '1475805043', 'Admin/User/edit', '用户中心/用户管理/修改用户', '{\"id\":\"19\",\"username\":\"franky\",\"jobnumber\":\"0000\",\"email\":\"franky.zhao@intelpure.com\",\"phone\":\"15502173369\",\"role\":[\"1\"],\"expiredate\":\"09\\/30\\/2017\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('651', '19', '1', '1475805044', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('652', '19', '1', '1475805047', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('653', '19', '1', '1475805048', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('654', '19', '1', '1475805053', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('655', '19', '1', '1475805055', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('656', '19', '1', '1475805057', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"19\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('657', '1', '1', '1475805380', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('658', '1', '1', '1475805403', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('659', '1', '1', '1475805458', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('660', '1', '1', '1475805545', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('661', '1', '1', '1475805835', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('662', '1', '1', '1475806058', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('663', '1', '1', '1475806130', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('664', '1', '1', '1475807777', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('665', '1', '1', '1475807939', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('666', '1', '1', '1475808603', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('667', '1', '1', '1475808606', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('668', '1', '1', '1475808610', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('669', '1', '1', '1475808613', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('670', '1', '1', '1475808613', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('671', '1', '1', '1475808617', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('672', '1', '1', '1475808621', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('673', '1', '1', '1475808849', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('674', '1', '1', '1475808860', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('675', '1', '1', '1475808868', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('676', '1', '1', '1475808996', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('677', '1', '1', '1475809186', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('678', '1', '1', '1475809928', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('679', '1', '1', '1475809966', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('680', '1', '1', '1475810010', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('681', '1', '1', '1475810029', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('682', '1', '1', '1475810155', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('683', '1', '1', '1475810771', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('684', '1', '1', '1475810799', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('685', '1', '1', '1475810852', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('686', '1', '1', '1475810869', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('687', '1', '1', '1475810873', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('688', '1', '1', '1475810884', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('689', '1', '1', '1475810897', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('690', '1', '1', '1475811072', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('691', '1', '1', '1475811630', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('692', '1', '1', '1475812190', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('693', '1', '1', '1475812210', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('694', '1', '1', '1475812222', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('695', '1', '1', '1475812235', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('696', '1', '1', '1475812273', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('697', '1', '1', '1475819401', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('698', '1', '1', '1475819561', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('699', '1', '1', '1475819597', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('700', '1', '1', '1475819756', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('701', '1', '1', '1475819796', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('702', '1', '1', '1475819809', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('703', '1', '1', '1475819825', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('704', '1', '1', '1475819864', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('705', '1', '1', '1475819878', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('706', '1', '1', '1475819928', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('707', '1', '1', '1475819947', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('708', '1', '1', '1475819956', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('709', '1', '1', '1475819966', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('710', '1', '1', '1475819996', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('711', '1', '1', '1475820018', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('712', '1', '1', '1475820022', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('713', '1', '1', '1475820025', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('714', '1', '1', '1475820028', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('715', '1', '1', '1475820046', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('716', '1', '1', '1475820080', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('717', '1', '1', '1475820478', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('718', '1', '1', '1475820701', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('719', '1', '1', '1475820721', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('720', '1', '1', '1475820734', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('721', '1', '1', '1475820755', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('722', '1', '1', '1475820762', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('723', '1', '1', '1475820774', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('724', '1', '1', '1475820804', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('725', '1', '1', '1475820812', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('726', '1', '1', '1475820844', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('727', '1', '1', '1475820850', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('728', '1', '1', '1475820853', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('729', '1', '1', '1475820889', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('730', '1', '1', '1475820923', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('731', '1', '1', '1475820969', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\",\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('732', '1', '1', '1475820977', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('733', '1', '1', '1475820994', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('734', '1', '1', '1475821427', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('735', '1', '1', '1475821690', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('736', '1', '1', '1475821708', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('737', '1', '1', '1475821725', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('738', '1', '1', '1475821725', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('739', '1', '1', '1475821889', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('740', '1', '1', '1475821899', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('741', '1', '1', '1475822019', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('742', '1', '1', '1475822073', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('743', '1', '1', '1475822107', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('744', '1', '1', '1475822113', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('745', '1', '1', '1475822129', 'Product/Networth/edit', '产品管理//', '{\"id\":\"1\",\"datetime\":\"2016-10-06\",\"networt\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('746', '1', '1', '1475822280', 'Product/Networth/edit', '产品管理//', '{\"id\":\"1\",\"datetime\":\"2016-10-06\",\"networt\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('747', '19', '1', '1475823066', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('748', '1', '1', '1475823504', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('749', '1', '1', '1475823517', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('750', '1', '1', '1475823520', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('751', '1', '1', '1475823522', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('752', '1', '1', '1475823524', 'Product/Networth/edit', '产品管理//', '{\"id\":\"1\",\"datetime\":\"2016-10-06\",\"networth\":\"1.0006\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('753', '1', '1', '1475823541', 'Product/Networth/edit', '产品管理//', '{\"id\":\"1\",\"datetime\":\"2016-10-06\",\"networth\":\"1.0006\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('754', '1', '1', '1475823542', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('755', '1', '1', '1475823600', 'Product/Networth/edit', '产品管理//', '{\"id\":\"1\",\"datetime\":\"2016-10-06\",\"networth\":\"1.0006\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('756', '1', '1', '1475823601', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('757', '1', '1', '1475823635', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('758', '1', '1', '1475823638', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('759', '1', '1', '1475823641', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('760', '1', '1', '1475823643', 'Product/Networth/edit', '产品管理//', '{\"id\":\"2\",\"datetime\":\"2016-10-07\",\"networth\":\"0.9000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('761', '1', '1', '1475823644', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('762', '1', '1', '1475823649', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('763', '1', '1', '1475823653', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('764', '1', '1', '1475823657', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('765', '1', '1', '1475823661', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('766', '1', '1', '1475823665', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('767', '1', '1', '1475823670', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('768', '1', '1', '1475823674', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('769', '1', '1', '1475823678', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('770', '1', '1', '1475823682', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('771', '1', '1', '1475823688', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('772', '1', '1', '1475823695', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('773', '1', '1', '1475823701', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('774', '1', '1', '1475823707', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('775', '1', '1', '1475823714', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('776', '1', '1', '1475823722', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('777', '1', '1', '1475823729', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('778', '1', '1', '1475823737', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('779', '1', '1', '1475823744', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('780', '1', '1', '1475823752', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('781', '1', '1', '1475823759', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('782', '1', '1', '1475823765', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('783', '1', '1', '1475823772', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('784', '1', '1', '1475823778', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('785', '1', '1', '1475823780', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('786', '1', '1', '1475823782', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('787', '1', '1', '1475823784', 'Product/Networth/edit', '产品管理//', '{\"id\":\"2\",\"datetime\":\"2016-10-07\",\"networth\":\"0.9000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('788', '1', '1', '1475823785', 'Product/Networth/showNetworth', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('789', '1', '1', '1475823841', 'Product/Networth/showNetworth', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('790', '1', '1', '1475823844', 'Product/Networth/showNetworth', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('791', '1', '1', '1475823847', 'Product/Networth/edit', '产品管理//', '{\"id\":\"2\",\"datetime\":\"2016-10-07\",\"networth\":\"0.9000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('792', '1', '1', '1475823848', 'Product/Networth/showNetworth', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('793', '1', '1', '1475823883', 'Product/Networth/showNetworth', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('794', '1', '1', '1475823885', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('795', '1', '1', '1475823886', 'Product/Networth/edit', '产品管理//', '{\"id\":\"2\",\"productid\":\"4\",\"datetime\":\"2016-10-07\",\"networth\":\"0.9000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('796', '1', '1', '1475823887', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('797', '1', '1', '1475823898', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('798', '1', '1', '1475823901', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('799', '1', '1', '1475823903', 'Product/Networth/edit', '产品管理//', '{\"id\":\"3\",\"productid\":\"4\",\"datetime\":\"2016-10-08\",\"networth\":\"1.2000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('800', '1', '1', '1475823904', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('801', '1', '1', '1475825381', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('802', '1', '1', '1475825391', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('803', '19', '1', '1475825671', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('804', '1', '1', '1475825674', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('805', '1', '1', '1475825675', 'Product/Saleconfig/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('806', '19', '1', '1475825678', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('807', '1', '1', '1475825682', 'Product/Progress/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('808', '19', '1', '1475825690', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('809', '19', '1', '1475825700', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('810', '1', '1', '1475826133', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('811', '1', '1', '1475826136', 'Product/Networth/importNetworth', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('812', '1', '1', '1475826183', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('813', '1', '1', '1475826215', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"3\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('814', '1', '1', '1475826218', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('815', '1', '1', '1475826223', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"name\":\"\\u4e2d\\u6d77\\u53ef\\u8f6c\\u6362\\u503a\\u5238\\u503a\\u5238\\u578b\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1A\\u7c7b\\u4efd\\u989d\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('816', '1', '1', '1475826227', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('817', '1', '1', '1475826244', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('818', '1', '1', '1475826423', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('819', '1', '1', '1475826429', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('820', '1', '1', '1475826433', 'Product/Networth/index', '产品管理//', '{\"id\":\"3\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('821', '1', '1', '1475826435', 'Product/Networth/index', '产品管理//', '{\"id\":\"3\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('822', '1', '1', '1475826437', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('823', '1', '1', '1475826440', 'Product/Networth/index', '产品管理//', '{\"id\":\"4\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('824', '1', '1', '1475826442', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('825', '1', '1', '1475826445', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\\t\\u6613\\u65b9\\u8fbe\\u5929\\u5929\\u7406\\u8d22\\u8d27\\u5e01A\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('826', '1', '1', '1475826450', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\\u6613\\u65b9\\u8fbe\\u5929\\u5929\\u7406\\u8d22\\u8d27\\u5e01A\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('827', '1', '1', '1475826455', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('828', '1', '1', '1475826466', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('829', '1', '1', '1475826488', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('830', '1', '1', '1475827238', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('831', '1', '1', '1475827250', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('832', '1', '1', '1475827281', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('833', '1', '1', '1475827288', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('834', '1', '1', '1475827300', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('835', '1', '1', '1475827410', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('836', '1', '1', '1475827419', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('837', '1', '1', '1475827471', 'Product/Networth/index', '产品管理//', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('838', '1', '1', '1475827477', 'Product/Networth/index', '产品管理//', '{\"productid\":\"CP003\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('839', '1', '1', '1475827487', 'Product/Networth/index', '产品管理//', '{\"productid\":\"CP003\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('840', '1', '1', '1475827489', 'Product/Networth/index', '产品管理//', '{\"productno\":\"CP003\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('841', '1', '1', '1475827518', 'Product/Networth/index', '产品管理//', '{\"productno\":\"CP003\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('842', '1', '1', '1475827523', 'Product/Networth/index', '产品管理//', '{\"productno\":\"CP004\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('843', '1', '1', '1475827528', 'Product/Networth/index', '产品管理//', '{\"productno\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('844', '19', '1', '1475827621', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('845', '19', '1', '1475827624', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('846', '19', '1', '1475827629', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\",\"name\":\"\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('847', '19', '1', '1475827682', 'Product/Saleconfig/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('848', '19', '1', '1475827683', 'Product/Progress/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('849', '19', '1', '1475827684', 'Product/Recommand/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('850', '19', '1', '1475827689', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('851', '19', '1', '1475827699', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('852', '19', '1', '1475827700', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('853', '19', '1', '1475827702', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('854', '19', '1', '1475827703', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('855', '19', '1', '1475827708', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('856', '19', '1', '1475827708', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('857', '19', '1', '1475827709', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('858', '19', '1', '1475827760', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('859', '19', '1', '1475827761', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('860', '19', '1', '1475827762', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('861', '19', '1', '1475827769', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('862', '19', '1', '1475827811', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('863', '19', '1', '1475827817', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('864', '19', '1', '1475827825', 'Admin/Feedback/handle', '用户中心/意见反馈/处理意见反馈', '{\"request\":[\"5\",\"3\",\"4\",\"1\"]}', 'POST');
INSERT INTO `fm_action_record` VALUES ('865', '19', '1', '1475827827', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('866', '19', '1', '1475827831', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('867', '19', '1', '1475827840', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('868', '19', '1', '1475827841', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('869', '19', '1', '1475827844', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('870', '19', '1', '1475827851', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('871', '19', '1', '1475827898', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('872', '19', '1', '1475827899', 'Sysset/Profile/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('873', '19', '1', '1475827902', 'Sysset/Interface/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('874', '19', '1', '1475827902', 'Sysset/Domain/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('875', '19', '1', '1475827903', 'Sysset/Help/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('876', '19', '1', '1475827918', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('877', '1', '1', '1475828531', 'Product/Networth/index', '产品管理//', '{\"productno\":\"\",\"name\":\"\"}', 'GET');

-- ----------------------------
-- Table structure for fm_order
-- ----------------------------
DROP TABLE IF EXISTS `fm_order`;
CREATE TABLE `fm_order` (
  `id` int(11) NOT NULL,
  `orderno` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `aproductid` int(11) DEFAULT NULL,
  `bagentid` int(11) DEFAULT NULL COMMENT '小b代理ID',
  `bproductid` int(11) DEFAULT NULL,
  `sellerid` int(11) DEFAULT NULL COMMENT '卖方id(如果是小b的话，为小b的c账户ID)',
  `buyerid` int(11) DEFAULT NULL COMMENT '买方id (如果是小b的话，为小b的c账户ID)',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型  1 大B->小B代理方式->小C   2 小B->C',
  `share` int(11) DEFAULT NULL COMMENT '份额',
  `amount` float(11,2) DEFAULT NULL COMMENT '总金额',
  `price` float(11,4) DEFAULT '0.0000' COMMENT '单价',
  `networth` float(11,4) DEFAULT NULL COMMENT '买时净值',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态 审核 反审核 作废 反作废  0: 待支付，1：已支付，2：作废',
  `hash` varchar(64) DEFAULT NULL COMMENT '加密hash',
  `createtime` int(11) DEFAULT NULL COMMENT '订单创建时间',
  `paytime` int(11) DEFAULT '0' COMMENT '付款成功时间',
  `paytype` tinyint(2) DEFAULT '0' COMMENT '付款类型',
  `paystatus` tinyint(1) DEFAULT '0' COMMENT '支付状态 0未付款 1 已付款',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `sellerid` (`sellerid`),
  KEY `buyerid` (`buyerid`),
  KEY `type` (`type`),
  KEY `share` (`share`),
  KEY `networth` (`networth`),
  KEY `status` (`status`),
  KEY `hash` (`hash`),
  KEY `createtime` (`createtime`),
  KEY `paytime` (`paytime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='订单表';

-- ----------------------------
-- Records of fm_order
-- ----------------------------
INSERT INTO `fm_order` VALUES ('1', 'DD201609271138123456', '1', '1', '1', '1', '1002', '1', '200000', '2002000.00', '1.0100', '1.0100', '0', '32weidehashjiami', '147000000', '0', '0', '0');
INSERT INTO `fm_order` VALUES ('2', 'DDasda93749850840504', '2', '1', '2', '1', '1003', '1', '20', '30000.00', '1.0200', '1.0200', '0', 'asdadasdasds', '147650000', '0', '0', '0');

-- ----------------------------
-- Table structure for invite
-- ----------------------------
DROP TABLE IF EXISTS `invite`;
CREATE TABLE `invite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `inviteid` int(11) DEFAULT NULL COMMENT '邀请方ID',
  `invitedid` int(11) DEFAULT NULL COMMENT '被邀请方id',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型，b-b b-c c-c',
  `createtime` int(11) DEFAULT NULL COMMENT '邀请时间',
  `credientialno` bigint(20) DEFAULT NULL COMMENT '身份证号码',
  `phone` bigint(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(32) DEFAULT NULL,
  `validate` int(12) DEFAULT NULL COMMENT '有效期',
  `invitecode` varchar(32) DEFAULT NULL COMMENT '邀请码',
  `hash` varchar(32) DEFAULT NULL COMMENT '唯一辨识字符串',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `inviteid` (`inviteid`),
  KEY `invitedid` (`invitedid`),
  KEY `type` (`type`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='邀请注册表';

-- ----------------------------
-- Records of invite
-- ----------------------------
INSERT INTO `invite` VALUES ('21', null, '37', '1', '1474337679', '140321199108020012', '18800000000', '11@qq.com', 'vestin', '1474424079', '898453', 'ceb07c42');
INSERT INTO `invite` VALUES ('22', null, null, '1', '1474338050', '140321111111111111', '18801222222', '11@qq.com', 'nihao', '1474424450', '557110', 'd80a47c2');
INSERT INTO `invite` VALUES ('23', null, '38', '1', '1474341020', '140321199108020012', '18801621639', 'bombzds@163.com', 'vestin2', '1474427420', '752467', '0dfd4964');
INSERT INTO `invite` VALUES ('24', null, '39', '1', '1474448309', '140321111102020012', '18801621640', 'bombzds2@163.com', '张三', '1474534709', '367243', 'b5956d29');
INSERT INTO `invite` VALUES ('25', null, '40', '1', '1474525671', '140321199105050045', '18801621637', '456@qq.com', '123456', '1474612071', '643421', 'a411668c');
INSERT INTO `invite` VALUES ('26', null, null, '1', '1474595220', '310111198312071111', '15502173369', 'franky.zhao@intelpure.com', 'franky', '1474681620', '365176', '3bdc4c88');
INSERT INTO `invite` VALUES ('18', null, '36', '1', '1474252262', '140321199108020011', '18801565656', '1321321@qq.com', 'vadfasdf', '1111111111', '268993', '71f5d94f');

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL COMMENT '标题',
  `keyword` varchar(255) DEFAULT NULL COMMENT '关键字',
  `description` varchar(255) DEFAULT NULL COMMENT '简介',
  `author` varchar(255) DEFAULT NULL COMMENT '作者',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `isdeleted` tinyint(1) DEFAULT NULL COMMENT '是否删除',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `categoryid` int(11) DEFAULT NULL COMMENT '栏目ID',
  `likecount` int(11) DEFAULT NULL COMMENT '点赞',
  `replaycount` int(11) DEFAULT NULL COMMENT '回复总量',
  `viewcount` int(11) DEFAULT NULL COMMENT '浏览量',
  `publishtime` int(11) DEFAULT NULL COMMENT '发布时间',
  `publishstatus` int(11) DEFAULT NULL COMMENT '发布状态',
  `publisher` varchar(32) DEFAULT NULL COMMENT '发布人',
  `publisherid` int(11) DEFAULT NULL COMMENT '发布者id',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `title` (`title`),
  KEY `keyword` (`keyword`),
  KEY `author` (`author`),
  KEY `createtime` (`createtime`),
  KEY `isdeleted` (`isdeleted`),
  KEY `source` (`source`),
  KEY `categoryid` (`categoryid`),
  KEY `likecount` (`likecount`),
  KEY `replaycount` (`replaycount`),
  KEY `viewcount` (`viewcount`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知识表';

-- ----------------------------
-- Records of knowledge
-- ----------------------------

-- ----------------------------
-- Table structure for knowledge_attachement
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_attachement`;
CREATE TABLE `knowledge_attachement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '附件名称',
  `type` varchar(32) DEFAULT NULL COMMENT '文件类型',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `name` (`name`),
  KEY `type` (`type`),
  KEY `path` (`path`) USING BTREE,
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知识附件表';

-- ----------------------------
-- Records of knowledge_attachement
-- ----------------------------

-- ----------------------------
-- Table structure for knowledge_catagroy
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_catagroy`;
CREATE TABLE `knowledge_catagroy` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `isleaf` varchar(255) DEFAULT NULL COMMENT '是否子节点',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `level` int(11) DEFAULT NULL COMMENT '层级',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知识分类表';

-- ----------------------------
-- Records of knowledge_catagroy
-- ----------------------------

-- ----------------------------
-- Table structure for knowledge_content
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_content`;
CREATE TABLE `knowledge_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsid` int(11) DEFAULT NULL,
  `content` text COMMENT '新闻内容',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `newsid` (`newsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知识内容表';

-- ----------------------------
-- Records of knowledge_content
-- ----------------------------

-- ----------------------------
-- Table structure for knowledge_reply
-- ----------------------------
DROP TABLE IF EXISTS `knowledge_reply`;
CREATE TABLE `knowledge_reply` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `knowledgeid` int(11) DEFAULT NULL,
  `userid` int(11) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL COMMENT '回复者类型 1 大b 2 小b',
  `followid` int(11) DEFAULT NULL COMMENT '回复人对方id',
  `content` varchar(255) DEFAULT NULL COMMENT '回复内容',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `knowledgeid` (`knowledgeid`),
  KEY `buserid` (`userid`),
  KEY `followid` (`followid`),
  KEY `content` (`content`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='知识中心回复表';

-- ----------------------------
-- Records of knowledge_reply
-- ----------------------------

-- ----------------------------
-- Table structure for param
-- ----------------------------
DROP TABLE IF EXISTS `param`;
CREATE TABLE `param` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL COMMENT '用户ID 如果是 ifa，则为agentid，如果是c客户，则为c客户的id',
  `name` varchar(255) DEFAULT NULL COMMENT '参数key',
  `value` varchar(255) DEFAULT NULL COMMENT '声明内容',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `createuser` varchar(32) DEFAULT NULL,
  `createuserid` int(11) DEFAULT NULL,
  `updatetime` int(11) DEFAULT NULL,
  `updateuser` varchar(32) DEFAULT NULL,
  `updateuserid` int(11) DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL COMMENT '是否删除',
  `type` varchar(255) DEFAULT NULL COMMENT '0 平台方 1 IFA方 2 C方',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`agentid`),
  KEY `name` (`name`),
  KEY `value` (`value`),
  KEY `createtime` (`createtime`),
  KEY `isdeleted` (`isdeleted`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='系统参数';

-- ----------------------------
-- Records of param
-- ----------------------------

-- ----------------------------
-- Table structure for question_final_result
-- ----------------------------
DROP TABLE IF EXISTS `question_final_result`;
CREATE TABLE `question_final_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) DEFAULT NULL,
  `result` varchar(255) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `buserid` (`buserid`),
  KEY `result` (`result`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线测试最终成绩表';

-- ----------------------------
-- Records of question_final_result
-- ----------------------------

-- ----------------------------
-- Table structure for questionrisk_final_result
-- ----------------------------
DROP TABLE IF EXISTS `questionrisk_final_result`;
CREATE TABLE `questionrisk_final_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `usertype` int(11) DEFAULT NULL COMMENT '用户类型',
  `result` varchar(255) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `buserid` (`userid`),
  KEY `result` (`result`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线测试最终成绩表';

-- ----------------------------
-- Records of questionrisk_final_result
-- ----------------------------

-- ----------------------------
-- Table structure for questions
-- ----------------------------
DROP TABLE IF EXISTS `questions`;
CREATE TABLE `questions` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '类型 单选 多选',
  `answerlist` varchar(255) DEFAULT NULL COMMENT '答案列表',
  `rightanswer` varchar(255) DEFAULT NULL COMMENT '正确答案',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `risktest` tinyint(1) DEFAULT NULL COMMENT '是否是风险测试题库',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `question` (`question`),
  KEY `type` (`type`),
  KEY `answerlist` (`answerlist`),
  KEY `rightanswer` (`rightanswer`),
  KEY `createtime` (`createtime`),
  KEY `isdeleted` (`isdeleted`),
  KEY `risktest` (`risktest`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='题库表';

-- ----------------------------
-- Records of questions
-- ----------------------------

-- ----------------------------
-- Table structure for questions_result
-- ----------------------------
DROP TABLE IF EXISTS `questions_result`;
CREATE TABLE `questions_result` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) DEFAULT NULL,
  `questionid` int(11) DEFAULT NULL,
  `youranswer` varchar(255) DEFAULT NULL,
  `rightanswer` varchar(255) DEFAULT NULL,
  `isright` varchar(255) DEFAULT NULL COMMENT '是否回答正确',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线考试表';

-- ----------------------------
-- Records of questions_result
-- ----------------------------

-- ----------------------------
-- Table structure for questionsrisk
-- ----------------------------
DROP TABLE IF EXISTS `questionsrisk`;
CREATE TABLE `questionsrisk` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '类型 单选 多选',
  `answerlist` varchar(255) DEFAULT NULL COMMENT '答案列表',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `question` (`question`),
  KEY `type` (`type`),
  KEY `answerlist` (`answerlist`),
  KEY `createtime` (`createtime`),
  KEY `isdeleted` (`isdeleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='题库表';

-- ----------------------------
-- Records of questionsrisk
-- ----------------------------

-- ----------------------------
-- Table structure for redemption
-- ----------------------------
DROP TABLE IF EXISTS `redemption`;
CREATE TABLE `redemption` (
  `id` int(11) NOT NULL,
  `assetid` int(11) NOT NULL,
  `cuserid` int(11) NOT NULL,
  `transactionno` varchar(32) DEFAULT NULL COMMENT '交易流水号',
  `status` tinyint(2) DEFAULT NULL COMMENT '审核状态',
  `paystatus` int(4) DEFAULT NULL COMMENT '支付状态',
  `amount` varchar(255) DEFAULT NULL COMMENT '退款金额',
  `createtime` int(11) DEFAULT NULL,
  `reviewer` varchar(32) DEFAULT NULL COMMENT '审核人',
  `reviewerid` int(11) DEFAULT NULL COMMENT '审核人id',
  `reviewetime` int(11) DEFAULT NULL COMMENT '审核时间',
  `reviewnote` varchar(1000) DEFAULT NULL COMMENT '审核意见',
  `payer` varchar(32) DEFAULT NULL COMMENT '支付人名称',
  `payerid` int(11) DEFAULT NULL COMMENT '支付人id',
  `paytime` int(11) DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='赎回表';

-- ----------------------------
-- Records of redemption
-- ----------------------------

-- ----------------------------
-- Table structure for refund
-- ----------------------------
DROP TABLE IF EXISTS `refund`;
CREATE TABLE `refund` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `cuserid` int(11) DEFAULT NULL COMMENT '退款方',
  `agentid` int(11) DEFAULT NULL COMMENT '接收退款方',
  `type` tinyint(2) DEFAULT NULL COMMENT '类型 b-a   c-a',
  `orderid` int(11) DEFAULT NULL COMMENT '退款订单号',
  `assetid` int(11) DEFAULT NULL COMMENT '对应资产id',
  `status` tinyint(2) DEFAULT NULL COMMENT '审核状态',
  `paystatus` int(4) DEFAULT NULL COMMENT '支付状态',
  `amount` varchar(255) DEFAULT NULL COMMENT '退款金额',
  `createtime` int(11) DEFAULT NULL,
  `reviewer` varchar(32) DEFAULT NULL COMMENT '审核人',
  `reviewerid` int(11) DEFAULT NULL COMMENT '审核人id',
  `reviewetime` int(11) DEFAULT NULL COMMENT '审核时间',
  `reviewnote` varchar(1000) DEFAULT NULL COMMENT '审核意见',
  `payer` varchar(32) DEFAULT NULL COMMENT '支付人名称',
  `payerid` int(11) DEFAULT NULL COMMENT '支付人id',
  `paytime` int(11) DEFAULT NULL COMMENT '支付时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `refundid` (`cuserid`),
  KEY `recieveid` (`agentid`),
  KEY `type` (`type`),
  KEY `orderid` (`orderid`),
  KEY `status` (`status`),
  KEY `amount` (`amount`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='退款表';

-- ----------------------------
-- Records of refund
-- ----------------------------

-- ----------------------------
-- Table structure for service
-- ----------------------------
DROP TABLE IF EXISTS `service`;
CREATE TABLE `service` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `servicerid` int(11) DEFAULT NULL,
  `customerid` int(11) DEFAULT NULL,
  `servicetype` tinyint(4) DEFAULT NULL COMMENT '1 a->b  a->c  b->c',
  `type` varchar(255) DEFAULT NULL COMMENT '记录类别 1电话拜访 2实体拜访',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `buserid` (`servicerid`),
  KEY `cuserid` (`customerid`),
  KEY `type` (`type`),
  KEY `note` (`note`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA 服务表';

-- ----------------------------
-- Records of service
-- ----------------------------

-- ----------------------------
-- View structure for a_b_user
-- ----------------------------
DROP VIEW IF EXISTS `a_b_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `a_b_user` AS select 'a_user' AS `flag`,`a_user`.`id` AS `id`,`a_user`.`username` AS `username`,`a_user`.`email` AS `email`,`a_user`.`phone` AS `phone` from `a_user` union select 'b_agent_user' AS `flag`,`b_agent_user`.`id` AS `id`,`b_agent_user`.`username` AS `username`,`b_agent_user`.`email` AS `email`,`b_agent_user`.`phone` AS `phone` from `b_agent_user` ;

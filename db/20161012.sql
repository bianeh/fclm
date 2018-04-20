/*
Navicat MySQL Data Transfer

Source Server         : Fengchao yun
Source Server Version : 50621
Source Host           : 139.224.27.12:3306
Source Database       : Fengchao

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-10-12 17:21:13
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for #a_agent_access
-- ----------------------------
DROP TABLE IF EXISTS `#a_agent_access`;
CREATE TABLE `#a_agent_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台管理员权限表';

-- ----------------------------
-- Records of #a_agent_access
-- ----------------------------
INSERT INTO `#a_agent_access` VALUES ('1', '1', '1', null);
INSERT INTO `#a_agent_access` VALUES ('1', '3', '1', null);
INSERT INTO `#a_agent_access` VALUES ('1', '4', '1', null);
INSERT INTO `#a_agent_access` VALUES ('1', '5', '1', null);
INSERT INTO `#a_agent_access` VALUES ('1', '6', '1', null);
INSERT INTO `#a_agent_access` VALUES ('1', '7', '1', null);
INSERT INTO `#a_agent_access` VALUES ('1', '8', '1', null);
INSERT INTO `#a_agent_access` VALUES ('1', '9', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '10', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '11', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '12', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '13', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '14', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '15', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '16', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '17', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '18', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '19', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '20', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '21', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '22', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '23', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '24', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '25', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '144', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '145', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '146', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '147', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '148', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '149', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '150', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '151', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '152', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '152', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '154', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '155', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '156', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '157', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '158', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '159', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '160', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '161', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '162', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '163', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '164', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '165', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '166', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '167', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '168', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '169', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '170', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '171', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '172', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '173', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '188', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '175', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '176', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '177', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '178', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '179', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '180', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '181', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '182', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '183', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '184', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '185', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '186', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '187', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '189', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '189', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '190', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '191', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '192', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '193', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '194', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '195', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '196', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '197', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '198', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '199', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '200', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '201', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '202', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '203', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '204', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '205', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '206', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '207', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '208', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '209', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '210', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '211', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '2', '1', null);
INSERT INTO `#a_agent_access` VALUES ('1', '212', '2', null);
INSERT INTO `#a_agent_access` VALUES ('1', '213', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '214', '3', null);
INSERT INTO `#a_agent_access` VALUES ('1', '215', '3', null);
INSERT INTO `#a_agent_access` VALUES ('21', '4', '1', null);

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
INSERT INTO `a_access` VALUES ('1', '235', '2', null);
INSERT INTO `a_access` VALUES ('1', '236', '3', null);
INSERT INTO `a_access` VALUES ('1', '237', '3', null);
INSERT INTO `a_access` VALUES ('1', '238', '3', null);
INSERT INTO `a_access` VALUES ('1', '239', '3', null);
INSERT INTO `a_access` VALUES ('1', '240', '3', null);
INSERT INTO `a_access` VALUES ('1', '241', '3', null);
INSERT INTO `a_access` VALUES ('1', '242', '3', null);
INSERT INTO `a_access` VALUES ('1', '243', '1', null);
INSERT INTO `a_access` VALUES ('1', '244', '2', null);
INSERT INTO `a_access` VALUES ('1', '245', '3', null);
INSERT INTO `a_access` VALUES ('1', '246', '3', null);
INSERT INTO `a_access` VALUES ('1', '247', '3', '');
INSERT INTO `a_access` VALUES ('1', '248', '3', null);
INSERT INTO `a_access` VALUES ('1', '249', '3', null);
INSERT INTO `a_access` VALUES ('1', '250', '3', null);
INSERT INTO `a_access` VALUES ('1', '251', '2', null);
INSERT INTO `a_access` VALUES ('1', '252', '3', null);
INSERT INTO `a_access` VALUES ('1', '253', '3', null);
INSERT INTO `a_access` VALUES ('1', '254', '3', null);
INSERT INTO `a_access` VALUES ('1', '255', '3', null);
INSERT INTO `a_access` VALUES ('1', '256', '3', null);
INSERT INTO `a_access` VALUES ('1', '9', '2', null);
INSERT INTO `a_access` VALUES ('1', '5', '1', null);
INSERT INTO `a_access` VALUES ('1', '237', '3', null);
INSERT INTO `a_access` VALUES ('1', '235', '2', null);
INSERT INTO `a_access` VALUES ('1', '217', '3', null);
INSERT INTO `a_access` VALUES ('1', '216', '2', null);
INSERT INTO `a_access` VALUES ('1', '3', '1', null);
INSERT INTO `a_access` VALUES ('1', '176', '3', null);
INSERT INTO `a_access` VALUES ('1', '10', '2', null);
INSERT INTO `a_access` VALUES ('1', '188', '3', null);
INSERT INTO `a_access` VALUES ('1', '13', '2', null);
INSERT INTO `a_access` VALUES ('1', '175', '2', null);
INSERT INTO `a_access` VALUES ('1', '6', '1', null);
INSERT INTO `a_access` VALUES ('1', '218', '2', null);
INSERT INTO `a_access` VALUES ('1', '219', '3', null);
INSERT INTO `a_access` VALUES ('1', '7', '1', null);
INSERT INTO `a_access` VALUES ('1', '14', '2', null);
INSERT INTO `a_access` VALUES ('1', '25', '3', null);
INSERT INTO `a_access` VALUES ('1', '166', '3', null);
INSERT INTO `a_access` VALUES ('1', '15', '2', null);
INSERT INTO `a_access` VALUES ('1', '156', '3', null);
INSERT INTO `a_access` VALUES ('1', '16', '2', null);
INSERT INTO `a_access` VALUES ('1', '18', '3', null);
INSERT INTO `a_access` VALUES ('1', '19', '3', null);
INSERT INTO `a_access` VALUES ('1', '20', '3', null);
INSERT INTO `a_access` VALUES ('1', '23', '3', null);
INSERT INTO `a_access` VALUES ('1', '17', '2', null);
INSERT INTO `a_access` VALUES ('1', '152', '3', null);
INSERT INTO `a_access` VALUES ('1', '152', '3', null);
INSERT INTO `a_access` VALUES ('1', '154', '3', null);
INSERT INTO `a_access` VALUES ('1', '155', '3', null);
INSERT INTO `a_access` VALUES ('1', '215', '3', null);
INSERT INTO `a_access` VALUES ('1', '8', '1', null);
INSERT INTO `a_access` VALUES ('1', '144', '2', null);
INSERT INTO `a_access` VALUES ('1', '146', '3', null);
INSERT INTO `a_access` VALUES ('1', '147', '3', null);
INSERT INTO `a_access` VALUES ('1', '148', '3', null);
INSERT INTO `a_access` VALUES ('1', '149', '3', null);
INSERT INTO `a_access` VALUES ('1', '150', '3', null);
INSERT INTO `a_access` VALUES ('1', '151', '3', null);
INSERT INTO `a_access` VALUES ('1', '145', '2', null);
INSERT INTO `a_access` VALUES ('1', '241', '3', null);
INSERT INTO `a_access` VALUES ('1', '242', '3', null);
INSERT INTO `a_access` VALUES ('1', '3', '1', null);
INSERT INTO `a_access` VALUES ('1', '216', '2', null);
INSERT INTO `a_access` VALUES ('1', '217', '3', null);
INSERT INTO `a_access` VALUES ('1', '237', '3', null);
INSERT INTO `a_access` VALUES ('1', '243', '1', null);
INSERT INTO `a_access` VALUES ('1', '244', '2', null);
INSERT INTO `a_access` VALUES ('1', '245', '3', null);
INSERT INTO `a_access` VALUES ('1', '246', '3', null);
INSERT INTO `a_access` VALUES ('1', '247', '3', null);
INSERT INTO `a_access` VALUES ('1', '248', '3', null);
INSERT INTO `a_access` VALUES ('1', '249', '3', null);
INSERT INTO `a_access` VALUES ('1', '250', '3', null);
INSERT INTO `a_access` VALUES ('1', '251', '2', null);
INSERT INTO `a_access` VALUES ('1', '252', '3', null);
INSERT INTO `a_access` VALUES ('1', '253', '3', null);
INSERT INTO `a_access` VALUES ('1', '254', '3', null);
INSERT INTO `a_access` VALUES ('1', '255', '3', null);
INSERT INTO `a_access` VALUES ('1', '256', '3', null);
INSERT INTO `a_access` VALUES ('1', '257', '3', null);
INSERT INTO `a_access` VALUES ('1', '258', '3', null);
INSERT INTO `a_access` VALUES ('1', '259', '3', null);
INSERT INTO `a_access` VALUES ('1', '260', '3', null);
INSERT INTO `a_access` VALUES ('1', '261', '3', null);
INSERT INTO `a_access` VALUES ('1', '262', '3', null);

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
-- Table structure for a_agent_template
-- ----------------------------
DROP TABLE IF EXISTS `a_agent_template`;
CREATE TABLE `a_agent_template` (
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
-- Records of a_agent_template
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
  `status` smallint(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shopid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='域名管理';

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
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `shopid` (`agentid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='域名申请记录管理';

-- ----------------------------
-- Records of a_domain_apply
-- ----------------------------
INSERT INTO `a_domain_apply` VALUES ('1', '1015', '1015', 'www.englisdddddssssh.com', '1475919556');
INSERT INTO `a_domain_apply` VALUES ('2', '1015', '1015', 'www.englisdddddssh.com', '1475979122');
INSERT INTO `a_domain_apply` VALUES ('3', '1015', '1015', 'www.english.com', '1475979137');
INSERT INTO `a_domain_apply` VALUES ('4', '1015', '1015', 'www.english.com', '1475980274');
INSERT INTO `a_domain_apply` VALUES ('5', '1015', '1015', 'www.wr.com', '1475980464');
INSERT INTO `a_domain_apply` VALUES ('6', '1015', '1015', 'www.sss.com', '1476155674');

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
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='营销策略表';

-- ----------------------------
-- Records of a_marketing_strategy
-- ----------------------------
INSERT INTO `a_marketing_strategy` VALUES ('1', '集合打折策略1', '两个', '1474097691', '0', null, null, null, '1474171896', null);
INSERT INTO `a_marketing_strategy` VALUES ('11', '集合打折策略 2', '没有添加描述 有描述了', '1474099477', '0', '待处理', '10086', null, '1474102365', null);
INSERT INTO `a_marketing_strategy` VALUES ('12', '就打一个折', '没有添加描述 1', '1474099793', '0', '待处理', '10086', null, '1474102380', null);
INSERT INTO `a_marketing_strategy` VALUES ('13', '集合打折5', '集合 5 策略描述', '1474100212', '0', '待处理', '10086', null, null, null);
INSERT INTO `a_marketing_strategy` VALUES ('14', '打打打', '打打打', '1476086417', '0', '待处理', '10086', null, null, null);

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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='营销策略项';

-- ----------------------------
-- Records of a_marketing_strategy_item
-- ----------------------------
INSERT INTO `a_marketing_strategy_item` VALUES ('1', '打9折', '打9折lalal 1', '1', '9', '1474084013', '0');
INSERT INTO `a_marketing_strategy_item` VALUES ('2', '打5折', '没有添加描述', '1', '5', '1474090865', '0');
INSERT INTO `a_marketing_strategy_item` VALUES ('3', '打3折', '没有添加描述', '1', '3', '1474099923', '0');
INSERT INTO `a_marketing_strategy_item` VALUES ('4', '打4折', '打4折啊啊啊策略项描述', '1', '4', '1474100176', '0');
INSERT INTO `a_marketing_strategy_item` VALUES ('5', '返现9元', '策略项描述 返现9元', '2', '9', '1474103636', '0');
INSERT INTO `a_marketing_strategy_item` VALUES ('6', '9.5折', '9.5折', '1', '9', '1476086348', '0');

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
INSERT INTO `a_marketing_strategy_relation` VALUES ('14', '6');
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
-- Table structure for a_message_ sms_email_queue
-- ----------------------------
DROP TABLE IF EXISTS `a_message_ sms_email_queue`;
CREATE TABLE `a_message_ sms_email_queue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(32) DEFAULT NULL COMMENT '消息类型: 1短信，2邮件',
  `email_content` varchar(1000) NOT NULL COMMENT '消息内容',
  `sms_content` varchar(140) NOT NULL,
  `recieveid` int(11) DEFAULT NULL COMMENT '接受方ID',
  `level` tinyint(4) DEFAULT '0' COMMENT '         如果是平台方主动发送的群发消息，则消息接受方有级别限制，字段为 消息接收方IFA级别。\n否则，字段为空。',
  `levelmatch` tinyint(4) DEFAULT '0' COMMENT '级别匹配方式0:=, 1:>, 2:>= , 3:<, 4:<= ',
  `recievetype` tinyint(4) DEFAULT '0' COMMENT '接受方类型，0：IFA用户， 1：小c用户',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='短信与邮件消息队列';

-- ----------------------------
-- Records of a_message_ sms_email_queue
-- ----------------------------
INSERT INTO `a_message_ sms_email_queue` VALUES ('1', null, '这是条发给级别为1的IFA的消息', '', null, '1', '0', null, '1474170072');
INSERT INTO `a_message_ sms_email_queue` VALUES ('2', null, '这是发送给级别为2级及2级以上的消息', '', null, '2', '2', null, '1474170079');
INSERT INTO `a_message_ sms_email_queue` VALUES ('3', null, '这是发送给级别为4级及4级以下的消息', '', null, '4', '4', null, '1474170099');
INSERT INTO `a_message_ sms_email_queue` VALUES ('5', null, '时间过的真是快啊...', '', null, '3', '2', null, '1474253998');
INSERT INTO `a_message_ sms_email_queue` VALUES ('6', null, 'setInc和setDec方法支持延迟更新', '', null, '2', '0', null, '1474258246');
INSERT INTO `a_message_ sms_email_queue` VALUES ('7', null, '我们的祖国多么伟大！', '', null, '3', '0', null, '1474258395');

-- ----------------------------
-- Table structure for a_message_queue
-- ----------------------------
DROP TABLE IF EXISTS `a_message_queue`;
CREATE TABLE `a_message_queue` (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COMMENT='消息站内队列';

-- ----------------------------
-- Records of a_message_queue
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
) ENGINE=MyISAM AUTO_INCREMENT=117 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of a_news
-- ----------------------------
INSERT INTO `a_news` VALUES ('115', '挪大规模动用主权财富基金弥补财政预算缺口', '主权基金，挪威', '挪威政府10月7日公布2017年财政预算显示，政府将主权财富基金支出额比去年增加10%，达2256亿挪威克朗（280亿美元），约相当于基金总额8900亿美元的约3%。这笔钱将用来弥补挪威约占GDP 8%的预算缺口', '商务部', '1', '1476253703', '1', '百度', '65', '0', '1476253703', '1', '我就是管理员', '1');
INSERT INTO `a_news` VALUES ('114', '政府或推稳增长措施对冲地产降温', '地产， 政府', '我们认为，目前财政政策逆周期调节的空间比货币政策更大，而减轻税负及社保费率，增加消费补贴等政策在提振增长与稳定再通胀预期方面可能比继续加大基建投资来得更有效率。\r\n', '梁鸿', '1', '1476253574', '0', '百度', '66', '0', '1476253574', '1', '我就是管理员', '1');
INSERT INTO `a_news` VALUES ('116', '广东政府投资规模最大的政策性基金成立', '广东政府， 政策性基金', '在第二届珠江西岸先进装备制造业投资贸易洽谈会上，粤财投资分别与珠海、佛山、江门及顺德完成了四只区域子基金的签约，并与广新控股集团有限公司完成了珠西基金首批投资项目代表', '朱文彬', '1', '1476253840', '0', '百度', '64', '0', '1476253840', '1', '我就是管理员', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=166 DEFAULT CHARSET=utf8 COMMENT='新闻附件';

-- ----------------------------
-- Records of a_news_attachement
-- ----------------------------
INSERT INTO `a_news_attachement` VALUES ('165', '114', 'thumb_政府或推稳增长措施对冲地产降温', '1', '/Uploads/news/2016-10-12/57fdd77d6811b.jpg', '1476253574');
INSERT INTO `a_news_attachement` VALUES ('163', '114', '1476253096317890.jpg', '2', '/Uploads/ueditor/image/20161012/1476253096317890.jpg', '1476253574');
INSERT INTO `a_news_attachement` VALUES ('164', '114', '1476253186263379.jpg', '2', '/Uploads/ueditor/image/20161012/1476253186263379.jpg', '1476253574');

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
) ENGINE=MyISAM AUTO_INCREMENT=67 DEFAULT CHARSET=utf8 COMMENT='新闻分类表';

-- ----------------------------
-- Records of a_news_category
-- ----------------------------
INSERT INTO `a_news_category` VALUES ('66', '宏观经济', '62', '2', 'NEWS4000', '1476252483', '0');
INSERT INTO `a_news_category` VALUES ('65', '主权基金', '62', '2', 'NEWS3000', '1476252411', '0');
INSERT INTO `a_news_category` VALUES ('64', '国家政策', '62', '2', 'NEWS2000', '1476252317', '0');
INSERT INTO `a_news_category` VALUES ('63', '私募动态', '62', '2', 'NEWS1000', '1476252280', '0');
INSERT INTO `a_news_category` VALUES ('62', '峰盟新闻', '0', '1', 'NEWS0000', '1476252201', '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=84 DEFAULT CHARSET=utf8 COMMENT='新闻内容表';

-- ----------------------------
-- Records of a_news_content
-- ----------------------------
INSERT INTO `a_news_content` VALUES ('81', '114', '&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;, 微软雅黑, SimSun, 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;十一黄金周期间，20个大中城市陆续出台了房地产调控新政，其中包括更严格的限购和/或限贷政策，另有2个城市重申严格执行之前发布的调控政策。随着调控政策出台，黄金周商品房成交量应声而落（30城市房地产成交面积较前一周几近腰斩）。在这篇报告中，我们分析了地产降温对宏观经济的影响——其中包括经济增长、再通胀、增长结构以及货币信贷等主要方面。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;, 微软雅黑, SimSun, 宋体; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　本轮房地产繁荣对GDP增速的拉动更多体现在地产服务业增速加快（尤其是名义增速），而迄今为止对建筑业增速的提振则较为温和。具体来看，地产服务业的增长对2016年上半年名义GDP增速的贡献为98个基点、对同期实际GDP增速贡献为27个基点（2015年地产服务业对名义与实际GDP的贡献分别为51个基点和12个基点）。相比之下，建筑业增长对2016年上半年实际和名义GDP增速的贡献仅比2015年分别增加了3个基点和7个基点。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;, 微软雅黑, SimSun, 宋体; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;&quot;&gt;&lt;img src=&quot;/Uploads/ueditor/image/20161012/1476253096317890.jpg&quot; title=&quot;1476253096317890.jpg&quot; alt=&quot;Frpm-fxwrhpq6409328.jpg&quot;/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp;&amp;nbsp;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;, 微软雅黑, SimSun, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;另一方面，此前地产市场的火爆可能对非住房相关的可选消费有所抑制。房地产服务业增速（尤其是名义增速）在相当程度上反映的是居民资产分配和估值的变化，而非全是生产带来的新增产值。这一点在本质上与去年股市繁荣对金融业增长的拉动类似。&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;, 微软雅黑, SimSun, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center&quot;&gt;&lt;span style=&quot;color: rgb(51, 51, 51); font-family: &amp;quot;Microsoft YaHei&amp;quot;, 微软雅黑, SimSun, 宋体; font-size: 14px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/Uploads/ueditor/image/20161012/1476253186263379.jpg&quot; title=&quot;1476253186263379.jpg&quot; alt=&quot;QRWb-fxwrhpn9752192.jpg&quot;/&gt;&lt;/span&gt;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('82', '115', '&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &amp;quot;Microsoft YaHei&amp;quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;&quot;&gt;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;&amp;nbsp;挪威政府10月7日公布2017年财政预算显示，政府将主权财富基金支出额比去年增加10%，达2256亿挪威克朗（280亿美元），约相当于基金总额8900亿美元的约3%。这笔钱将用来弥补挪威约占GDP 8%的预算缺口。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &amp;quot;Microsoft YaHei&amp;quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;&quot;&gt;　　 2016年第一季度政府已从基金中提款110亿美元。过去，挪威议会明确规定挪威财政每年提取不超过该基金资产的4%，这是基于主权财富基金的平均收益率在4%的预期。目前，该基金的经理们已经警告称，越来越难达到4%的实际收益率目标，过去十年约为3.44%。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &amp;quot;Microsoft YaHei&amp;quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;&quot;&gt;　　 挪威GDP严重依赖石油价格，所以石油价格任何进一步下跌都将加大挪威的预算赤字，从而需要从其主权基金中提取更多的钱。政府预计明年原油及天然气的产量将下降，预估2017年的经济增长率将由今年的1%提高到1.7%，2018年失业率将由今年的4.7%降到4.3%；但是2017年油气业投资将减少10%，2018年预计将再减少6.8%。政府将减税65亿克朗，并降低企业税率；另外将支出40亿克朗以支持就业。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &amp;quot;Microsoft YaHei&amp;quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;&quot;&gt;　　挪威财政大臣延森（Jensen）认为，目前挪威受到30年来最严重的石油冲击影响，处于特殊时期必须实施扩张性财政政策。&lt;/p&gt;&lt;p style=&quot;margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &amp;quot;Microsoft YaHei&amp;quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;&quot;&gt;　　（驻挪威使馆经商处）&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('83', '116', '&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&amp;nbsp;中国证券网讯（记者 朱文彬）9月29日，在第二届珠江西岸先进装备制造业投资贸易洽谈会上，粤财投资分别与珠海、佛山、江门及顺德完成了四只区域子基金的签约，并与广新控股集团有限公司完成了珠西基金首批投资项目代表——广新海工项目的签约。这标志着粤财受托管理的珠江西岸先进装备制造产业发展基金（简称“珠西基金”）及金融合作子基金——广东粤建珠江西岸先进装备制造产业发展基金正式发布成立。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　据了解，珠西基金是迄今为止广东省政府投资规模最大的一只政策性基金，总规模达500亿元。该基金管理方——粤财控股旗下的广东粤财基金管理有限公司（以下简称“粤财基金”）表示，按照“成熟一批、设立一批、分批推进”的原则，将以点带面全面推动珠江西岸“六市一区”和韶关市组建起区域子基金。截至目前，珠西基金已对接或尽调的项目也达到了15个。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　据介绍，珠西基金采用“1+3”的母子基金架构，母基金由粤财控股与粤财基金共同发起设立，规模51亿元。母基金将再组建起与政府合作的区域子基金、与金融资本合作的金融合作子基金，及与创投机构合作的创投子基金，进行层层放大。按广东省委省政府的要求，要实现10倍以上的杠杆撬动。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　以“江门市先进制造产业发展基金”为例，该基金既是珠西基金成立的首只区域子基金，又是江门市政府投资设立的先进制造产业的母基金，由珠西母基金、江门市财政共同出资组建，通过设立子基金实现了40亿元的总规模。该基金采取双GP管理模式，由江门市融盛投资有限公司和粤财基金共同运营，围绕江门市重点产业布局，以配合政府招商引资和做大做强当地骨干企业为主线，集中投资轨道交通装备制造、汽车及零部件制造、船舶和特种船舶修造、海洋工程装备、清洁能源装备、智能制造装备、节能环保装备、卫星应用等战略性新兴产业和高新技术改造提升传统产业领域。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　签约项目方面，除了当天完成签约的广新海事重工项目外，记者还了解到，沈阳机床智能云制造项目与和佳医疗项目等优质项目也均已符合签约条件，这些项目的成熟标志着珠西基金投放工作的切实落地。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　“我们目前已对接或尽调了广新海工、广青科技、明阳风电、和佳医疗、南风股份、风华高科、广东鸿图、王氏航空、华隧公司等15个项目，同时还在洽谈与多家公司设立产业基金或并购基金。”粤财基金方面表示将遵循“储备一批、尽调一批、谈判一批、落地一批”的原则分批推进项目投资落地，加快与落户企业商定融资方案，争取年内进行投资。&lt;/p&gt;&lt;p style=&quot;box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: 宋体, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;　　据介绍，粤财控股自2015年以来已获得包括珠西基金在内的7只政策性基金的受托管理资格，承接财政资金达100.5亿元，除珠西基金外，其他各只基金的工作也在稳步推进中。目前，粤财控股已成为省内承接财政资金规模最大、基金数量最多、管理机构资本实力最强的省级政策性基金受托管理机构。据业内测算，如以上各只基金全都成功完成募集，按照1:9左右规模实现放大，那么粤财控股就能通过政策性基金业务撬动千亿社会资本服务。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;');

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
) ENGINE=MyISAM AUTO_INCREMENT=263 DEFAULT CHARSET=utf8 COMMENT='功能节点表';

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
INSERT INTO `a_node` VALUES ('225', 'Catagroy', '分类管理', '1', null, '2', '3', '2');
INSERT INTO `a_node` VALUES ('226', 'getBList', '获取产品二级列表', '1', null, '1', '225', '3');
INSERT INTO `a_node` VALUES ('227', 'getCList', '获取产品三级列表', '1', null, '2', '225', '3');
INSERT INTO `a_node` VALUES ('228', 'publish', '产品上架', '1', null, '5', '216', '3');
INSERT INTO `a_node` VALUES ('229', 'unPublish', '产品下架', '1', null, '6', '216', '3');
INSERT INTO `a_node` VALUES ('230', 'edit', '产品编辑动作', '1', null, '7', '216', '3');
INSERT INTO `a_node` VALUES ('231', 'productInfoDisclosurePage', '产品披露页面', '1', null, '8', '216', '3');
INSERT INTO `a_node` VALUES ('232', 'addDisclosureInfo', '添加产品披露信息', '1', null, '9', '216', '3');
INSERT INTO `a_node` VALUES ('233', 'addFile', '添加产品附件', '1', null, '10', '216', '3');
INSERT INTO `a_node` VALUES ('234', 'deletedDisclosureInfo', '删除产品披露信息', '1', null, '11', '216', '3');
INSERT INTO `a_node` VALUES ('235', 'Networth', '净值管理', '1', null, '3', '3', '2');
INSERT INTO `a_node` VALUES ('236', 'index', '净值管理页面', '1', null, '1', '235', '3');
INSERT INTO `a_node` VALUES ('237', 'showNetworth', '查看净值详情', '1', '', '2', '235', '3');
INSERT INTO `a_node` VALUES ('238', 'editNetworthPage', '编辑单个净值页面', '1', '', '3', '235', '3');
INSERT INTO `a_node` VALUES ('239', 'edit', '编辑单个净值动作', '1', null, '4', '235', '3');
INSERT INTO `a_node` VALUES ('240', 'importTodayNetworth', '通过excel导入今日净值', '1', null, '5', '235', '3');
INSERT INTO `a_node` VALUES ('241', 'index', '内容列表', '1', null, '1', '145', '3');
INSERT INTO `a_node` VALUES ('242', 'recycle', '回收站', '1', null, '2', '145', '3');
INSERT INTO `a_node` VALUES ('243', 'Sysset', '系统管理', '1', null, '8', '1', '1');
INSERT INTO `a_node` VALUES ('244', 'Params', '参数管理', '1', null, '1', '243', '2');
INSERT INTO `a_node` VALUES ('245', 'index', '参数管理页面', '1', null, '1', '244', '3');
INSERT INTO `a_node` VALUES ('246', 'addparam', '添加参数信息页面', '1', null, '2', '244', '3');
INSERT INTO `a_node` VALUES ('247', 'add', '添加参数', '1', null, '4', '244', '3');
INSERT INTO `a_node` VALUES ('248', 'editparam', '编辑参数页面', '1', null, '3', '244', '3');
INSERT INTO `a_node` VALUES ('249', 'delete', '删除参数', '1', null, '5', '244', '3');
INSERT INTO `a_node` VALUES ('250', 'edit', '编辑参数', '1', null, '6', '244', '3');
INSERT INTO `a_node` VALUES ('251', 'Domain', '域名管理', '1', null, '4', '243', '2');
INSERT INTO `a_node` VALUES ('252', 'index', '域名管理页面', '1', null, '1', '251', '3');
INSERT INTO `a_node` VALUES ('253', 'apply', '域名申请', '1', null, '2', '251', '3');
INSERT INTO `a_node` VALUES ('254', 'editdomain', '域名编辑页面', '1', null, '3', '251', '3');
INSERT INTO `a_node` VALUES ('255', 'enable', '申请启用', '1', null, '4', '251', '3');
INSERT INTO `a_node` VALUES ('256', 'disable', '申请禁止', '1', null, '5', '251', '3');
INSERT INTO `a_node` VALUES ('257', 'addPage', '添加新闻页面', '1', null, '3', '145', '3');
INSERT INTO `a_node` VALUES ('258', 'add', '添加新闻', '1', null, '4', '145', '3');
INSERT INTO `a_node` VALUES ('259', 'editPage', '编辑新闻页面', '1', null, '5', '145', '3');
INSERT INTO `a_node` VALUES ('260', 'edit', '编辑新闻', '1', null, '6', '145', '3');
INSERT INTO `a_node` VALUES ('261', 'upload', '异步上传文件', '1', null, '7', '145', '3');
INSERT INTO `a_node` VALUES ('262', 'delete', '删除新闻', '1', null, '8', '145', '3');

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
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of a_product
-- ----------------------------
INSERT INTO `a_product` VALUES ('1', 'CP001', '吃土', '1', '2', '3', '交易结构文本', '10000000.00', '产品形态文本', '发行人', '托管人', '10000000.00', '100000.00', '100000.00', '3', '15', '0.1011', '收益分配方式文本', '交易对手文本', '投资标的文本', '资产保证文本', '100', '成立条件文本', '10000000.00', '备注信息文本', '2', '0.0200', '2', '1', '1', '1', '0', '2', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1500000000', null, null, null, '1');
INSERT INTO `a_product` VALUES ('2', 'CP002', '中海可转换债券债券型证券投资基金A类份额', '1', '3', '16', '即方正证券收益凭证系列产品，是指我司通过中证报价系统或者OTC柜台市场发行的、约定本金和收益的偿付与特定标的挂钩的有价证券（特定标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货', '11111112704.00', '即方正证券收益凭证系列产品，是指我司通过中证报价系统或者OTC柜台市场发行的、约定本金和收益的偿付与特定标的挂钩的有价证券（特定标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货', '张三', '哈哈', '11111222.00', '11111111.00', '220.00', '14', '0', '0.1300', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '20', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '10000.00', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '10', '0.3300', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '2016', '2016', '0', '2016', '2016', '1', null, null, '1', null, null, '1474964484', null, null, null, '1');
INSERT INTO `a_product` VALUES ('3', 'CP003', '易方达天天理财货币A', '2', '6', '19', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1474964544', null, null, null, '2');
INSERT INTO `a_product` VALUES ('4', 'CP004', 'A股上市企业存货质押融资项目', '2', '2', '22', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1475044982', null, null, null, '1');
INSERT INTO `a_product` VALUES ('5', null, 'B股上市企业存货质押融资项目', '1', '1', '10', '交易结构', '1000000.00', '产品形态产品形态产品形态产品形态', 'fengmeng', 'fengmeng1', '1000000.00', '10.00', '10.00', '6', '15', '8.0000', '收益分配方式', '交易对手', '投资标的', '资产保证', '10', '成立条件', '1000000.00', '备注信息', '2', '0.3000', '3', '3', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '2016', '2016', '0', '2017', '2017', '1', null, null, '1', null, null, '1476084085', null, null, null, '2');

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
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='产品信息披露记录表';

-- ----------------------------
-- Records of a_product_disclosure
-- ----------------------------
INSERT INTO `a_product_disclosure` VALUES ('1', '2', '图片 (线上.png)', '/Uploads/disclosure/2016-09-29/57ecba9f8dc25.png', '1475132072', '1');
INSERT INTO `a_product_disclosure` VALUES ('2', '2', '(问题清单20160926.xls)', '/Uploads/disclosure/2016-09-29/57ecbd9a4dcd8.xls', '1475132841', '0');
INSERT INTO `a_product_disclosure` VALUES ('3', '3', '(进度计划表.xls)', '/Uploads/disclosure/2016-09-30/57ee046e18f21.xls', '1475216503', '0');
INSERT INTO `a_product_disclosure` VALUES ('4', '2', '平台功能(平台功能计划安排F改.xls)', '/Uploads/disclosure/2016-10-10/57fb388bc3f20.xls', '1476081873', '0');
INSERT INTO `a_product_disclosure` VALUES ('5', '2', '12121(平台功能计划安排F改 (1).xls)', '/Uploads/disclosure/2016-10-10/57fb38e423baa.xls', '1476081897', '0');
INSERT INTO `a_product_disclosure` VALUES ('6', '5', '产品第四季度投资报告(下载.jpg)', '/Uploads/disclosure/2016-10-10/57fb41c221d6b.jpg', '1476084170', '0');
INSERT INTO `a_product_disclosure` VALUES ('7', '4', '(WechatIMG1.jpeg)', '/Uploads/disclosure/2016-10-12/57fdf01868296.jpeg', '1476259868', '0');

-- ----------------------------
-- Table structure for a_product_networth
-- ----------------------------
DROP TABLE IF EXISTS `a_product_networth`;
CREATE TABLE `a_product_networth` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
) ENGINE=MyISAM AUTO_INCREMENT=50883 DEFAULT CHARSET=utf8 COMMENT='产品净值表';

-- ----------------------------
-- Records of a_product_networth
-- ----------------------------
INSERT INTO `a_product_networth` VALUES ('1', '4', '2016-10-06', '1.0007', 'zhangsan', '1', '1', '我就是管理员', '1', '1476084572');
INSERT INTO `a_product_networth` VALUES ('2', '4', '2016-10-07', '1.9000', 'zhangsan', '1', '1', '我就是管理员', '1', '1475891066');
INSERT INTO `a_product_networth` VALUES ('3', '4', '2016-10-08', '1.2000', 'zhangsan', '1', '1', '我就是管理员', '1', '1475823903');
INSERT INTO `a_product_networth` VALUES ('50833', '4', '2016-10-09', '1.1000', '我就是管理员', '1', '1475910661', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50832', '3', '2016-10-09', '1.2501', '我就是管理员', '1', '1475910661', '我就是管理员', '1', '1476258003');
INSERT INTO `a_product_networth` VALUES ('50862', '3', '2016-10-10', '1.2501', '我就是管理员', '1', '1475915752', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50863', '4', '2016-10-10', '1.1000', '我就是管理员', '1', '1475915752', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50866', '3', '2016-10-11', '1.3501', '我就是管理员', '1', '1475915874', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50867', '4', '2016-10-11', '1.2000', '我就是管理员', '1', '1475915874', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50876', '3', '2016-10-12', '1.4501', '我就是管理员', '1', '1475978458', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50877', '4', '2016-10-12', '1.3100', '我就是管理员', '1', '1475978458', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50880', '4', '2016-10-13', '1.3100', '我就是管理员', '1', '1476082063', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50878', '3', '2016-10-13', '0.9000', '我就是管理员', '1', '1476082014', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50881', '3', '2016-10-14', '1.9000', '我就是管理员', '1', '1476084769', null, null, null);
INSERT INTO `a_product_networth` VALUES ('50882', '4', '2016-10-14', '1.8000', '我就是管理员', '1', '1476084769', null, null, null);

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
INSERT INTO `a_role_user` VALUES ('1', '19', null);
INSERT INTO `a_role_user` VALUES ('1', '20', null);
INSERT INTO `a_role_user` VALUES ('19', '23', null);
INSERT INTO `a_role_user` VALUES ('18', '23', null);
INSERT INTO `a_role_user` VALUES ('20', '23', null);
INSERT INTO `a_role_user` VALUES ('21', '23', null);
INSERT INTO `a_role_user` VALUES ('22', '23', null);
INSERT INTO `a_role_user` VALUES ('23', '23', null);
INSERT INTO `a_role_user` VALUES ('24', '23', null);
INSERT INTO `a_role_user` VALUES ('25', '23', null);
INSERT INTO `a_role_user` VALUES ('26', '23', null);
INSERT INTO `a_role_user` VALUES ('27', '23', null);
INSERT INTO `a_role_user` VALUES ('28', '23', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_user
-- ----------------------------
INSERT INTO `a_user` VALUES ('1', 'FM00000001', '管理员', 'admin@fm.com', '18801621638', 'ad626a07765d44476c9040c7b39c4937', '140321111111111111', '1483434334', '116.231.71.35', '1476262238', '1', '0', null, '4', '4', null, null, null, '1536854400', '大公司A', '产品部', '总监', '', '1453434335', '1');
INSERT INTO `a_user` VALUES ('23', 'FM00010006', 'bianenhui', '1499845029@qq.com', '15755129785', 'ad626a07765d44476c9040c7b39c4937', null, null, '116.231.71.35', '1476166523', null, '0', null, null, null, null, null, null, '1507824000', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('7', 'FM00010002', 'chenyt', 'yingting.chen@intelpure.com', '13918001270', 'ad626a07765d44476c9040c7b39c4937', null, null, null, null, null, '0', null, null, null, null, null, null, '1485964800', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('8', 'FM00010003', 'chenyingting', '277797552@qq.com', '13918001270', 'ad626a07765d44476c9040c7b39c4937', null, null, null, null, null, '0', null, null, null, null, null, null, '0', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('19', 'FM00010004', '赵佳乐', 'franky.zhao@intelpure.com', '15502173369', 'ad626a07765d44476c9040c7b39c4937', null, null, '116.231.71.35', '1476259783', null, '0', null, null, null, null, null, null, '1506787200', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('20', 'FM00010005', 'ronnie', 'ronnie.pan@v-times.info', '18016032202', 'ad626a07765d44476c9040c7b39c4937', null, null, null, null, null, '0', null, null, null, null, null, null, '1506700800', '', null, null, null, null, '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_agent
-- ----------------------------
INSERT INTO `b_agent` VALUES ('1', 'IFA1', 'IFA 11', 'chen123@qq.com', '18801621631', '14032111111111111', '1', null, '3', '熟练', '中等', '其他国家', '博士', '博士', '1', '1', '3', '1', '审核不通过，哈哈哈');
INSERT INTO `b_agent` VALUES ('2', 'xyongdaima12345', 'IFA2', 'chen11@fm.com', '18373885166', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '3', '1', null);
INSERT INTO `b_agent` VALUES ('3', 'xyongdaima12345', 'IFA3', 'chen1@fm1.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '3', '1', null);
INSERT INTO `b_agent` VALUES ('4', 'xyongdaima123456', 'IFA4', 'chen1@fm.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '4', '0', null);
INSERT INTO `b_agent` VALUES ('5', 'xyongdaima12347', 'IFA5', 'chen2@fm.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '4', '0', null);
INSERT INTO `b_agent` VALUES ('36', null, 'vadfasdf', '1321321@qq.com', '18801565656', '140321199108020011', '1474270563', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('37', null, 'vestin', '11@qq.com', '18800000000', '140321199108020012', '1474337711', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('38', 'hahahdlkfjlkjlkjlkadsfasdf', 'vestin2', 'bombzds@163.com', '18801621639', '140321199108020012', '1474341045', null, '5', '一般', '一般', '中国', '小学', '小学', null, null, '4', '2', '资料都没有，审核毛线，不通过');
INSERT INTO `b_agent` VALUES ('39', null, '张三', 'bombzds2@163.com', '18801621640', '140321111102020012', '1474448361', null, null, null, null, null, null, null, null, null, '1', '1', null);
INSERT INTO `b_agent` VALUES ('40', null, '123456', '456@qq.com', '18801621637', '140321199105050045', '1474525739', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('41', null, '123', '1212@1236.co', '18801621633', '1212', '1476065248', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('42', null, '张三', '1231@564.com', '18801621630', '140321199108010012', '1476065426', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('43', null, '张三1', '123@55.com', '18801621677', '140321199108012001', '1476067026', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('44', null, '张三22', '123@55.com1', '18801621555', '140321155151515515', '1476067106', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('45', null, '张三', '1231@564.com2', '18621732732', '321111111111111111', '1476067216', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('46', null, '2132132', '1231@987.com', '18801621454', '140321199105050032', '1476071261', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('47', null, '2132132', '1231@985.com', '18801621453', '140321199105050032', '1476071314', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('48', null, '2132132', '1231@985.com1', '18801621451', '140321199105050032', '1476071394', null, null, null, null, null, null, null, null, '1004', '1', '0', null);
INSERT INTO `b_agent` VALUES ('49', null, '9879612', '1258@lkj.com', '18854686586', '165456655418020012', '1476071572', null, null, null, null, null, null, null, null, '1005', '1', '1', null);
INSERT INTO `b_agent` VALUES ('50', null, '我就是管理员11', '99@22.com', '18801545789', '789987788787878878', '1476084927', null, null, null, null, null, null, null, null, '0', '1', '0', null);
INSERT INTO `b_agent` VALUES ('51', null, '我就是管理员11', '99@22.com1', '18801545787', '789987788787878878', '1476084999', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('52', null, '我就是管理员11', '99@22.com12', '18801545786', '789987788787878878', '1476085053', null, null, null, null, null, null, null, null, '1008', '1', '0', null);
INSERT INTO `b_agent` VALUES ('53', null, '我就是管理员11', '99@22.com123', '18801545785', '789987788787878872', '1476085199', null, null, null, null, null, null, null, null, '1009', '1', '0', null);
INSERT INTO `b_agent` VALUES ('54', null, '里李', '884367094@qq.com', '13454545555', '111111111111111111', '1476085260', null, null, null, null, null, null, null, null, '1010', '1', '1', null);
INSERT INTO `b_agent` VALUES ('55', null, '测试IFA123', 'test123@intelpure.com', '13918001250', '310101198312141234', '1476254924', null, null, null, null, null, null, null, null, '1012', '1', '0', null);
INSERT INTO `b_agent` VALUES ('56', null, '123test', '123@123.com', '13918001271', '310101198312122727', '1476255031', null, null, null, null, null, null, null, null, '1013', '1', '0', null);

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
INSERT INTO `b_agent_access` VALUES ('18', '13', '2', null);
INSERT INTO `b_agent_access` VALUES ('18', '14', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '220', '1', null);
INSERT INTO `b_agent_access` VALUES ('18', '221', '2', null);
INSERT INTO `b_agent_access` VALUES ('18', '227', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '223', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '224', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '225', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '226', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '222', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '228', '2', null);
INSERT INTO `b_agent_access` VALUES ('18', '229', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '230', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '231', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '232', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '233', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '237', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '234', '1', null);
INSERT INTO `b_agent_access` VALUES ('18', '235', '2', null);
INSERT INTO `b_agent_access` VALUES ('18', '236', '2', null);
INSERT INTO `b_agent_access` VALUES ('18', '238', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '239', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '240', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '241', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '242', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '247', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '248', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '249', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '250', '3', null);
INSERT INTO `b_agent_access` VALUES ('18', '251', '3', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=252 DEFAULT CHARSET=utf8 COMMENT='功能节点表';

-- ----------------------------
-- Records of b_agent_node
-- ----------------------------
INSERT INTO `b_agent_node` VALUES ('1', 'System', '蜂巢系统管理后台', '1', '', '1', '0', '0');
INSERT INTO `b_agent_node` VALUES ('2', 'AgentHome', '工作台', '1', null, '1', '1', '1');
INSERT INTO `b_agent_node` VALUES ('3', 'AgentProduct', '产品管理', '1', null, '2', '1', '1');
INSERT INTO `b_agent_node` VALUES ('4', 'AgentCrm', 'CRM管理', '1', null, '3', '1', '1');
INSERT INTO `b_agent_node` VALUES ('5', 'AgentAdmin', '用户中心', '1', null, '4', '1', '1');
INSERT INTO `b_agent_node` VALUES ('6', 'UserAccount', '账号管理', '1', null, '1', '5', '2');
INSERT INTO `b_agent_node` VALUES ('7', 'index', '账号信息展示', '1', null, '1', '6', '3');
INSERT INTO `b_agent_node` VALUES ('8', 'Review', '资料审核', '1', null, '2', '5', '2');
INSERT INTO `b_agent_node` VALUES ('9', 'editPage', '编辑资料', '1', null, '1', '8', '3');
INSERT INTO `b_agent_node` VALUES ('10', 'Index', '工作台', '1', null, '1', '2', '2');
INSERT INTO `b_agent_node` VALUES ('11', 'index', '工作台首页', '1', null, '1', '10', '3');
INSERT INTO `b_agent_node` VALUES ('12', 'dashboard', '工作台图表', '1', null, '2', '10', '3');
INSERT INTO `b_agent_node` VALUES ('13', 'Market', '市场', '1', null, '1', '3', '2');
INSERT INTO `b_agent_node` VALUES ('14', 'index', '产品列表', '1', null, '1', '13', '3');
INSERT INTO `b_agent_node` VALUES ('220', 'AgentSysset', '系统管理', '1', null, '5', '1', '1');
INSERT INTO `b_agent_node` VALUES ('221', 'Params', '参数管理', '1', null, '1', '220', '2');
INSERT INTO `b_agent_node` VALUES ('222', 'index', '参数管理页面', '1', null, '1', '221', '3');
INSERT INTO `b_agent_node` VALUES ('223', 'addparam', '参数信息添加页面', '1', null, '2', '221', '3');
INSERT INTO `b_agent_node` VALUES ('224', 'add', '参数信息添加', '1', null, '3', '221', '3');
INSERT INTO `b_agent_node` VALUES ('225', 'editparam', '编辑参数信息页面', '1', null, '4', '221', '3');
INSERT INTO `b_agent_node` VALUES ('226', 'delete', '参数信息删除', '1', null, '5', '221', '3');
INSERT INTO `b_agent_node` VALUES ('227', 'edit', '编辑参数信息', '1', null, '6', '221', '3');
INSERT INTO `b_agent_node` VALUES ('228', 'Domain', '域名管理', '1', null, '4', '220', '2');
INSERT INTO `b_agent_node` VALUES ('229', 'index', '域名管理页面', '1', null, '1', '228', '3');
INSERT INTO `b_agent_node` VALUES ('230', 'apply', '域名申请', '1', null, '2', '228', '3');
INSERT INTO `b_agent_node` VALUES ('231', 'editdomain', '域名编辑页面', '1', null, '3', '228', '3');
INSERT INTO `b_agent_node` VALUES ('232', 'enable', '域名启用', '1', null, '4', '228', '3');
INSERT INTO `b_agent_node` VALUES ('233', 'disable', '域名禁用', '1', null, '5', '228', '3');
INSERT INTO `b_agent_node` VALUES ('234', 'AgentTrans', '交易管理', '1', null, '5', '1', '1');
INSERT INTO `b_agent_node` VALUES ('235', 'CustomerOrder', '客户订单', '1', null, '1', '234', '2');
INSERT INTO `b_agent_node` VALUES ('236', 'MyOrder', '我的订单', '1', null, '2', '234', '2');
INSERT INTO `b_agent_node` VALUES ('237', 'applydomain', '申请域名页面', '1', null, '6', '228', '3');
INSERT INTO `b_agent_node` VALUES ('238', 'view', '我的订单详情', '1', null, '2', '236', '3');
INSERT INTO `b_agent_node` VALUES ('239', 'econtract', '查看电子合同', '1', null, '3', '236', '3');
INSERT INTO `b_agent_node` VALUES ('240', 'papercontract', '申请纸质合同', '1', null, '4', '236', '3');
INSERT INTO `b_agent_node` VALUES ('241', 'index', '我的订单列表', '1', null, '1', '236', '3');
INSERT INTO `b_agent_node` VALUES ('242', 'index', '客户订单列表', '1', null, '1', '235', '3');
INSERT INTO `b_agent_node` VALUES ('247', 'view', '客户订单详情', '1', null, '2', '235', '3');
INSERT INTO `b_agent_node` VALUES ('248', 'search', '搜索我的订单', '1', null, '2', '236', '3');
INSERT INTO `b_agent_node` VALUES ('249', 'view', '我的订单详情', '1', null, '3', '236', '3');
INSERT INTO `b_agent_node` VALUES ('250', 'delete', '删除域名申请', '1', null, '6', '228', '3');
INSERT INTO `b_agent_node` VALUES ('251', 'search', '搜索客户订单', '1', null, '3', '235', '3');

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
  `role_id` mediumint(9) unsigned NOT NULL,
  `user_id` char(32) NOT NULL,
  `type` int(4) DEFAULT NULL COMMENT '平台划分  1：大B   2:IFA',
  PRIMARY KEY (`role_id`,`user_id`),
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='平台角色用户关联表';

-- ----------------------------
-- Records of b_agent_role_user
-- ----------------------------
INSERT INTO `b_agent_role_user` VALUES ('18', '1015', null);
INSERT INTO `b_agent_role_user` VALUES ('18', '1031', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=1034 DEFAULT CHARSET=utf8 COMMENT='IFA 用户登陆账户表';

-- ----------------------------
-- Records of b_agent_user
-- ----------------------------
INSERT INTO `b_agent_user` VALUES ('1001', '1', 'Chery1', '7853@qq.com', '1898989898', 'sdasdasdasda', '1', '1', '1', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1002', '1', 'chery2', 'sad@qq.com', '123232323', 'adsfsdfsdf', '2', '1', '1', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1003', '2', 'Chery3', 'sdaf@qq.com', '12232323', 'aasdfadsfadsf', '1', '1', '1', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1013', '36', 'vadfasdf', '1321321@qq.com', '18801565656', 'ad626a07765d44476c9040c7b39c4937', null, '1474270563', null, '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1014', '37', 'vestin', '11@qq.com', '18800000000', 'ad626a07765d44476c9040c7b39c4937', null, '1474337711', null, '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1015', '38', 'vestin2', 'bombzds@163.com', '18801621639', 'ad626a07765d44476c9040c7b39c4937', null, '1474341045', '1505877045', '1', '116.231.71.35', '1476169690');
INSERT INTO `b_agent_user` VALUES ('1016', '39', '张三', 'bombzds2@163.com', '18801621640', 'ad626a07765d44476c9040c7b39c4937', null, '1474448361', '1505984361', '1', '116.231.71.35', '1474448420');
INSERT INTO `b_agent_user` VALUES ('1017', '40', '123456', '456@qq.com', '18801621637', 'ad626a07765d44476c9040c7b39c4937', null, '1474525739', '1506061739', '1', '116.231.71.35', '1474532622');
INSERT INTO `b_agent_user` VALUES ('1018', '41', '123', '1212@1236.co', '18801621633', 'd8bd0880e9431a7aecff687b8cb8bed4', null, '1476065248', '1507601248', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1019', '42', '张三', '1231@564.com', '18801621630', 'ad626a07765d44476c9040c7b39c4937', null, '1476065426', '1507601426', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1020', '43', '张三1', '123@55.com', '18801621677', 'ad626a07765d44476c9040c7b39c4937', null, '1476067026', '1507603026', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1021', '44', '张三22', '123@55.com1', '18801621555', 'ad626a07765d44476c9040c7b39c4937', null, '1476067106', '1507603106', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1022', '45', '张三', '1231@564.com2', '18621732732', 'ad626a07765d44476c9040c7b39c4937', null, '1476067216', '1507603216', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1023', '46', '2132132', '1231@987.com', '18801621454', 'ad626a07765d44476c9040c7b39c4937', null, '1476071261', '1507607261', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1024', '47', '2132132', '1231@985.com', '18801621453', 'ad626a07765d44476c9040c7b39c4937', null, '1476071314', '1507607314', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1025', '48', '2132132', '1231@985.com1', '18801621451', 'ad626a07765d44476c9040c7b39c4937', null, '1476071394', '1507607394', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1026', '49', '9879612', '1258@lkj.com', '18854686586', 'ad626a07765d44476c9040c7b39c4937', null, '1476071572', '1507607572', '1', '116.231.71.35', '1476078558');
INSERT INTO `b_agent_user` VALUES ('1027', '50', '我就是管理员11', '99@22.com', '18801545789', 'ad626a07765d44476c9040c7b39c4937', null, '1476084927', '1507620927', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1028', '51', '我就是管理员11', '99@22.com1', '18801545787', '6131c9e0c688b44ac912ba48bbaa4ab2', null, '1476084999', '1507620999', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1029', '52', '我就是管理员11', '99@22.com12', '18801545786', '6131c9e0c688b44ac912ba48bbaa4ab2', null, '1476085053', '1507621053', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1030', '53', '我就是管理员11', '99@22.com123', '18801545785', '6131c9e0c688b44ac912ba48bbaa4ab2', null, '1476085199', '1507621199', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1031', '54', '里李', '884367094@qq.com', '13454545555', 'ad626a07765d44476c9040c7b39c4937', null, '1476085260', '1507621260', '1', '116.231.71.35', '1476256480');
INSERT INTO `b_agent_user` VALUES ('1032', '55', '测试IFA123', 'test123@intelpure.com', '13918001250', 'ad626a07765d44476c9040c7b39c4937', null, '1476254924', '1507790924', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1033', '56', '123test', '123@123.com', '13918001271', 'ad626a07765d44476c9040c7b39c4937', null, '1476255031', '1507791031', '1', null, null);

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
  `isbelongtoagent` int(4) NOT NULL DEFAULT '0' COMMENT '是否属于agent 的附属c账户',
  `isinstitutionaluser` int(4) NOT NULL DEFAULT '0' COMMENT '是否是机构用户  0 不是  1 是 ',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(255) NOT NULL DEFAULT '' COMMENT '邮箱',
  `phone` bigint(20) NOT NULL DEFAULT '0' COMMENT '电话',
  `password` varchar(32) NOT NULL COMMENT '密码',
  `credientialnu` varchar(32) NOT NULL DEFAULT '' COMMENT '身份证',
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
) ENGINE=MyISAM AUTO_INCREMENT=1014 DEFAULT CHARSET=utf8 COMMENT='C端用户表';

-- ----------------------------
-- Records of c_user
-- ----------------------------
INSERT INTO `c_user` VALUES ('1001', '1', '0', '0', '124831', '60012@qq1.com', '20826786058', '1ee9a202f7cfc9d350c7c6a2d0db0797', '59092082789308095', null, null, null, null, null, '1', null, null, null, null, null, null, '4');
INSERT INTO `c_user` VALUES ('1002', '2', '0', '0', '81686', '76878@qq.com', '45895256879', 'ad626a07765d44476c9040c7b39c4937', '34047057058237183', null, null, null, null, null, '1', null, null, null, null, null, null, '1');
INSERT INTO `c_user` VALUES ('1003', '38', '0', '0', '61051A', '61519@qq.com', '24086004449', '1ee9a202f7cfc9d350c7c6a2d0db0797', '57116768114153055', null, null, null, null, null, '1', null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1004', '48', '0', '0', '2132132', '1231@985.com1', '18801621451', '1ee9a202f7cfc9d350c7c6a2d0db0797', '140321199105050032', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1005', '49', '1', '0', '9879612', '1258@lkj.com', '18854686586', '1ee9a202f7cfc9d350c7c6a2d0db0797', '165456655418020012', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1006', '1', '0', '0', '123', '123654@213.com', '18801621639', '1ee9a202f7cfc9d350c7c6a2d0db0797', '', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1007', '1', '0', '0', '123', '123654@213.com1', '18801621638', 'ad626a07765d44476c9040c7b39c4937', '', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1008', '52', '1', '0', '我就是管理员11', '99@22.com12', '18801545786', 'ad626a07765d44476c9040c7b39c4937', '789987788787878878', null, null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1009', '53', '1', '0', '我就是管理员11', '99@22.com123', '18801545785', 'ad626a07765d44476c9040c7b39c4937', '789987788787878872', '1476085199', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1010', '54', '1', '0', '里李', '884367094@qq.com', '13454545555', 'ad626a07765d44476c9040c7b39c4937', '111111111111111111', '1476085260', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1011', '1', '0', '1', '987', '12@845632.com', '18801621665', 'ad626a07765d44476c9040c7b39c4937', '', '1476085736', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1012', '55', '1', '0', '测试IFA123', 'test123@intelpure.com', '13918001250', 'ad626a07765d44476c9040c7b39c4937', '310101198312141234', '1476254924', null, null, null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `c_user` VALUES ('1013', '56', '1', '0', '123test', '123@123.com', '13918001271', 'ad626a07765d44476c9040c7b39c4937', '310101198312122727', '1476255031', null, null, null, null, null, null, null, null, null, null, null, '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=4364 DEFAULT CHARSET=utf8 COMMENT='用户操作动作记录表';

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
INSERT INTO `fm_action_record` VALUES ('878', '1', '1', '1475830134', 'Product/Networth/index', '产品管理//', '{\"productno\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('879', '1', '1', '1475830167', 'Product/Networth/index', '产品管理//', '{\"productno\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('880', '1', '1', '1475830189', 'Product/Networth/index', '产品管理//', '{\"productno\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('881', '1', '1', '1475830193', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('882', '1', '1', '1475830324', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('883', '1', '1', '1475830609', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('884', '1', '1', '1475830616', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('885', '1', '1', '1475830618', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('886', '1', '1', '1475830624', 'Sysset/Params/add', '//', '{\"numbername\":\"FAFD\",\"content\":\"FDAFD\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('887', '1', '1', '1475830869', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('888', '1', '1', '1475830874', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('889', '1', '1', '1475830876', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('890', '1', '1', '1475830880', 'Sysset/Params/add', '//', '{\"numbername\":\"ewe\",\"content\":\"rwrew\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('891', '1', '1', '1475831305', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('892', '1', '1', '1475831306', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('893', '1', '1', '1475831312', 'Sysset/Params/add', '//', '{\"numbername\":\"fad\",\"content\":\"ffafsa\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('894', '1', '1', '1475831402', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('895', '1', '1', '1475831403', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('896', '1', '1', '1475831407', 'Sysset/Params/add', '//', '{\"numbername\":\"FAfd\",\"content\":\"fdaf\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('897', '1', '1', '1475831827', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('898', '1', '1', '1475831831', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('899', '1', '1', '1475831833', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('900', '1', '1', '1475831837', 'Sysset/Params/add', '//', '{\"numbername\":\"FAfd\",\"content\":\"ffafds\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('901', '1', '1', '1475831839', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('902', '1', '1', '1475831944', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('903', '1', '1', '1475831946', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('904', '1', '1', '1475831951', 'Sysset/Params/add', '//', '{\"name\":\"ffafdsa\",\"value\":\"fasdd\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('905', '1', '1', '1475831952', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('906', '1', '1', '1475832335', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('907', '1', '1', '1475832240', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('908', '1', '1', '1475832242', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('909', '1', '1', '1475832245', 'Sysset/Params/add', '//', '{\"name\":\"d\",\"value\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('910', '1', '1', '1475832248', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('911', '1', '1', '1475832251', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('912', '1', '1', '1475832290', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('913', '1', '1', '1475832295', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('914', '1', '1', '1475832296', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('915', '1', '1', '1475832298', 'Sysset/Params/add', '//', '{\"name\":\"\",\"value\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('916', '1', '1', '1475832303', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('917', '1', '1', '1475832308', 'Sysset/Params/add', '//', '{\"name\":\"fadf\",\"value\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('918', '1', '1', '1475832312', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('919', '1', '1', '1475832322', 'Sysset/Params/add', '//', '{\"name\":\"fadfa\",\"value\":\"fdads\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('920', '1', '1', '1475832323', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('921', '1', '1', '1475832352', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('922', '1', '1', '1475832353', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('923', '1', '1', '1475832356', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('924', '1', '1', '1475832560', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('925', '1', '1', '1475832564', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('926', '1', '1', '1475832569', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('927', '1', '1', '1475832572', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('928', '1', '1', '1475832609', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('929', '1', '1', '1475832632', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('930', '1', '1', '1475832647', 'Sysset/Params/addparam', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('931', '1', '1', '1475832651', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('932', '1', '1', '1475832776', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('933', '1', '1', '1475832780', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('934', '1', '1', '1475832890', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('935', '1', '1', '1475832899', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('936', '1', '1', '1475832974', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('937', '1', '1', '1475832978', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('938', '1', '1', '1475833006', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('939', '1', '1', '1475833010', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('940', '1', '1', '1475833029', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('941', '1', '1', '1475833033', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('942', '1', '1', '1475833157', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('943', '1', '1', '1475833161', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('944', '1', '1', '1475891037', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('945', '1', '1', '1475891042', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('946', '1', '1', '1475891046', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('947', '1', '1', '1475891054', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('948', '1', '1', '1475891060', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('949', '1', '1', '1475891066', 'Product/Networth/edit', '产品管理//', '{\"id\":\"2\",\"productid\":\"4\",\"datetime\":\"2016-10-07\",\"networth\":\"1.9000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('950', '1', '1', '1475891067', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('951', '1', '1', '1475891103', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('952', '1', '1', '1475892429', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('953', '1', '1', '1475892430', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('954', '1', '1', '1475892434', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('955', '1', '1', '1475892542', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('956', '1', '1', '1475892575', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('957', '1', '1', '1475892575', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('958', '1', '1', '1475892580', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('959', '1', '1', '1475892597', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('960', '1', '1', '1475892597', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('961', '1', '1', '1475892601', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('962', '1', '1', '1475892656', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('963', '1', '1', '1475892656', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('964', '1', '1', '1475892659', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('965', '1', '1', '1475892767', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('966', '1', '1', '1475892779', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('967', '1', '1', '1475892815', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('968', '1', '1', '1475892885', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('969', '1', '1', '1475892865', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('970', '1', '1', '1475892889', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('971', '1', '1', '1475892890', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('972', '1', '1', '1475892892', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('973', '1', '1', '1475892934', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('974', '1', '1', '1475892935', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('975', '1', '1', '1475892937', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('976', '1', '1', '1475893039', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('977', '1', '1', '1475893039', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('978', '1', '1', '1475893041', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('979', '1', '1', '1475893136', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('980', '1', '1', '1475893136', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('981', '1', '1', '1475893140', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('982', '1', '1', '1475893146', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('983', '1', '1', '1475893153', 'index.php/Sysset/Params', '//', '{\"name\":\"wwww\",\"value\":\"wwww\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('984', '1', '1', '1475893154', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('985', '1', '1', '1475893161', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('986', '1', '1', '1475893164', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('987', '1', '1', '1475893216', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('988', '1', '1', '1475893249', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('989', '1', '1', '1475893251', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('990', '1', '1', '1475893375', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('991', '1', '1', '1475893386', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('992', '1', '1', '1475893504', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('993', '1', '1', '1475893504', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('994', '1', '1', '1475893507', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('995', '1', '1', '1475893832', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('996', '1', '1', '1475894128', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('997', '1', '1', '1475894095', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('998', '1', '1', '1475894096', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('999', '1', '1', '1475894099', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1000', '1', '1', '1475894103', 'index.php/Sysset/Params', '//', '{\"Params\":\"update\')}\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1001', '1', '1', '1475894114', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1002', '1', '1', '1475894149', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1003', '1', '1', '1475894149', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1004', '1', '1', '1475894154', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1005', '1', '1', '1475894166', 'index.php/Sysset/Params', '//', '{\"Params\":\"delete\')}\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1006', '1', '1', '1475894173', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1007', '1', '1', '1475894291', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1008', '1', '1', '1475894291', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1009', '1', '1', '1475894293', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1010', '1', '1', '1475894296', 'index.php/Sysset/Params', '//', '{\"Params\":\"5\')}\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1011', '1', '1', '1475894423', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1012', '1', '1', '1475894560', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1013', '1', '1', '1475894467', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1014', '1', '1', '1475894467', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1015', '1', '1', '1475894472', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1016', '1', '1', '1475894512', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1017', '1', '1', '1475894513', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1018', '1', '1', '1475894515', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1019', '1', '1', '1475894642', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1020', '1', '1', '1475894564', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1021', '1', '1', '1475894564', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1022', '1', '1', '1475894567', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1023', '1', '1', '1475894577', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1024', '1', '1', '1475894577', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1025', '1', '1', '1475894580', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1026', '1', '1', '1475894677', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1027', '1', '1', '1475894677', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1028', '1', '1', '1475894680', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1029', '1', '1', '1475894712', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1030', '1', '1', '1475894747', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1031', '1', '1', '1475894748', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1032', '1', '1', '1475894750', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1033', '1', '1', '1475894808', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1034', '1', '1', '1475894808', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1035', '1', '1', '1475894811', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1036', '1', '1', '1475894820', 'index.php/Sysset/Params', '//', '{\"id\":\"Arrayid\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1037', '1', '1', '1475894823', 'index.php/Sysset/Params', '//', '{\"id\":\"Arrayid\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1038', '1', '1', '1475894850', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1039', '1', '1', '1475894850', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1040', '1', '1', '1475894853', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1041', '1', '1', '1475894857', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1042', '1', '1', '1475894859', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1043', '1', '1', '1475894887', 'index.php/Sysset/Params', '//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1044', '1', '1', '1475894891', 'index.php/Sysset/Params', '//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1045', '1', '1', '1475895023', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1046', '1', '1', '1475895027', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1047', '1', '1', '1475894927', 'index.php/Sysset/Params', '//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1048', '1', '1', '1475894928', 'index.php/Sysset/Params', '//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1049', '1', '1', '1475894930', 'index.php/Sysset/Params', '//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1050', '1', '1', '1475894931', 'index.php/Sysset/Params', '//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1051', '1', '1', '1475895034', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1052', '1', '1', '1475894936', 'index.php/Sysset/Params', '//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1053', '1', '1', '1475894936', 'index.php/Sysset/Params', '//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1054', '1', '1', '1475894938', 'index.php/Sysset/Params', '//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1055', '1', '1', '1475894939', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1056', '1', '1', '1475895068', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1057', '1', '1', '1475894976', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1058', '1', '1', '1475894977', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1059', '1', '1', '1475894979', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1060', '1', '1', '1475894981', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1061', '1', '1', '1475894984', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1062', '1', '1', '1475894985', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1063', '1', '1', '1475894986', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1064', '1', '1', '1475894987', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1065', '1', '1', '1475894987', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1066', '1', '1', '1475894988', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1067', '1', '1', '1475895016', 'index.php/Sysset/Params', '//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1068', '1', '1', '1475895155', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1069', '1', '1', '1475895064', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1070', '1', '1', '1475895067', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1071', '1', '1', '1475895076', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1072', '1', '1', '1475895181', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1073', '1', '1', '1475895182', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1074', '1', '1', '1475895187', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1075', '1', '1', '1475895192', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1076', '1', '1', '1475895285', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1077', '1', '1', '1475895287', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1078', '1', '1', '1475895314', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1079', '1', '1', '1475895315', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1080', '1', '1', '1475895318', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1081', '1', '1', '1475895363', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1082', '1', '1', '1475895363', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1083', '1', '1', '1475895366', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1084', '1', '1', '1475895405', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1085', '1', '1', '1475895405', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1086', '1', '1', '1475895410', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1087', '1', '1', '1475895454', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1088', '1', '1', '1475895454', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1089', '1', '1', '1475895460', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1090', '1', '1', '1475895487', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1091', '1', '1', '1475895519', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1092', '1', '1', '1475895547', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1093', '1', '1', '1475895553', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1094', '1', '1', '1475895554', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1095', '1', '1', '1475895957', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1096', '1', '1', '1475895957', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1097', '1', '1', '1475895962', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1098', '1', '1', '1475895966', 'index.php/Sysset/Params', '//', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1099', '1', '1', '1475895967', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1100', '1', '1', '1475895970', 'index.php/Sysset/Params', '//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1101', '1', '1', '1475895971', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1102', '1', '1', '1475896104', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1103', '1', '1', '1475896104', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1104', '1', '1', '1475896109', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1105', '1', '1', '1475896111', 'index.php/Sysset/Params', '//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1106', '1', '1', '1475896236', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1107', '1', '1', '1475896238', 'index.php/Sysset/Params', '//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1108', '1', '1', '1475896247', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1109', '1', '1', '1475896356', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1110', '1', '1', '1475896363', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1111', '1', '1', '1475896368', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1112', '1', '1', '1475896373', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1113', '1', '1', '1475896380', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1114', '1', '1', '1475896387', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1115', '1', '1', '1475896388', 'index.php/Admin/User', '//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1116', '1', '1', '1475896398', 'index.php/Admin/Role', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1117', '1', '1', '1475896402', 'index.php/Admin/Message', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1118', '1', '1', '1475896414', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1119', '1', '1', '1475896485', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1120', '1', '1', '1475896487', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1121', '1', '1', '1475896524', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1122', '1', '1', '1475896524', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1123', '1', '1', '1475896528', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1124', '1', '1', '1475896530', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1125', '1', '1', '1475896596', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1126', '1', '1', '1475896597', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1127', '1', '1', '1475896604', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1128', '1', '1', '1475896606', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1129', '1', '1', '1475896616', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1130', '1', '1', '1475896618', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1131', '1', '1', '1475896735', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1132', '1', '1', '1475896660', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1133', '1', '1', '1475896660', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1134', '1', '1', '1475896664', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1135', '1', '1', '1475896667', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1136', '1', '1', '1475896809', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1137', '1', '1', '1475896742', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1138', '1', '1', '1475896743', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1139', '1', '1', '1475896745', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1140', '1', '1', '1475896747', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1141', '1', '1', '1475896749', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1142', '1', '1', '1475896752', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1143', '1', '1', '1475896754', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1144', '1', '1', '1475896861', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1145', '1', '1', '1475896901', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1146', '1', '1', '1475896948', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1147', '1', '1', '1475897046', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1148', '1', '1', '1475896956', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1149', '1', '1', '1475896957', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1150', '1', '1', '1475896960', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1151', '1', '1', '1475896963', 'index.php/Sysset/Params', '//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1152', '1', '1', '1475897072', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1153', '1', '1', '1475896974', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1154', '1', '1', '1475897099', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1155', '1', '1', '1475897034', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1156', '1', '1', '1475897035', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1157', '1', '1', '1475897037', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1158', '1', '1', '1475897039', 'index.php/Sysset/Params', '//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1159', '1', '1', '1475897073', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1160', '1', '1', '1475897079', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1161', '1', '1', '1475897328', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1162', '1', '1', '1475897333', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1163', '1', '1', '1475897354', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1164', '1', '1', '1475897355', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1165', '1', '1', '1475897358', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1166', '1', '1', '1475897362', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1167', '1', '1', '1475897421', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1168', '1', '1', '1475897421', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1169', '1', '1', '1475897425', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1170', '1', '1', '1475897427', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1171', '1', '1', '1475897484', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1172', '1', '1', '1475897486', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1173', '1', '1', '1475897507', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1174', '1', '1', '1475897507', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1175', '1', '1', '1475897511', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1176', '1', '1', '1475897513', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1177', '1', '1', '1475897543', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1178', '1', '1', '1475897543', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1179', '1', '1', '1475897546', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1180', '1', '1', '1475897548', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1181', '1', '1', '1475897556', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1182', '1', '1', '1475897558', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1183', '1', '1', '1475897562', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1184', '1', '1', '1475897656', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1185', '1', '1', '1475897656', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1186', '1', '1', '1475897659', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1187', '1', '1', '1475897662', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1188', '1', '1', '1475897666', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1189', '1', '1', '1475897668', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1190', '1', '1', '1475897790', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1191', '1', '1', '1475897794', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1192', '1', '1', '1475897795', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1193', '1', '1', '1475897798', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1194', '1', '1', '1475897801', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1195', '1', '1', '1475900807', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1196', '1', '1', '1475900808', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1197', '1', '1', '1475900810', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1198', '1', '1', '1475900827', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1199', '1', '1', '1475900828', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1200', '1', '1', '1475900833', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1201', '1', '1', '1475900860', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1202', '1', '1', '1475900914', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1203', '1', '1', '1475900947', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1204', '1', '1', '1475900975', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1205', '1', '1', '1475900975', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1206', '1', '1', '1475900977', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1207', '1', '1', '1475901005', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1208', '1', '1', '1475901048', 'index.php/Trans/Order', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1209', '1', '1', '1475901088', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1210', '1', '1', '1475901110', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1211', '1', '1', '1475901111', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1212', '1', '1', '1475901116', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1213', '1', '1', '1475901147', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1214', '1', '1', '1475901319', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1215', '1', '1', '1475901358', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1216', '1', '1', '1475901358', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1217', '1', '1', '1475901361', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1218', '1', '1', '1475901460', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1219', '1', '1', '1475901483', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1220', '1', '1', '1475901535', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1221', '1', '1', '1475901603', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1222', '1', '1', '1475901627', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1223', '1', '1', '1475901727', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1224', '1', '1', '1475901727', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1225', '1', '1', '1475901730', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1226', '1', '1', '1475901826', 'index.php/Sysset/Params', '//', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1227', '1', '1', '1475901939', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1228', '1', '1', '1475901972', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1229', '1', '1', '1475901976', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1230', '1', '1', '1475901992', 'index.php/Sysset/Params', '//', '{\"name\":\"thanks\",\"value\":\"thanks\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1231', '1', '1', '1475901993', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1232', '1', '1', '1475902133', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1233', '1', '1', '1475902134', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1234', '1', '1', '1475902137', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1235', '1', '1', '1475902139', 'index.php/Sysset/Params', '//', '{\"id\":\"6\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1236', '1', '1', '1475902146', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1237', '1', '1', '1475902213', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1238', '1', '1', '1475902218', 'index.php/Sysset/Params', '//', '{\"name\":\"ccc\",\"value\":\"ddd\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1239', '1', '1', '1475902219', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1240', '1', '1', '1475902223', 'index.php/Sysset/Params', '//', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1241', '1', '1', '1475902285', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1242', '1', '1', '1475902288', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1243', '1', '1', '1475902292', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1244', '1', '1', '1475902296', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1245', '1', '1', '1475902301', 'index.php/Sysset/Params', '//', '{\"name\":\"sss\",\"value\":\"aaa\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1246', '1', '1', '1475902302', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1247', '1', '1', '1475902305', 'index.php/Sysset/Params', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1248', '1', '1', '1475902359', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1249', '1', '1', '1475902364', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1250', '1', '1', '1475902369', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1251', '1', '1', '1475902370', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1252', '1', '1', '1475902372', 'index.php/Sysset/Params', '//', '{\"id\":\"9\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1253', '1', '1', '1475902374', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1254', '1', '1', '1475902400', 'index.php/Sysset/Params', '//', '{\"name\":\"ccc\",\"value\":\"ddd\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1255', '1', '1', '1475902479', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1256', '1', '1', '1475902489', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1257', '1', '1', '1475903360', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1258', '1', '1', '1475903364', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1259', '1', '1', '1475904082', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1260', '1', '1', '1475904084', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1261', '1', '1', '1475904097', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1262', '1', '1', '1475904385', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1263', '1', '1', '1475904387', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1264', '1', '1', '1475904491', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1265', '1', '1', '1475904494', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1266', '1', '1', '1475904811', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1267', '1', '1', '1475904814', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1268', '1', '1', '1475904970', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1269', '1', '1', '1475904971', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1270', '1', '1', '1475905088', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1271', '1', '1', '1475905114', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1272', '1', '1', '1475905053', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1273', '1', '1', '1475905055', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1274', '1', '1', '1475905210', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1275', '1', '1', '1475905398', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1276', '1', '1', '1475905447', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1277', '1', '1', '1475905347', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1278', '1', '1', '1475905349', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1279', '1', '1', '1475905353', 'index.php/Sysset/Params', '//', '{\"id\":\"\",\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1280', '1', '1', '1475905460', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1281', '1', '1', '1475905586', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1282', '1', '1', '1475905503', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1283', '1', '1', '1475905505', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1284', '1', '1', '1475905507', 'index.php/Sysset/Params', '//', '{\"id\":\"\",\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1285', '1', '1', '1475905540', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1286', '1', '1', '1475905543', 'index.php/Sysset/Params', '//', '{\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1287', '1', '1', '1475905544', 'index.php/Sysset/Params', '//', '{\"id\":\"\",\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1288', '1', '1', '1475905666', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1289', '1', '1', '1475905681', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1290', '1', '1', '1475905683', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1291', '1', '1', '1475905685', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1292', '1', '1', '1475905911', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1293', '1', '1', '1475905912', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1294', '1', '1', '1475905923', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1295', '1', '1', '1475905935', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1296', '1', '1', '1475905977', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1297', '1', '1', '1475905893', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1298', '1', '1', '1475905898', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1299', '1', '1', '1475906010', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1300', '1', '1', '1475905911', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1301', '1', '1', '1475906044', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1302', '1', '1', '1475906067', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1303', '1', '1', '1475906070', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1304', '1', '1', '1475906200', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1305', '1', '1', '1475906125', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1306', '1', '1', '1475906127', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx\",\"value\":\"qqqq\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1307', '1', '1', '1475906131', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1308', '1', '1', '1475906132', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1309', '1', '1', '1475906136', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq\",\"isdeleted\":\"on\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1310', '1', '1', '1475906142', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1311', '1', '1', '1475906244', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1312', '1', '1', '1475906145', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1313', '1', '1', '1475906154', 'index.php/Sysset/Params', '//', '{\"id\":\"8\",\"name\":\"sss\",\"value\":\"aaa\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1314', '1', '1', '1475906191', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1315', '1', '1', '1475906193', 'index.php/Sysset/Params', '//', '{\"id\":\"8\",\"name\":\"sss\",\"value\":\"aaa\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1316', '1', '1', '1475906200', 'index.php/Sysset/Params', '//', '{\"id\":\"8\",\"name\":\"sss11\",\"value\":\"aaa11\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1317', '1', '1', '1475906201', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1318', '1', '1', '1475906205', 'index.php/Sysset/Params', '//', '{\"id\":\"8\",\"name\":\"sss11\",\"value\":\"aaa11\",\"isdeleted\":\"on\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1319', '1', '1', '1475906210', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1320', '1', '1', '1475906340', 'News/Newscon/recycle', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1321', '1', '1', '1475906360', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1322', '1', '1', '1475906368', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1323', '1', '1', '1475906303', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1324', '1', '1', '1475906406', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1325', '1', '1', '1475906309', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1326', '1', '1', '1475906310', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1327', '1', '1', '1475906316', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1328', '1', '1', '1475906445', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1329', '1', '1', '1475906455', 'Product/Saleconfig/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1330', '1', '1', '1475906468', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1331', '1', '1', '1475906470', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1332', '1', '1', '1475906401', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1333', '1', '1', '1475906407', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1334', '1', '1', '1475906409', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1335', '1', '1', '1475906412', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\",\"isdeleted\":\"on\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1336', '1', '1', '1475906515', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1337', '1', '1', '1475906417', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1338', '1', '1', '1475906420', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1339', '1', '1', '1475906422', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1340', '1', '1', '1475906525', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1341', '1', '1', '1475906425', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1342', '1', '1', '1475906426', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1343', '1', '1', '1475906426', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1344', '1', '1', '1475906426', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1345', '1', '1', '1475906529', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1346', '1', '1', '1475906428', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1347', '1', '1', '1475906531', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1348', '1', '1', '1475906534', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1349', '1', '1', '1475906433', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1350', '1', '1', '1475906536', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1351', '1', '1', '1475906542', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1352', '1', '1', '1475906550', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1353', '1', '1', '1475906556', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"48\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1354', '1', '1', '1475906559', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1355', '1', '1', '1475906561', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1356', '1', '1', '1475906468', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1357', '1', '1', '1475906472', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1358', '1', '1', '1475906473', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1359', '1', '1', '1475906479', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1360', '1', '1', '1475906482', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\",\"isdeleted\":\"on\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1361', '1', '1', '1475906488', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1362', '1', '1', '1475906605', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1363', '1', '1', '1475906512', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\",\"isdeleted\":\"on\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1364', '1', '1', '1475906517', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1365', '1', '1', '1475906519', 'index.php/Sysset/Params', '//', '{\"id\":\"8\",\"name\":\"sss11\",\"value\":\"aaa11\",\"isdeleted\":\"on\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1366', '1', '1', '1475906521', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1367', '1', '1', '1475906532', 'index.php/Sysset/Params', '//', '{\"id\":\"2\",\"name\":\"ffafdsa\",\"value\":\"fasdd\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1368', '1', '1', '1475906536', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1369', '1', '1', '1475906580', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1370', '1', '1', '1475906582', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1371', '1', '1', '1475906769', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1372', '1', '1', '1475906772', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1373', '1', '1', '1475906774', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1374', '1', '1', '1475906775', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1375', '1', '1', '1475906795', 'News/Newscon/edit', '新闻管理/新闻内容/', '{\"title\":\"\\u53cd\\u5bf9\\u6492\\u6cd54444\",\"categoryid\":\"57\",\"style\":\"1\",\"author\":\"\\u8303\\u5fb7\\u8428\",\"source\":\"fds \",\"keyword\":\"fdsa \",\"description\":\"\\u70e6\\u70e6\\u70e6\\u7684\\u6492\",\"thumb\":\"\\/Uploads\\/news\\/2016-09-26\\/57e8913004f9c.jpg\",\"weight\":\"4\",\"id\":\"111\",\"editorValue\":\"<p>\\u8303\\u5fb7\\u8428<\\/p><p><img src=\\\"\\/Uploads\\/ueditor\\/image\\/20160926\\/1474859390172645.jpg\\\" title=\\\"1474859390172645.jpg\\\" alt=\\\"Koala.jpg\\\"\\/><\\/p>\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1376', '1', '1', '1475906796', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1377', '1', '1', '1475906836', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1378', '1', '1', '1475906842', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1379', '1', '1', '1475906857', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1380', '1', '1', '1475906861', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"110\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1381', '1', '1', '1475906868', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1382', '1', '1', '1475906870', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1383', '1', '1', '1475906874', 'News/Newscon/index', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1384', '1', '1', '1475906876', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"110\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1385', '1', '1', '1475906807', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1386', '1', '1', '1475906809', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1387', '1', '1', '1475906812', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1388', '1', '1', '1475906813', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1389', '1', '1', '1475906821', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1390', '1', '1', '1475906823', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1391', '1', '1', '1475906830', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1392', '1', '1', '1475906832', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\",\"isdeleted\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1393', '1', '1', '1475906936', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1394', '1', '1', '1475906947', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1395', '1', '1', '1475906875', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1396', '1', '1', '1475906879', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx22\",\"value\":\"qqqq22\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1397', '1', '1', '1475906886', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx223\",\"value\":\"qqqq223\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1398', '1', '1', '1475906887', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1399', '1', '1', '1475906891', 'index.php/Sysset/Params', '//', '{\"id\":\"9\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1400', '1', '1', '1475906893', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1401', '1', '1', '1475906896', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx223\",\"value\":\"qqqq223\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1402', '1', '1', '1475906898', 'index.php/Sysset/Params', '//', '{\"id\":\"9\",\"name\":\"xxxx223\",\"value\":\"qqqq223d\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1403', '1', '1', '1475906900', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1404', '1', '1', '1475906907', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1405', '1', '1', '1475907021', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1406', '1', '1', '1475907024', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1407', '1', '1', '1475907025', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1408', '1', '1', '1475907026', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1409', '1', '1', '1475907027', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1410', '1', '1', '1475907028', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1411', '1', '1', '1475907029', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1412', '1', '1', '1475907043', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1413', '1', '1', '1475907059', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1414', '1', '1', '1475907092', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1415', '1', '1', '1475907094', 'News/Newscon/recycle', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1416', '1', '1', '1475907121', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1417', '1', '1', '1475907122', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1418', '1', '1', '1475907125', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1419', '1', '1', '1475907030', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1420', '1', '1', '1475907132', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1421', '1', '1', '1475907032', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1422', '1', '1', '1475907036', 'index.php/Sysset/Params', '//', '{\"name\":\"ddd\",\"value\":\"sss\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1423', '1', '1', '1475907037', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1424', '1', '1', '1475907142', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1425', '1', '1', '1475907041', 'index.php/Sysset/Params', '//', '{\"id\":\"10\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1426', '1', '1', '1475907042', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1427', '1', '1', '1475907044', 'index.php/Sysset/Params', '//', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1428', '1', '1', '1475907047', 'index.php/Sysset/Params', '//', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1429', '1', '1', '1475907048', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1430', '1', '1', '1475907152', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1431', '1', '1', '1475907232', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1432', '1', '1', '1475907244', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1433', '1', '1', '1475907249', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1434', '1', '1', '1475907403', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1435', '1', '1', '1475907409', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1436', '1', '1', '1475907350', 'index.php/Sysset/Params', '//', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1437', '1', '1', '1475907353', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1438', '1', '1', '1475907378', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1439', '1', '1', '1475907438', 'index.php/Sysset/Params', '//', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1440', '1', '1', '1475907465', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1441', '1015', '2', '1475907488', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1442', '1015', '2', '1475907489', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1443', '1015', '2', '1475907495', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1444', '1015', '2', '1475907497', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1445', '1', '1', '1475907615', 'Sysset/Profile/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1446', '1015', '2', '1475907561', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1447', '1015', '2', '1475907561', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1448', '1', '1', '1475907666', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1449', '1015', '2', '1475907565', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1450', '1015', '2', '1475907568', 'index.php/Sysset/Params', '//', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1451', '1015', '2', '1475907570', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1452', '1015', '2', '1475907574', 'index.php/Sysset/Params', '//', '{\"id\":\"8\",\"name\":\"sss11\",\"value\":\"aaa11\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1453', '1015', '2', '1475907575', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1454', '1015', '2', '1475907592', 'index.php/Sysset/Params', '//', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1455', '1015', '2', '1475907595', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1456', '1015', '2', '1475907603', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1457', '1', '1', '1475907718', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1458', '1', '1', '1475907721', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1459', '1', '1', '1475907733', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1460', '1', '1', '1475907737', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1461', '1', '1', '1475907741', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1462', '1015', '2', '1475907640', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1463', '1', '1', '1475907755', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1464', '1015', '2', '1475907661', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1465', '1015', '2', '1475907661', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1466', '1015', '2', '1475907668', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1467', '1', '1', '1475907792', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1468', '1', '1', '1475907803', 'Crm/Customer/userDetail', 'CRM管理/客户管理/查看客户详情', '{\"id\":\"1001\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1469', '1', '1', '1475907825', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1470', '1015', '2', '1475907861', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1471', '1015', '2', '1475907885', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1472', '1015', '2', '1475907889', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1473', '1015', '2', '1475907892', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1474', '1015', '2', '1475907893', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1475', '1015', '2', '1475907919', 'index.php/Sysset/Params', '//', '{\"id\":\"8\",\"name\":\"sss11\",\"value\":\"aaa11\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1476', '1015', '2', '1475907924', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1477', '1015', '2', '1475907936', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1478', '1015', '2', '1475907938', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1479', '1015', '2', '1475908081', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1480', '1015', '2', '1475908083', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1481', '1015', '2', '1475908185', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1482', '1015', '2', '1475908228', 'index.php/AgentAdmin/UserAccount', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1483', '1015', '2', '1475908244', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1484', '1015', '2', '1475908248', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1485', '1015', '2', '1475908505', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1486', '1015', '2', '1475908505', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1487', '1015', '2', '1475908523', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1488', '1015', '2', '1475908527', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1489', '1', '1', '1475908530', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1490', '1', '1', '1475908530', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1491', '1', '1', '1475908828', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1492', '1', '1', '1475908853', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1493', '1', '1', '1475908883', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1494', '1', '1', '1475909053', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1495', '1', '1', '1475909225', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1496', '1', '1', '1475909232', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1497', '1', '1', '1475909238', 'index.php/Sysset/Params', '//', '{\"name\":\"eee\",\"value\":\"eee\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1498', '1', '1', '1475909239', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1499', '1', '1', '1475909245', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1500', '1015', '2', '1475909256', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1501', '1015', '2', '1475909256', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1502', '1015', '2', '1475909262', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1503', '1015', '2', '1475909266', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1504', '1015', '2', '1475909271', 'index.php/Sysset/Params', '//', '{\"name\":\"ddddd\",\"value\":\"ffffff\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1505', '1015', '2', '1475909272', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1506', '1', '1', '1475909410', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1507', '1', '1', '1475909461', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1508', '1', '1', '1475909512', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1509', '1015', '2', '1475909476', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1510', '1015', '2', '1475909483', 'index.php/Sysset/Params', '//', '{\"name\":\"3333332\",\"value\":\"23111\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1511', '1015', '2', '1475909484', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1512', '1015', '2', '1475909550', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1513', '1015', '2', '1475909701', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1514', '1015', '2', '1475909701', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1515', '1015', '2', '1475909704', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1516', '1015', '2', '1475909711', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1517', '1015', '2', '1475909713', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1518', '1015', '2', '1475909876', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1519', '1015', '2', '1475909876', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1520', '1015', '2', '1475909879', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1521', '1015', '2', '1475909890', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1522', '1015', '2', '1475909893', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1523', '1015', '2', '1475909946', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1524', '1015', '2', '1475909950', 'index.php/Sysset/Params', '//', '{\"id\":\"12\",\"name\":\"ddddd\",\"value\":\"ffffff\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1525', '1015', '2', '1475909952', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1526', '1015', '2', '1475909981', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1527', '1015', '2', '1475909983', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1528', '1015', '2', '1475909988', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1529', '1015', '2', '1475909993', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1530', '1015', '2', '1475909997', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1531', '1015', '2', '1475910021', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1532', '1', '1', '1475910124', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1533', '1015', '2', '1475910023', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1534', '1015', '2', '1475910024', 'index.php/Sysset/Params', '//', '{\"id\":\"13\",\"name\":\"3333332\",\"value\":\"23111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1535', '1015', '2', '1475910026', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1536', '1015', '2', '1475910029', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1537', '1015', '2', '1475910033', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1538', '1015', '2', '1475910035', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1539', '1015', '2', '1475910040', 'index.php/Sysset/Params', '//', '{\"name\":\"ddddss\",\"value\":\"aaaa\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1540', '1015', '2', '1475910042', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1541', '1015', '2', '1475910140', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1542', '1015', '2', '1475910149', 'index.php/Sysset/Params', '//', '{\"id\":\"14\",\"name\":\"ddddss\",\"value\":\"aaaa\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1543', '1015', '2', '1475910152', 'index.php/Sysset/Params', '//', '{\"id\":\"14\",\"name\":\"ddddss\",\"value\":\"aaaa\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1544', '1015', '2', '1475910153', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1545', '1015', '2', '1475910186', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1546', '1', '1', '1475910189', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1547', '1', '1', '1475910189', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1548', '1', '1', '1475910197', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1549', '1', '1', '1475910202', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1550', '1015', '2', '1475910216', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1551', '1015', '2', '1475910216', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1552', '1015', '2', '1475910219', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1553', '1015', '2', '1475910222', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1554', '1015', '2', '1475910226', 'index.php/Sysset/Params', '//', '{\"name\":\"dfaf\",\"value\":\"fsaf\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1555', '1015', '2', '1475910227', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1556', '1015', '2', '1475910274', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1557', '1015', '2', '1475910279', 'index.php/Sysset/Params', '//', '{\"name\":\"wwwaa\",\"value\":\"aaaa\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1558', '1015', '2', '1475910342', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1559', '1015', '2', '1475910345', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1560', '1015', '2', '1475910349', 'index.php/Sysset/Params', '//', '{\"name\":\"dsd\",\"value\":\"ssss\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1561', '1', '1', '1475910491', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1562', '1015', '2', '1475910435', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1563', '1015', '2', '1475910436', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1564', '1015', '2', '1475910441', 'index.php/Sysset/Params', '//', '{\"name\":\"cccvv\",\"value\":\"vvvvv\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1565', '1015', '2', '1475910443', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1566', '1', '1', '1475910595', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1567', '1015', '2', '1475910503', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1568', '1015', '2', '1475910505', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1569', '1015', '2', '1475910508', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1570', '1', '1', '1475910510', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1571', '1', '1', '1475910510', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1572', '1', '1', '1475910513', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1573', '1', '1', '1475910515', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1574', '1', '1', '1475910519', 'index.php/Sysset/Params', '//', '{\"name\":\"5555\",\"value\":\"66666\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1575', '1', '1', '1475910520', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1576', '1', '1', '1475910661', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1577', '1', '1', '1475910577', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1578', '1', '1', '1475910581', 'index.php/Sysset/Params', '//', '{\"name\":\"4443\",\"value\":\"3333\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1579', '1', '1', '1475910583', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1580', '1', '1', '1475910586', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1581', '1015', '2', '1475910595', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1582', '1015', '2', '1475910595', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1583', '1015', '2', '1475910598', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1584', '1015', '2', '1475910600', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1585', '1015', '2', '1475910604', 'index.php/Sysset/Params', '//', '{\"name\":\"gggg\",\"value\":\"vvvv\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1586', '1015', '2', '1475910606', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1587', '1', '1', '1475910722', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1588', '1', '1', '1475910836', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1589', '1', '1', '1475910840', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1590', '1', '1', '1475910850', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1591', '1015', '2', '1475910937', 'index.php/Sysset/Params', '//', '{\"id\":\"19\",\"name\":\"gggg\",\"value\":\"vvvv\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1592', '1015', '2', '1475910939', 'index.php/Sysset/Params', '//', '{\"id\":\"19\",\"name\":\"gggg\",\"value\":\"vvvv\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1593', '1015', '2', '1475910942', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1594', '1015', '2', '1475910963', 'index.php/Sysset/Params', '//', '{\"id\":\"17\",\"name\":\"5555\",\"value\":\"66666\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1595', '1015', '2', '1475910965', 'index.php/Sysset/Params', '//', '{\"id\":\"17\",\"name\":\"5555\",\"value\":\"66666\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1596', '1015', '2', '1475910967', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1597', '1015', '2', '1475911017', 'index.php/Sysset/Params', '//', '{\"id\":\"19\",\"name\":\"gggg\",\"value\":\"vvvv\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1598', '1015', '2', '1475911018', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1599', '1015', '2', '1475911021', 'index.php/Sysset/Params', '//', '{\"p\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1600', '1015', '2', '1475911023', 'index.php/Sysset/Params', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1601', '1015', '2', '1475911025', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1602', '1015', '2', '1475911028', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1603', '1015', '2', '1475911030', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1604', '1015', '2', '1475911031', 'index.php/Sysset/Params', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1605', '1015', '2', '1475911033', 'index.php/Sysset/Params', '//', '{\"p\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1606', '1015', '2', '1475911036', 'index.php/Sysset/Params', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1607', '1015', '2', '1475911041', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1608', '1015', '2', '1475911046', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1609', '1015', '2', '1475911048', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1610', '1015', '2', '1475911071', 'index.php/Sysset/Params', '//', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1611', '1015', '2', '1475911072', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1612', '1015', '2', '1475911076', 'index.php/Sysset/Params', '//', '{\"id\":\"16\",\"name\":\"cccvv\",\"value\":\"vvvvv\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1613', '1015', '2', '1475911078', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1614', '1015', '2', '1475911175', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1615', '1015', '2', '1475911198', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1616', '1015', '2', '1475911369', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1617', '1015', '2', '1475911371', 'index.php/Sysset/Params', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1618', '1015', '2', '1475911546', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1619', '1015', '2', '1475911548', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1620', '1015', '2', '1475911678', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1621', '1015', '2', '1475911821', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1622', '1015', '2', '1475911834', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1623', '1015', '2', '1475911836', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1624', '1015', '2', '1475911838', 'index.php/Sysset/Params', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1625', '1015', '2', '1475911839', 'index.php/Sysset/Params', '//', '{\"p\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1626', '1015', '2', '1475911842', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1627', '1015', '2', '1475911920', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1628', '1015', '2', '1475912330', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1629', '1015', '2', '1475912439', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1630', '1015', '2', '1475912448', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1631', '1015', '2', '1475912452', 'index.php/Sysset/Params', '//', '{\"name\":\"ff\",\"value\":\"dsdsd\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1632', '1015', '2', '1475912454', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1633', '1015', '2', '1475912460', 'index.php/Sysset/Params', '//', '{\"id\":\"20\",\"name\":\"ff\",\"value\":\"dsdsd\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1634', '1', '1', '1475912561', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1635', '1015', '2', '1475912462', 'index.php/Sysset/Params', '//', '{\"id\":\"20\",\"name\":\"ffddd\",\"value\":\"dsdsd\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1636', '1015', '2', '1475912463', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1637', '1015', '2', '1475912480', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1638', '1', '1', '1475912582', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1639', '1', '1', '1475912483', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1640', '1', '1', '1475912483', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1641', '1', '1', '1475912485', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1642', '1', '1', '1475912488', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1643', '1', '1', '1475912493', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1644', '1', '1', '1475912619', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1645', '1', '1', '1475912624', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1646', '1015', '2', '1475912634', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1647', '1015', '2', '1475912634', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1648', '1015', '2', '1475912636', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1649', '1015', '2', '1475912667', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1650', '1015', '2', '1475912670', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1651', '1015', '2', '1475912680', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1652', '1', '1', '1475912682', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1653', '1', '1', '1475912683', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1654', '1', '1', '1475912685', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1655', '1', '1', '1475912752', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1656', '1', '1', '1475912754', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1657', '1', '1', '1475912787', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1658', '1', '1', '1475912789', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1659', '1', '1', '1475912790', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1660', '1', '1', '1475912792', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1661', '1', '1', '1475912799', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1662', '1', '1', '1475912807', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1663', '1', '1', '1475912934', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1664', '1', '1', '1475912937', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1665', '1', '1', '1475912941', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1666', '1', '1', '1475912847', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1667', '1', '1', '1475912849', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1668', '1', '1', '1475912880', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1669', '1', '1', '1475912881', 'index.php/Sysset/Interface', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1670', '1', '1', '1475912947', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1671', '1', '1', '1475913032', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1672', '1', '1', '1475913035', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1673', '1', '1', '1475913036', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1674', '1', '1', '1475913245', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1675', '1', '1', '1475913246', 'index.php/Sysset/Params', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1676', '1', '1', '1475913252', 'index.php/Sysset/Params', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1677', '1', '1', '1475913544', 'index.php/Sysset/Params', '//', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1678', '1', '1', '1475913558', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1679', '1', '1', '1475913569', 'index.php/Sysset/Params', '//', '{\"id\":\"18\",\"name\":\"4443\",\"value\":\"3333\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1680', '1', '1', '1475913573', 'index.php/Sysset/Params', '//', '{\"id\":\"18\",\"name\":\"4443\",\"value\":\"3333\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1681', '1', '1', '1475913574', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1682', '1', '1', '1475913664', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1683', '1', '1', '1475913681', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1684', '1015', '2', '1475913694', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1685', '1015', '2', '1475913694', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1686', '1015', '2', '1475913696', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1687', '1015', '2', '1475913710', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1688', '1015', '2', '1475913712', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1689', '1015', '2', '1475913716', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1690', '1015', '2', '1475913725', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1691', '1015', '2', '1475913938', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1692', '1015', '2', '1475913942', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1693', '1015', '2', '1475913967', 'index.php/AgentAdmin/UserAccount', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1694', '1015', '2', '1475913976', 'index.php/AgentCrm/Customer', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1695', '1015', '2', '1475913978', 'index.php/AgentProduct/Market', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1696', '1015', '2', '1475913981', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1697', '1015', '2', '1475914034', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1698', '1015', '2', '1475914039', 'index.php/AgentAdmin/UserAccount', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1699', '1015', '2', '1475914060', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1700', '1015', '2', '1475914079', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1701', '1015', '2', '1475914269', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1702', '1015', '2', '1475914271', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1703', '1015', '2', '1475914298', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1704', '1015', '2', '1475914410', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1705', '1', '1', '1475914560', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1706', '1015', '2', '1475914468', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1707', '1015', '2', '1475914471', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1708', '1015', '2', '1475914499', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1709', '1015', '2', '1475914541', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1710', '1', '1', '1475914701', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1711', '1', '1', '1475914703', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1712', '1', '1', '1475914715', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1713', '1', '1', '1475914748', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1714', '1', '1', '1475914751', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1715', '1', '1', '1475915029', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1716', '1', '1', '1475915034', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1717', '1', '1', '1475915196', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1718', '1', '1', '1475915199', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1719', '1', '1', '1475915227', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1720', '1', '1', '1475915230', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1721', '1', '1', '1475915311', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1722', '1', '1', '1475915315', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1723', '1', '1', '1475915347', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1724', '1', '1', '1475915350', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1725', '1', '1', '1475915366', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1726', '1', '1', '1475915369', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1727', '1015', '2', '1475915542', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1728', '1015', '2', '1475915543', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1729', '1015', '2', '1475915546', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1730', '1015', '2', '1475915549', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1731', '1015', '2', '1475915556', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1732', '1', '1', '1475915752', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1733', '1', '1', '1475915784', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1734', '1', '1', '1475915792', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1735', '1015', '2', '1475915742', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1736', '1015', '2', '1475915743', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1737', '1015', '2', '1475915747', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1738', '1015', '2', '1475915751', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1739', '1015', '2', '1475915757', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1740', '1', '1', '1475915864', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1741', '1015', '2', '1475915763', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1742', '1', '1', '1475915868', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1743', '1015', '2', '1475915770', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1744', '1', '1', '1475915874', 'Product/Networth/importTodayNetworth', '产品管理//', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1745', '1015', '2', '1475915810', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1746', '1015', '2', '1475915810', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1747', '1015', '2', '1475915813', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1748', '1015', '2', '1475915814', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1749', '1015', '2', '1475915816', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1750', '1015', '2', '1475915817', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1751', '1015', '2', '1475915820', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1752', '1015', '2', '1475916284', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1753', '1015', '2', '1475916284', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1754', '1015', '2', '1475916287', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1755', '1015', '2', '1475916289', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1756', '1015', '2', '1475916316', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1757', '1015', '2', '1475916316', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1758', '1015', '2', '1475916318', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1759', '1015', '2', '1475916320', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1760', '1015', '2', '1475916328', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1761', '1015', '2', '1475916399', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1762', '1015', '2', '1475916400', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1763', '1015', '2', '1475916404', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1764', '1015', '2', '1475916405', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1765', '1015', '2', '1475916408', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"ddfa\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1766', '1', '1', '1475916720', 'Product/Networth/index', '产品管理//', '{\"productno\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1767', '1015', '2', '1475916873', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1768', '1015', '2', '1475916874', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1769', '1015', '2', '1475917459', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1770', '1015', '2', '1475917460', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1771', '1015', '2', '1475917471', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.english.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1772', '1015', '2', '1475917628', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1773', '1015', '2', '1475917629', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1774', '1015', '2', '1475917633', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.english.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1775', '1015', '2', '1475917719', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1776', '1015', '2', '1475917720', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1777', '1015', '2', '1475917724', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.english.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1778', '1015', '2', '1475918250', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1779', '1015', '2', '1475918252', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1780', '1015', '2', '1475918256', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.english.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1781', '1015', '2', '1475918367', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1782', '1015', '2', '1475918369', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1783', '1015', '2', '1475918378', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.wr.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1784', '1015', '2', '1475918446', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1785', '1015', '2', '1475918448', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1786', '1015', '2', '1475918459', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.wrddd.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1787', '1015', '2', '1475918521', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1788', '1015', '2', '1475918522', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1789', '1015', '2', '1475918528', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.wdddr.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1790', '1015', '2', '1475918610', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1791', '1015', '2', '1475918612', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1792', '1015', '2', '1475918617', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.wrdddss.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1793', '1015', '2', '1475918796', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1794', '1015', '2', '1475918797', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1795', '1015', '2', '1475918803', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.wrdddsffffs.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1796', '1015', '2', '1475918826', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1797', '1015', '2', '1475918827', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1798', '1015', '2', '1475918833', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.wrvvv.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1799', '1015', '2', '1475918933', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1800', '1015', '2', '1475918936', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1801', '1015', '2', '1475918937', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1802', '1015', '2', '1475918942', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.wddddddr.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1803', '1015', '2', '1475919025', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1804', '1015', '2', '1475919026', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1805', '1015', '2', '1475919031', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.englisddh.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1806', '1015', '2', '1475919135', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1807', '1015', '2', '1475919136', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1808', '1015', '2', '1475919141', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.englisdddssh.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1809', '1015', '2', '1475919289', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1810', '1015', '2', '1475919290', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1811', '1015', '2', '1475919297', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.englisdddddssh.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1812', '1015', '2', '1475919345', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1813', '1015', '2', '1475919346', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1814', '1015', '2', '1475919354', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.englishxx.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1815', '1015', '2', '1475919546', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1816', '1015', '2', '1475919547', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1817', '1015', '2', '1475919556', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.englisdddddssssh.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1818', '1015', '2', '1475919613', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1819', '1015', '2', '1475919674', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1820', '1015', '2', '1475919705', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1821', '1015', '2', '1475919707', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1822', '1015', '2', '1475919715', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1823', '1015', '2', '1475919718', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1824', '1015', '2', '1475919733', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1825', '1015', '2', '1475919769', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1826', '1015', '2', '1475919779', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1827', '1', '1', '1475919914', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1828', '1', '1', '1475920393', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1829', '1', '1', '1475920405', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1830', '1', '1', '1475920434', 'Product/Saleconfig/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1831', '1', '1', '1475920436', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1832', '1', '1', '1475920444', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1833', '1', '1', '1475920578', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1834', '1', '1', '1475920671', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1835', '1', '1', '1475920696', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1836', '1', '1', '1475920702', 'Sysset/Domain/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1837', '1', '1', '1475920713', 'Sysset/Params/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1838', '1', '1', '1475920715', 'Sysset/Domain/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1839', '1015', '2', '1475974417', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1840', '1015', '2', '1475974417', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1841', '1015', '2', '1475974425', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1842', '1015', '2', '1475974963', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1843', '1015', '2', '1475974975', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1844', '1015', '2', '1475975065', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1845', '1015', '2', '1475975068', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1846', '1015', '2', '1475975241', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1847', '1015', '2', '1475975321', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1848', '1015', '2', '1475975323', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1849', '1015', '2', '1475975360', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1850', '1015', '2', '1475975401', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1851', '1015', '2', '1475975412', 'index.php/Sysset/Domain', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1852', '1015', '2', '1475975416', 'index.php/Sysset/Domain', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1853', '1015', '2', '1475975464', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1854', '1015', '2', '1475975466', 'index.php/Sysset/Domain', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1855', '1015', '2', '1475975468', 'index.php/Sysset/Domain', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1856', '1015', '2', '1475975471', 'index.php/Sysset/Domain', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1857', '1015', '2', '1475975472', 'index.php/Sysset/Domain', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1858', '1015', '2', '1475975473', 'index.php/Sysset/Domain', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1859', '1015', '2', '1475975621', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1860', '1015', '2', '1475975768', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1861', '1015', '2', '1475975792', 'Workbench/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1862', '1015', '2', '1475975693', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1863', '1', '1', '1475975832', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1864', '1', '1', '1475975850', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1865', '1015', '2', '1475975752', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1866', '1015', '2', '1475975874', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1867', '1015', '2', '1475975884', 'Workbench/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1868', '1', '1', '1475975892', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1869', '1', '1', '1475975899', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1870', '1', '1', '1475975899', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1871', '1', '1', '1475975908', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1872', '1', '1', '1475975912', 'Trans/Settlement/index', '交易管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1873', '1', '1', '1475975916', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1874', '1015', '2', '1475975819', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1875', '1', '1', '1475975924', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1876', '1', '1', '1475975932', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1877', '1', '1', '1475975932', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1878', '1', '1', '1475975933', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('1879', '1', '1', '1475975933', 'Product/Networth/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1880', '1', '1', '1475975937', 'Product/Networth/showNetworth', '产品管理//', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1881', '1', '1', '1475975955', 'Product/Networth/editNetworthPage', '产品管理//', '{\"id\":\"50832\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1882', '1', '1', '1475975962', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1883', '1', '1', '1475975976', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1884', '1', '1', '1475975996', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1885', '1', '1', '1475976012', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1886', '1015', '2', '1475975914', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1887', '1', '1', '1475976017', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1888', '1015', '2', '1475975920', 'index.php/Sysset/Domain', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1889', '1', '1', '1475976024', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1890', '1015', '2', '1475975921', 'index.php/Sysset/Domain', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1891', '1', '1', '1475976027', 'Admin/Role/editPage', '用户中心/角色管理/编辑角色页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1892', '1015', '2', '1475975926', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1893', '1015', '2', '1475975928', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1894', '1', '1', '1475976031', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1895', '1', '1', '1475976033', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1896', '1015', '2', '1475975943', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1897', '1015', '2', '1475975947', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1898', '1015', '2', '1475975987', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1899', '1015', '2', '1475975988', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1900', '1015', '2', '1475976110', 'index.php/Sysset/Domain', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1901', '1015', '2', '1475976111', 'index.php/Sysset/Domain', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1902', '1015', '2', '1475976123', 'index.php/Sysset/Params', '//', '{\"id\":\"10\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1903', '1015', '2', '1475976128', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1904', '1015', '2', '1475976164', 'index.php/AgentAdmin/UserAccount', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1905', '1015', '2', '1475976174', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1906', '1', '1', '1475976176', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1907', '1', '1', '1475976176', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1908', '1', '1', '1475976181', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1909', '1', '1', '1475976188', 'index.php/Admin/User', '//', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1910', '1', '1', '1475976191', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1911', '1', '1', '1475976204', 'index.php/Admin/User', '//', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1912', '1', '1', '1475976205', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1913', '1', '1', '1475976207', 'index.php/Admin/User', '//', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1914', '1', '1', '1475976209', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1915', '1', '1', '1475976225', 'index.php/Admin/User', '//', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1916', '1', '1', '1475976227', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1917', '1', '1', '1475976234', 'index.php/Admin/User', '//', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1918', '1', '1', '1475976235', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1919', '1', '1', '1475976246', 'index.php/Admin/User', '//', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1920', '1', '1', '1475976247', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1921', '1', '1', '1475976249', 'index.php/Admin/User', '//', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1922', '1', '1', '1475976250', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1923', '1', '1', '1475976309', 'index.php/Admin/User', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1924', '1', '1', '1475976311', 'index.php/Admin/User', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1925', '1', '1', '1475976313', 'index.php/Admin/User', '//', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1926', '1', '1', '1475976315', 'index.php/Admin/User', '//', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1927', '1', '1', '1475976331', 'index.php/Admin/User', '//', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1928', '1015', '2', '1475976466', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1929', '1', '1', '1475976367', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1930', '1015', '2', '1475976474', 'Workbench/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1931', '1', '1', '1475976374', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1932', '1015', '2', '1475976482', 'News/Newscat/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1933', '1', '1', '1475976556', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1934', '1', '1', '1475976559', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1935', '1', '1', '1475976701', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1936', '1', '1', '1475976780', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1937', '1', '1', '1475976785', 'AgentHome/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1938', '1', '1', '1475976787', 'index.php/Sysset/Params', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1939', '1', '1', '1475976790', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1940', '1', '1', '1475976933', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1941', '1', '1', '1475977176', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1942', '1', '1', '1475977178', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1943', '1', '1', '1475977192', 'index.php/Sysset/Interface', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1944', '1', '1', '1475977349', 'index.php/Sysset/Params', '//', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1945', '1', '1', '1475977351', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1946', '1', '1', '1475977360', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1947', '1', '1', '1475977515', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1948', '1', '1', '1475977520', 'AgentHome/Index/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1949', '1', '1', '1475977531', 'AgentProduct/Market/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1950', '1', '1', '1475977511', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1951', '1', '1', '1475977515', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1952', '1', '1', '1475977564', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1953', '1', '1', '1475977566', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1954', '1', '1', '1475977589', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1955', '1', '1', '1475977592', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1956', '1', '1', '1475977594', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1957', '1', '1', '1475977596', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1958', '1', '1', '1475977598', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1959', '1', '1', '1475977664', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1960', '1', '1', '1475977667', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1961', '1', '1', '1475977669', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1962', '1', '1', '1475977672', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1963', '1', '1', '1475977679', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1964', '1', '1', '1475977795', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1965', '1', '1', '1475977798', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1966', '1', '1', '1475977821', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1967', '1', '1', '1475977728', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1968', '1', '1', '1475977751', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1969', '1', '1', '1475977864', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1970', '1', '1', '1475977867', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1971', '1', '1', '1475977807', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1972', '1', '1', '1475977936', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1973', '1', '1', '1475977971', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1974', '1', '1', '1475977983', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1975', '1', '1', '1475978051', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1976', '1', '1', '1475977984', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1977', '1', '1', '1475977986', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1978', '1', '1', '1475977994', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1979', '1', '1', '1475978002', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1980', '1', '1', '1475978007', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1981', '1', '1', '1475978022', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1982', '1', '1', '1475978024', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1983', '1', '1', '1475978232', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1984', '1', '1', '1475978236', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1985', '1', '1', '1475978285', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1986', '1', '1', '1475978289', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1987', '1', '1', '1475978340', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1988', '1', '1', '1475978343', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1989', '1', '1', '1475978366', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1990', '1', '1', '1475978370', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1991', '1', '1', '1475978399', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1992', '1', '1', '1475978322', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1993', '1', '1', '1475978326', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1994', '1', '1', '1475978327', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1995', '1', '1', '1475978458', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('1996', '1', '1', '1475978471', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1997', '1', '1', '1475978485', 'index.php/Sysset/Domain', '//', '{\"id\":\"6\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('1998', '1', '1', '1475978486', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('1999', '1', '1', '1475978640', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2000', '1', '1', '1475978682', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2001', '1', '1', '1475978770', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2002', '1', '1', '1475978912', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2003', '1', '1', '1475978831', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2004', '1', '1', '1475978834', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2005', '1', '1', '1475978836', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2006', '1', '1', '1475978943', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2007', '1', '1', '1475978949', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2008', '1015', '2', '1475978960', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2009', '1', '1', '1475978900', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2010', '1', '1', '1475978904', 'index.php/Sysset/Domain', '//', '{\"id\":\"6\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2011', '1', '1', '1475978906', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2012', '1', '1', '1475978915', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2013', '1', '1', '1475978951', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2014', '1', '1', '1475978953', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2015', '1', '1', '1475978955', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2016', '1', '1', '1475978956', 'index.php/Sysset/Domain', '//', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2017', '1', '1', '1475978957', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2018', '1', '1', '1475979114', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2019', '1', '1', '1475979120', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2020', '1', '1', '1475979122', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2021', '1', '1', '1475979025', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2022', '1', '1', '1475979139', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2023', '1', '1', '1475979098', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2024', '1', '1', '1475979101', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2025', '1015', '2', '1475979111', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2026', '1015', '2', '1475979111', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2027', '1015', '2', '1475979117', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2028', '1015', '2', '1475979118', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2029', '1015', '2', '1475979122', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.englisdddddssh.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2030', '1015', '2', '1475979127', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2031', '1015', '2', '1475979133', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2032', '1015', '2', '1475979137', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.english.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2033', '1015', '2', '1475979141', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2034', '1015', '2', '1475979144', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2035', '1015', '2', '1475979156', 'index.php/Auth/Login', '//', '{\"account\":\"18801621638\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2036', '1', '1', '1475979156', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2037', '1', '1', '1475979156', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2038', '1', '1', '1475979160', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2039', '1', '1', '1475979163', 'index.php/Sysset/Domain', '//', '{\"id\":\"16\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2040', '1', '1', '1475979165', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2041', '1', '1', '1475979167', 'index.php/Sysset/Domain', '//', '{\"id\":\"16\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2042', '1', '1', '1475979168', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2043', '1', '1', '1475979364', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2044', '1', '1', '1475979414', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2045', '1', '1', '1475979429', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2046', '1', '1', '1475979590', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2047', '1', '1', '1475979606', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2048', '1015', '2', '1475979621', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2049', '1015', '2', '1475979648', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2050', '1', '1', '1475979809', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2051', '1015', '2', '1475979822', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2052', '1015', '2', '1475979822', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2053', '1015', '2', '1475979826', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2054', '1015', '2', '1475979830', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2055', '1015', '2', '1475979834', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.english.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2056', '1015', '2', '1475979835', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2057', '1', '1', '1475979947', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2058', '1', '1', '1475979949', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2059', '1', '1', '1475979954', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2060', '1', '1', '1475980026', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2061', '1015', '2', '1475980046', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2062', '1015', '2', '1475980161', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2063', '1015', '2', '1475980186', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2064', '1015', '2', '1475980190', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2065', '1015', '2', '1475980195', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.englisdddddssh.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2066', '1015', '2', '1475980196', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2067', '1015', '2', '1475980215', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2068', '1015', '2', '1475980224', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2069', '1015', '2', '1475980230', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2070', '1', '1', '1475980333', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2071', '1', '1', '1475980231', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2072', '1', '1', '1475980231', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2073', '1', '1', '1475980335', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2074', '1', '1', '1475980335', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2075', '1', '1', '1475980236', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2076', '1', '1', '1475980343', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2077', '1', '1', '1475980346', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2078', '1', '1', '1475980347', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2079', '1', '1', '1475980348', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2080', '1', '1', '1475980349', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2081', '1', '1', '1475980350', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"3\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2082', '1', '1', '1475980351', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2083', '1', '1', '1475980352', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2084', '1', '1', '1475980353', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2085', '1', '1', '1475980251', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2086', '1015', '2', '1475980264', 'index.php/AgentHome/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2087', '1015', '2', '1475980266', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2088', '1015', '2', '1475980268', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2089', '1015', '2', '1475980271', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2090', '1015', '2', '1475980274', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.english.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2091', '1015', '2', '1475980281', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2092', '1015', '2', '1475980431', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2093', '1015', '2', '1475980434', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.englisdddddssssh.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2094', '1015', '2', '1475980436', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2095', '1015', '2', '1475980460', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2096', '1015', '2', '1475980461', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2097', '1015', '2', '1475980464', 'index.php/Sysset/Domain', '//', '{\"userdomain\":\"www.wr.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2098', '1015', '2', '1475980465', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2099', '1015', '2', '1475980479', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2100', '1', '1', '1475980593', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2101', '1', '1', '1475980596', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2102', '1015', '2', '1475980502', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2103', '1', '1', '1475980503', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2104', '1', '1', '1475980503', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2105', '1', '1', '1475980507', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2106', '1', '1', '1475980513', 'index.php/Sysset/Domain', '//', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2107', '1', '1', '1475980514', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2108', '1', '1', '1475980535', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2109', '1', '1', '1475980539', 'index.php/Sysset/Help', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2110', '1', '1', '1475980654', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\",\"name\":\"\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2111', '1', '1', '1475980577', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2112', '1', '1', '1475980701', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2113', '1', '1', '1475980716', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2114', '1', '1', '1475980718', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2115', '1', '1', '1475980775', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2116', '1', '1', '1475980781', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2117', '1', '1', '1475981088', 'index.php/Sysset/Help', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2118', '1', '1', '1475981195', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2119', '1', '1', '1475981200', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2120', '1', '1', '1475981209', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2121', '1', '1', '1475982004', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2122', '1', '1', '1475982007', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2123', '1', '1', '1475982201', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2124', '1', '1', '1475982529', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2125', '1', '1', '1475982489', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2126', '1', '1', '1475982491', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2127', '1', '1', '1475982495', 'index.php/Sysset/Help', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2128', '1', '1', '1475982497', 'index.php/Sysset/Interface', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2129', '1', '1', '1475982498', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2130', '1', '1', '1475982679', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2131', '1', '1', '1475983921', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2132', '1', '1', '1475983950', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2133', '1', '1', '1475983984', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2134', '1', '1', '1475983988', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2135', '1', '1', '1475984009', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2136', '1', '1', '1475984015', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2137', '1', '1', '1475984017', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2138', '1', '1', '1475984019', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2139', '1', '1', '1475984021', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2140', '1', '1', '1475984022', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2141', '1', '1', '1475984023', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2142', '1', '1', '1475984053', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2143', '1', '1', '1475984088', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2144', '1', '1', '1475984090', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2145', '1', '1', '1475984091', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2146', '1', '1', '1475984092', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2147', '1', '1', '1475984140', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2148', '1', '1', '1475984152', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2149', '1', '1', '1475984153', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2150', '1', '1', '1475984155', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2151', '1', '1', '1475984218', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2152', '1', '1', '1475984219', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2153', '1', '1', '1475984221', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2154', '1', '1', '1475984242', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2155', '1', '1', '1475984427', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2156', '1', '1', '1475984430', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2157', '1', '1', '1475984430', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2158', '1', '1', '1475984431', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2159', '1', '1', '1475984432', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2160', '1', '1', '1475984433', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2161', '1', '1', '1475984433', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2162', '1', '1', '1475984434', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2163', '1', '1', '1475984497', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2164', '1', '1', '1475984498', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2165', '1', '1', '1475984499', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2166', '1', '1', '1475984500', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2167', '1', '1', '1475984501', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2168', '1', '1', '1475984502', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2169', '1', '1', '1475984502', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2170', '1', '1', '1475984505', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2171', '1', '1', '1475984588', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2172', '1', '1', '1475984590', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2173', '1', '1', '1475984591', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2174', '1', '1', '1475984592', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2175', '1', '1', '1475984594', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2176', '1', '1', '1475984595', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2177', '1', '1', '1475984598', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2178', '1', '1', '1475984601', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2179', '1', '1', '1475984643', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2180', '1', '1', '1475984649', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2181', '1', '1', '1475984656', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2182', '1', '1', '1475984657', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2183', '1', '1', '1475984659', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2184', '1', '1', '1475984660', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2185', '1', '1', '1475984661', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2186', '1', '1', '1475984661', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2187', '1', '1', '1475984662', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2188', '1', '1', '1475984663', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2189', '1', '1', '1475984670', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2190', '1', '1', '1475984671', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2191', '1', '1', '1475984672', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2192', '1', '1', '1475984673', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2193', '1', '1', '1475984678', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2194', '1', '1', '1475984679', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2195', '1', '1', '1475984680', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2196', '1', '1', '1475984682', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2197', '1', '1', '1475984683', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2198', '1', '1', '1475984683', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2199', '1', '1', '1475984735', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2200', '1', '1', '1475984736', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2201', '1', '1', '1475984737', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2202', '1', '1', '1475984738', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2203', '1', '1', '1475984739', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2204', '1', '1', '1475984740', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2205', '1', '1', '1475984787', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2206', '1', '1', '1475984794', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2207', '1', '1', '1475984795', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2208', '1', '1', '1475984796', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2209', '1', '1', '1475984797', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2210', '1', '1', '1475984801', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2211', '1', '1', '1475984803', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2212', '1', '1', '1475984805', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2213', '1', '1', '1475984806', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2214', '1', '1', '1475984807', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2215', '1', '1', '1475984808', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2216', '1', '1', '1475984810', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2217', '1', '1', '1475984811', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2218', '1', '1', '1475984812', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2219', '1', '1', '1475984815', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2220', '1', '1', '1475984817', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2221', '1', '1', '1475984818', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2222', '1', '1', '1475984818', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2223', '1', '1', '1475984819', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2224', '1', '1', '1475988319', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2225', '1', '1', '1475988319', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2226', '1', '1', '1475988320', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2227', '1', '1', '1475988321', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2228', '1', '1', '1475988322', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2229', '1', '1', '1475989349', 'index.php/Sysset/Help', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2230', '1', '1', '1475989350', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2231', '1', '1', '1475989357', 'index.php/Sysset/Domain', '//', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2232', '1', '1', '1475989358', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2233', '1', '1', '1475989374', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2234', '1', '1', '1475989375', 'index.php/Trans/Refund', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2235', '1', '1', '1475989377', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2236', '1', '1', '1475989378', 'index.php/Admin/Role', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2237', '1', '1', '1475989386', 'index.php/Admin/Access', '//', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2238', '1', '1', '1475989406', 'index.php/Admin/Message', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2239', '1', '1', '1475989410', 'index.php/Admin/Message', '//', '{\"id\":\"9\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2240', '1', '1', '1475989414', 'index.php/Admin/Message', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2241', '1', '1', '1475989415', 'index.php/Admin/Message', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2242', '1', '1', '1475989418', 'index.php/Admin/Message', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2243', '1', '1', '1475989424', 'index.php/Admin/Message', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2244', '1', '1', '1475989437', 'index.php/Product/Product', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2245', '1', '1', '1475989438', 'index.php/Product/Networth', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2246', '1', '1', '1475989439', 'index.php/Product/Saleconfig', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2247', '1', '1', '1475989440', 'index.php/Product/Progress', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2248', '1', '1', '1475989443', 'index.php/Product/Recommand', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2249', '1', '1', '1475989451', 'index.php/News/Newscat', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2250', '1', '1', '1475989472', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2251', '1', '1', '1475989477', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2252', '1', '1', '1475989480', 'index.php/Sysset/Domain', '//', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2253', '1', '1', '1475989481', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2254', '1', '1', '1475989484', 'index.php/Sysset/Domain', '//', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2255', '1', '1', '1475989485', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2256', '1', '1', '1475989926', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2257', '1', '1', '1475989928', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2258', '1', '1', '1475989929', 'index.php/Sysset/Interface', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2259', '1', '1', '1475989933', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2260', '1', '1', '1475989937', 'index.php/Sysset/Help', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2261', '1', '1', '1475989956', 'index.php/Product/Product', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2262', '1', '1', '1475989957', 'index.php/Product/Networth', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2263', '1', '1', '1475989957', 'index.php/Product/Saleconfig', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2264', '1', '1', '1475989958', 'index.php/Product/Progress', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2265', '1', '1', '1475989961', 'index.php/Admin/User', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2266', '1', '1', '1475989962', 'index.php/Admin/Role', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2267', '1', '1', '1475989971', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2268', '1', '1', '1475989994', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2269', '1', '1', '1475989995', 'index.php/Sysset/Interface', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2270', '1', '1', '1475989997', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2271', '1', '1', '1475990148', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2272', '1', '1', '1475990151', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2273', '1', '1', '1475990156', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2274', '1', '1', '1475990157', 'index.php/Sysset/Interface', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2275', '1', '1', '1475990158', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2276', '1', '1', '1475990161', 'index.php/Sysset/Domain', '//', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2277', '1', '1', '1475990162', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2278', '1', '1', '1475990163', 'index.php/Sysset/Domain', '//', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2279', '1', '1', '1475990164', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2280', '1', '1', '1475990756', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2281', '1', '1', '1475990757', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2282', '1', '1', '1475991454', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2283', '1', '1', '1475991455', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2284', '1', '1', '1475991456', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2285', '1', '1', '1475991539', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2286', '1', '1', '1475991539', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2287', '1', '1', '1475991540', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2288', '1', '1', '1475991542', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2289', '1', '1', '1475991544', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2290', '1', '1', '1475991544', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2291', '1', '1', '1475991545', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2292', '1', '1', '1475991546', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2293', '1', '1', '1475991547', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2294', '1', '1', '1475991548', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2295', '1', '1', '1475991549', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2296', '1', '1', '1475991549', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2297', '1', '1', '1475991550', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2298', '1', '1', '1475991551', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2299', '1', '1', '1475991595', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2300', '1', '1', '1475991603', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2301', '1', '1', '1475991631', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2302', '1', '1', '1475991652', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"61\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2303', '1', '1', '1475991654', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2304', '1', '1', '1475991661', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2305', '1', '1', '1475991673', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2306', '1', '1', '1475991673', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2307', '1', '1', '1475991677', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2308', '1', '1', '1475991690', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2309', '1', '1', '1475991693', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2310', '1', '1', '1475991717', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2311', '1', '1', '1475991720', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2312', '1', '1', '1475991721', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2313', '1', '1', '1475991722', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2314', '1', '1', '1475991728', 'Admin/Message/addPage', '用户中心/消息中心/添加消息', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2315', '1', '1', '1475991730', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2316', '1', '1', '1475991732', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2317', '1', '1', '1475991734', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2318', '1', '1', '1475991736', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2319', '1', '1', '1475991738', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2320', '1', '1', '1475991739', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2321', '1', '1', '1475991741', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2322', '1', '1', '1475993411', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2323', '1', '1', '1475993413', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2324', '1', '1', '1475993426', 'index.php/News/Newscat', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2325', '1', '1', '1475993428', 'index.php/News/Newscon', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2326', '1', '1', '1475993452', 'index.php/Sysset/Interface', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2327', '1', '1', '1475993454', 'index.php/Sysset/Domain', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2328', '1', '1', '1475993478', 'index.php/Sysset/Params', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2329', '1', '1', '1475993507', 'index.php/Sysset/Profile', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2330', '1', '1', '1475993510', 'index.php/Sysset/Help', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2331', '1', '1', '1475993781', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2332', '1', '1', '1475993921', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2333', '1', '1', '1475993926', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2334', '1', '1', '1475993931', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2335', '1', '1', '1475993933', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2336', '1', '1', '1475993935', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2337', '1', '1', '1475993937', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"48\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2338', '1', '1', '1475993938', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2339', '1', '1', '1475994064', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2340', '1', '1', '1475994079', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2341', '1', '1', '1475994864', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2342', '1', '1', '1475994877', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2343', '1', '1', '1475994878', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2344', '1', '1', '1475994879', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2345', '1', '1', '1475994881', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2346', '1', '1', '1475995802', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2347', '1', '1', '1475995805', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2348', '1', '1', '1475995884', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2349', '1', '1', '1475995887', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2350', '1', '1', '1475995895', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2351', '1', '1', '1475995897', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2352', '1', '1', '1475995904', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2353', '1', '1', '1475995918', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2354', '1', '1', '1475995922', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2355', '1', '1', '1475995955', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2356', '1', '1', '1475995963', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2357', '1', '1', '1475995994', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2358', '1', '1', '1475995998', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2359', '1015', '2', '1475996009', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2360', '1', '1', '1475996086', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2361', '1', '1', '1475996091', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2362', '1', '1', '1475996092', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2363', '1', '1', '1475996092', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2364', '1', '1', '1475996104', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2365', '1', '1', '1475996126', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2366', '1', '1', '1475996162', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2367', '1', '1', '1475996164', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2368', '1', '1', '1475996165', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2369', '1', '1', '1475996168', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2370', '1', '1', '1475996169', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2371', '1', '1', '1475996171', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2372', '1', '1', '1475996175', 'Sysset/Params/addparam', '系统管理/参数管理/添加参数信息页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2373', '1', '1', '1475996177', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2374', '1', '1', '1475996180', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2375', '1', '1', '1475996181', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2376', '1', '1', '1475996182', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2377', '1', '1', '1475996182', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2378', '1', '1', '1475996187', 'Sysset/Params/editparam', '系统管理/参数管理/编辑参数页面', '{\"id\":\"18\",\"name\":\"4443\",\"value\":\"3333\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2379', '1', '1', '1475996189', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2380', '1', '1', '1475996193', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2381', '1', '1', '1475996195', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2382', '1', '1', '1475996195', 'Sysset/Params/delete', '系统管理/参数管理/删除参数', '{\"id\":\"10\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2383', '1', '1', '1475996196', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2384', '1', '1', '1475996199', 'Sysset/Params/editparam', '系统管理/参数管理/编辑参数页面', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2385', '1', '1', '1475996202', 'Sysset/Params/edit', '系统管理/参数管理/编辑参数', '{\"id\":\"10\",\"name\":\"ddd\",\"value\":\"sss\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2386', '1', '1', '1475996203', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2387', '1015', '2', '1475996244', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2388', '1015', '2', '1475996278', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2389', '1015', '2', '1475996327', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2390', '1015', '2', '1475996331', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2391', '1', '1', '1475996349', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2392', '1', '1', '1475996350', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2393', '1015', '2', '1475996377', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '{\"id\":\"1\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2394', '1', '1', '1475996412', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2395', '1', '1', '1475996415', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2396', '1', '1', '1475996458', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2397', '1', '1', '1475996459', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2398', '1', '1', '1475996563', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2399', '1', '1', '1475996564', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2400', '1015', '2', '1475996594', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2401', '1015', '2', '1475996607', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2402', '1015', '2', '1475996608', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2403', '1', '1', '1475996642', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2404', '1', '1', '1475996644', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2405', '1', '1', '1475996645', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2406', '1', '1', '1475996646', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2407', '1015', '2', '1475996648', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2408', '1', '1', '1475996649', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2409', '1', '1', '1475996649', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2410', '1', '1', '1475996651', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2411', '1015', '2', '1475996651', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '{\"id\":\"1\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2412', '1', '1', '1475996653', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2413', '1', '1', '1475996654', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2414', '1015', '2', '1475996655', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2415', '1', '1', '1475996660', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2416', '1', '1', '1475996743', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2417', '1', '1', '1475996778', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2418', '1', '1', '1475996815', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2419', '1015', '2', '1475996824', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2420', '1', '1', '1475996827', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2421', '1015', '2', '1475996837', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2422', '1', '1', '1475996841', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2423', '1015', '2', '1475996857', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2424', '1', '1', '1475996858', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2425', '1', '1', '1475996863', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2426', '1', '1', '1475996865', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2427', '1', '1', '1475996866', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2428', '1', '1', '1475996867', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2429', '1015', '2', '1475996878', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '{\"productno\":\"CP002\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2430', '1015', '2', '1475996882', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '{\"productno\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2431', '1015', '2', '1475996904', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2432', '1015', '2', '1475996915', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2433', '1', '1', '1475996923', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2434', '1', '1', '1475996924', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2435', '1', '1', '1475996925', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2436', '1', '1', '1475996926', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2437', '1', '1', '1475996928', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2438', '1015', '2', '1475996941', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2439', '1', '1', '1475996983', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2440', '1', '1', '1475996985', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2441', '1', '1', '1475996986', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2442', '1', '1', '1475996987', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2443', '1', '1', '1475996988', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2444', '1', '1', '1475996989', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2445', '1', '1', '1475996990', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2446', '1', '1', '1475996991', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2447', '1', '1', '1475996992', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2448', '1', '1', '1475996994', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2449', '1', '1', '1475996997', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2450', '1', '1', '1475997052', 'Trans/Order/search', '交易管理/订单中心/订单搜索', '{\"orderno\":\"DDasda93749850840504\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2451', '1', '1', '1475997055', 'Trans/Order/search', '交易管理/订单中心/订单搜索', '{\"orderno\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2452', '1', '1', '1475997055', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2453', '1', '1', '1475997057', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2454', '1', '1', '1475997122', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2455', '1', '1', '1475997124', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2456', '1', '1', '1475997125', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2457', '1', '1', '1475997126', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2458', '1', '1', '1475997126', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2459', '1', '1', '1475997137', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2460', '1', '1', '1475997138', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2461', '1', '1', '1475997139', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2462', '1', '1', '1475997143', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2463', '1', '1', '1475997250', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2464', '1', '1', '1475997252', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2465', '1', '1', '1475997253', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2466', '1', '1', '1475997254', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2467', '1', '1', '1475997261', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2468', '1', '1', '1475997263', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2469', '1', '1', '1475997265', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2470', '1', '1', '1475997267', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2471', '1', '1', '1475997441', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2472', '1', '1', '1475997444', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2473', '1', '1', '1475997445', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2474', '1', '1', '1475997449', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2475', '1', '1', '1475997451', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2476', '1', '1', '1475997451', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2477', '1', '1', '1475997456', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2478', '1015', '2', '1475997576', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2479', '1015', '2', '1475997599', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2480', '1015', '2', '1475997753', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2481', '1015', '2', '1475997763', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2482', '1015', '2', '1475997775', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2483', '1015', '2', '1475997812', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2484', '1015', '2', '1475997813', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2485', '1015', '2', '1475997821', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2486', '1015', '2', '1475997868', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2487', '1015', '2', '1475997877', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2488', '1015', '2', '1475998011', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2489', '1015', '2', '1475998021', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2490', '1015', '2', '1475998032', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2491', '1015', '2', '1475998245', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2492', '1015', '2', '1475998248', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2493', '1015', '2', '1475998258', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2494', '1015', '2', '1475998476', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2495', '1', '1', '1475998476', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2496', '1', '1', '1475998478', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2497', '1', '1', '1475998494', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2498', '1', '1', '1475998498', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2499', '1', '1', '1475998610', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2500', '1', '1', '1475998613', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2501', '1015', '2', '1475998684', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2502', '1015', '2', '1475998727', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2503', '1', '1', '1475998728', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2504', '1', '1', '1475998729', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2505', '1015', '2', '1475998798', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2506', '1', '1', '1475998815', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2507', '1', '1', '1475998820', 'Trans/Order/search', '交易管理/订单中心/订单搜索', '{\"orderno\":\"DDasda93749850840504\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2508', '1', '1', '1475998826', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2509', '1', '1', '1475998829', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2510', '1', '1', '1475998839', 'Trans/Order/search', '交易管理/订单中心/订单搜索', '{\"orderno\":\"DDasda93749850840504\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2511', '1', '1', '1475998848', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2512', '1015', '2', '1475998856', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2513', '1015', '2', '1475999010', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2514', '1', '1', '1475999150', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2515', '1015', '2', '1475999159', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2516', '1', '1', '1475999116', 'index.php/Workbench/Index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2517', '1', '1', '1475999117', 'index.php/Home/Index', '//', '{\"v\":\"4.0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2518', '1', '1', '1475999121', 'index.php/Auth/Login', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2519', '1015', '2', '1475999806', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2520', '1', '1', '1475999872', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2521', '1', '1', '1475999900', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2522', '1', '1', '1475999903', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2523', '1', '1', '1475999903', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2524', '1', '1', '1475999904', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2525', '1', '1', '1475999905', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2526', '1', '1', '1475999909', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2527', '1', '1', '1475999961', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2528', '1015', '2', '1475999968', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2529', '1015', '2', '1475999971', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2530', '1015', '2', '1476000273', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2531', '1015', '2', '1476000299', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2532', '1015', '2', '1476000431', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2533', '1015', '2', '1476000586', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2534', '1015', '2', '1476000612', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2535', '1015', '2', '1476000614', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2536', '1015', '2', '1476000621', 'AgentSysset/Params/addparam', '系统管理/参数管理/参数信息添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2537', '1015', '2', '1476000625', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2538', '1015', '2', '1476000824', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2539', '1015', '2', '1476001344', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2540', '1015', '2', '1476001436', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2541', '1015', '2', '1476001446', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2542', '1015', '2', '1476001456', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2543', '1015', '2', '1476001459', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2544', '1015', '2', '1476001488', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2545', '1015', '2', '1476001560', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2546', '1015', '2', '1476001563', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2547', '1015', '2', '1476001729', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2548', '1015', '2', '1476001731', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2549', '1015', '2', '1476001734', 'AgentSysset/Domain/applydomain', '系统管理/域名管理/申请域名页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2550', '1015', '2', '1476001736', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2551', '1015', '2', '1476001738', 'AgentSysset/Domain/applydomain', '系统管理/域名管理/申请域名页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2552', '1015', '2', '1476001749', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2553', '1015', '2', '1476001767', 'AgentSysset/Domain/applydomain', '系统管理/域名管理/申请域名页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2554', '1015', '2', '1476001770', 'AgentSysset/Domain/apply', '系统管理/域名管理/域名申请', '{\"userdomain\":\"www.englisdddddssh.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2555', '1015', '2', '1476001771', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2556', '1', '1', '1476001788', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2557', '1', '1', '1476001795', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2558', '1', '1', '1476001802', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2559', '1', '1', '1476001891', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2560', '1', '1', '1476001911', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2561', '1', '1', '1476001916', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2562', '1', '1', '1476001937', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2563', '1', '1', '1476001947', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2564', '1', '1', '1476001985', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2565', '1', '1', '1476001987', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2566', '1', '1', '1476001992', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2567', '1', '1', '1476001999', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2568', '1', '1', '1476002032', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2569', '1', '1', '1476002034', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2570', '1', '1', '1476002051', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2571', '1', '1', '1476002053', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2572', '1', '1', '1476002059', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2573', '1', '1', '1476002115', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2574', '1', '1', '1476002119', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2575', '1', '1', '1476002188', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2576', '1', '1', '1476002189', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2577', '1', '1', '1476002213', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2578', '1', '1', '1476002278', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2579', '1', '1', '1476002340', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2580', '1', '1', '1476002345', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2581', '1', '1', '1476002364', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2582', '1015', '2', '1476002382', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2583', '1015', '2', '1476002385', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2584', '1015', '2', '1476002389', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2585', '1', '1', '1476002432', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2586', '1015', '2', '1476002435', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2587', '1', '1', '1476002438', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2588', '1015', '2', '1476002446', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2589', '1015', '2', '1476002455', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2590', '1015', '2', '1476002473', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2591', '1', '1', '1476002486', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2592', '1', '1', '1476002493', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2593', '1', '1', '1476002495', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2594', '1', '1', '1476002496', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2595', '1', '1', '1476002499', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2596', '1', '1', '1476002500', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2597', '1', '1', '1476002510', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2598', '1', '1', '1476002511', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2599', '1', '1', '1476002515', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2600', '1', '1', '1476002517', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2601', '1015', '2', '1476002522', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2602', '1', '1', '1476002531', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2603', '1015', '2', '1476002599', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2604', '1015', '2', '1476002606', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2605', '1015', '2', '1476002651', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2606', '1015', '2', '1476002652', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2607', '1015', '2', '1476002656', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2608', '1015', '2', '1476002693', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2609', '1015', '2', '1476002766', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2610', '1015', '2', '1476002767', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2611', '1', '1', '1476002863', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2612', '1', '1', '1476002864', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2613', '1', '1', '1476002865', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2614', '1', '1', '1476002867', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2615', '1', '1', '1476002874', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2616', '1', '1', '1476002879', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2617', '1', '1', '1476002965', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2618', '1', '1', '1476002968', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2619', '1', '1', '1476002997', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2620', '1', '1', '1476002999', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2621', '1', '1', '1476003000', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2622', '1015', '2', '1476003008', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2623', '1', '1', '1476003057', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2624', '1', '1', '1476003061', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2625', '1', '1', '1476003064', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2626', '1', '1', '1476003066', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2627', '1', '1', '1476003068', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2628', '1', '1', '1476003070', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2629', '1', '1', '1476003071', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2630', '1', '1', '1476003105', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2631', '1', '1', '1476003106', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2632', '1', '1', '1476003107', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2633', '1', '1', '1476003108', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2634', '1', '1', '1476003207', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2635', '1', '1', '1476003209', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2636', '1', '1', '1476003260', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2637', '1', '1', '1476003265', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2638', '1', '1', '1476003323', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2639', '1', '1', '1476003338', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2640', '1', '1', '1476003659', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2641', '1', '1', '1476003663', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2642', '1', '1', '1476003683', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2643', '1', '1', '1476003685', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2644', '1', '1', '1476003685', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2645', '1', '1', '1476003720', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2646', '1', '1', '1476003724', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2647', '1', '1', '1476003754', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2648', '1', '1', '1476003766', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2649', '1', '1', '1476003767', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2650', '1', '1', '1476003772', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2651', '1', '1', '1476003772', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2652', '1', '1', '1476003773', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2653', '1', '1', '1476003780', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2654', '1', '1', '1476003820', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2655', '1', '1', '1476003906', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2656', '1', '1', '1476003920', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2657', '1', '1', '1476004085', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2658', '1', '1', '1476004216', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2659', '1', '1', '1476004217', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2660', '1', '1', '1476004220', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2661', '1', '1', '1476004222', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2662', '1015', '2', '1476005136', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2663', '1015', '2', '1476005176', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2664', '1015', '2', '1476005179', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2665', '1015', '2', '1476005264', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2666', '1015', '2', '1476005274', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2667', '1015', '2', '1476005276', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2668', '1015', '2', '1476005278', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2669', '1015', '2', '1476005283', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2670', '1015', '2', '1476005393', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2671', '1015', '2', '1476005395', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2672', '1015', '2', '1476005396', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2673', '1015', '2', '1476005640', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2674', '1015', '2', '1476007478', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2675', '1015', '2', '1476007508', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2676', '1015', '2', '1476007521', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2677', '1015', '2', '1476007532', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2678', '1015', '2', '1476007534', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2679', '1015', '2', '1476007535', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2680', '1015', '2', '1476007536', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2681', '1015', '2', '1476007555', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2682', '1015', '2', '1476007559', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2683', '1015', '2', '1476007694', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2684', '1015', '2', '1476007702', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2685', '1015', '2', '1476007764', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2686', '1015', '2', '1476007769', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2687', '1015', '2', '1476007814', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2688', '1015', '2', '1476007858', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2689', '1015', '2', '1476008171', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2690', '1015', '2', '1476008560', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2691', '1015', '2', '1476008587', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2692', '1015', '2', '1476008631', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2693', '1015', '2', '1476008634', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2694', '1015', '2', '1476008635', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2695', '1015', '2', '1476008636', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2696', '1015', '2', '1476008637', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2697', '1015', '2', '1476008639', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2698', '1015', '2', '1476008642', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2699', '1015', '2', '1476008643', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2700', '1015', '2', '1476008644', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2701', '1015', '2', '1476008646', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2702', '1015', '2', '1476008751', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2703', '1', '1', '1476009046', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2704', '1', '1', '1476009064', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2705', '1', '1', '1476009066', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2706', '19', '1', '1476024279', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2707', '19', '1', '1476024282', 'Workbench/Index/index', '控制台/控制台/控制台页', '{\"nsukey\":\"G6db07niuIy7T2XxF1V\\/r1FHGiGp5F7jLBoBhWwdOwb8I5u6VitDjqcHrFMDQBJdJXGR2XYs2Sl+hD5md4eqgA==\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2708', '19', '1', '1476024297', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2709', '19', '1', '1476024341', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2710', '19', '1', '1476024345', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2711', '19', '1', '1476024346', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2712', '19', '1', '1476024346', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2713', '19', '1', '1476062233', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2714', '19', '1', '1476062239', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2715', '19', '1', '1476062261', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2716', '19', '1', '1476062266', 'Sysset/Params/addparam', '系统管理/参数管理/添加参数信息页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2717', '19', '1', '1476062271', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2718', '19', '1', '1476062278', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2719', '19', '1', '1476062279', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2720', '19', '1', '1476062280', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2721', '19', '1', '1476062281', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2722', '1015', '2', '1476062760', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2723', '1015', '2', '1476062769', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2724', '1015', '2', '1476062772', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2725', '1015', '2', '1476062773', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2726', '1015', '2', '1476062776', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2727', '1015', '2', '1476062785', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2728', '1015', '2', '1476062788', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2729', '1015', '2', '1476062790', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2730', '1015', '2', '1476062791', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2731', '1015', '2', '1476062793', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2732', '1015', '2', '1476062794', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2733', '1015', '2', '1476062796', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2734', '1015', '2', '1476062797', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2735', '1015', '2', '1476062799', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2736', '1015', '2', '1476062804', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2737', '1015', '2', '1476062805', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2738', '1015', '2', '1476062806', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2739', '1015', '2', '1476063024', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2740', '1015', '2', '1476063027', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2741', '1015', '2', '1476063029', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2742', '1015', '2', '1476063032', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2743', '1015', '2', '1476063036', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2744', '1015', '2', '1476063038', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2745', '1015', '2', '1476063049', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2746', '1015', '2', '1476063050', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2747', '1015', '2', '1476063052', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2748', '1015', '2', '1476063053', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2749', '1015', '2', '1476063054', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2750', '1015', '2', '1476063054', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2751', '1015', '2', '1476063081', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2752', '1015', '2', '1476063091', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2753', '1', '1', '1476063100', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2754', '1', '1', '1476063104', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2755', '1', '1', '1476063206', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2756', '1', '1', '1476063380', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2757', '1', '1', '1476063518', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2758', '1015', '2', '1476063575', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2759', '1015', '2', '1476063576', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2760', '1', '1', '1476063608', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2761', '1', '1', '1476063634', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2762', '1', '1', '1476063676', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2763', '1', '1', '1476063722', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2764', '1', '1', '1476063755', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2765', '1', '1', '1476063951', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2766', '1', '1', '1476063955', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2767', '1', '1', '1476063958', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2768', '1015', '2', '1476064515', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2769', '1015', '2', '1476064519', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2770', '1015', '2', '1476064593', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2771', '1015', '2', '1476064686', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2772', '1015', '2', '1476064867', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2773', '1015', '2', '1476064890', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2774', '1015', '2', '1476064893', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2775', '1015', '2', '1476064910', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2776', '1015', '2', '1476064966', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2777', '1015', '2', '1476064972', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2778', '1', '1', '1476064974', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2779', '1015', '2', '1476064976', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2780', '1', '1', '1476064978', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2781', '1', '1', '1476064984', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2782', '1015', '2', '1476065098', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2783', '1015', '2', '1476065101', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2784', '1015', '2', '1476065146', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2785', '1015', '2', '1476065149', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2786', '1', '1', '1476065210', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2787', '1015', '2', '1476065213', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2788', '1015', '2', '1476065215', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2789', '1', '1', '1476065228', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"123\",\"credientialno\":\"1212\",\"phone\":\"1212\",\"email\":\"1212@1236.co\",\"password\":\"1212\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2790', '1', '1', '1476065239', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"123\",\"credientialno\":\"1212\",\"phone\":\"188016216335\",\"email\":\"1212@1236.co\",\"password\":\"1212\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2791', '1', '1', '1476065248', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"123\",\"credientialno\":\"1212\",\"phone\":\"18801621633\",\"email\":\"1212@1236.co\",\"password\":\"1212\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2792', '1', '1', '1476065250', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2793', '1015', '2', '1476065270', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2794', '1015', '2', '1476065273', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2795', '1', '1', '1476065380', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e09\",\"credientialno\":\"1403211991802002\",\"phone\":\"18801621633\",\"email\":\"1231@564.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2796', '1', '1', '1476065388', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e09\",\"credientialno\":\"1403211991802002\",\"phone\":\"18801621631\",\"email\":\"1231@564.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2797', '1', '1', '1476065394', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e09\",\"credientialno\":\"1403211991802002\",\"phone\":\"18801621630\",\"email\":\"1231@564.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2798', '1', '1', '1476065398', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e09\",\"credientialno\":\"14032119918020021\",\"phone\":\"18801621630\",\"email\":\"1231@564.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2799', '1', '1', '1476065415', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e09\",\"credientialno\":\"14032119918020021\",\"phone\":\"18801621630\",\"email\":\"1231@564.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2800', '1', '1', '1476065426', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e09\",\"credientialno\":\"140321199108010012\",\"phone\":\"18801621630\",\"email\":\"1231@564.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2801', '1015', '2', '1476065437', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2802', '1015', '2', '1476065439', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2803', '1015', '2', '1476065483', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2804', '1015', '2', '1476065487', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2805', '1015', '2', '1476065513', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2806', '1015', '2', '1476065515', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2807', '1015', '2', '1476065624', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2808', '1015', '2', '1476065627', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2809', '1015', '2', '1476065691', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2810', '1015', '2', '1476065693', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2811', '1015', '2', '1476065714', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2812', '1015', '2', '1476065718', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2813', '1015', '2', '1476065831', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2814', '1015', '2', '1476065834', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2815', '1015', '2', '1476065866', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2816', '1015', '2', '1476065870', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2817', '1015', '2', '1476065951', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2818', '1015', '2', '1476065957', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2819', '1', '1', '1476065991', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2820', '1015', '2', '1476066008', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2821', '1015', '2', '1476066011', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2822', '1015', '2', '1476066051', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2823', '1015', '2', '1476066054', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2824', '1015', '2', '1476066066', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2825', '1015', '2', '1476066069', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2826', '1', '1', '1476066073', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2827', '1015', '2', '1476066085', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2828', '1015', '2', '1476066089', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2829', '1015', '2', '1476066260', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2830', '1015', '2', '1476066264', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2831', '1015', '2', '1476066365', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2832', '1015', '2', '1476066370', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2833', '1015', '2', '1476066421', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2834', '1015', '2', '1476066426', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2835', '1015', '2', '1476066653', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2836', '1015', '2', '1476066870', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2837', '1015', '2', '1476066877', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2838', '1015', '2', '1476066881', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2839', '1015', '2', '1476066899', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2840', '1015', '2', '1476066902', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2841', '1', '1', '1476066993', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2842', '1', '1', '1476067015', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e091\",\"credientialno\":\"1403211991080120012\",\"phone\":\"18801621677\",\"email\":\"123@55.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2843', '1015', '2', '1476067015', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2844', '1', '1', '1476067026', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e091\",\"credientialno\":\"140321199108012001\",\"phone\":\"18801621677\",\"email\":\"123@55.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2845', '1', '1', '1476067027', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2846', '1', '1', '1476067106', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e0922\",\"credientialno\":\"140321155151515515\",\"phone\":\"18801621555\",\"email\":\"123@55.com1\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2847', '1', '1', '1476067108', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2848', '1', '1', '1476067195', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2849', '1015', '2', '1476067207', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2850', '1', '1', '1476067216', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u5f20\\u4e09\",\"credientialno\":\"321111111111111111\",\"phone\":\"18621732732\",\"email\":\"1231@564.com2\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2851', '1015', '2', '1476067216', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2852', '1', '1', '1476067217', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2853', '1015', '2', '1476067264', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2854', '1015', '2', '1476067293', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2855', '1015', '2', '1476067346', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2856', '1015', '2', '1476067355', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2857', '1015', '2', '1476067407', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2858', '1015', '2', '1476067432', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2859', '1015', '2', '1476067434', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2860', '1', '1', '1476067464', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2861', '1015', '2', '1476068439', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2862', '1015', '2', '1476068513', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2863', '1015', '2', '1476068584', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2864', '1015', '2', '1476068586', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2865', '1015', '2', '1476068607', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2866', '1015', '2', '1476068612', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2867', '1015', '2', '1476068615', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2868', '1015', '2', '1476068743', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2869', '1015', '2', '1476068747', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2870', '1015', '2', '1476068786', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2871', '1015', '2', '1476068792', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2872', '1015', '2', '1476068834', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2873', '1015', '2', '1476068838', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2874', '1015', '2', '1476068869', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2875', '1015', '2', '1476068873', 'AgentTrans/MyOrder/view', '交易管理/我的订单/我的订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2876', '1015', '2', '1476068915', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2877', '1015', '2', '1476068918', 'AgentTrans/MyOrder/view', '交易管理/我的订单/我的订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2878', '1015', '2', '1476068995', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2879', '1015', '2', '1476068999', 'AgentTrans/MyOrder/view', '交易管理/我的订单/我的订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2880', '1015', '2', '1476069013', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2881', '1015', '2', '1476069015', 'AgentTrans/MyOrder/view', '交易管理/我的订单/我的订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2882', '1015', '2', '1476069066', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2883', '1015', '2', '1476069070', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2884', '1015', '2', '1476069081', 'AgentTrans/MyOrder/view', '交易管理/我的订单/我的订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2885', '1015', '2', '1476069103', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2886', '1015', '2', '1476069124', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2887', '1015', '2', '1476069125', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2888', '1015', '2', '1476069329', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2889', '1015', '2', '1476069337', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2890', '1015', '2', '1476069340', 'AgentTrans/MyOrder/view', '交易管理/我的订单/我的订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2891', '1', '1', '1476069471', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2892', '1015', '2', '1476069476', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2893', '1', '1', '1476069477', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2894', '1015', '2', '1476069478', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2895', '1', '1', '1476069480', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2896', '1015', '2', '1476069480', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2897', '1015', '2', '1476069482', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2898', '1015', '2', '1476069483', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2899', '1015', '2', '1476069495', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2900', '1015', '2', '1476069502', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2901', '1', '1', '1476069507', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2902', '1', '1', '1476069508', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2903', '1', '1', '1476069509', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2904', '1', '1', '1476069510', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2905', '1', '1', '1476069915', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2906', '1015', '2', '1476070573', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2907', '1015', '2', '1476070580', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2908', '1', '1', '1476071220', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2909', '1', '1', '1476071229', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2910', '1', '1', '1476071235', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2911', '1', '1', '1476071237', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2912', '1', '1', '1476071261', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"2132132\",\"credientialno\":\"140321199105050032\",\"phone\":\"18801621454\",\"email\":\"1231@987.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2913', '1', '1', '1476071297', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"2132132\",\"credientialno\":\"140321199105050032\",\"phone\":\"18801621454\",\"email\":\"1231@987.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2914', '1', '1', '1476071306', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"2132132\",\"credientialno\":\"140321199105050032\",\"phone\":\"18801621453\",\"email\":\"1231@987.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2915', '1', '1', '1476071313', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"2132132\",\"credientialno\":\"140321199105050032\",\"phone\":\"18801621453\",\"email\":\"1231@985.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2916', '1', '1', '1476071385', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"2132132\",\"credientialno\":\"140321199105050032\",\"phone\":\"18801621453\",\"email\":\"1231@985.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2917', '1', '1', '1476071394', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"2132132\",\"credientialno\":\"140321199105050032\",\"phone\":\"18801621451\",\"email\":\"1231@985.com1\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2918', '1', '1', '1476071395', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2919', '1', '1', '1476071572', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"9879612\",\"credientialno\":\"165456655418020012\",\"phone\":\"18854686586\",\"email\":\"1258@lkj.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('2920', '1', '1', '1476071573', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2921', '1015', '2', '1476071957', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2922', '1', '1', '1476072179', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2923', '1', '1', '1476072295', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2924', '1', '1', '1476072302', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2925', '1', '1', '1476072302', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2926', '1', '1', '1476072305', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2927', '1', '1', '1476072334', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2928', '1', '1', '1476072342', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2929', '1', '1', '1476072375', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2930', '1', '1', '1476072377', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2931', '1', '1', '1476072385', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2932', '1', '1', '1476072575', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2933', '1', '1', '1476072587', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2934', '1', '1', '1476072592', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2935', '1', '1', '1476072748', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2936', '1', '1', '1476072757', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2937', '1015', '2', '1476072909', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2938', '1', '1', '1476073040', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2939', '1', '1', '1476073041', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2940', '1', '1', '1476073042', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2941', '1015', '2', '1476073592', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2942', '1015', '2', '1476073602', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2943', '1015', '2', '1476073661', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2944', '1', '1', '1476073668', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2945', '1', '1', '1476073672', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2946', '1', '1', '1476073713', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2947', '1', '1', '1476073874', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2948', '1', '1', '1476073905', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2949', '1', '1', '1476073908', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2950', '1', '1', '1476074024', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2951', '1', '1', '1476074354', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2952', '1', '1', '1476075976', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2953', '1', '1', '1476076053', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2954', '1', '1', '1476076054', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2955', '1', '1', '1476076056', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2956', '1', '1', '1476076061', 'Crm/Sales/editPage', 'CRM管理/营销策略项管理/编辑页面', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2957', '1', '1', '1476076281', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2958', '1', '1', '1476076285', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2959', '1', '1', '1476076290', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2960', '1', '1', '1476076296', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2961', '1', '1', '1476076410', 'Admin/Role/addPage', '用户中心/角色管理/添加角色页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2962', '1', '1', '1476076431', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2963', '1', '1', '1476076443', 'Admin/Role/editPage', '用户中心/角色管理/编辑角色页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2964', '1', '1', '1476076449', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2965', '1', '1', '1476076501', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"26\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2966', '1', '1', '1476076503', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2967', '1', '1', '1476076512', 'Admin/Role/addPage', '用户中心/角色管理/添加角色页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2968', '1', '1', '1476076514', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2969', '1', '1', '1476076551', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2970', '1', '1', '1476076553', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2971', '1', '1', '1476076554', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2972', '1', '1', '1476076562', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2973', '1', '1', '1476076564', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2974', '1', '1', '1476076567', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2975', '1', '1', '1476076751', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2976', '1', '1', '1476076770', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2977', '1', '1', '1476076782', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"16\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2978', '1', '1', '1476076805', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2979', '1', '1', '1476076808', 'Admin/Message/addPage', '用户中心/消息中心/添加消息', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2980', '1', '1', '1476076836', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"22\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2981', '1', '1', '1476076881', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2982', '1', '1', '1476076885', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2983', '1', '1', '1476076901', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2984', '1015', '2', '1476076913', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2985', '1015', '2', '1476076918', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2986', '1', '1', '1476077056', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2987', '1', '1', '1476077084', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2988', '1', '1', '1476077113', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2989', '1', '1', '1476077119', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2990', '1', '1', '1476077122', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2991', '1', '1', '1476077797', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2992', '1', '1', '1476077856', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2993', '1', '1', '1476077962', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2994', '1', '1', '1476077971', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2995', '1', '1', '1476077975', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2996', '1', '1', '1476077976', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2997', '1', '1', '1476077978', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('2998', '1', '1', '1476077979', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('2999', '1', '1', '1476077981', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3000', '1', '1', '1476077982', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3001', '1', '1', '1476077983', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3002', '1', '1', '1476077984', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3003', '1', '1', '1476077987', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3004', '1', '1', '1476077993', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3005', '1', '1', '1476078001', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3006', '1', '1', '1476078010', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3007', '1', '1', '1476078020', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3008', '1', '1', '1476078032', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3009', '1', '1', '1476078046', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3010', '1', '1', '1476078093', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3011', '1', '1', '1476078105', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3012', '1', '1', '1476078110', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3013', '1', '1', '1476078112', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3014', '1', '1', '1476078113', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3015', '1', '1', '1476078114', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3016', '1', '1', '1476078115', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3017', '1', '1', '1476078116', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3018', '1', '1', '1476078125', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3019', '1', '1', '1476078145', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3020', '1', '1', '1476078154', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3021', '1', '1', '1476078176', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3022', '1', '1', '1476078180', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"49\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3023', '1', '1', '1476078185', 'Crm/BAgent/reviewPass', 'CRM管理/会员管理/审核通过', '{\"id\":\"49\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3024', '1', '1', '1476078186', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3025', '1015', '2', '1476078197', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3026', '1015', '2', '1476078341', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3027', '1026', '2', '1476078558', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3028', '1026', '2', '1476080227', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3029', '1', '1', '1476080250', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3030', '1015', '2', '1476080278', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3031', '1015', '2', '1476080282', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3032', '1', '1', '1476080563', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3033', '1', '1', '1476080565', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3034', '1', '1', '1476080602', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3035', '1', '1', '1476080603', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3036', '1', '1', '1476080606', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3037', '1', '1', '1476080607', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3038', '1', '1', '1476080613', 'Sysset/Params/addparam', '系统管理/参数管理/添加参数信息页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3039', '1', '1', '1476080619', 'Sysset/Params/add', '系统管理/参数管理/添加参数', '{\"name\":\"eee\",\"value\":\"1111\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3040', '1', '1', '1476080621', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3041', '1', '1', '1476080624', 'Sysset/Params/delete', '系统管理/参数管理/删除参数', '{\"id\":\"21\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3042', '1', '1', '1476080625', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3043', '1', '1', '1476080627', 'Sysset/Params/editparam', '系统管理/参数管理/编辑参数页面', '{\"id\":\"21\",\"name\":\"eee\",\"value\":\"1111\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3044', '1', '1', '1476080632', 'Sysset/Params/edit', '系统管理/参数管理/编辑参数', '{\"id\":\"21\",\"name\":\"eee\",\"value\":\"1111\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3045', '1', '1', '1476080633', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3046', '1', '1', '1476080661', 'Sysset/Params/addparam', '系统管理/参数管理/添加参数信息页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3047', '1', '1', '1476080667', 'Sysset/Params/add', '系统管理/参数管理/添加参数', '{\"name\":\"3333\",\"value\":\"dddd\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3048', '1', '1', '1476080668', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3049', '1', '1', '1476080680', 'Sysset/Params/editparam', '系统管理/参数管理/编辑参数页面', '{\"id\":\"22\",\"name\":\"3333\",\"value\":\"dddd\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3050', '1', '1', '1476080683', 'Sysset/Params/edit', '系统管理/参数管理/编辑参数', '{\"id\":\"22\",\"name\":\"3333\",\"value\":\"dddd\",\"isdeleted\":\"on\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3051', '1', '1', '1476080684', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3052', '1', '1', '1476080694', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3053', '1015', '2', '1476080758', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3054', '1015', '2', '1476080772', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3055', '1015', '2', '1476080777', 'AgentSysset/Params/addparam', '系统管理/参数管理/参数信息添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3056', '1015', '2', '1476080780', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3057', '1015', '2', '1476080840', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3058', '1015', '2', '1476080856', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3059', '1015', '2', '1476080860', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3060', '1', '1', '1476080877', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3061', '1', '1', '1476080880', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3062', '1', '1', '1476081042', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3063', '1015', '2', '1476081048', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3064', '1015', '2', '1476081050', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3065', '1015', '2', '1476081054', 'AgentSysset/Params/editparam', '系统管理/参数管理/编辑参数信息页面', '{\"id\":\"19\",\"name\":\"gggg\",\"value\":\"vvvv\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3066', '1015', '2', '1476081059', 'AgentSysset/Params/edit', '系统管理/参数管理/编辑参数信息', '{\"id\":\"19\",\"name\":\"gggg\",\"value\":\"vvvv\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3067', '1015', '2', '1476081060', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3068', '1015', '2', '1476081063', 'AgentSysset/Params/delete', '系统管理/参数管理/参数信息删除', '{\"id\":\"20\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3069', '1015', '2', '1476081065', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3070', '1', '1', '1476081110', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3071', '1', '1', '1476081112', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3072', '1015', '2', '1476081168', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3073', '1015', '2', '1476081170', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3074', '1015', '2', '1476081219', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3075', '1015', '2', '1476081222', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3076', '1015', '2', '1476081230', 'AgentSysset/Params/addparam', '系统管理/参数管理/参数信息添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3077', '1015', '2', '1476081235', 'AgentSysset/Params/add', '系统管理/参数管理/参数信息添加', '{\"name\":\"rrrr\",\"value\":\"sss\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3078', '1015', '2', '1476081236', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3079', '1015', '2', '1476081281', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3080', '1015', '2', '1476081289', 'AgentSysset/Domain/applydomain', '系统管理/域名管理/申请域名页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3081', '1015', '2', '1476081299', 'AgentSysset/Domain/apply', '系统管理/域名管理/域名申请', '{\"userdomain\":\"eee.ddd.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3082', '1015', '2', '1476081300', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3083', '1015', '2', '1476081317', 'AgentSysset/Domain/applydomain', '系统管理/域名管理/申请域名页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3084', '1015', '2', '1476081320', 'AgentSysset/Domain/apply', '系统管理/域名管理/域名申请', '{\"userdomain\":\"eee.ddd.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3085', '1015', '2', '1476081321', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3086', '1', '1', '1476081334', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3087', '1', '1', '1476081337', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3088', '1', '1', '1476081343', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3089', '1015', '2', '1476081345', 'AgentSysset/Params/delete', '系统管理/参数管理/参数信息删除', '{\"id\":\"23\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3090', '1015', '2', '1476081346', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3091', '1', '1', '1476081347', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3092', '1', '1', '1476081349', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3093', '1015', '2', '1476081352', 'AgentSysset/Params/editparam', '系统管理/参数管理/编辑参数信息页面', '{\"id\":\"23\",\"name\":\"rrrr\",\"value\":\"sss\",\"isdeleted\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3094', '1', '1', '1476081354', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3095', '1015', '2', '1476081355', 'AgentSysset/Params/edit', '系统管理/参数管理/编辑参数信息', '{\"id\":\"23\",\"name\":\"rrrr\",\"value\":\"sss\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3096', '1015', '2', '1476081356', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3097', '1', '1', '1476081356', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3098', '1', '1', '1476081357', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3099', '1015', '2', '1476081359', 'AgentSysset/Params/addparam', '系统管理/参数管理/参数信息添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3100', '1015', '2', '1476081360', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3101', '1', '1', '1476081362', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3102', '1', '1', '1476081379', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3103', '1', '1', '1476081387', 'Crm/SalesStrategy/index', 'CRM管理/营销策略配置/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3104', '1', '1', '1476081397', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3105', '1', '1', '1476081403', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3106', '1', '1', '1476081405', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3107', '1', '1', '1476081405', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3108', '1', '1', '1476081475', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3109', '1', '1', '1476081478', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3110', '1', '1', '1476081520', 'Sysset/Domain/enable', '系统管理/域名管理/申请启用', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3111', '1', '1', '1476081521', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3112', '1', '1', '1476081534', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3113', '1', '1', '1476081722', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3114', '1', '1', '1476081724', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3115', '1', '1', '1476081748', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3116', '1', '1', '1476081750', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3117', '1', '1', '1476081753', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3118', '1', '1', '1476081753', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3119', '1', '1', '1476081767', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3120', '1', '1', '1476081768', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3121', '1', '1', '1476081768', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3122', '1', '1', '1476081776', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3123', '1', '1', '1476081778', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3124', '1', '1', '1476081785', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3125', '1', '1', '1476081786', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3126', '1', '1', '1476081792', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3127', '1', '1', '1476081803', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('3128', '1', '1', '1476081873', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\\/Uploads\\/disclosure\\/2016-10-10\\/57fb388bc3f20.xls\",\"name\":\"\\u5e73\\u53f0\\u529f\\u80fd(\\u5e73\\u53f0\\u529f\\u80fd\\u8ba1\\u5212\\u5b89\\u6392F\\u6539.xls)\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3129', '1', '1', '1476081874', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3130', '1', '1', '1476081892', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('3131', '1', '1', '1476081897', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\\/Uploads\\/disclosure\\/2016-10-10\\/57fb38e423baa.xls\",\"name\":\"12121(\\u5e73\\u53f0\\u529f\\u80fd\\u8ba1\\u5212\\u5b89\\u6392F\\u6539 (1).xls)\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3132', '1', '1', '1476081898', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3133', '1', '1', '1476081914', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3134', '1', '1', '1476081918', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3135', '1', '1', '1476081946', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3136', '1', '1', '1476081976', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3137', '1', '1', '1476082014', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('3138', '1', '1', '1476082030', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3139', '1', '1', '1476082034', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3140', '1', '1', '1476082035', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3141', '1', '1', '1476082037', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3142', '1', '1', '1476082063', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('3143', '1', '1', '1476082166', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3144', '1', '1', '1476082172', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3145', '1', '1', '1476082326', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3146', '1', '1', '1476082331', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3147', '1', '1', '1476082363', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3148', '1', '1', '1476082367', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"49\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3149', '1', '1', '1476082378', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3150', '1', '1', '1476082379', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"48\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3151', '1', '1', '1476082404', 'News/Newscat/edit', '新闻管理/新闻栏目/保存编辑新闻栏目', '{\"id\":\"48\",\"name\":\"Fengneng\",\"pid\":\"0\",\"level\":\"1\",\"code\":\"yiceng\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3152', '1', '1', '1476082405', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3153', '1', '1', '1476082412', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"49\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3154', '1', '1', '1476082435', 'News/Newscat/edit', '新闻管理/新闻栏目/保存编辑新闻栏目', '{\"id\":\"49\",\"name\":\"\\u79c1\\u52df\\u52a8\\u6001\",\"pid\":\"48\",\"level\":\"2\",\"code\":\"sm\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3155', '1', '1', '1476082436', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3156', '1', '1', '1476082452', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"50\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3157', '1', '1', '1476082482', 'News/Newscat/edit', '新闻管理/新闻栏目/保存编辑新闻栏目', '{\"id\":\"50\",\"name\":\"\\u516c\\u5893\\u4fe1\\u606f\",\"pid\":\"48\",\"level\":\"2\",\"code\":\"gm\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3158', '1', '1', '1476082483', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3159', '1', '1', '1476082493', 'News/Newscat/delete', '新闻管理/新闻栏目/删除新闻栏目', '{\"id\":\"59\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3160', '1', '1', '1476082494', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3161', '1', '1', '1476082530', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3162', '1', '1', '1476082645', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3163', '1', '1', '1476082713', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3164', '1', '1', '1476082726', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '{\"keyword\":\"f\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3165', '1', '1', '1476082804', 'News/Newscon/addPage', '新闻管理/新闻内容/', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3166', '1', '1', '1476083002', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3167', '1', '1', '1476083010', 'News/Newscon/upload', '新闻管理/新闻内容/', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('3168', '1', '1', '1476083060', 'News/Newscon/add', '新闻管理/新闻内容/', '{\"title\":\"\\u5951\\u7ea6\\u578b\\u57fa\\u91d1\\uff1a\\u8bc1\\u76d1\\u4f1a\\u76d1\\u7ba1\\u4e0b\\u7684\\u4fe1\\u6258\",\"categoryid\":\"49\",\"style\":\"1\",\"author\":\"\\u767e\\u5ea6\",\"source\":\"\\u767e\\u5ea6\",\"keyword\":\"\\u79c1\\u52df\",\"description\":\"\\u8bf4\\u5230\\u4fe1\\u6258\\u5927\\u5bb6\\u90fd\\u4e0d\\u964c\\u751f\\uff0c\\u5b83\\u4e0e\\u94f6\\u884c\\u3001\\u4fdd\\u9669\\u3001\\u8bc1\\u5238\\u4e00\\u8d77\\u6784\\u6210\\u4e86\\u73b0\\u4ee3\\u91d1\\u878d\\u4f53\\u7cfb\\uff0c\\u662f\\u4e00\\u79cd\\u4ee5\\u4fe1\\u7528\\u4e3a\\u57fa\\u7840\\u7684\\u6cd5\\u5f8b\\u884c\\u4e3a\\uff0c\\u4e00\\u822c\\u6d89\\u53ca\\u5230\\u4e09\\u65b9\\u9762\\u5f53\\u4e8b\\u4eba\\uff0c\\u5373\\u6295\\u5165\\u4fe1\\u7528\\u7684\\u59d4\\u6258\\u4eba\\uff0c\\u53d7\\u4fe1\\u4e8e\\u4eba\\u7684\\u53d7\\u6258\\u4eba\\uff0c\\u4ee5\\u53ca\\u53d7\\u76ca\\u4e8e\\u4eba\\u7684\\u53d7\\u76ca\\u4eba\\u3002\\u5176\\u57fa\\u672c\\u804c\\u80fd\\u5c31\\u662f\\u201c\\u53d7\\u4eba\\u4e4b\\u6258\\uff0c\\u5c65\\u4eba\\u4e4b\\u5631\\uff0c\\u4ee3\\u4eba\\u7406\\u8d22\\u201d\",\"thumb\":\"\\/Uploads\\/news\\/2016-10-10\\/57fb3d42e89af.jpg\",\"weight\":\"7\",\"publishstatus\":\"on\",\"editorValue\":\"<p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: \\u5b8b\\u4f53; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;\\\"><span style=\\\"border: 0px; margin: 0px; padding: 0px;\\\">\\u8bf4\\u5230\\u4fe1\\u6258\\u5927\\u5bb6\\u90fd\\u4e0d\\u964c2016-10-10\\u751f\\uff0c\\u5b83\\u4e0e\\u94f6\\u884c\\u3001\\u4fdd\\u9669\\u3001\\u8bc1\\u5238\\u4e00\\u8d77\\u6784\\u6210\\u4e86\\u73b0\\u4ee3\\u91d1\\u878d\\u4f53\\u7cfb\\uff0c\\u662f\\u4e00\\u79cd\\u4ee5\\u4fe1\\u7528\\u4e3a\\u57fa\\u7840\\u7684\\u6cd5\\u5f8b\\u884c\\u4e3a\\uff0c\\u4e00\\u822c\\u6d89\\u53ca\\u5230\\u4e09\\u65b9\\u9762\\u5f53\\u4e8b\\u4eba\\uff0c\\u5373\\u6295\\u5165\\u4fe1\\u7528\\u7684\\u59d4\\u6258\\u4eba\\uff0c\\u53d7\\u4fe1\\u4e8e\\u4eba\\u7684\\u53d7\\u6258\\u4eba\\uff0c\\u4ee5\\u53ca\\u53d7\\u76ca\\u4e8e\\u4eba\\u7684\\u53d7\\u76ca\\u4eba\\u3002\\u5176\\u57fa\\u672c\\u804c\\u80fd\\u5c31\\u662f\\u201c\\u53d7\\u4eba\\u4e4b\\u6258\\uff0c\\u5c65\\u4eba\\u4e4b\\u5631\\uff0c\\u4ee3\\u4eba\\u7406\\u8d22\\u201d\\u3002<\\/span><\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: \\u5b8b\\u4f53; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;\\\"><span style=\\\"border: 0px; margin: 0px; padding: 0px;\\\">\\u800c\\u63d0\\u5230\\u5951\\u7ea6\\u578b\\u57fa\\u91d1\\uff0c\\u975e\\u4e1a\\u5185\\u4eba\\u58eb\\u53ef\\u80fd\\u4f1a\\u611f\\u89c9\\u6709\\u4e9b\\u964c\\u751f\\uff0c\\u5176\\u5b9e\\u5b83\\u4e0e\\u4fe1\\u6258\\u7684\\u57fa\\u672c\\u539f\\u7406\\u76f8\\u4f3c\\u3002\\u5951\\u7ea6\\u578b\\u57fa\\u91d1\\u4e5f\\u79f0\\u4e3a\\u4fe1\\u6258\\u578b\\u57fa\\u91d1\\uff0c\\u662f\\u7531\\u57fa\\u91d1\\u7ecf\\u7406\\u4eba\\uff08\\u5373\\u57fa\\u91d1\\u7ba1\\u7406\\u516c\\u53f8\\uff09\\u4e0e\\u4ee3\\u8868\\u53d7\\u76ca\\u4eba\\u6743\\u76ca\\u7684\\u4fe1\\u6258\\u4eba\\uff08\\u6258\\u7ba1\\u4eba\\uff09\\u4e4b\\u95f4\\u8ba2\\u7acb\\u4fe1\\u6258\\u5951\\u7ea6\\u800c\\u53d1\\u884c\\u53d7\\u76ca\\u5355\\u4f4d\\uff0c\\u7531\\u7ecf\\u7406\\u4eba\\u4f9d\\u7167\\u4fe1\\u6258\\u5951\\u7ea6\\u4ece\\u4e8b\\u5bf9\\u4fe1\\u6258\\u8d44\\u4ea7\\u7684\\u7ba1\\u7406\\uff0c\\u7531\\u6258\\u7ba1\\u4eba\\u4f5c\\u4e3a\\u57fa\\u91d1\\u8d44\\u4ea7\\u7684\\u540d\\u4e49\\u6301\\u6709\\u4eba\\u8d1f\\u8d23\\u4fdd\\u7ba1\\u57fa\\u91d1\\u8d44\\u4ea7\\u3002\\u5951\\u7ea6\\u578b\\u57fa\\u91d1\\u901a\\u8fc7\\u53d1\\u884c\\u53d7\\u76ca\\u5355\\u4f4d\\uff0c\\u4f7f\\u6295\\u8d44\\u8005\\u8d2d\\u4e70\\u540e\\u6210\\u4e3a\\u57fa\\u91d1\\u53d7\\u76ca\\u4eba\\uff0c\\u5206\\u4eab\\u57fa\\u91d1\\u7ecf\\u8425\\u6210\\u679c\\u3002\\u5951\\u7ea6\\u578b\\u57fa\\u91d1\\u7684\\u8bbe\\u7acb\\u6cd5\\u5f8b\\u6027\\u6587\\u4ef6\\u662f\\u4fe1\\u6258\\u5951\\u7ea6\\uff0c\\u800c\\u6ca1\\u6709\\u57fa\\u91d1\\u7ae0\\u7a0b\\u3002\\u57fa\\u91d1\\u7ba1\\u7406\\u4eba\\u3001\\u6258\\u7ba1\\u4eba\\u3001\\u6295\\u8d44\\u4eba\\u4e09\\u65b9\\u5f53\\u4e8b\\u4eba\\u7684\\u884c\\u4e3a\\u901a\\u8fc7\\u4fe1\\u6258\\u5951\\u7ea6\\u6765\\u89c4\\u8303\\u3002<\\/span><\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: \\u5b8b\\u4f53; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;\\\"><span style=\\\"border: 0px; margin: 0px; padding: 0px;\\\">\\u4fe1\\u6258\\u7684\\u76d1\\u7ba1\\u65b9\\u662f\\u94f6\\u76d1\\u4f1a\\uff1b\\u5951\\u7ea6\\u578b\\u57fa\\u91d1\\u7684\\u76d1\\u7ba1\\u65b9\\u662f\\u8bc1\\u5238\\u57fa\\u91d1\\u4e1a\\u534f\\u4f1a\\uff0c\\u800c\\u8bc1\\u5238\\u57fa\\u91d1\\u4e1a\\u534f\\u4f1a\\u662f\\u53d7\\u8bc1\\u76d1\\u4f1a\\u76d1\\u7763\\u548c\\u6307\\u5bfc\\u3002\\u56e0\\u6b64\\u4e1a\\u5185\\u6709\\u4e00\\u79cd\\u901a\\u4fd7\\u7684\\u8bf4\\u6cd5\\uff0c\\u5951\\u7ea6\\u578b\\u57fa\\u91d1\\uff1a\\u8bc1\\u76d1\\u4f1a\\u76d1\\u7ba1\\u4e0b\\u7684\\u4fe1\\u6258\\u3002<\\/span><\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: \\u5b8b\\u4f53; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;\\\"><span style=\\\"border: 0px; margin: 0px; padding: 0px;\\\">\\u5951\\u7ea6\\u57fa\\u91d1\\u4e0e\\u4fe1\\u6258\\u4e00\\u6837\\u5177\\u6709\\u6bd4\\u8f83\\u5b8c\\u5584\\u7684\\u6cd5\\u5f8b\\u3001\\u6cd5\\u89c4\\u57fa\\u7840\\uff0c\\u4e3b\\u8981\\u53d7\\u300a\\u8bc1\\u5238\\u6295\\u8d44\\u57fa\\u91d1\\u6cd5\\u300b\\u3001\\u300a\\u79c1\\u52df\\u6295\\u8d44\\u57fa\\u91d1\\u76d1\\u7763\\u7ba1\\u7406\\u6682\\u884c\\u529e\\u6cd5\\u300b\\u548c\\u300a\\u79c1\\u52df\\u6295\\u8d44\\u57fa\\u91d1\\u7ba1\\u7406\\u4eba\\u767b\\u8bb0\\u548c\\u57fa\\u91d1\\u5907\\u6848\\u529e\\u6cd5\\u300b\\u7ea6\\u675f\\u3002\\u5176\\u4ea7\\u54c1\\u6784\\u67b6\\u548c\\u4fe1\\u6258\\u4e00\\u6837\\u65bd\\u884c\\u59d4\\u6258\\u4eba\\u3001\\u53d7\\u6258\\u4eba\\u3001\\u6258\\u7ba1\\u4eba\\u4e09\\u65b9\\u5206\\u79bb\\u3002<\\/span><\\/p><p style=\\\"border: 0px; margin-top: 0px; margin-bottom: 0px; padding: 26px 0px 0px; font-size: 14px; color: rgb(51, 51, 51); word-wrap: break-word; font-family: \\u5b8b\\u4f53; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;\\\"><span style=\\\"border: 0px; margin: 0px; padding: 0px;\\\">\\u6b64\\u5916\\uff0c\\u5951\\u7ea6\\u57fa\\u91d1\\u5236\\u5ea6\\u7684\\u8bbe\\u8ba1\\u66f4\\u4e3a\\u5f00\\u653e\\u548c\\u5e02\\u573a\\u5316\\uff0c\\u8fd9\\u6837\\u4f7f\\u5f97\\u5951\\u7ea6\\u57fa\\u91d1\\u5728\\u5b89\\u5168\\u6027\\u8f83\\u9ad8\\u7684\\u57fa\\u7840\\u4e0a\\u517c\\u5177\\u7075\\u52a8\\u6027\\uff0c\\u4e0e\\u4fe1\\u6258\\u4e00\\u6837\\u4e5f\\u662f\\u91d1\\u878d\\u4ea7\\u54c1\\u7684\\u4e00\\u79cd\\u8fd0\\u4f5c\\u65b9\\u5f0f\\u3002\\u7ba1\\u7406\\u4eba\\u6c34\\u5e73\\u53ca\\u5177\\u4f53\\u4ea7\\u54c1\\u6295\\u5411\\u662f\\u51b3\\u5b9a\\u4ea7\\u54c1\\u8d28\\u91cf\\u7684\\u91cd\\u8981\\u56e0\\u7d20\\u3002<\\/span><\\/p><p>2016-10-10<\\/p>\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3169', '1', '1', '1476083061', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3170', '1', '1', '1476083082', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"110\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3171', '1', '1', '1476083085', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3172', '1', '1', '1476083089', 'News/Newscon/delete', '新闻管理/新闻内容/', '{\"id\":\"110\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3173', '1', '1', '1476083090', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3174', '1', '1', '1476083095', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"113\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3175', '1', '1', '1476083107', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3176', '1', '1', '1476083118', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3177', '1', '1', '1476083150', 'News/Newscon/editPage', '新闻管理/新闻内容/', '{\"id\":\"111\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3178', '1', '1', '1476083199', 'News/Newscon/edit', '新闻管理/新闻内容/', '{\"title\":\"\\u53cd\\u5bf9\\u6492\\u6cd54444666\",\"categoryid\":\"57\",\"style\":\"1\",\"author\":\"\\u8303\\u5fb7\\u8428\",\"source\":\"fds \",\"keyword\":\"fdsa \",\"description\":\"\\u70e6\\u70e6\\u70e6\\u7684\\u6492\",\"thumb\":\"\\/Uploads\\/news\\/2016-09-26\\/57e8913004f9c.jpg\",\"weight\":\"4\",\"publishstatus\":\"on\",\"id\":\"111\",\"editorValue\":\"<p>\\u8303\\u5fb7\\u8428<\\/p><p><img src=\\\"\\/Uploads\\/ueditor\\/image\\/20160926\\/1474859390172645.jpg\\\" title=\\\"1474859390172645.jpg\\\" alt=\\\"Koala.jpg\\\"\\/><\\/p>\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3179', '1', '1', '1476083200', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3180', '1', '1', '1476083256', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3181', '1', '1', '1476083274', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3182', '1', '1', '1476083275', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3183', '1', '1', '1476083275', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3184', '1', '1', '1476083291', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3185', '1', '1', '1476083292', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3186', '1', '1', '1476083293', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3187', '1', '1', '1476083300', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3188', '1', '1', '1476083462', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3189', '1', '1', '1476083463', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3190', '1', '1', '1476083467', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3191', '1', '1', '1476083470', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3192', '1', '1', '1476083527', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3193', '1', '1', '1476083532', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3194', '1', '1', '1476083598', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3195', '1', '1', '1476083849', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3196', '1', '1', '1476083863', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3197', '1', '1', '1476083988', 'Product/Product/add', '产品管理/产品发布/添加产品动作', '{\"name\":\"B\\u80a1\\u4e0a\\u5e02\\u4f01\\u4e1a\\u5b58\\u8d27\\u8d28\\u62bc\\u878d\\u8d44\\u9879\\u76ee\",\"catagroyida\":\"1\",\"catagroyidb\":\"2\",\"catagroyidc\":\"14\",\"tradingstructure\":\"\\u4ea4\\u6613\\u7ed3\\u6784\",\"productscale\":\"1000000\",\"productform\":\"\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\",\"publisher\":\"fengmeng\",\"custodian\":\"fengmeng1\",\"issuesize\":\"1000000\",\"minimuminvestmentamount\":\"10\",\"increasingunit\":\"10\",\"producttermmonth\":\"6\",\"producttermday\":\"15\",\"contractquantity\":\"10\",\"establishmentscale\":\"1000000\",\"riskrating\":\"2\",\"saleslevel\":\"3\",\"producttype\":\"3\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"\",\"closedperiodday\":\"\",\"ror\":\"8\",\"commissionratio\":\"0.3\",\"subscriptionfee\":\"0.00\",\"performancereward\":\"0.00\",\"managementexpense\":\"0.00\",\"redemptionfee\":\"0.00\",\"onlinedate\":\"2016-10-10\",\"establishmentday\":\"2016-10-31\",\"openday\":\"\",\"duedate\":\"2017-02-17\",\"terminationday\":\"2017-04-29\",\"distributionmethod\":\"\\u6536\\u76ca\\u5206\\u914d\\u65b9\\u5f0f\",\"tradingrivals\":\"\\u4ea4\\u6613\\u5bf9\\u624b\",\"investmenttargets\":\"\\u6295\\u8d44\\u6807\\u7684\",\"assetguarantee\":\"\\u8d44\\u4ea7\\u4fdd\\u8bc1\",\"establishedconditions\":\"\\u6210\\u7acb\\u6761\\u4ef6\",\"note\":\"\\u5907\\u6ce8\\u4fe1\\u606f\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3198', '1', '1', '1476083992', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3199', '1', '1', '1476083993', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3200', '1', '1', '1476084011', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3201', '1', '1', '1476084035', 'Product/Product/add', '产品管理/产品发布/添加产品动作', '{\"name\":\"B\\u80a1\\u4e0a\\u5e02\\u4f01\\u4e1a\\u5b58\\u8d27\\u8d28\\u62bc\\u878d\\u8d44\\u9879\\u76ee\",\"catagroyida\":\"1\",\"catagroyidb\":\"1\",\"catagroyidc\":\"10\",\"tradingstructure\":\"\\u4ea4\\u6613\\u7ed3\\u6784\",\"productscale\":\"1000000\",\"productform\":\"\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\",\"publisher\":\"fengmeng\",\"custodian\":\"fengmeng1\",\"issuesize\":\"1000000.00\",\"minimuminvestmentamount\":\"10\",\"increasingunit\":\"10\",\"producttermmonth\":\"6\",\"producttermday\":\"15\",\"contractquantity\":\"10\",\"establishmentscale\":\"1000000.00\",\"riskrating\":\"2\",\"saleslevel\":\"3\",\"producttype\":\"3\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"\",\"closedperiodday\":\"\",\"ror\":\"8.00\",\"commissionratio\":\"0.30\",\"subscriptionfee\":\"0.00\",\"performancereward\":\"0.00\",\"managementexpense\":\"0.00\",\"redemptionfee\":\"0.00\",\"onlinedate\":\"2016-10-10\",\"establishmentday\":\"2016-10-31\",\"openday\":\"\",\"duedate\":\"2017-02-17\",\"terminationday\":\"2017-04-29\",\"distributionmethod\":\"\\u6536\\u76ca\\u5206\\u914d\\u65b9\\u5f0f\",\"tradingrivals\":\"\\u4ea4\\u6613\\u5bf9\\u624b\",\"investmenttargets\":\"\\u6295\\u8d44\\u6807\\u7684\",\"assetguarantee\":\"\\u8d44\\u4ea7\\u4fdd\\u8bc1\",\"establishedconditions\":\"\\u6210\\u7acb\\u6761\\u4ef6\",\"note\":\"\\u5907\\u6ce8\\u4fe1\\u606f\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3202', '1', '1', '1476084039', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3203', '1', '1', '1476084039', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3204', '1', '1', '1476084040', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3205', '1', '1', '1476084057', 'Product/Product/add', '产品管理/产品发布/添加产品动作', '{\"name\":\"B\\u80a1\\u4e0a\\u5e02\\u4f01\\u4e1a\\u5b58\\u8d27\\u8d28\\u62bc\\u878d\\u8d44\\u9879\\u76ee\",\"catagroyida\":\"1\",\"catagroyidb\":\"1\",\"catagroyidc\":\"10\",\"tradingstructure\":\"\\u4ea4\\u6613\\u7ed3\\u6784\",\"productscale\":\"999999.99\",\"productform\":\"\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\",\"publisher\":\"fengmeng\",\"custodian\":\"fengmeng1\",\"issuesize\":\"1000000.00\",\"minimuminvestmentamount\":\"10\",\"increasingunit\":\"10\",\"producttermmonth\":\"6\",\"producttermday\":\"15\",\"contractquantity\":\"10\",\"establishmentscale\":\"1000000.00\",\"riskrating\":\"2\",\"saleslevel\":\"3\",\"producttype\":\"3\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"\",\"closedperiodday\":\"\",\"ror\":\"8.00\",\"commissionratio\":\"0.30\",\"subscriptionfee\":\"0.00\",\"performancereward\":\"0.00\",\"managementexpense\":\"0.00\",\"redemptionfee\":\"0.00\",\"onlinedate\":\"2016-10-10\",\"establishmentday\":\"2016-10-31\",\"openday\":\"\",\"duedate\":\"2017-02-17\",\"terminationday\":\"2017-04-29\",\"distributionmethod\":\"\\u6536\\u76ca\\u5206\\u914d\\u65b9\\u5f0f\",\"tradingrivals\":\"\\u4ea4\\u6613\\u5bf9\\u624b\",\"investmenttargets\":\"\\u6295\\u8d44\\u6807\\u7684\",\"assetguarantee\":\"\\u8d44\\u4ea7\\u4fdd\\u8bc1\",\"establishedconditions\":\"\\u6210\\u7acb\\u6761\\u4ef6\",\"note\":\"\\u5907\\u6ce8\\u4fe1\\u606f\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3206', '1', '1', '1476084061', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3207', '1', '1', '1476084062', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3208', '1', '1', '1476084085', 'Product/Product/add', '产品管理/产品发布/添加产品动作', '{\"name\":\"B\\u80a1\\u4e0a\\u5e02\\u4f01\\u4e1a\\u5b58\\u8d27\\u8d28\\u62bc\\u878d\\u8d44\\u9879\\u76ee\",\"catagroyida\":\"1\",\"catagroyidb\":\"1\",\"catagroyidc\":\"10\",\"tradingstructure\":\"\\u4ea4\\u6613\\u7ed3\\u6784\",\"productscale\":\"999999.99\",\"productform\":\"\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\\u4ea7\\u54c1\\u5f62\\u6001\",\"publisher\":\"fengmeng\",\"custodian\":\"fengmeng1\",\"issuesize\":\"1000000.00\",\"minimuminvestmentamount\":\"10.00\",\"increasingunit\":\"10.00\",\"producttermmonth\":\"6\",\"producttermday\":\"15\",\"contractquantity\":\"10\",\"establishmentscale\":\"1000000.00\",\"riskrating\":\"2\",\"saleslevel\":\"3\",\"producttype\":\"3\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"\",\"closedperiodday\":\"\",\"ror\":\"8.00\",\"commissionratio\":\"0.30\",\"subscriptionfee\":\"0.00\",\"performancereward\":\"0.00\",\"managementexpense\":\"0.00\",\"redemptionfee\":\"0.00\",\"onlinedate\":\"2016-10-10\",\"establishmentday\":\"2016-10-31\",\"openday\":\"\",\"duedate\":\"2017-02-17\",\"terminationday\":\"2017-04-29\",\"distributionmethod\":\"\\u6536\\u76ca\\u5206\\u914d\\u65b9\\u5f0f\",\"tradingrivals\":\"\\u4ea4\\u6613\\u5bf9\\u624b\",\"investmenttargets\":\"\\u6295\\u8d44\\u6807\\u7684\",\"assetguarantee\":\"\\u8d44\\u4ea7\\u4fdd\\u8bc1\",\"establishedconditions\":\"\\u6210\\u7acb\\u6761\\u4ef6\",\"note\":\"\\u5907\\u6ce8\\u4fe1\\u606f\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3209', '1', '1', '1476084086', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3210', '1', '1', '1476084102', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3211', '1', '1', '1476084134', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3212', '1', '1', '1476084162', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('3213', '1', '1', '1476084170', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"5\",\"path\":\"\\/Uploads\\/disclosure\\/2016-10-10\\/57fb41c221d6b.jpg\",\"name\":\"\\u4ea7\\u54c1\\u7b2c\\u56db\\u5b63\\u5ea6\\u6295\\u8d44\\u62a5\\u544a(\\u4e0b\\u8f7d.jpg)\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3214', '1', '1', '1476084171', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3215', '1', '1', '1476084174', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3216', '1', '1', '1476084230', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3217', '1', '1', '1476084239', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3218', '1', '1', '1476084240', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3219', '1', '1', '1476084359', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3220', '1', '1', '1476084360', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3221', '1', '1', '1476084363', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3222', '1', '1', '1476084364', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3223', '1', '1', '1476084400', 'Product/Product/index', '产品管理/产品发布/产品列表', '{\"id\":\"\",\"name\":\"B\\u80a1\\u4e0a\\u5e02\\u4f01\\u4e1a\\u5b58\\u8d27\\u8d28\\u62bc\\u878d\\u8d44\\u9879\\u76ee\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3224', '1', '1', '1476084417', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3225', '1', '1', '1476084430', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3226', '1', '1', '1476084454', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3227', '1', '1', '1476084457', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3228', '1', '1', '1476084462', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3229', '1', '1', '1476084561', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3230', '1', '1', '1476084561', 'Product/Networth/editNetworthPage', '产品管理/净值管理/编辑单个净值页面', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3231', '1', '1', '1476084572', 'Product/Networth/edit', '产品管理/净值管理/编辑单个净值动作', '{\"id\":\"1\",\"productid\":\"4\",\"datetime\":\"2016-10-06\",\"networth\":\"1.0007\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3232', '1', '1', '1476084573', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3233', '1', '1', '1476084591', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3234', '1', '1', '1476084598', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"123\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3235', '1', '1', '1476084608', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"123\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"123654@213.com\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3236', '1', '1', '1476084621', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"123\",\"credientialno\":\"\",\"phone\":\"18801621639\",\"email\":\"123654@213.com\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3237', '1', '1', '1476084622', 'Crm/Customer/Crm', 'CRM管理/客户管理/', '{\"Customer\":\"index\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3238', '1', '1', '1476084641', 'Crm/Customer/Crm', 'CRM管理/客户管理/', '{\"Customer\":\"index\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3239', '1', '1', '1476084645', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"123\",\"credientialno\":\"\",\"phone\":\"18801621639\",\"email\":\"123654@213.com\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3240', '1', '1', '1476084657', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3241', '1', '1', '1476084769', 'Product/Networth/importTodayNetworth', '产品管理/净值管理/通过excel导入今日净值', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('3242', '1', '1', '1476084779', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3243', '1', '1', '1476084790', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"123\",\"credientialno\":\"\",\"phone\":\"18801621639\",\"email\":\"123654@213.com\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3244', '1', '1', '1476084795', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"123\",\"credientialno\":\"\",\"phone\":\"18801621639\",\"email\":\"123654@213.com1\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3245', '1', '1', '1476084801', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"123\",\"credientialno\":\"\",\"phone\":\"18801621638\",\"email\":\"123654@213.com1\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3246', '1', '1', '1476084825', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3247', '1', '1', '1476084828', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3248', '1', '1', '1476084842', 'Product/Saleconfig/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3249', '1', '1', '1476084854', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3250', '1', '1', '1476084866', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3251', '1', '1', '1476084869', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3252', '1', '1', '1476084874', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3253', '1', '1', '1476084876', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3254', '1', '1', '1476084877', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3255', '1', '1', '1476084877', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3256', '1', '1', '1476084899', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"agentid\":\"1\",\"username\":\"123\",\"credientialno\":\"\",\"phone\":\"18801621638\",\"email\":\"123654@213.com1\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3257', '1', '1', '1476084900', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3258', '1', '1', '1476084905', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3259', '1', '1', '1476084906', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3260', '1', '1', '1476084927', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u6211\\u5c31\\u662f\\u7ba1\\u7406\\u545811\",\"credientialno\":\"789987788787878878\",\"phone\":\"18801545789\",\"email\":\"99@22.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3261', '1', '1', '1476084929', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3262', '1', '1', '1476084999', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u6211\\u5c31\\u662f\\u7ba1\\u7406\\u545811\",\"credientialno\":\"789987788787878878\",\"phone\":\"18801545787\",\"email\":\"99@22.com1\",\"password\":\"1234561\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3263', '1', '1', '1476085046', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u6211\\u5c31\\u662f\\u7ba1\\u7406\\u545811\",\"credientialno\":\"789987788787878878\",\"phone\":\"18801545787\",\"email\":\"99@22.com1\",\"password\":\"1234561\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3264', '1', '1', '1476085053', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u6211\\u5c31\\u662f\\u7ba1\\u7406\\u545811\",\"credientialno\":\"789987788787878878\",\"phone\":\"18801545786\",\"email\":\"99@22.com12\",\"password\":\"1234561\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3265', '1', '1', '1476085054', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3266', '1', '1', '1476085058', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3267', '1', '1', '1476085199', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u6211\\u5c31\\u662f\\u7ba1\\u7406\\u545811\",\"credientialno\":\"789987788787878872\",\"phone\":\"18801545785\",\"email\":\"99@22.com123\",\"password\":\"1234561\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3268', '1', '1', '1476085200', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3269', '1', '1', '1476085246', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u91cc\\u674e\",\"credientialno\":\"3455567665666565\",\"phone\":\"13454545555\",\"email\":\"884367094@qq.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3270', '1', '1', '1476085260', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u91cc\\u674e\",\"credientialno\":\"111111111111111111\",\"phone\":\"13454545555\",\"email\":\"884367094@qq.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3271', '1', '1', '1476085262', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3272', '1', '1', '1476085263', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3273', '1', '1', '1476085268', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3274', '1', '1', '1476085273', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"54\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3275', '1', '1', '1476085279', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3276', '1', '1', '1476085283', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3277', '1', '1', '1476085364', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"54\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3278', '1', '1', '1476085377', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3279', '1', '1', '1476085379', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3280', '1', '1', '1476085410', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3281', '1', '1', '1476085414', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3282', '1', '1', '1476085416', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"54\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3283', '1', '1', '1476085445', 'Crm/BAgent/edit', 'CRM管理/会员管理/修改IFA信息动作', '{\"id\":\"54\",\"username\":\"\\u91cc\\u674e\",\"creditno\":\"QY123456\",\"phone\":\"13454545555\",\"email\":\"884367094@qq.com\",\"userlevel\":\"2\",\"computerlevel\":\"\\u719f\\u7ec3\",\"englishlevel\":\"\\u719f\\u7ec3\",\"country\":\"\\u4e2d\\u56fd\",\"degree\":\"\\u672c\\u79d1\",\"education\":\"\\u672c\\u79d1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3284', '1', '1', '1476085457', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3285', '1', '1', '1476085461', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3286', '1', '1', '1476085468', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"54\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3287', '1', '1', '1476085524', 'Crm/BAgent/reviewPass', 'CRM管理/会员管理/审核通过', '{\"id\":\"54\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3288', '1', '1', '1476085525', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3289', '1', '1', '1476085531', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3290', '1', '1', '1476085533', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3291', '1', '1', '1476085601', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3292', '1', '1', '1476085663', 'Crm/BAgent/doInvite', 'CRM管理/会员管理/邀请用户动作', '{\"username\":\"\\u9648\\u5927\\u6d77\",\"credientialno\":\"111111111111111111\",\"phone\":\"18939840579\",\"email\":\"784367094@qq.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3293', '1', '1', '1476085709', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3294', '1', '1', '1476085736', 'Crm/Customer/add', 'CRM管理/客户管理/添加客户动作', '{\"isinstitutionaluser\":\"1\",\"agentid\":\"1\",\"username\":\"987\",\"credientialno\":\"321156699415252214\",\"phone\":\"18801621665\",\"email\":\"12@845632.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3295', '1', '1', '1476085737', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3296', '1', '1', '1476085854', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3297', '1', '1', '1476085863', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3298', '1', '1', '1476085869', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3299', '1', '1', '1476085873', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3300', '1', '1', '1476085874', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3301', '1', '1', '1476085954', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3302', '1', '1', '1476085956', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3303', '1', '1', '1476085986', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3304', '1', '1', '1476085997', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3305', '1', '1', '1476085999', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3306', '1', '1', '1476086009', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3307', '1', '1', '1476086018', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3308', '1', '1', '1476086029', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3309', '1', '1', '1476086062', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3310', '1', '1', '1476086098', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3311', '1', '1', '1476086112', 'Crm/SalesStrategy/index', 'CRM管理/营销策略配置/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3312', '1', '1', '1476086123', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3313', '1', '1', '1476086125', 'Crm/SalesStrategy/addPage', 'CRM管理/营销策略配置/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3314', '1', '1', '1476086169', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3315', '1', '1', '1476086177', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3316', '1', '1', '1476086183', 'Crm/SalesStrategy/index', 'CRM管理/营销策略配置/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3317', '1', '1', '1476086189', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3318', '1', '1', '1476086194', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3319', '1', '1', '1476086251', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3320', '1', '1', '1476086252', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3321', '1', '1', '1476086260', 'Crm/Sales/addPage', 'CRM管理/营销策略项管理/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3322', '1', '1', '1476086321', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3323', '1', '1', '1476086325', 'Crm/Sales/addPage', 'CRM管理/营销策略项管理/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3324', '1', '1', '1476086348', 'Crm/Sales/add', 'CRM管理/营销策略项管理/添加动作', '{\"name\":\"9.5\\u6298\",\"description\":\"9.5\\u6298\",\"type\":\"1\",\"value\":\"0.95\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3325', '1', '1', '1476086349', 'Crm/Sales/addPage', 'CRM管理/营销策略项管理/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3326', '1', '1', '1476086351', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3327', '1', '1', '1476086361', 'Crm/Sales/editPage', 'CRM管理/营销策略项管理/编辑页面', '{\"id\":\"6\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3328', '1', '1', '1476086372', 'Crm/Sales/edit', 'CRM管理/营销策略项管理/编辑动作', '{\"id\":\"6\",\"name\":\"9.5\\u6298\",\"description\":\"9.5\\u6298\",\"type\":\"1\",\"value\":\"9.5\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3329', '1', '1', '1476086373', 'Crm/Sales/editPage', 'CRM管理/营销策略项管理/编辑页面', '{\"id\":\"6\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3330', '1', '1', '1476086375', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3331', '1', '1', '1476086379', 'Crm/SalesStrategy/index', 'CRM管理/营销策略配置/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3332', '1', '1', '1476086393', 'Crm/SalesStrategy/addPage', 'CRM管理/营销策略配置/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3333', '1', '1', '1476086417', 'Crm/SalesStrategy/add', 'CRM管理/营销策略配置/添加动作', '{\"name\":\"\\u6253\\u6253\\u6253\",\"description\":\"\\u6253\\u6253\\u6253\",\"items\":[\"6\"]}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3334', '1', '1', '1476086418', 'Crm/SalesStrategy/addPage', 'CRM管理/营销策略配置/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3335', '1', '1', '1476086418', 'Crm/SalesStrategy/addPage', 'CRM管理/营销策略配置/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3336', '1', '1', '1476086420', 'Crm/SalesStrategy/index', 'CRM管理/营销策略配置/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3337', '1', '1', '1476086430', 'Crm/SalesStrategy/editPage', 'CRM管理/营销策略配置/编辑页面', '{\"id\":\"14\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3338', '1', '1', '1476086505', 'Crm/SalesStrategy/index', 'CRM管理/营销策略配置/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3339', '1', '1', '1476086545', 'Product/Saleconfig/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3340', '1', '1', '1476086659', 'Product/Saleconfig/index', '产品管理//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3341', '1', '1', '1476086669', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3342', '1', '1', '1476086670', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3343', '1', '1', '1476086670', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3344', '1', '1', '1476086700', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3345', '1', '1', '1476086700', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3346', '1', '1', '1476086701', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3347', '1', '1', '1476086756', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3348', '1', '1', '1476087419', 'Product/Product/unPublish', '产品管理/产品发布/产品下架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3349', '1', '1', '1476087420', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3350', '1', '1', '1476087421', 'Product/Product/publish', '产品管理/产品发布/产品上架', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3351', '1', '1', '1476087422', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3352', '1', '1', '1476087770', 'Trans/Order/search', '交易管理/订单中心/订单搜索', '{\"orderno\":\"DDasda93749850840504\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3353', '1', '1', '1476088006', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3354', '1', '1', '1476088173', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3355', '1', '1', '1476088274', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3356', '1', '1', '1476088615', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3357', '1', '1', '1476089160', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3358', '1', '1', '1476089187', 'Admin/Message/index', '用户中心/消息中心/消息列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3359', '1', '1', '1476089190', 'Admin/Message/index', '用户中心/消息中心/消息列表', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3360', '1', '1', '1476089193', 'Admin/Message/send', '用户中心/消息中心/发送消息', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3361', '1', '1', '1476089194', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3362', '1', '1', '1476089197', 'Admin/Message/index', '用户中心/消息中心/消息列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3363', '1', '1', '1476089220', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3364', '1', '1', '1476089351', 'Admin/Feedback/handle', '用户中心/意见反馈/处理意见反馈', '{\"request\":[\"5\",\"5\",\"3\",\"4\",\"1\"]}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3365', '1', '1', '1476089353', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3366', '1', '1', '1476089411', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3367', '1', '1', '1476089426', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3368', '1', '1', '1476089505', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3369', '1015', '2', '1476089522', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3370', '1015', '2', '1476089587', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3371', '1015', '2', '1476089596', 'AgentSysset/Domain/applydomain', '系统管理/域名管理/申请域名页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3372', '1015', '2', '1476089602', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3373', '1015', '2', '1476089880', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3374', '1015', '2', '1476089896', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3375', '1015', '2', '1476089899', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3376', '1015', '2', '1476089900', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3377', '1015', '2', '1476089967', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3378', '1015', '2', '1476089968', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3379', '1015', '2', '1476089970', 'AgentTrans/MyOrder/view', '交易管理/我的订单/我的订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3380', '1015', '2', '1476090384', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3381', '1015', '2', '1476090405', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3382', '1', '1', '1476090854', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3383', '1', '1', '1476090857', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3384', '1015', '2', '1476090895', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3385', '1015', '2', '1476092254', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3386', '1015', '2', '1476092257', 'AgentTrans/MyOrder/view', '交易管理/我的订单/我的订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3387', '1015', '2', '1476092260', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3388', '1015', '2', '1476092261', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3389', '1015', '2', '1476092316', 'Trans/Order/index', '//', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3390', '1015', '2', '1476092321', 'Trans/Order/index', '//', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3391', '1031', '2', '1476093139', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3392', '1031', '2', '1476093143', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3393', '1031', '2', '1476093163', 'AgentProduct/Market/index', '产品管理/市场/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3394', '1031', '2', '1476093202', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3395', '1015', '2', '1476152995', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3396', '1', '1', '1476153220', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3397', '1', '1', '1476153288', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3398', '1', '1', '1476153438', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3399', '1', '1', '1476153445', 'Sysset/Params/editparam', '系统管理/参数管理/编辑参数页面', '{\"id\":\"29\",\"name\":\"ddd\",\"value\":\"sss\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3400', '1', '1', '1476153451', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3401', '1', '1', '1476153454', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3402', '1', '1', '1476153620', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3403', '1', '1', '1476153648', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3404', '1', '1', '1476153680', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3405', '1015', '2', '1476154216', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3406', '1015', '2', '1476154228', 'AgentTrans/MyOrder/view', '交易管理/我的订单/我的订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3407', '1015', '2', '1476154247', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3408', '1015', '2', '1476154249', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3409', '1015', '2', '1476154256', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3410', '1', '1', '1476154819', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3411', '1', '1', '1476154825', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3412', '1', '1', '1476154833', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3413', '1', '1', '1476154872', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3414', '1', '1', '1476154874', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3415', '1', '1', '1476154875', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3416', '1', '1', '1476154877', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3417', '1', '1', '1476154883', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3418', '1', '1', '1476154889', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3419', '1015', '2', '1476155377', 'AgentAdmin/Review/editPage', '用户中心/资料审核/编辑资料', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3420', '1015', '2', '1476155512', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3421', '1', '1', '1476155694', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3422', '1', '1', '1476155738', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3423', '1', '1', '1476155741', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3424', '1', '1', '1476155742', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3425', '1', '1', '1476155743', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3426', '1', '1', '1476155747', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3427', '1', '1', '1476155761', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"48\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3428', '1', '1', '1476155771', 'News/Newscat/edit', '新闻管理/新闻栏目/保存编辑新闻栏目', '{\"id\":\"48\",\"name\":\"Fengneng\",\"pid\":\"0\",\"level\":\"1\",\"code\":\"yiceng\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3429', '1', '1', '1476155772', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3430', '1', '1', '1476155774', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"48\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3431', '1', '1', '1476155776', 'News/Newscat/edit', '新闻管理/新闻栏目/保存编辑新闻栏目', '{\"id\":\"48\",\"name\":\"Fengneng\",\"pid\":\"0\",\"level\":\"1\",\"code\":\"yiceng\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3432', '1', '1', '1476155777', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3433', '1', '1', '1476155812', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3434', '1', '1', '1476155816', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3435', '1', '1', '1476155837', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3436', '1', '1', '1476155870', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3437', '1', '1', '1476155875', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3438', '1031', '2', '1476155883', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3439', '1', '1', '1476155935', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3440', '1', '1', '1476155938', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3441', '1015', '2', '1476155948', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3442', '1015', '2', '1476155951', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3443', '1', '1', '1476155958', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3444', '1', '1', '1476155961', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3445', '1', '1', '1476155962', 'Sysset/Domain/disable', '系统管理/域名管理/申请禁止', '{\"id\":\"19\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3446', '1', '1', '1476155963', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3447', '1', '1', '1476155968', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3448', '1', '1', '1476155969', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3449', '1', '1', '1476155969', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3450', '1015', '2', '1476155971', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3451', '1015', '2', '1476155974', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3452', '1015', '2', '1476155981', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3453', '1031', '2', '1476156030', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3454', '1015', '2', '1476156112', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3455', '1', '1', '1476156118', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3456', '1', '1', '1476156121', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3457', '1015', '2', '1476156129', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3458', '1015', '2', '1476156132', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3459', '1015', '2', '1476156156', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3460', '1015', '2', '1476156169', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3461', '1015', '2', '1476156172', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3462', '1015', '2', '1476156217', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3463', '1015', '2', '1476156220', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3464', '1015', '2', '1476156227', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3465', '1015', '2', '1476156230', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3466', '1015', '2', '1476156231', 'AgentSysset/Domain/delete', '系统管理/域名管理/删除域名申请', '{\"id\":\"19\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3467', '1031', '2', '1476156238', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3468', '1031', '2', '1476156242', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3469', '1015', '2', '1476156330', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3470', '1015', '2', '1476156332', 'AgentSysset/Domain/delete', '系统管理/域名管理/删除域名申请', '{\"id\":\"19\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3471', '1015', '2', '1476156333', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3472', '1031', '2', '1476156384', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3473', '1015', '2', '1476156390', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3474', '1015', '2', '1476156391', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3475', '1015', '2', '1476156394', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3476', '1015', '2', '1476156429', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3477', '1015', '2', '1476156431', 'AgentSysset/Domain/applydomain', '系统管理/域名管理/申请域名页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3478', '1', '1', '1476156476', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3479', '1', '1', '1476156479', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3480', '1', '1', '1476156491', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3481', '1031', '2', '1476160450', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3482', '1031', '2', '1476160467', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3483', '1', '1', '1476164932', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3484', '1', '1', '1476164934', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3485', '1', '1', '1476164945', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3486', '1', '1', '1476164947', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3487', '1', '1', '1476165278', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3488', '1', '1', '1476165279', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3489', '1', '1', '1476165280', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3490', '1', '1', '1476165281', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3491', '1', '1', '1476165425', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3492', '1', '1', '1476165428', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3493', '1', '1', '1476165433', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3494', '1', '1', '1476165440', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3495', '1', '1', '1476165468', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3496', '1', '1', '1476165474', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3497', '1', '1', '1476165714', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3498', '1', '1', '1476165739', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3499', '1', '1', '1476165744', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3500', '1', '1', '1476165745', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3501', '1', '1', '1476165745', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3502', '1', '1', '1476165841', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3503', '1', '1', '1476165897', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3504', '1031', '2', '1476165911', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3505', '1', '1', '1476165936', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3506', '1', '1', '1476165941', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3507', '1', '1', '1476165943', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3508', '1031', '2', '1476165961', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3509', '1031', '2', '1476166103', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3510', '1', '1', '1476166141', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3511', '1', '1', '1476166158', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3512', '1', '1', '1476166160', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3513', '1', '1', '1476166161', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3514', '1', '1', '1476166169', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3515', '1', '1', '1476166169', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3516', '1', '1', '1476166171', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3517', '1', '1', '1476166181', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3518', '1', '1', '1476166205', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3519', '1', '1', '1476166211', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3520', '1', '1', '1476166247', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3521', '1', '1', '1476166251', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3522', '1', '1', '1476166255', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3523', '1', '1', '1476166259', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3524', '1', '1', '1476166322', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3525', '1', '1', '1476166324', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3526', '1', '1', '1476166374', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3527', '1', '1', '1476166419', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3528', '1', '1', '1476166421', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3529', '1', '1', '1476166462', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3530', '1', '1', '1476166468', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3531', '1', '1', '1476166475', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3532', '1', '1', '1476166478', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3533', '1', '1', '1476166482', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"23\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3534', '1', '1', '1476166488', 'Admin/User/edit', '用户中心/用户管理/修改用户', '{\"id\":\"23\",\"username\":\"bianenhui\",\"jobnumber\":\"109074002\",\"email\":\"1499845029@qq.com\",\"phone\":\"15755129785\",\"role\":[\"18\",\"19\"],\"expiredate\":\"10\\/11\\/2017\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3535', '1', '1', '1476166489', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3536', '1', '1', '1476166493', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"23\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3537', '1', '1', '1476166506', 'Admin/User/edit', '用户中心/用户管理/修改用户', '{\"id\":\"23\",\"username\":\"bianenhui\",\"jobnumber\":\"109074002\",\"email\":\"1499845029@qq.com\",\"phone\":\"15755129785\",\"role\":[\"18\",\"19\",\"20\",\"21\",\"22\",\"23\",\"24\",\"25\",\"26\",\"27\",\"28\"],\"expiredate\":\"10\\/12\\/2017\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3538', '1', '1', '1476166507', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3539', '1', '1', '1476166510', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"23\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3540', '23', '1', '1476166524', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3541', '23', '1', '1476166536', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3542', '1', '1', '1476166986', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3543', '1', '1', '1476167075', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3544', '1', '1', '1476167132', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3545', '1', '1', '1476167162', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3546', '1', '1', '1476167220', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3547', '1', '1', '1476167297', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3548', '23', '1', '1476167621', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3549', '1', '1', '1476167931', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3550', '1', '1', '1476167939', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3551', '1', '1', '1476167941', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3552', '1', '1', '1476167942', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3553', '1', '1', '1476167943', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3554', '1', '1', '1476168233', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3555', '1', '1', '1476168234', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3556', '1', '1', '1476168235', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3557', '1', '1', '1476168559', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3558', '1', '1', '1476168563', 'Product/Product/add', '产品管理/产品发布/添加产品动作', '{\"name\":\"\",\"catagroyida\":\"1\",\"catagroyidb\":\"1\",\"catagroyidc\":\"10\",\"tradingstructure\":\"\",\"productscale\":\"0.00\",\"productform\":\"\",\"publisher\":\"\",\"custodian\":\"\",\"issuesize\":\"0.00\",\"minimuminvestmentamount\":\"0.00\",\"increasingunit\":\"0.00\",\"producttermmonth\":\"0\",\"producttermday\":\"0\",\"contractquantity\":\"0\",\"establishmentscale\":\"0.00\",\"riskrating\":\"\",\"saleslevel\":\"1\",\"producttype\":\"1\",\"qualifiedinvestors\":\"1\",\"overseasinvestors\":\"1\",\"abletoredeem\":\"1\",\"abletobuy\":\"1\",\"closedperiodmonth\":\"\",\"closedperiodday\":\"\",\"ror\":\"0.00\",\"commissionratio\":\"0.00\",\"subscriptionfee\":\"0.00\",\"performancereward\":\"0.00\",\"managementexpense\":\"0.00\",\"redemptionfee\":\"0.00\",\"onlinedate\":\"\",\"establishmentday\":\"\",\"openday\":\"\",\"duedate\":\"\",\"terminationday\":\"\",\"distributionmethod\":\"\",\"tradingrivals\":\"\",\"investmenttargets\":\"\",\"assetguarantee\":\"\",\"establishedconditions\":\"\",\"note\":\"\",\"investmentteam\":\"\",\"investmentstrategy\":\"\",\"investmentprocess\":\"\",\"investmentperformance\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3559', '1', '1', '1476168568', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3560', '1', '1', '1476168574', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3561', '1', '1', '1476168579', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3562', '1', '1', '1476168585', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3563', '1', '1', '1476168586', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3564', '1', '1', '1476168587', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3565', '1', '1', '1476168592', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3566', '1', '1', '1476168593', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3567', '1031', '2', '1476169283', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3568', '1031', '2', '1476169295', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3569', '1', '1', '1476169484', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3570', '1', '1', '1476169493', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3571', '1', '1', '1476169495', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3572', '1', '1', '1476169529', 'Crm/Customer/userDetail', 'CRM管理/客户管理/查看客户详情', '{\"id\":\"1001\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3573', '1', '1', '1476169532', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3574', '1', '1', '1476169534', 'Crm/Customer/userDetail', 'CRM管理/客户管理/查看客户详情', '{\"id\":\"1003\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3575', '1', '1', '1476169536', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3576', '1', '1', '1476169541', 'Crm/Customer/userDetail', 'CRM管理/客户管理/查看客户详情', '{\"id\":\"1009\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3577', '1', '1', '1476169544', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3578', '1', '1', '1476169549', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3579', '1', '1', '1476169552', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3580', '1', '1', '1476169555', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3581', '1', '1', '1476169561', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"50\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3582', '1', '1', '1476169563', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3583', '1', '1', '1476169565', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3584', '1', '1', '1476169567', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"54\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3585', '1', '1', '1476169569', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3586', '1', '1', '1476169572', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3587', '1', '1', '1476169574', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3588', '1', '1', '1476169589', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3589', '1', '1', '1476169592', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3590', '1', '1', '1476169596', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3591', '1', '1', '1476169599', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"54\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3592', '1', '1', '1476169601', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3593', '1', '1', '1476169604', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"50\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3594', '1', '1', '1476169606', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3595', '1', '1', '1476169608', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3596', '1', '1', '1476169610', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3597', '1', '1', '1476169613', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3598', '1', '1', '1476169615', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"52\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3599', '1', '1', '1476169617', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3600', '1031', '2', '1476169657', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3601', '1031', '2', '1476169677', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3602', '1015', '2', '1476169691', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3603', '1015', '2', '1476169693', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3604', '1015', '2', '1476169696', 'AgentAdmin/Review/editPage', '用户中心/资料审核/编辑资料', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3605', '1015', '2', '1476170045', 'AgentSysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3606', '1015', '2', '1476170101', 'AgentSysset/Params/addparam', '系统管理/参数管理/参数信息添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3607', '1015', '2', '1476170109', 'AgentSysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3608', '1031', '2', '1476170128', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3609', '1031', '2', '1476170142', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3610', '1031', '2', '1476171352', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3611', '1031', '2', '1476171631', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3612', '1031', '2', '1476172408', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3613', '1031', '2', '1476172422', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3614', '23', '1', '1476172519', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3615', '23', '1', '1476172522', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3616', '23', '1', '1476172524', 'Admin/Role/addPage', '用户中心/角色管理/添加角色页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3617', '1031', '2', '1476173992', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3618', '1031', '2', '1476174051', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3619', '1031', '2', '1476175644', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3620', '1031', '2', '1476175699', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3621', '1031', '2', '1476176072', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3622', '1031', '2', '1476176101', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3623', '1031', '2', '1476176102', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3624', '1031', '2', '1476176115', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3625', '1031', '2', '1476176118', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3626', '1031', '2', '1476176732', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3627', '1031', '2', '1476176745', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3628', '1031', '2', '1476176748', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3629', '1031', '2', '1476176750', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3630', '1031', '2', '1476176756', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3631', '1031', '2', '1476176764', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3632', '1031', '2', '1476176768', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3633', '1031', '2', '1476176773', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3634', '1031', '2', '1476176775', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3635', '1031', '2', '1476176778', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3636', '1031', '2', '1476176797', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3637', '1031', '2', '1476176801', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3638', '1031', '2', '1476176803', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3639', '1031', '2', '1476176804', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3640', '1031', '2', '1476176807', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3641', '1031', '2', '1476176818', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3642', '1031', '2', '1476176821', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3643', '1', '1', '1476176826', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3644', '1', '1', '1476176827', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3645', '1', '1', '1476176828', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3646', '1031', '2', '1476176903', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3647', '1031', '2', '1476176971', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3648', '1031', '2', '1476176976', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3649', '1031', '2', '1476177034', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3650', '1031', '2', '1476177036', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3651', '1031', '2', '1476177040', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3652', '1031', '2', '1476177048', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3653', '1031', '2', '1476177051', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3654', '1031', '2', '1476177053', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3655', '1031', '2', '1476177102', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3656', '1031', '2', '1476177106', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3657', '1031', '2', '1476177107', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3658', '1031', '2', '1476177110', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3659', '1031', '2', '1476177111', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3660', '1031', '2', '1476177117', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3661', '1031', '2', '1476177118', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3662', '1031', '2', '1476177121', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3663', '1031', '2', '1476177122', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3664', '1031', '2', '1476177203', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3665', '1031', '2', '1476177307', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3666', '1031', '2', '1476177377', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3667', '1031', '2', '1476177562', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3668', '1031', '2', '1476177610', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3669', '1031', '2', '1476177639', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3670', '1031', '2', '1476177642', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3671', '1031', '2', '1476177660', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3672', '1031', '2', '1476177663', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3673', '1031', '2', '1476177666', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3674', '1031', '2', '1476177669', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3675', '1031', '2', '1476177685', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3676', '1031', '2', '1476177767', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3677', '1031', '2', '1476177799', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3678', '1031', '2', '1476177807', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3679', '1031', '2', '1476177830', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3680', '1031', '2', '1476177937', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3681', '1031', '2', '1476177956', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3682', '1031', '2', '1476177966', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3683', '1031', '2', '1476178025', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3684', '1031', '2', '1476178087', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3685', '1031', '2', '1476178117', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3686', '1031', '2', '1476178120', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3687', '1031', '2', '1476178124', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3688', '1031', '2', '1476178175', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3689', '1031', '2', '1476178177', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3690', '1031', '2', '1476178179', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3691', '1031', '2', '1476178181', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3692', '1031', '2', '1476178187', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3693', '1031', '2', '1476178188', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3694', '1031', '2', '1476178189', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3695', '1031', '2', '1476178256', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3696', '1031', '2', '1476178257', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3697', '1031', '2', '1476178275', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3698', '1031', '2', '1476178278', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3699', '1031', '2', '1476178279', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3700', '1031', '2', '1476178281', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3701', '1031', '2', '1476178282', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3702', '1031', '2', '1476178340', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3703', '1031', '2', '1476178341', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3704', '1031', '2', '1476178342', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3705', '1031', '2', '1476178343', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3706', '1031', '2', '1476178406', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3707', '1031', '2', '1476178409', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3708', '1031', '2', '1476178435', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3709', '1031', '2', '1476178436', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3710', '1031', '2', '1476178446', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3711', '1031', '2', '1476178523', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3712', '1031', '2', '1476178529', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3713', '1031', '2', '1476178612', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3714', '1031', '2', '1476178618', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3715', '1031', '2', '1476178638', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3716', '1031', '2', '1476178641', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3717', '1031', '2', '1476178660', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3718', '1031', '2', '1476178662', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3719', '1031', '2', '1476178663', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3720', '1031', '2', '1476178665', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3721', '1031', '2', '1476178671', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3722', '1031', '2', '1476178717', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3723', '1031', '2', '1476178718', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3724', '1031', '2', '1476178766', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3725', '1031', '2', '1476178767', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3726', '1031', '2', '1476178769', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3727', '1031', '2', '1476178770', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3728', '1031', '2', '1476178772', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3729', '1031', '2', '1476178775', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3730', '1031', '2', '1476178776', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3731', '1031', '2', '1476178797', 'AgentTrans/CustomerOrder/view', '交易管理/客户订单/客户订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3732', '1031', '2', '1476179132', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3733', '1031', '2', '1476179134', 'AgentTrans/CustomerOrder/view', '交易管理/客户订单/客户订单详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3734', '1031', '2', '1476179159', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3735', '1031', '2', '1476179161', 'AgentTrans/CustomerOrder/view', '交易管理/客户订单/客户订单详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3736', '1031', '2', '1476179317', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3737', '1031', '2', '1476179321', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3738', '1031', '2', '1476179324', 'AgentTrans/CustomerOrder/view', '交易管理/客户订单/客户订单详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3739', '1031', '2', '1476179328', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3740', '1031', '2', '1476179329', 'AgentTrans/CustomerOrder/view', '交易管理/客户订单/客户订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3741', '1031', '2', '1476179337', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3742', '1031', '2', '1476179343', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3743', '1031', '2', '1476179344', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3744', '1031', '2', '1476179353', 'AgentTrans/CustomerOrder/view', '交易管理/客户订单/客户订单详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3745', '1031', '2', '1476179356', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3746', '1031', '2', '1476179872', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索我的订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3747', '1031', '2', '1476179889', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3748', '1031', '2', '1476179895', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3749', '1031', '2', '1476179900', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3750', '1031', '2', '1476179903', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3751', '1031', '2', '1476179904', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3752', '1031', '2', '1476179906', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3753', '1031', '2', '1476179908', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3754', '1031', '2', '1476179910', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3755', '1031', '2', '1476179913', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3756', '1031', '2', '1476179916', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3757', '1031', '2', '1476179922', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3758', '1031', '2', '1476179923', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3759', '1031', '2', '1476179924', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3760', '1031', '2', '1476179933', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索我的订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3761', '1031', '2', '1476179940', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3762', '1031', '2', '1476179942', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3763', '1031', '2', '1476179948', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索我的订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3764', '1031', '2', '1476179957', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3765', '1031', '2', '1476180120', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3766', '1031', '2', '1476180132', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3767', '1031', '2', '1476180135', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3768', '1031', '2', '1476180137', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3769', '1031', '2', '1476180138', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3770', '1031', '2', '1476180139', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3771', '1031', '2', '1476180141', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3772', '1031', '2', '1476180142', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3773', '1031', '2', '1476180196', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3774', '1031', '2', '1476180199', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3775', '1031', '2', '1476180201', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3776', '1031', '2', '1476180202', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3777', '1031', '2', '1476180260', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3778', '1031', '2', '1476180326', 'AgentTrans/CustomerOrder/view', '交易管理/客户订单/客户订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3779', '1031', '2', '1476180426', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3780', '1031', '2', '1476180429', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3781', '1031', '2', '1476180472', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3782', '1031', '2', '1476180476', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3783', '1031', '2', '1476180480', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3784', '1031', '2', '1476180480', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3785', '1031', '2', '1476180573', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3786', '1031', '2', '1476180580', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/09\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3787', '1031', '2', '1476180580', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3788', '1031', '2', '1476180585', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/09\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3789', '1031', '2', '1476180585', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3790', '1031', '2', '1476180588', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3791', '1031', '2', '1476180588', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3792', '1031', '2', '1476180591', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3793', '1031', '2', '1476180597', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/09\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3794', '1031', '2', '1476180597', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3795', '1031', '2', '1476180602', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/09\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3796', '1031', '2', '1476180602', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3797', '1031', '2', '1476180633', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3798', '1031', '2', '1476180653', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3799', '1031', '2', '1476180653', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3800', '1031', '2', '1476180655', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3801', '1031', '2', '1476180655', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3802', '1031', '2', '1476180656', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3803', '1031', '2', '1476180656', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3804', '1031', '2', '1476180698', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3805', '1031', '2', '1476180703', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3806', '1031', '2', '1476180704', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3807', '1031', '2', '1476180709', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3808', '1031', '2', '1476180709', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3809', '1031', '2', '1476180719', 'AgentTrans/CustomerOrder/view', '交易管理/客户订单/客户订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3810', '1031', '2', '1476180725', 'AgentTrans/CustomerOrder/view', '交易管理/客户订单/客户订单详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3811', '1031', '2', '1476180760', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3812', '1031', '2', '1476180760', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3813', '1031', '2', '1476180761', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3814', '1031', '2', '1476180766', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索我的订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3815', '1031', '2', '1476180769', 'AgentTrans/MyOrder/search', '交易管理/我的订单/搜索我的订单', '{\"createtime\":\"10\\/09\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3816', '1031', '2', '1476180817', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3817', '1031', '2', '1476180821', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/09\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3818', '1031', '2', '1476180947', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3819', '1031', '2', '1476180950', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/09\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3820', '1031', '2', '1476181053', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3821', '1031', '2', '1476181056', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/09\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3822', '1031', '2', '1476181083', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3823', '1031', '2', '1476181085', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3824', '1031', '2', '1476181121', 'AgentTrans/MyOrder/index', '交易管理/我的订单/我的订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3825', '1031', '2', '1476181124', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3826', '1031', '2', '1476181128', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/09\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3827', '1031', '2', '1476181131', 'AgentTrans/CustomerOrder/search', '交易管理/客户订单/搜索客户订单', '{\"createtime\":\"10\\/10\\/2016\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3828', '1031', '2', '1476181137', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3829', '1031', '2', '1476181139', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3830', '1031', '2', '1476181141', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3831', '1031', '2', '1476181142', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3832', '1031', '2', '1476181144', 'AgentTrans/CustomerOrder/index', '交易管理/客户订单/客户订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3833', '1', '1', '1476235562', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3834', '1', '1', '1476235573', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3835', '1', '1', '1476236682', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3836', '1', '1', '1476237338', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3837', '1', '1', '1476237363', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3838', '1', '1', '1476237378', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3839', '1', '1', '1476237381', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3840', '1', '1', '1476237912', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3841', '1', '1', '1476238046', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3842', '1', '1', '1476238057', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3843', '1', '1', '1476238075', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3844', '1', '1', '1476238323', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3845', '1', '1', '1476238543', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3846', '1', '1', '1476238570', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3847', '1', '1', '1476238574', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3848', '1', '1', '1476238596', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3849', '1', '1', '1476238604', 'Admin/User/temporaryDisable', '用户中心/用户管理/临时禁用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3850', '1', '1', '1476238606', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3851', '1', '1', '1476238610', 'Admin/User/enable', '用户中心/用户管理/启用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3852', '1', '1', '1476238611', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3853', '1', '1', '1476238616', 'Admin/User/temporaryDisable', '用户中心/用户管理/临时禁用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3854', '1', '1', '1476238617', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3855', '1', '1', '1476238621', 'Admin/User/enable', '用户中心/用户管理/启用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3856', '1', '1', '1476238622', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3857', '1', '1', '1476238624', 'Admin/User/temporaryDisable', '用户中心/用户管理/临时禁用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3858', '1', '1', '1476238625', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3859', '1', '1', '1476238652', 'Admin/User/enable', '用户中心/用户管理/启用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3860', '1', '1', '1476238653', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3861', '1', '1', '1476238656', 'Admin/User/temporaryDisable', '用户中心/用户管理/临时禁用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3862', '1', '1', '1476238657', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3863', '1', '1', '1476238659', 'Admin/User/enable', '用户中心/用户管理/启用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3864', '1', '1', '1476238661', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3865', '1', '1', '1476238669', 'Admin/User/disable', '用户中心/用户管理/禁用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3866', '1', '1', '1476238671', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3867', '1', '1', '1476238673', 'Admin/User/enable', '用户中心/用户管理/启用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3868', '1', '1', '1476238674', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3869', '1', '1', '1476238676', 'Admin/User/disable', '用户中心/用户管理/禁用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3870', '1', '1', '1476238677', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3871', '1', '1', '1476238679', 'Admin/User/enable', '用户中心/用户管理/启用用户', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3872', '1', '1', '1476238680', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3873', '1', '1', '1476238684', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3874', '1', '1', '1476238691', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3875', '1', '1', '1476238702', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3876', '1', '1', '1476238705', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3877', '1', '1', '1476238719', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3878', '1', '1', '1476238730', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3879', '1', '1', '1476238734', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3880', '1', '1', '1476238737', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3881', '1', '1', '1476238779', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3882', '1', '1', '1476238783', 'Admin/Role/addPage', '用户中心/角色管理/添加角色页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3883', '1', '1', '1476238787', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3884', '1', '1', '1476238791', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3885', '1', '1', '1476238792', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3886', '1', '1', '1476238798', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3887', '1', '1', '1476238804', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3888', '1', '1', '1476238810', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3889', '1', '1', '1476238812', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3890', '1', '1', '1476238823', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3891', '1', '1', '1476238829', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3892', '1', '1', '1476238830', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3893', '1', '1', '1476238830', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3894', '1', '1', '1476238831', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"18\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3895', '1', '1', '1476238842', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3896', '1', '1', '1476238857', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3897', '1', '1', '1476238876', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"25\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3898', '1', '1', '1476238882', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3899', '1', '1', '1476238885', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"25\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3900', '1', '1', '1476238887', 'Admin/Access/allotNode', '用户中心/权限管理/分配角色权限', '{\"role_id\":\"25\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3901', '1', '1', '1476238888', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"25\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3902', '1', '1', '1476238892', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3903', '1', '1', '1476238894', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"26\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3904', '1', '1', '1476238898', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3905', '1', '1', '1476238901', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"27\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3906', '1', '1', '1476238905', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3907', '1', '1', '1476238909', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"20\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3908', '1', '1', '1476238974', 'Admin/Access/allotNode', '用户中心/权限管理/分配角色权限', '{\"role_id\":\"20\",\"access\":[\"217@3\",\"237@3\",\"176@3\",\"188@3\",\"13@2\",\"175@2\",\"243@1\"]}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3909', '1', '1', '1476238975', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3910', '1', '1', '1476238979', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"25\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3911', '1', '1', '1476238985', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3912', '1', '1', '1476238987', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"20\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3913', '1', '1', '1476239013', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3914', '1', '1', '1476239061', 'Admin/Access/allotNode', '用户中心/权限管理/分配角色权限', '{\"role_id\":\"20\",\"access\":[\"3@1\",\"216@2\",\"217@3\",\"235@2\",\"237@3\",\"5@1\",\"9@2\",\"176@3\",\"10@2\",\"188@3\",\"13@2\",\"175@2\",\"6@1\",\"218@2\",\"219@3\",\"7@1\",\"14@2\",\"25@3\",\"166@3\",\"15@2\",\"156@3\",\"16@2\",\"18@3\",\"19@3\",\"20@3\",\"23@3\",\"17@2\",\"152@3\",\"152@3\",\"154@3\",\"155@3\",\"215@3\",\"8@1\",\"144@2\",\"146@3\",\"147@3\",\"148@3\",\"149@3\",\"150@3\",\"151@3\",\"145@2\",\"241@3\",\"242@3\",\"3@1\",\"216@2\",\"217@3\",\"237@3\",\"243@1\",\"244@2\",\"245@3\",\"246@3\",\"247@3\",\"248@3\",\"249@3\",\"250@3\",\"251@2\",\"252@3\",\"253@3\",\"254@3\",\"255@3\",\"256@3\"]}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3915', '1', '1', '1476239062', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3916', '1', '1', '1476239068', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"25\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3917', '1', '1', '1476239078', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3918', '1', '1', '1476239083', 'Admin/Role/addPage', '用户中心/角色管理/添加角色页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3919', '1', '1', '1476239102', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3920', '1', '1', '1476239108', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"20\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3921', '1', '1', '1476239146', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3922', '1', '1', '1476239172', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3923', '1', '1', '1476239183', 'Admin/Access/allotNodePage', '用户中心/权限管理/分配角色权限页', '{\"id\":\"25\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3924', '1', '1', '1476239203', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3925', '1', '1', '1476239205', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3926', '1', '1', '1476239212', 'Admin/Message/addPage', '用户中心/消息中心/添加消息', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3927', '1', '1', '1476239236', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3928', '1', '1', '1476239245', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"9\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3929', '1', '1', '1476239249', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3930', '1', '1', '1476239251', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"8\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3931', '1', '1', '1476239254', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3932', '1', '1', '1476239258', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3933', '1', '1', '1476239262', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3934', '1', '1', '1476239264', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"9\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3935', '1', '1', '1476239273', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3936', '1', '1', '1476239285', 'Admin/Message/send', '用户中心/消息中心/发送消息', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3937', '1', '1', '1476239286', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3938', '1', '1', '1476239289', 'Admin/Message/send', '用户中心/消息中心/发送消息', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3939', '1', '1', '1476239290', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3940', '1', '1', '1476239294', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3941', '1', '1', '1476239296', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3942', '1', '1', '1476239298', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3943', '1', '1', '1476239298', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3944', '1', '1', '1476239299', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3945', '1', '1', '1476239345', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3946', '1', '1', '1476239397', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3947', '1', '1', '1476239405', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3948', '1', '1', '1476239407', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3949', '1', '1', '1476239418', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3950', '1', '1', '1476239437', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3951', '1', '1', '1476239438', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3952', '1', '1', '1476239941', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3953', '1', '1', '1476239944', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3954', '1', '1', '1476239953', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3955', '1', '1', '1476242889', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3956', '1', '1', '1476243000', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3957', '1', '1', '1476247393', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3958', '1', '1', '1476247476', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3959', '1', '1', '1476247930', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3960', '1', '1', '1476248273', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3961', '1', '1', '1476248509', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3962', '1', '1', '1476249464', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3963', '1', '1', '1476249467', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3964', '1', '1', '1476249468', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3965', '1', '1', '1476249469', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3966', '1', '1', '1476249470', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3967', '1', '1', '1476249759', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3968', '1', '1', '1476250816', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3969', '1', '1', '1476250826', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3970', '1', '1', '1476250828', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3971', '1', '1', '1476250845', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3972', '1', '1', '1476250851', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3973', '1', '1', '1476250853', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3974', '1', '1', '1476250854', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3975', '1', '1', '1476250855', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3976', '1', '1', '1476251063', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3977', '1', '1', '1476251068', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3978', '1', '1', '1476251069', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3979', '1', '1', '1476251072', 'Trans/Order/search', '交易管理/订单中心/订单搜索', '{\"orderno\":\"DDasda93749850840504\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3980', '1', '1', '1476251074', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3981', '1', '1', '1476251097', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3982', '1', '1', '1476251102', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3983', '1', '1', '1476251105', 'Admin/Message/addPage', '用户中心/消息中心/添加消息', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3984', '1', '1', '1476251111', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3985', '1', '1', '1476251113', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3986', '1', '1', '1476251185', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3987', '1', '1', '1476251185', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3988', '1', '1', '1476251186', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3989', '1', '1', '1476251200', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3990', '1', '1', '1476251202', 'Trans/Order/view', '交易管理/订单中心/订单详情', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('3991', '1', '1', '1476251237', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3992', '1', '1', '1476251242', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3993', '1', '1', '1476251244', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3994', '1', '1', '1476251244', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3995', '1', '1', '1476252118', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3996', '1', '1', '1476252119', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3997', '1', '1', '1476252201', 'News/Newscat/add', '新闻管理/新闻栏目/保存添加新闻栏目', '{\"name\":\"\\u5cf0\\u76df\\u65b0\\u95fb\",\"pid\":\"0\",\"level\":\"1\",\"code\":\"NEWS0000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('3998', '1', '1', '1476252202', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('3999', '1', '1', '1476252224', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4000', '1', '1', '1476252280', 'News/Newscat/add', '新闻管理/新闻栏目/保存添加新闻栏目', '{\"name\":\"\\u79c1\\u52df\\u52a8\\u6001\",\"pid\":\"62\",\"level\":\"2\",\"code\":\"NEWS1001\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4001', '1', '1', '1476252281', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4002', '1', '1', '1476252283', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4003', '1', '1', '1476252317', 'News/Newscat/add', '新闻管理/新闻栏目/保存添加新闻栏目', '{\"name\":\"\\u56fd\\u5bb6\\u653f\\u7b56\",\"pid\":\"62\",\"level\":\"2\",\"code\":\"NEWS2000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4004', '1', '1', '1476252318', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4005', '1', '1', '1476252320', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"64\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4006', '1', '1', '1476252323', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4007', '1', '1', '1476252327', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"63\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4008', '1', '1', '1476252330', 'News/Newscat/edit', '新闻管理/新闻栏目/保存编辑新闻栏目', '{\"id\":\"63\",\"name\":\"\\u79c1\\u52df\\u52a8\\u6001\",\"pid\":\"62\",\"level\":\"2\",\"code\":\"NEWS1000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4009', '1', '1', '1476252331', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4010', '1', '1', '1476252394', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4011', '1', '1', '1476252411', 'News/Newscat/add', '新闻管理/新闻栏目/保存添加新闻栏目', '{\"name\":\"\\u4e3b\\u6743\\u57fa\\u91d1\",\"pid\":\"62\",\"level\":\"2\",\"code\":\"NEWS3000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4012', '1', '1', '1476252412', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4013', '1', '1', '1476252424', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4014', '1', '1', '1476252483', 'News/Newscat/add', '新闻管理/新闻栏目/保存添加新闻栏目', '{\"name\":\"\\u5b8f\\u89c2\\u7ecf\\u6d4e\",\"pid\":\"62\",\"level\":\"2\",\"code\":\"NEWS4000\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4015', '1', '1', '1476252484', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4016', '1', '1', '1476252488', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4017', '1', '1', '1476252492', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4018', '1', '1', '1476252699', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4019', '1', '1', '1476252703', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4020', '1', '1', '1476252708', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4021', '1', '1', '1476252718', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4022', '1', '1', '1476252723', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4023', '1', '1', '1476252728', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4024', '1', '1', '1476252866', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4025', '1', '1', '1476252866', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4026', '1', '1', '1476252873', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4027', '1', '1', '1476252876', 'Crm/Customer/addPage', 'CRM管理/客户管理/添加客户页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4028', '1', '1', '1476252879', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4029', '1', '1', '1476252893', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4030', '1', '1', '1476252899', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4031', '1', '1', '1476252910', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4032', '1', '1', '1476252920', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4033', '1', '1', '1476252921', 'News/Newscon/addPage', '新闻管理/新闻内容/添加新闻', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4034', '1', '1', '1476253236', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4035', '1', '1', '1476253292', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4036', '1', '1', '1476253295', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4037', '1', '1', '1476253300', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4038', '1', '1', '1476253530', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4039', '1', '1', '1476253531', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4040', '1', '1', '1476253535', 'Crm/Sales/addPage', 'CRM管理/营销策略项管理/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4041', '1', '1', '1476253540', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4042', '1', '1', '1476253541', 'Crm/SalesStrategy/index', 'CRM管理/营销策略配置/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4043', '1', '1', '1476253542', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4044', '1', '1', '1476253556', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4045', '1', '1', '1476253559', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4046', '1', '1', '1476253561', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4047', '1', '1', '1476253565', 'News/Newscon/upload', '新闻管理/新闻内容/异步上传文件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('4048', '1', '1', '1476253574', 'News/Newscon/add', '新闻管理/新闻内容/添加新闻', '{\"title\":\"\\u653f\\u5e9c\\u6216\\u63a8\\u7a33\\u589e\\u957f\\u63aa\\u65bd\\u5bf9\\u51b2\\u5730\\u4ea7\\u964d\\u6e29\",\"categoryid\":\"66\",\"style\":\"1\",\"author\":\"\\u6881\\u9e3f\",\"source\":\"\\u767e\\u5ea6\",\"keyword\":\"\\u5730\\u4ea7\\uff0c \\u653f\\u5e9c\",\"description\":\"\\u6211\\u4eec\\u8ba4\\u4e3a\\uff0c\\u76ee\\u524d\\u8d22\\u653f\\u653f\\u7b56\\u9006\\u5468\\u671f\\u8c03\\u8282\\u7684\\u7a7a\\u95f4\\u6bd4\\u8d27\\u5e01\\u653f\\u7b56\\u66f4\\u5927\\uff0c\\u800c\\u51cf\\u8f7b\\u7a0e\\u8d1f\\u53ca\\u793e\\u4fdd\\u8d39\\u7387\\uff0c\\u589e\\u52a0\\u6d88\\u8d39\\u8865\\u8d34\\u7b49\\u653f\\u7b56\\u5728\\u63d0\\u632f\\u589e\\u957f\\u4e0e\\u7a33\\u5b9a\\u518d\\u901a\\u80c0\\u9884\\u671f\\u65b9\\u9762\\u53ef\\u80fd\\u6bd4\\u7ee7\\u7eed\\u52a0\\u5927\\u57fa\\u5efa\\u6295\\u8d44\\u6765\\u5f97\\u66f4\\u6709\\u6548\\u7387\\u3002\\r\\n\",\"thumb\":\"\\/Uploads\\/news\\/2016-10-12\\/57fdd77d6811b.jpg\",\"weight\":\"\",\"publishstatus\":\"on\",\"editorValue\":\"<p style=\\\"margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, \\u5fae\\u8f6f\\u96c5\\u9ed1, SimSun, \\u5b8b\\u4f53; white-space: normal; background-color: rgb(255, 255, 255);\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\u5341\\u4e00\\u9ec4\\u91d1\\u5468\\u671f\\u95f4\\uff0c20\\u4e2a\\u5927\\u4e2d\\u57ce\\u5e02\\u9646\\u7eed\\u51fa\\u53f0\\u4e86\\u623f\\u5730\\u4ea7\\u8c03\\u63a7\\u65b0\\u653f\\uff0c\\u5176\\u4e2d\\u5305\\u62ec\\u66f4\\u4e25\\u683c\\u7684\\u9650\\u8d2d\\u548c\\/\\u6216\\u9650\\u8d37\\u653f\\u7b56\\uff0c\\u53e6\\u67092\\u4e2a\\u57ce\\u5e02\\u91cd\\u7533\\u4e25\\u683c\\u6267\\u884c\\u4e4b\\u524d\\u53d1\\u5e03\\u7684\\u8c03\\u63a7\\u653f\\u7b56\\u3002\\u968f\\u7740\\u8c03\\u63a7\\u653f\\u7b56\\u51fa\\u53f0\\uff0c\\u9ec4\\u91d1\\u5468\\u5546\\u54c1\\u623f\\u6210\\u4ea4\\u91cf\\u5e94\\u58f0\\u800c\\u843d\\uff0830\\u57ce\\u5e02\\u623f\\u5730\\u4ea7\\u6210\\u4ea4\\u9762\\u79ef\\u8f83\\u524d\\u4e00\\u5468\\u51e0\\u8fd1\\u8170\\u65a9\\uff09\\u3002\\u5728\\u8fd9\\u7bc7\\u62a5\\u544a\\u4e2d\\uff0c\\u6211\\u4eec\\u5206\\u6790\\u4e86\\u5730\\u4ea7\\u964d\\u6e29\\u5bf9\\u5b8f\\u89c2\\u7ecf\\u6d4e\\u7684\\u5f71\\u54cd\\u2014\\u2014\\u5176\\u4e2d\\u5305\\u62ec\\u7ecf\\u6d4e\\u589e\\u957f\\u3001\\u518d\\u901a\\u80c0\\u3001\\u589e\\u957f\\u7ed3\\u6784\\u4ee5\\u53ca\\u8d27\\u5e01\\u4fe1\\u8d37\\u7b49\\u4e3b\\u8981\\u65b9\\u9762\\u3002<\\/p><p style=\\\"margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, \\u5fae\\u8f6f\\u96c5\\u9ed1, SimSun, \\u5b8b\\u4f53; white-space: normal; background-color: rgb(255, 255, 255);\\\">\\u3000\\u3000\\u672c\\u8f6e\\u623f\\u5730\\u4ea7\\u7e41\\u8363\\u5bf9GDP\\u589e\\u901f\\u7684\\u62c9\\u52a8\\u66f4\\u591a\\u4f53\\u73b0\\u5728\\u5730\\u4ea7\\u670d\\u52a1\\u4e1a\\u589e\\u901f\\u52a0\\u5feb\\uff08\\u5c24\\u5176\\u662f\\u540d\\u4e49\\u589e\\u901f\\uff09\\uff0c\\u800c\\u8fc4\\u4eca\\u4e3a\\u6b62\\u5bf9\\u5efa\\u7b51\\u4e1a\\u589e\\u901f\\u7684\\u63d0\\u632f\\u5219\\u8f83\\u4e3a\\u6e29\\u548c\\u3002\\u5177\\u4f53\\u6765\\u770b\\uff0c\\u5730\\u4ea7\\u670d\\u52a1\\u4e1a\\u7684\\u589e\\u957f\\u5bf92016\\u5e74\\u4e0a\\u534a\\u5e74\\u540d\\u4e49GDP\\u589e\\u901f\\u7684\\u8d21\\u732e\\u4e3a98\\u4e2a\\u57fa\\u70b9\\u3001\\u5bf9\\u540c\\u671f\\u5b9e\\u9645GDP\\u589e\\u901f\\u8d21\\u732e\\u4e3a27\\u4e2a\\u57fa\\u70b9\\uff082015\\u5e74\\u5730\\u4ea7\\u670d\\u52a1\\u4e1a\\u5bf9\\u540d\\u4e49\\u4e0e\\u5b9e\\u9645GDP\\u7684\\u8d21\\u732e\\u5206\\u522b\\u4e3a51\\u4e2a\\u57fa\\u70b9\\u548c12\\u4e2a\\u57fa\\u70b9\\uff09\\u3002\\u76f8\\u6bd4\\u4e4b\\u4e0b\\uff0c\\u5efa\\u7b51\\u4e1a\\u589e\\u957f\\u5bf92016\\u5e74\\u4e0a\\u534a\\u5e74\\u5b9e\\u9645\\u548c\\u540d\\u4e49GDP\\u589e\\u901f\\u7684\\u8d21\\u732e\\u4ec5\\u6bd42015\\u5e74\\u5206\\u522b\\u589e\\u52a0\\u4e863\\u4e2a\\u57fa\\u70b9\\u548c7\\u4e2a\\u57fa\\u70b9\\u3002<\\/p><p style=\\\"margin-top: 15px; margin-bottom: 15px; padding: 0px; font-size: 14px; line-height: 23px; color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, \\u5fae\\u8f6f\\u96c5\\u9ed1, SimSun, \\u5b8b\\u4f53; white-space: normal; background-color: rgb(255, 255, 255); text-align: center;\\\"><img src=\\\"\\/Uploads\\/ueditor\\/image\\/20161012\\/1476253096317890.jpg\\\" title=\\\"1476253096317890.jpg\\\" alt=\\\"Frpm-fxwrhpq6409328.jpg\\\"\\/><\\/p><p>&nbsp;&nbsp;<span style=\\\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, \\u5fae\\u8f6f\\u96c5\\u9ed1, SimSun, \\u5b8b\\u4f53; font-size: 14px; background-color: rgb(255, 255, 255);\\\">\\u53e6\\u4e00\\u65b9\\u9762\\uff0c\\u6b64\\u524d\\u5730\\u4ea7\\u5e02\\u573a\\u7684\\u706b\\u7206\\u53ef\\u80fd\\u5bf9\\u975e\\u4f4f\\u623f\\u76f8\\u5173\\u7684\\u53ef\\u9009\\u6d88\\u8d39\\u6709\\u6240\\u6291\\u5236\\u3002\\u623f\\u5730\\u4ea7\\u670d\\u52a1\\u4e1a\\u589e\\u901f\\uff08\\u5c24\\u5176\\u662f\\u540d\\u4e49\\u589e\\u901f\\uff09\\u5728\\u76f8\\u5f53\\u7a0b\\u5ea6\\u4e0a\\u53cd\\u6620\\u7684\\u662f\\u5c45\\u6c11\\u8d44\\u4ea7\\u5206\\u914d\\u548c\\u4f30\\u503c\\u7684\\u53d8\\u5316\\uff0c\\u800c\\u975e\\u5168\\u662f\\u751f\\u4ea7\\u5e26\\u6765\\u7684\\u65b0\\u589e\\u4ea7\\u503c\\u3002\\u8fd9\\u4e00\\u70b9\\u5728\\u672c\\u8d28\\u4e0a\\u4e0e\\u53bb\\u5e74\\u80a1\\u5e02\\u7e41\\u8363\\u5bf9\\u91d1\\u878d\\u4e1a\\u589e\\u957f\\u7684\\u62c9\\u52a8\\u7c7b\\u4f3c\\u3002<\\/span><\\/p><p><span style=\\\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, \\u5fae\\u8f6f\\u96c5\\u9ed1, SimSun, \\u5b8b\\u4f53; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><br\\/><\\/span><\\/p><p style=\\\"text-align:center\\\"><span style=\\\"color: rgb(51, 51, 51); font-family: &quot;Microsoft YaHei&quot;, \\u5fae\\u8f6f\\u96c5\\u9ed1, SimSun, \\u5b8b\\u4f53; font-size: 14px; background-color: rgb(255, 255, 255);\\\"><img src=\\\"\\/Uploads\\/ueditor\\/image\\/20161012\\/1476253186263379.jpg\\\" title=\\\"1476253186263379.jpg\\\" alt=\\\"QRWb-fxwrhpn9752192.jpg\\\"\\/><\\/span><\\/p><p><br\\/><\\/p>\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4049', '1', '1', '1476253576', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4050', '1', '1', '1476253591', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4051', '1', '1', '1476253604', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4052', '1', '1', '1476253611', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4053', '1', '1', '1476253612', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4054', '1', '1', '1476253614', 'News/Newscon/addPage', '新闻管理/新闻内容/添加新闻页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4055', '1', '1', '1476253617', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4056', '1', '1', '1476253636', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4057', '1', '1', '1476253669', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4058', '1', '1', '1476253674', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4059', '1', '1', '1476253703', 'News/Newscon/add', '新闻管理/新闻内容/添加新闻', '{\"title\":\"\\u632a\\u5927\\u89c4\\u6a21\\u52a8\\u7528\\u4e3b\\u6743\\u8d22\\u5bcc\\u57fa\\u91d1\\u5f25\\u8865\\u8d22\\u653f\\u9884\\u7b97\\u7f3a\\u53e3\",\"categoryid\":\"65\",\"style\":\"1\",\"author\":\"\\u5546\\u52a1\\u90e8\",\"source\":\"\\u767e\\u5ea6\",\"keyword\":\"\\u4e3b\\u6743\\u57fa\\u91d1\\uff0c\\u632a\\u5a01\",\"description\":\"\\u632a\\u5a01\\u653f\\u5e9c10\\u67087\\u65e5\\u516c\\u5e032017\\u5e74\\u8d22\\u653f\\u9884\\u7b97\\u663e\\u793a\\uff0c\\u653f\\u5e9c\\u5c06\\u4e3b\\u6743\\u8d22\\u5bcc\\u57fa\\u91d1\\u652f\\u51fa\\u989d\\u6bd4\\u53bb\\u5e74\\u589e\\u52a010%\\uff0c\\u8fbe2256\\u4ebf\\u632a\\u5a01\\u514b\\u6717\\uff08280\\u4ebf\\u7f8e\\u5143\\uff09\\uff0c\\u7ea6\\u76f8\\u5f53\\u4e8e\\u57fa\\u91d1\\u603b\\u989d8900\\u4ebf\\u7f8e\\u5143\\u7684\\u7ea63%\\u3002\\u8fd9\\u7b14\\u94b1\\u5c06\\u7528\\u6765\\u5f25\\u8865\\u632a\\u5a01\\u7ea6\\u5360GDP 8%\\u7684\\u9884\\u7b97\\u7f3a\\u53e3\",\"thumb\":\"\",\"weight\":\"\",\"publishstatus\":\"on\",\"editorValue\":\"<p style=\\\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\\\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\\u632a\\u5a01\\u653f\\u5e9c10\\u67087\\u65e5\\u516c\\u5e032017\\u5e74\\u8d22\\u653f\\u9884\\u7b97\\u663e\\u793a\\uff0c\\u653f\\u5e9c\\u5c06\\u4e3b\\u6743\\u8d22\\u5bcc\\u57fa\\u91d1\\u652f\\u51fa\\u989d\\u6bd4\\u53bb\\u5e74\\u589e\\u52a010%\\uff0c\\u8fbe2256\\u4ebf\\u632a\\u5a01\\u514b\\u6717\\uff08280\\u4ebf\\u7f8e\\u5143\\uff09\\uff0c\\u7ea6\\u76f8\\u5f53\\u4e8e\\u57fa\\u91d1\\u603b\\u989d8900\\u4ebf\\u7f8e\\u5143\\u7684\\u7ea63%\\u3002\\u8fd9\\u7b14\\u94b1\\u5c06\\u7528\\u6765\\u5f25\\u8865\\u632a\\u5a01\\u7ea6\\u5360GDP 8%\\u7684\\u9884\\u7b97\\u7f3a\\u53e3\\u3002<\\/p><p style=\\\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\\\">\\u3000\\u3000 2016\\u5e74\\u7b2c\\u4e00\\u5b63\\u5ea6\\u653f\\u5e9c\\u5df2\\u4ece\\u57fa\\u91d1\\u4e2d\\u63d0\\u6b3e110\\u4ebf\\u7f8e\\u5143\\u3002\\u8fc7\\u53bb\\uff0c\\u632a\\u5a01\\u8bae\\u4f1a\\u660e\\u786e\\u89c4\\u5b9a\\u632a\\u5a01\\u8d22\\u653f\\u6bcf\\u5e74\\u63d0\\u53d6\\u4e0d\\u8d85\\u8fc7\\u8be5\\u57fa\\u91d1\\u8d44\\u4ea7\\u76844%\\uff0c\\u8fd9\\u662f\\u57fa\\u4e8e\\u4e3b\\u6743\\u8d22\\u5bcc\\u57fa\\u91d1\\u7684\\u5e73\\u5747\\u6536\\u76ca\\u7387\\u57284%\\u7684\\u9884\\u671f\\u3002\\u76ee\\u524d\\uff0c\\u8be5\\u57fa\\u91d1\\u7684\\u7ecf\\u7406\\u4eec\\u5df2\\u7ecf\\u8b66\\u544a\\u79f0\\uff0c\\u8d8a\\u6765\\u8d8a\\u96be\\u8fbe\\u52304%\\u7684\\u5b9e\\u9645\\u6536\\u76ca\\u7387\\u76ee\\u6807\\uff0c\\u8fc7\\u53bb\\u5341\\u5e74\\u7ea6\\u4e3a3.44%\\u3002<\\/p><p style=\\\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\\\">\\u3000\\u3000 \\u632a\\u5a01GDP\\u4e25\\u91cd\\u4f9d\\u8d56\\u77f3\\u6cb9\\u4ef7\\u683c\\uff0c\\u6240\\u4ee5\\u77f3\\u6cb9\\u4ef7\\u683c\\u4efb\\u4f55\\u8fdb\\u4e00\\u6b65\\u4e0b\\u8dcc\\u90fd\\u5c06\\u52a0\\u5927\\u632a\\u5a01\\u7684\\u9884\\u7b97\\u8d64\\u5b57\\uff0c\\u4ece\\u800c\\u9700\\u8981\\u4ece\\u5176\\u4e3b\\u6743\\u57fa\\u91d1\\u4e2d\\u63d0\\u53d6\\u66f4\\u591a\\u7684\\u94b1\\u3002\\u653f\\u5e9c\\u9884\\u8ba1\\u660e\\u5e74\\u539f\\u6cb9\\u53ca\\u5929\\u7136\\u6c14\\u7684\\u4ea7\\u91cf\\u5c06\\u4e0b\\u964d\\uff0c\\u9884\\u4f302017\\u5e74\\u7684\\u7ecf\\u6d4e\\u589e\\u957f\\u7387\\u5c06\\u7531\\u4eca\\u5e74\\u76841%\\u63d0\\u9ad8\\u52301.7%\\uff0c2018\\u5e74\\u5931\\u4e1a\\u7387\\u5c06\\u7531\\u4eca\\u5e74\\u76844.7%\\u964d\\u52304.3%\\uff1b\\u4f46\\u662f2017\\u5e74\\u6cb9\\u6c14\\u4e1a\\u6295\\u8d44\\u5c06\\u51cf\\u5c1110%\\uff0c2018\\u5e74\\u9884\\u8ba1\\u5c06\\u518d\\u51cf\\u5c116.8%\\u3002\\u653f\\u5e9c\\u5c06\\u51cf\\u7a0e65\\u4ebf\\u514b\\u6717\\uff0c\\u5e76\\u964d\\u4f4e\\u4f01\\u4e1a\\u7a0e\\u7387\\uff1b\\u53e6\\u5916\\u5c06\\u652f\\u51fa40\\u4ebf\\u514b\\u6717\\u4ee5\\u652f\\u6301\\u5c31\\u4e1a\\u3002<\\/p><p style=\\\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\\\">\\u3000\\u3000\\u632a\\u5a01\\u8d22\\u653f\\u5927\\u81e3\\u5ef6\\u68ee\\uff08Jensen\\uff09\\u8ba4\\u4e3a\\uff0c\\u76ee\\u524d\\u632a\\u5a01\\u53d7\\u523030\\u5e74\\u6765\\u6700\\u4e25\\u91cd\\u7684\\u77f3\\u6cb9\\u51b2\\u51fb\\u5f71\\u54cd\\uff0c\\u5904\\u4e8e\\u7279\\u6b8a\\u65f6\\u671f\\u5fc5\\u987b\\u5b9e\\u65bd\\u6269\\u5f20\\u6027\\u8d22\\u653f\\u653f\\u7b56\\u3002<\\/p><p style=\\\"margin-top: 15px; margin-bottom: 15px; padding: 0px; line-height: 2em; font-family: &quot;Microsoft YaHei&quot;, u5FAEu8F6Fu96C5u9ED1, Arial, SimSun, u5B8Bu4F53; white-space: normal;\\\">\\u3000\\u3000\\uff08\\u9a7b\\u632a\\u5a01\\u4f7f\\u9986\\u7ecf\\u5546\\u5904\\uff09<\\/p><p><br\\/><\\/p>\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4060', '1', '1', '1476253705', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4061', '1', '1', '1476253723', 'News/Newscon/addPage', '新闻管理/新闻内容/添加新闻页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4062', '1', '1', '1476253807', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4063', '1', '1', '1476253840', 'News/Newscon/add', '新闻管理/新闻内容/添加新闻', '{\"title\":\"\\u5e7f\\u4e1c\\u653f\\u5e9c\\u6295\\u8d44\\u89c4\\u6a21\\u6700\\u5927\\u7684\\u653f\\u7b56\\u6027\\u57fa\\u91d1\\u6210\\u7acb\",\"categoryid\":\"64\",\"style\":\"1\",\"author\":\"\\u6731\\u6587\\u5f6c\",\"source\":\"\\u767e\\u5ea6\",\"keyword\":\"\\u5e7f\\u4e1c\\u653f\\u5e9c\\uff0c \\u653f\\u7b56\\u6027\\u57fa\\u91d1\",\"description\":\"\\u5728\\u7b2c\\u4e8c\\u5c4a\\u73e0\\u6c5f\\u897f\\u5cb8\\u5148\\u8fdb\\u88c5\\u5907\\u5236\\u9020\\u4e1a\\u6295\\u8d44\\u8d38\\u6613\\u6d3d\\u8c08\\u4f1a\\u4e0a\\uff0c\\u7ca4\\u8d22\\u6295\\u8d44\\u5206\\u522b\\u4e0e\\u73e0\\u6d77\\u3001\\u4f5b\\u5c71\\u3001\\u6c5f\\u95e8\\u53ca\\u987a\\u5fb7\\u5b8c\\u6210\\u4e86\\u56db\\u53ea\\u533a\\u57df\\u5b50\\u57fa\\u91d1\\u7684\\u7b7e\\u7ea6\\uff0c\\u5e76\\u4e0e\\u5e7f\\u65b0\\u63a7\\u80a1\\u96c6\\u56e2\\u6709\\u9650\\u516c\\u53f8\\u5b8c\\u6210\\u4e86\\u73e0\\u897f\\u57fa\\u91d1\\u9996\\u6279\\u6295\\u8d44\\u9879\\u76ee\\u4ee3\\u8868\",\"thumb\":\"\",\"weight\":\"\",\"publishstatus\":\"on\",\"editorValue\":\"<p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: \\u5b8b\\u4f53, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\\\">&nbsp;&nbsp;\\u4e2d\\u56fd\\u8bc1\\u5238\\u7f51\\u8baf\\uff08\\u8bb0\\u8005 \\u6731\\u6587\\u5f6c\\uff099\\u670829\\u65e5\\uff0c\\u5728\\u7b2c\\u4e8c\\u5c4a\\u73e0\\u6c5f\\u897f\\u5cb8\\u5148\\u8fdb\\u88c5\\u5907\\u5236\\u9020\\u4e1a\\u6295\\u8d44\\u8d38\\u6613\\u6d3d\\u8c08\\u4f1a\\u4e0a\\uff0c\\u7ca4\\u8d22\\u6295\\u8d44\\u5206\\u522b\\u4e0e\\u73e0\\u6d77\\u3001\\u4f5b\\u5c71\\u3001\\u6c5f\\u95e8\\u53ca\\u987a\\u5fb7\\u5b8c\\u6210\\u4e86\\u56db\\u53ea\\u533a\\u57df\\u5b50\\u57fa\\u91d1\\u7684\\u7b7e\\u7ea6\\uff0c\\u5e76\\u4e0e\\u5e7f\\u65b0\\u63a7\\u80a1\\u96c6\\u56e2\\u6709\\u9650\\u516c\\u53f8\\u5b8c\\u6210\\u4e86\\u73e0\\u897f\\u57fa\\u91d1\\u9996\\u6279\\u6295\\u8d44\\u9879\\u76ee\\u4ee3\\u8868\\u2014\\u2014\\u5e7f\\u65b0\\u6d77\\u5de5\\u9879\\u76ee\\u7684\\u7b7e\\u7ea6\\u3002\\u8fd9\\u6807\\u5fd7\\u7740\\u7ca4\\u8d22\\u53d7\\u6258\\u7ba1\\u7406\\u7684\\u73e0\\u6c5f\\u897f\\u5cb8\\u5148\\u8fdb\\u88c5\\u5907\\u5236\\u9020\\u4ea7\\u4e1a\\u53d1\\u5c55\\u57fa\\u91d1\\uff08\\u7b80\\u79f0\\u201c\\u73e0\\u897f\\u57fa\\u91d1\\u201d\\uff09\\u53ca\\u91d1\\u878d\\u5408\\u4f5c\\u5b50\\u57fa\\u91d1\\u2014\\u2014\\u5e7f\\u4e1c\\u7ca4\\u5efa\\u73e0\\u6c5f\\u897f\\u5cb8\\u5148\\u8fdb\\u88c5\\u5907\\u5236\\u9020\\u4ea7\\u4e1a\\u53d1\\u5c55\\u57fa\\u91d1\\u6b63\\u5f0f\\u53d1\\u5e03\\u6210\\u7acb\\u3002<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: \\u5b8b\\u4f53, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\\\">\\u3000\\u3000\\u636e\\u4e86\\u89e3\\uff0c\\u73e0\\u897f\\u57fa\\u91d1\\u662f\\u8fc4\\u4eca\\u4e3a\\u6b62\\u5e7f\\u4e1c\\u7701\\u653f\\u5e9c\\u6295\\u8d44\\u89c4\\u6a21\\u6700\\u5927\\u7684\\u4e00\\u53ea\\u653f\\u7b56\\u6027\\u57fa\\u91d1\\uff0c\\u603b\\u89c4\\u6a21\\u8fbe500\\u4ebf\\u5143\\u3002\\u8be5\\u57fa\\u91d1\\u7ba1\\u7406\\u65b9\\u2014\\u2014\\u7ca4\\u8d22\\u63a7\\u80a1\\u65d7\\u4e0b\\u7684\\u5e7f\\u4e1c\\u7ca4\\u8d22\\u57fa\\u91d1\\u7ba1\\u7406\\u6709\\u9650\\u516c\\u53f8\\uff08\\u4ee5\\u4e0b\\u7b80\\u79f0\\u201c\\u7ca4\\u8d22\\u57fa\\u91d1\\u201d\\uff09\\u8868\\u793a\\uff0c\\u6309\\u7167\\u201c\\u6210\\u719f\\u4e00\\u6279\\u3001\\u8bbe\\u7acb\\u4e00\\u6279\\u3001\\u5206\\u6279\\u63a8\\u8fdb\\u201d\\u7684\\u539f\\u5219\\uff0c\\u5c06\\u4ee5\\u70b9\\u5e26\\u9762\\u5168\\u9762\\u63a8\\u52a8\\u73e0\\u6c5f\\u897f\\u5cb8\\u201c\\u516d\\u5e02\\u4e00\\u533a\\u201d\\u548c\\u97f6\\u5173\\u5e02\\u7ec4\\u5efa\\u8d77\\u533a\\u57df\\u5b50\\u57fa\\u91d1\\u3002\\u622a\\u81f3\\u76ee\\u524d\\uff0c\\u73e0\\u897f\\u57fa\\u91d1\\u5df2\\u5bf9\\u63a5\\u6216\\u5c3d\\u8c03\\u7684\\u9879\\u76ee\\u4e5f\\u8fbe\\u5230\\u4e8615\\u4e2a\\u3002<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: \\u5b8b\\u4f53, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\\\">\\u3000\\u3000\\u636e\\u4ecb\\u7ecd\\uff0c\\u73e0\\u897f\\u57fa\\u91d1\\u91c7\\u7528\\u201c1+3\\u201d\\u7684\\u6bcd\\u5b50\\u57fa\\u91d1\\u67b6\\u6784\\uff0c\\u6bcd\\u57fa\\u91d1\\u7531\\u7ca4\\u8d22\\u63a7\\u80a1\\u4e0e\\u7ca4\\u8d22\\u57fa\\u91d1\\u5171\\u540c\\u53d1\\u8d77\\u8bbe\\u7acb\\uff0c\\u89c4\\u6a2151\\u4ebf\\u5143\\u3002\\u6bcd\\u57fa\\u91d1\\u5c06\\u518d\\u7ec4\\u5efa\\u8d77\\u4e0e\\u653f\\u5e9c\\u5408\\u4f5c\\u7684\\u533a\\u57df\\u5b50\\u57fa\\u91d1\\u3001\\u4e0e\\u91d1\\u878d\\u8d44\\u672c\\u5408\\u4f5c\\u7684\\u91d1\\u878d\\u5408\\u4f5c\\u5b50\\u57fa\\u91d1\\uff0c\\u53ca\\u4e0e\\u521b\\u6295\\u673a\\u6784\\u5408\\u4f5c\\u7684\\u521b\\u6295\\u5b50\\u57fa\\u91d1\\uff0c\\u8fdb\\u884c\\u5c42\\u5c42\\u653e\\u5927\\u3002\\u6309\\u5e7f\\u4e1c\\u7701\\u59d4\\u7701\\u653f\\u5e9c\\u7684\\u8981\\u6c42\\uff0c\\u8981\\u5b9e\\u73b010\\u500d\\u4ee5\\u4e0a\\u7684\\u6760\\u6746\\u64ac\\u52a8\\u3002<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: \\u5b8b\\u4f53, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\\\">\\u3000\\u3000\\u4ee5\\u201c\\u6c5f\\u95e8\\u5e02\\u5148\\u8fdb\\u5236\\u9020\\u4ea7\\u4e1a\\u53d1\\u5c55\\u57fa\\u91d1\\u201d\\u4e3a\\u4f8b\\uff0c\\u8be5\\u57fa\\u91d1\\u65e2\\u662f\\u73e0\\u897f\\u57fa\\u91d1\\u6210\\u7acb\\u7684\\u9996\\u53ea\\u533a\\u57df\\u5b50\\u57fa\\u91d1\\uff0c\\u53c8\\u662f\\u6c5f\\u95e8\\u5e02\\u653f\\u5e9c\\u6295\\u8d44\\u8bbe\\u7acb\\u7684\\u5148\\u8fdb\\u5236\\u9020\\u4ea7\\u4e1a\\u7684\\u6bcd\\u57fa\\u91d1\\uff0c\\u7531\\u73e0\\u897f\\u6bcd\\u57fa\\u91d1\\u3001\\u6c5f\\u95e8\\u5e02\\u8d22\\u653f\\u5171\\u540c\\u51fa\\u8d44\\u7ec4\\u5efa\\uff0c\\u901a\\u8fc7\\u8bbe\\u7acb\\u5b50\\u57fa\\u91d1\\u5b9e\\u73b0\\u4e8640\\u4ebf\\u5143\\u7684\\u603b\\u89c4\\u6a21\\u3002\\u8be5\\u57fa\\u91d1\\u91c7\\u53d6\\u53ccGP\\u7ba1\\u7406\\u6a21\\u5f0f\\uff0c\\u7531\\u6c5f\\u95e8\\u5e02\\u878d\\u76db\\u6295\\u8d44\\u6709\\u9650\\u516c\\u53f8\\u548c\\u7ca4\\u8d22\\u57fa\\u91d1\\u5171\\u540c\\u8fd0\\u8425\\uff0c\\u56f4\\u7ed5\\u6c5f\\u95e8\\u5e02\\u91cd\\u70b9\\u4ea7\\u4e1a\\u5e03\\u5c40\\uff0c\\u4ee5\\u914d\\u5408\\u653f\\u5e9c\\u62db\\u5546\\u5f15\\u8d44\\u548c\\u505a\\u5927\\u505a\\u5f3a\\u5f53\\u5730\\u9aa8\\u5e72\\u4f01\\u4e1a\\u4e3a\\u4e3b\\u7ebf\\uff0c\\u96c6\\u4e2d\\u6295\\u8d44\\u8f68\\u9053\\u4ea4\\u901a\\u88c5\\u5907\\u5236\\u9020\\u3001\\u6c7d\\u8f66\\u53ca\\u96f6\\u90e8\\u4ef6\\u5236\\u9020\\u3001\\u8239\\u8236\\u548c\\u7279\\u79cd\\u8239\\u8236\\u4fee\\u9020\\u3001\\u6d77\\u6d0b\\u5de5\\u7a0b\\u88c5\\u5907\\u3001\\u6e05\\u6d01\\u80fd\\u6e90\\u88c5\\u5907\\u3001\\u667a\\u80fd\\u5236\\u9020\\u88c5\\u5907\\u3001\\u8282\\u80fd\\u73af\\u4fdd\\u88c5\\u5907\\u3001\\u536b\\u661f\\u5e94\\u7528\\u7b49\\u6218\\u7565\\u6027\\u65b0\\u5174\\u4ea7\\u4e1a\\u548c\\u9ad8\\u65b0\\u6280\\u672f\\u6539\\u9020\\u63d0\\u5347\\u4f20\\u7edf\\u4ea7\\u4e1a\\u9886\\u57df\\u3002<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: \\u5b8b\\u4f53, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\\\">\\u3000\\u3000\\u7b7e\\u7ea6\\u9879\\u76ee\\u65b9\\u9762\\uff0c\\u9664\\u4e86\\u5f53\\u5929\\u5b8c\\u6210\\u7b7e\\u7ea6\\u7684\\u5e7f\\u65b0\\u6d77\\u4e8b\\u91cd\\u5de5\\u9879\\u76ee\\u5916\\uff0c\\u8bb0\\u8005\\u8fd8\\u4e86\\u89e3\\u5230\\uff0c\\u6c88\\u9633\\u673a\\u5e8a\\u667a\\u80fd\\u4e91\\u5236\\u9020\\u9879\\u76ee\\u4e0e\\u548c\\u4f73\\u533b\\u7597\\u9879\\u76ee\\u7b49\\u4f18\\u8d28\\u9879\\u76ee\\u4e5f\\u5747\\u5df2\\u7b26\\u5408\\u7b7e\\u7ea6\\u6761\\u4ef6\\uff0c\\u8fd9\\u4e9b\\u9879\\u76ee\\u7684\\u6210\\u719f\\u6807\\u5fd7\\u7740\\u73e0\\u897f\\u57fa\\u91d1\\u6295\\u653e\\u5de5\\u4f5c\\u7684\\u5207\\u5b9e\\u843d\\u5730\\u3002<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: \\u5b8b\\u4f53, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\\\">\\u3000\\u3000\\u201c\\u6211\\u4eec\\u76ee\\u524d\\u5df2\\u5bf9\\u63a5\\u6216\\u5c3d\\u8c03\\u4e86\\u5e7f\\u65b0\\u6d77\\u5de5\\u3001\\u5e7f\\u9752\\u79d1\\u6280\\u3001\\u660e\\u9633\\u98ce\\u7535\\u3001\\u548c\\u4f73\\u533b\\u7597\\u3001\\u5357\\u98ce\\u80a1\\u4efd\\u3001\\u98ce\\u534e\\u9ad8\\u79d1\\u3001\\u5e7f\\u4e1c\\u9e3f\\u56fe\\u3001\\u738b\\u6c0f\\u822a\\u7a7a\\u3001\\u534e\\u96a7\\u516c\\u53f8\\u7b4915\\u4e2a\\u9879\\u76ee\\uff0c\\u540c\\u65f6\\u8fd8\\u5728\\u6d3d\\u8c08\\u4e0e\\u591a\\u5bb6\\u516c\\u53f8\\u8bbe\\u7acb\\u4ea7\\u4e1a\\u57fa\\u91d1\\u6216\\u5e76\\u8d2d\\u57fa\\u91d1\\u3002\\u201d\\u7ca4\\u8d22\\u57fa\\u91d1\\u65b9\\u9762\\u8868\\u793a\\u5c06\\u9075\\u5faa\\u201c\\u50a8\\u5907\\u4e00\\u6279\\u3001\\u5c3d\\u8c03\\u4e00\\u6279\\u3001\\u8c08\\u5224\\u4e00\\u6279\\u3001\\u843d\\u5730\\u4e00\\u6279\\u201d\\u7684\\u539f\\u5219\\u5206\\u6279\\u63a8\\u8fdb\\u9879\\u76ee\\u6295\\u8d44\\u843d\\u5730\\uff0c\\u52a0\\u5feb\\u4e0e\\u843d\\u6237\\u4f01\\u4e1a\\u5546\\u5b9a\\u878d\\u8d44\\u65b9\\u6848\\uff0c\\u4e89\\u53d6\\u5e74\\u5185\\u8fdb\\u884c\\u6295\\u8d44\\u3002<\\/p><p style=\\\"box-sizing: border-box; margin-top: 0px; margin-bottom: 25px; padding: 0px; color: rgb(51, 51, 51); font-family: \\u5b8b\\u4f53, verdana, sans-serif; font-size: 18px; white-space: normal; background-color: rgb(255, 255, 255);\\\">\\u3000\\u3000\\u636e\\u4ecb\\u7ecd\\uff0c\\u7ca4\\u8d22\\u63a7\\u80a1\\u81ea2015\\u5e74\\u4ee5\\u6765\\u5df2\\u83b7\\u5f97\\u5305\\u62ec\\u73e0\\u897f\\u57fa\\u91d1\\u5728\\u5185\\u76847\\u53ea\\u653f\\u7b56\\u6027\\u57fa\\u91d1\\u7684\\u53d7\\u6258\\u7ba1\\u7406\\u8d44\\u683c\\uff0c\\u627f\\u63a5\\u8d22\\u653f\\u8d44\\u91d1\\u8fbe100.5\\u4ebf\\u5143\\uff0c\\u9664\\u73e0\\u897f\\u57fa\\u91d1\\u5916\\uff0c\\u5176\\u4ed6\\u5404\\u53ea\\u57fa\\u91d1\\u7684\\u5de5\\u4f5c\\u4e5f\\u5728\\u7a33\\u6b65\\u63a8\\u8fdb\\u4e2d\\u3002\\u76ee\\u524d\\uff0c\\u7ca4\\u8d22\\u63a7\\u80a1\\u5df2\\u6210\\u4e3a\\u7701\\u5185\\u627f\\u63a5\\u8d22\\u653f\\u8d44\\u91d1\\u89c4\\u6a21\\u6700\\u5927\\u3001\\u57fa\\u91d1\\u6570\\u91cf\\u6700\\u591a\\u3001\\u7ba1\\u7406\\u673a\\u6784\\u8d44\\u672c\\u5b9e\\u529b\\u6700\\u5f3a\\u7684\\u7701\\u7ea7\\u653f\\u7b56\\u6027\\u57fa\\u91d1\\u53d7\\u6258\\u7ba1\\u7406\\u673a\\u6784\\u3002\\u636e\\u4e1a\\u5185\\u6d4b\\u7b97\\uff0c\\u5982\\u4ee5\\u4e0a\\u5404\\u53ea\\u57fa\\u91d1\\u5168\\u90fd\\u6210\\u529f\\u5b8c\\u6210\\u52df\\u96c6\\uff0c\\u6309\\u71671:9\\u5de6\\u53f3\\u89c4\\u6a21\\u5b9e\\u73b0\\u653e\\u5927\\uff0c\\u90a3\\u4e48\\u7ca4\\u8d22\\u63a7\\u80a1\\u5c31\\u80fd\\u901a\\u8fc7\\u653f\\u7b56\\u6027\\u57fa\\u91d1\\u4e1a\\u52a1\\u64ac\\u52a8\\u5343\\u4ebf\\u793e\\u4f1a\\u8d44\\u672c\\u670d\\u52a1\\u3002<\\/p><p><br\\/><\\/p>\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4064', '1', '1', '1476253841', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4065', '1', '1', '1476253860', 'News/Newscon/addPage', '新闻管理/新闻内容/添加新闻页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4066', '1', '1', '1476253909', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4067', '1', '1', '1476253972', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4068', '1', '1', '1476253975', 'News/Newscon/addPage', '新闻管理/新闻内容/添加新闻页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4069', '1', '1', '1476254113', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4070', '1', '1', '1476254117', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4071', '1', '1', '1476254118', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4072', '1', '1', '1476254203', 'Crm/BAgent/doInvite', 'CRM管理/会员管理/邀请用户动作', '{\"username\":\"ceshiyaoqing\",\"credientialno\":\"31219119199412140808\",\"phone\":\"13918001260\",\"email\":\"test@interpure.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4073', '1', '1', '1476254222', 'Crm/BAgent/doInvite', 'CRM管理/会员管理/邀请用户动作', '{\"username\":\"ceshiyaoqing\",\"credientialno\":\"312191199412140808\",\"phone\":\"13918001260\",\"email\":\"test@interpure.com\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4074', '1', '1', '1476254258', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4075', '1', '1', '1476254275', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4076', '1', '1', '1476254277', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4077', '1', '1', '1476254307', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '{\"keyword\":\"\\u5e7f\\u4e1c\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4078', '1', '1', '1476254322', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4079', '1', '1', '1476254327', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4080', '1', '1', '1476254346', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4081', '1', '1', '1476254459', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4082', '1', '1', '1476254466', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4083', '1', '1', '1476254472', 'News/Newscon/delete', '新闻管理/新闻内容/删除新闻', '{\"id\":\"115\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4084', '1', '1', '1476254473', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4085', '1', '1', '1476254474', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4086', '1', '1', '1476254542', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4087', '1', '1', '1476254550', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4088', '1', '1', '1476254551', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4089', '1', '1', '1476254580', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4090', '1', '1', '1476254585', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4091', '1', '1', '1476254585', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4092', '1', '1', '1476254587', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4093', '1', '1', '1476254598', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4094', '1', '1', '1476254603', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4095', '1', '1', '1476254604', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4096', '1', '1', '1476254622', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4097', '1', '1', '1476254664', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4098', '1', '1', '1476254669', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4099', '1', '1', '1476254678', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4100', '1', '1', '1476254680', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4101', '1', '1', '1476254733', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4102', '1', '1', '1476254736', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4103', '1', '1', '1476254736', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4104', '1', '1', '1476254742', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4105', '1', '1', '1476254754', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"22\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4106', '1', '1', '1476254759', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4107', '1', '1', '1476254765', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4108', '1', '1', '1476254767', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4109', '1', '1', '1476254769', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4110', '1', '1', '1476254771', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4111', '1', '1', '1476254788', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4112', '1', '1', '1476254845', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4113', '1', '1', '1476254878', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4114', '1', '1', '1476254880', 'Admin/Message/addPage', '用户中心/消息中心/添加消息', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4115', '1', '1', '1476254882', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4116', '1', '1', '1476254886', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4117', '1', '1', '1476254889', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4118', '1', '1', '1476254890', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4119', '1', '1', '1476254891', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4120', '1', '1', '1476254924', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\\u6d4b\\u8bd5IFA123\",\"credientialno\":\"310101198312141234\",\"phone\":\"13918001250\",\"email\":\"test123@intelpure.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4121', '1', '1', '1476254925', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4122', '1', '1', '1476254929', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"\",\"credientialno\":\"\",\"phone\":\"\",\"email\":\"\",\"password\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4123', '1', '1', '1476254939', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4124', '1', '1', '1476254941', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4125', '1', '1', '1476254947', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4126', '1', '1', '1476254947', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4127', '1', '1', '1476254949', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4128', '1', '1', '1476254951', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4129', '1', '1', '1476254977', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4130', '1', '1', '1476254980', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4131', '1', '1', '1476254992', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"123\",\"credientialno\":\"123\",\"phone\":\"123\",\"email\":\"123@123\",\"password\":\"123\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4132', '1', '1', '1476255031', 'Crm/BAgent/add', 'CRM管理/会员管理/添加会员动作', '{\"username\":\"123test\",\"credientialno\":\"310101198312122727\",\"phone\":\"13918001271\",\"email\":\"123@123.com\",\"password\":\"123456\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4133', '1', '1', '1476255032', 'Crm/BAgent/addPage', 'CRM管理/会员管理/添加会员页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4134', '1', '1', '1476255279', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4135', '1', '1', '1476255280', 'Crm/BAgent/inviteUser', 'CRM管理/会员管理/邀请用户注册界面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4136', '1', '1', '1476255656', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4137', '1', '1', '1476255661', 'Crm/BAgent/userDetail', 'CRM管理/会员管理/查看用户详情', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4138', '1', '1', '1476255980', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4139', '1', '1', '1476255982', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4140', '1', '1', '1476255991', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4141', '1', '1', '1476255994', 'Crm/BAgent/freeze', 'CRM管理/会员管理/冻结用户', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4142', '1', '1', '1476255995', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4143', '1', '1', '1476256000', 'Crm/BAgent/unFreeze', 'CRM管理/会员管理/解冻用户', '{\"id\":\"5\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4144', '1', '1', '1476256001', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4145', '1', '1', '1476256006', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4146', '1', '1', '1476256013', 'Crm/Customer/userDetail', 'CRM管理/客户管理/查看客户详情', '{\"id\":\"1001\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4147', '1', '1', '1476256020', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4148', '1', '1', '1476256033', 'Crm/Customer/reviewPass', 'CRM管理/客户管理/审核通过', '{\"id\":\"1003\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4149', '1', '1', '1476256042', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4150', '1', '1', '1476256045', 'Crm/Customer/reviewNotPass', 'CRM管理/客户管理/审核不通过', '{\"id\":\"1003\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4151', '1', '1', '1476256052', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4152', '1', '1', '1476256061', 'Crm/Customer/reviewPass', 'CRM管理/客户管理/审核通过', '{\"id\":\"1010\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4153', '1', '1', '1476256066', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4154', '1', '1', '1476256069', 'Crm/Customer/reviewPass', 'CRM管理/客户管理/审核通过', '{\"id\":\"1003\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4155', '1', '1', '1476256087', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4156', '1', '1', '1476256088', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4157', '1', '1', '1476256090', 'Crm/Sales/addPage', 'CRM管理/营销策略项管理/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4158', '1', '1', '1476256095', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4159', '1', '1', '1476256126', 'Crm/BAgent/review', 'CRM管理/会员管理/IFA审核页面', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4160', '1', '1', '1476256391', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4161', '1', '1', '1476256391', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4162', '1', '1', '1476256399', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4163', '1', '1', '1476256403', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4164', '1', '1', '1476256412', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4165', '1', '1', '1476256415', 'Crm/Customer/index', 'CRM管理/客户管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4166', '1', '1', '1476256437', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4167', '1', '1', '1476256444', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4168', '1031', '2', '1476256480', 'AgentHome/Index/index', '工作台/工作台/工作台首页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4169', '1031', '2', '1476256491', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4170', '1', '1', '1476256579', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4171', '1', '1', '1476256588', 'Crm/BAgent/unFreeze', 'CRM管理/会员管理/解冻用户', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4172', '1', '1', '1476256589', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4173', '1031', '2', '1476256599', 'AgentAdmin/UserAccount/index', '用户中心/账号管理/账号信息展示', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4174', '1', '1', '1476256609', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"id\":\"\",\"phone\":\"13918001270\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4175', '1', '1', '1476256614', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"phone\":\"13918001270\",\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4176', '1', '1', '1476256625', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"id\":\"\",\"phone\":\"183\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4177', '1', '1', '1476256632', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"id\":\"IFA\",\"phone\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4178', '1', '1', '1476256636', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"id\":\"IFA1\",\"phone\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4179', '1', '1', '1476256642', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4180', '1', '1', '1476256649', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '{\"id\":\"IFA2\",\"phone\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4181', '1', '1', '1476256655', 'Crm/BAgent/index', 'CRM管理/会员管理/查看列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4182', '1', '1', '1476256910', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4183', '1', '1', '1476256919', 'Crm/Sales/addPage', 'CRM管理/营销策略项管理/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4184', '1', '1', '1476256929', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4185', '1', '1', '1476256931', 'Crm/SalesStrategy/index', 'CRM管理/营销策略配置/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4186', '1', '1', '1476256938', 'Crm/SalesStrategy/editPage', 'CRM管理/营销策略配置/编辑页面', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4187', '1', '1', '1476256948', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4188', '1', '1', '1476257134', 'Crm/Sales/addPage', 'CRM管理/营销策略项管理/添加页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4189', '1', '1', '1476257139', 'Crm/Sales/index', 'CRM管理/营销策略项管理/策略项列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4190', '1', '1', '1476257171', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4191', '1', '1', '1476257175', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4192', '1', '1', '1476257177', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4193', '1', '1', '1476257179', 'Trans/Order/index', '交易管理/订单中心/订单列表', '{\"status\":\"0\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4194', '1', '1', '1476257181', 'Trans/Order/index', '交易管理/订单中心/订单列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4195', '1', '1', '1476257194', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4196', '1', '1', '1476257197', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4197', '1', '1', '1476257199', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4198', '1', '1', '1476257220', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4199', '1', '1', '1476257223', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4200', '1', '1', '1476257317', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4201', '1', '1', '1476257389', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4202', '1', '1', '1476257394', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4203', '1', '1', '1476257413', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4204', '1', '1', '1476257465', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4205', '1', '1', '1476257580', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4206', '1', '1', '1476257679', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4207', '1', '1', '1476257680', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4208', '1', '1', '1476257680', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4209', '1', '1', '1476257725', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4210', '1', '1', '1476257728', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4211', '1', '1', '1476257731', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4212', '1', '1', '1476257750', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4213', '1', '1', '1476257751', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4214', '1', '1', '1476257755', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4215', '1', '1', '1476257757', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4216', '1', '1', '1476257758', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4217', '1', '1', '1476257758', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4218', '1', '1', '1476257806', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4219', '1', '1', '1476257808', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4220', '1', '1', '1476257808', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4221', '1', '1', '1476257809', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4222', '1', '1', '1476257827', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4223', '1', '1', '1476257828', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4224', '1', '1', '1476257829', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4225', '1', '1', '1476257830', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4226', '1', '1', '1476257851', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4227', '1', '1', '1476257870', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4228', '1', '1', '1476257880', 'Product/Networth/editNetworthPage', '产品管理/净值管理/编辑单个净值页面', '{\"id\":\"50832\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4229', '1', '1', '1476257889', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4230', '1', '1', '1476257895', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4231', '1', '1', '1476257896', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4232', '1', '1', '1476257897', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4233', '1', '1', '1476257897', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4234', '1', '1', '1476257903', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4235', '1', '1', '1476257919', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4236', '1', '1', '1476257923', 'Product/Networth/editNetworthPage', '产品管理/净值管理/编辑单个净值页面', '{\"id\":\"50832\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4237', '1', '1', '1476257935', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4238', '1', '1', '1476257967', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4239', '1', '1', '1476257982', 'Product/Networth/editNetworthPage', '产品管理/净值管理/编辑单个净值页面', '{\"id\":\"50832\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4240', '1', '1', '1476258003', 'Product/Networth/edit', '产品管理/净值管理/编辑单个净值动作', '{\"id\":\"50832\",\"productid\":\"3\",\"datetime\":\"2016-10-09\",\"networth\":\"1.2501\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4241', '1', '1', '1476258004', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4242', '1', '1', '1476258036', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4243', '1', '1', '1476258037', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4244', '1', '1', '1476258041', 'Product/Networth/showNetworth', '产品管理/净值管理/查看净值详情', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4245', '1', '1', '1476258133', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4246', '1', '1', '1476258133', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4247', '1', '1', '1476258134', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4248', '1', '1', '1476258174', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4249', '1', '1', '1476258178', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4250', '1', '1', '1476258205', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4251', '1', '1', '1476258216', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4252', '1', '1', '1476258217', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"2\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4253', '1', '1', '1476258217', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"2\",\"b_id\":\"6\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4254', '1', '1', '1476258225', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4255', '1', '1', '1476258226', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4256', '1', '1', '1476258228', 'Product/Product/editPage', '产品管理/产品发布/产品编辑', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4257', '1', '1', '1476258229', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4258', '1', '1', '1476258230', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"3\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4259', '1', '1', '1476258956', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4260', '1', '1', '1476258957', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4261', '1', '1', '1476258958', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4262', '1', '1', '1476258958', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4263', '1', '1', '1476258962', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4264', '1', '1', '1476258964', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4265', '1', '1', '1476258970', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"2\",\"path\":\"\",\"name\":\"\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4266', '1', '1', '1476258975', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4267', '1', '1', '1476258978', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4268', '19', '1', '1476259783', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4269', '19', '1', '1476259787', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4270', '19', '1', '1476259806', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"62\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4271', '19', '1', '1476259810', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4272', '19', '1', '1476259812', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4273', '19', '1', '1476259814', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4274', '19', '1', '1476259816', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4275', '19', '1', '1476259821', 'News/Newscon/editPage', '新闻管理/新闻内容/编辑新闻页面', '{\"id\":\"116\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4276', '19', '1', '1476259822', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4277', '19', '1', '1476259823', 'News/Newscon/editPage', '新闻管理/新闻内容/编辑新闻页面', '{\"id\":\"116\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4278', '19', '1', '1476259824', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4279', '19', '1', '1476259826', 'News/Newscon/editPage', '新闻管理/新闻内容/编辑新闻页面', '{\"id\":\"116\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4280', '19', '1', '1476259827', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4281', '19', '1', '1476259832', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4282', '19', '1', '1476259840', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4283', '19', '1', '1476259843', 'Product/Networth/index', '产品管理/净值管理/净值管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4284', '19', '1', '1476259857', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4285', '19', '1', '1476259864', 'Product/Product/addFile', '产品管理/产品发布/添加产品附件', '[]', 'POST');
INSERT INTO `fm_action_record` VALUES ('4286', '19', '1', '1476259868', 'Product/Product/addDisclosureInfo', '产品管理/产品发布/添加产品披露信息', '{\"productid\":\"4\",\"path\":\"\\/Uploads\\/disclosure\\/2016-10-12\\/57fdf01868296.jpeg\",\"name\":\"(WechatIMG1.jpeg)\",\"file\":\"\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4287', '19', '1', '1476259869', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4288', '19', '1', '1476259881', 'Product/Product/deletedDisclosureInfo', '产品管理/产品发布/删除产品披露信息', '{\"id\":\"7\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4289', '19', '1', '1476259882', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"4\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4290', '19', '1', '1476259888', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4291', '19', '1', '1476259892', 'Product/Product/productInfoDisclosurePage', '产品管理/产品发布/产品披露页面', '{\"id\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4292', '19', '1', '1476259917', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4293', '19', '1', '1476259920', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4294', '19', '1', '1476259921', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4295', '19', '1', '1476259928', 'Admin/Feedback/index', '用户中心/意见反馈/意见反馈列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4296', '1', '1', '1476260720', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4297', '1', '1', '1476260722', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4298', '1', '1', '1476260727', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4299', '1', '1', '1476260901', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4300', '1', '1', '1476260906', 'News/Newscat/addPage', '新闻管理/新闻栏目/添加新闻栏目', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4301', '1', '1', '1476260914', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4302', '1', '1', '1476260916', 'News/Newscat/editPage', '新闻管理/新闻栏目/编辑新闻栏目', '{\"id\":\"62\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4303', '1', '1', '1476260921', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4304', '1', '1', '1476260948', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4305', '1', '1', '1476260969', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4306', '1', '1', '1476261359', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4307', '1', '1', '1476261363', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4308', '1', '1', '1476261370', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4309', '1', '1', '1476261375', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4310', '1', '1', '1476261387', 'Product/Product/addPage', '产品管理/产品发布/添加产品页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4311', '1', '1', '1476261388', 'Product/Catagroy/getBList', '产品管理/分类管理/获取产品二级列表', '{\"a_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4312', '1', '1', '1476261388', 'Product/Catagroy/getCList', '产品管理/分类管理/获取产品三级列表', '{\"a_id\":\"1\",\"b_id\":\"1\"}', 'POST');
INSERT INTO `fm_action_record` VALUES ('4313', '1', '1', '1476261391', 'News/Newscat/index', '新闻管理/新闻栏目/新闻栏目列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4314', '1', '1', '1476261392', 'News/Newscon/index', '新闻管理/新闻内容/内容列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4315', '1', '1', '1476261401', 'News/Newscon/recycle', '新闻管理/新闻内容/回收站', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4316', '1', '1', '1476261405', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4317', '1', '1', '1476261412', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4318', '1', '1', '1476261419', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4319', '1', '1', '1476261494', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4320', '1', '1', '1476261555', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4321', '1', '1', '1476261564', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4322', '1', '1', '1476261567', 'Sysset/Params/addparam', '系统管理/参数管理/添加参数信息页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4323', '1', '1', '1476261570', 'Sysset/Params/index', '系统管理/参数管理/参数管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4324', '1', '1', '1476261588', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4325', '1', '1', '1476261594', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4326', '1', '1', '1476261597', 'Sysset/Domain/index', '系统管理/域名管理/域名管理页面', '{\"id\":\"\",\"name\":\"\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4327', '1', '1', '1476261725', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4328', '1', '1', '1476261741', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4329', '1', '1', '1476261767', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4330', '1', '1', '1476261989', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4331', '1', '1', '1476262072', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4332', '1', '1', '1476262089', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4333', '1', '1', '1476262238', 'Workbench/Index/index', '控制台/控制台/控制台页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4334', '1', '1', '1476262420', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4335', '1', '1', '1476262422', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4336', '1', '1', '1476262424', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4337', '1', '1', '1476262434', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"20\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4338', '1', '1', '1476262436', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4339', '1', '1', '1476262981', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4340', '1', '1', '1476262988', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4341', '1', '1', '1476262998', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4342', '1', '1', '1476263012', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4343', '1', '1', '1476263017', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4344', '1', '1', '1476263017', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"3\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4345', '1', '1', '1476263024', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4346', '1', '1', '1476263093', 'Admin/User/addPage', '用户中心/用户管理/添加用户页', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4347', '1', '1', '1476263105', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4348', '1', '1', '1476263609', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4349', '1', '1', '1476263618', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"2\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4350', '1', '1', '1476263620', 'Admin/User/index', '用户中心/用户管理/客户列表', '{\"p\":\"1\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4351', '1', '1', '1476263626', 'Admin/User/editPage', '用户中心/用户管理/修改用户页', '{\"id\":\"19\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4352', '1', '1', '1476263631', 'Admin/User/index', '用户中心/用户管理/客户列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4353', '1', '1', '1476263638', 'Admin/Role/index', '用户中心/角色管理/角色列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4354', '1', '1', '1476263642', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4355', '1', '1', '1476263646', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"9\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4356', '1', '1', '1476263647', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4357', '1', '1', '1476263647', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4358', '1', '1', '1476263662', 'Admin/Message/index', '用户中心/消息中心/消息列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4359', '1', '1', '1476263675', 'Admin/Message/editPage', '用户中心/消息中心/修改消息', '{\"id\":\"9\"}', 'GET');
INSERT INTO `fm_action_record` VALUES ('4360', '1', '1', '1476263808', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4361', '1', '1', '1476263808', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4362', '1', '1', '1476263858', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');
INSERT INTO `fm_action_record` VALUES ('4363', '1', '1', '1476263859', 'Product/Product/index', '产品管理/产品发布/产品列表', '[]', 'GET');

-- ----------------------------
-- Table structure for fm_application
-- ----------------------------
DROP TABLE IF EXISTS `fm_application`;
CREATE TABLE `fm_application` (
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
-- Records of fm_application
-- ----------------------------

-- ----------------------------
-- Table structure for fm_application_relation
-- ----------------------------
DROP TABLE IF EXISTS `fm_application_relation`;
CREATE TABLE `fm_application_relation` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `appid` int(11) DEFAULT NULL,
  `isuse` tinyint(4) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用关联表';

-- ----------------------------
-- Records of fm_application_relation
-- ----------------------------

-- ----------------------------
-- Table structure for fm_order
-- ----------------------------
DROP TABLE IF EXISTS `fm_order`;
CREATE TABLE `fm_order` (
  `id` int(11) NOT NULL,
  `orderno` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `aproductid` int(11) DEFAULT NULL,
  `agentid` int(11) DEFAULT NULL COMMENT '小b代理ID',
  `bproductid` int(11) DEFAULT NULL,
  `sellerid` int(11) DEFAULT NULL COMMENT '卖方id(如果是小b的话，为小b的c账户ID)',
  `buyerid` int(11) DEFAULT NULL COMMENT '买方id (如果是小b的话，为小b的c账户ID)',
  `type` tinyint(1) DEFAULT NULL COMMENT '1 代表 a, 2代表 b, 3代表c\n类型  12: b向a 订单，13: c通过b向a订单, 23: c向b订单\n',
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
INSERT INTO `fm_order` VALUES ('1', 'DD201609271138123456', '1', '1', '1', '1', '1010', '12', '200000', '2002000.00', '1.0100', '1.0100', '0', '32weidehashjiami', '1476063135', '0', '0', '0');
INSERT INTO `fm_order` VALUES ('2', 'DDasda93749850840504', '2', '54', '2', '1', '1002', '13', '20', '30000.00', '1.0200', '1.0200', '2', 'asdadasdasds', '1475975349', '0', '0', '0');
INSERT INTO `fm_order` VALUES ('3', 'DDoksiskdjkjsdkjskdjksdd', '3', null, '3', '1010', '1001', '23', '30000', '30000000.00', '1.3000', '1.3000', '1', '8hd8esds9wed8we', '1476063137', '0', '0', '0');

-- ----------------------------
-- Table structure for fm_redemption
-- ----------------------------
DROP TABLE IF EXISTS `fm_redemption`;
CREATE TABLE `fm_redemption` (
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
-- Records of fm_redemption
-- ----------------------------

-- ----------------------------
-- Table structure for fm_refund
-- ----------------------------
DROP TABLE IF EXISTS `fm_refund`;
CREATE TABLE `fm_refund` (
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
-- Records of fm_refund
-- ----------------------------

-- ----------------------------
-- Table structure for fm_service
-- ----------------------------
DROP TABLE IF EXISTS `fm_service`;
CREATE TABLE `fm_service` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='服务表';

-- ----------------------------
-- Records of fm_service
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='邀请注册表';

-- ----------------------------
-- Records of invite
-- ----------------------------
INSERT INTO `invite` VALUES ('21', null, '37', '1', '1474337679', '140321199108020012', '18800000000', '11@qq.com', 'vestin', '1474424079', '898453', 'ceb07c42');
INSERT INTO `invite` VALUES ('22', null, null, '1', '1474338050', '140321111111111111', '18801222222', '11@qq.com', 'nihao', '1474424450', '557110', 'd80a47c2');
INSERT INTO `invite` VALUES ('23', null, '38', '1', '1474341020', '140321199108020012', '18801621639', 'bombzds@163.com', 'vestin2', '1474427420', '752467', '0dfd4964');
INSERT INTO `invite` VALUES ('24', null, '39', '1', '1474448309', '140321111102020012', '18801621640', 'bombzds2@163.com', '张三', '1474534709', '367243', 'b5956d29');
INSERT INTO `invite` VALUES ('25', null, '40', '1', '1474525671', '140321199105050045', '18801621637', '456@qq.com', '123456', '1474612071', '643421', 'a411668c');
INSERT INTO `invite` VALUES ('26', null, null, '1', '1474595220', '310111198312071111', '15502173369', 'franky.zhao@intelpure.com', 'franky', '1474681620', '365176', '3bdc4c88');
INSERT INTO `invite` VALUES ('27', null, null, '1', '1476085663', '111111111111111111', '18939840579', '784367094@qq.com', '陈大海', '1476172063', '113736', 'ae6864ce');
INSERT INTO `invite` VALUES ('28', null, null, '1', '1476254222', '312191199412140808', '13918001260', 'test@interpure.com', 'ceshiyaoqing', '1476340622', '902589', '6aab23e0');
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
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8 COMMENT='系统参数';

-- ----------------------------
-- Records of param
-- ----------------------------
INSERT INTO `param` VALUES ('1', null, '', '', '1475831837', '我就是管理员', '1', null, null, null, '1', '0');
INSERT INTO `param` VALUES ('2', null, 'ffafdsa', 'fasdd', '1475831951', '我就是管理员', '1', null, null, null, '1', '0');
INSERT INTO `param` VALUES ('6', null, 'thanks', 'thanks', '1475901992', '我就是管理员', '1', null, null, null, '1', '0');
INSERT INTO `param` VALUES ('7', null, 'ccc', 'ddd', '1475902218', '我就是管理员', '1', null, null, null, '1', '0');
INSERT INTO `param` VALUES ('8', null, 'sss11', 'aaa11', '1475902301', '我就是管理员', '1', null, null, null, '1', '0');
INSERT INTO `param` VALUES ('9', null, 'xxxx223', 'qqqq223d', '1475902369', '我就是管理员', '1', null, null, null, '1', '0');
INSERT INTO `param` VALUES ('10', null, 'ddd', 'sss', '1475907036', '我就是管理员', '1', '1475996202', '我就是管理员', '1', '', '0');
INSERT INTO `param` VALUES ('11', null, 'eee', 'eee', '1475909238', null, '1', null, null, null, null, '0');
INSERT INTO `param` VALUES ('12', '1015', 'ddddd', 'ffffff', '1475909271', null, '1015', null, null, null, null, '0');
INSERT INTO `param` VALUES ('13', '1015', '3333332', '23111', '1475909483', null, '1015', null, null, null, null, '1');
INSERT INTO `param` VALUES ('14', '1015', 'ddddss', 'aaaa', '1475910041', null, '1015', null, null, null, '1', '1');
INSERT INTO `param` VALUES ('15', '1015', 'dfaf', 'fsaf', '1475910226', null, '1015', null, null, null, null, '1');
INSERT INTO `param` VALUES ('16', '1015', 'cccvv', 'vvvvv', '1475910441', null, '1015', null, null, null, null, '1');
INSERT INTO `param` VALUES ('17', null, '5555', '66666', '1475910519', null, '1', '1475910965', 'vestin2', '1015', '1', '0');
INSERT INTO `param` VALUES ('18', null, '4443', '3333', '1475910581', '我就是管理员', '1', '1475913573', '我就是管理员', '1', '', '0');
INSERT INTO `param` VALUES ('19', '1015', 'gggg', 'vvvv', '1475910605', 'vestin2', '1015', '1476081059', 'vestin2', '1015', '', '1');
INSERT INTO `param` VALUES ('20', '1015', 'ffddd', 'dsdsd', '1475912452', 'vestin2', '1015', '1475912462', 'vestin2', '1015', '1', '1');
INSERT INTO `param` VALUES ('21', null, 'eee', '1111', '1476080619', '我就是管理员', '1', '1476080632', '我就是管理员', '1', '', '0');
INSERT INTO `param` VALUES ('22', null, '3333', 'dddd', '1476080667', '我就是管理员', '1', '1476080683', '我就是管理员', '1', '1', '0');
INSERT INTO `param` VALUES ('23', '1015', 'rrrr', 'sss', '1476081235', 'vestin2', '1015', '1476081355', 'vestin2', '1015', '', '1');
INSERT INTO `param` VALUES ('24', null, 'eee', 'ssss', '1476090308', null, null, null, null, null, null, null);
INSERT INTO `param` VALUES ('25', null, 'ww', 'www', '1476090436', null, null, null, null, null, null, null);
INSERT INTO `param` VALUES ('26', null, 'ew', 'rr', '1476090348', null, null, null, null, null, null, null);
INSERT INTO `param` VALUES ('27', null, 'rqe', 'rwww', '1476090399', null, null, null, null, null, null, null);
INSERT INTO `param` VALUES ('28', null, 'rwr', 'www', '1476090410', null, null, null, null, null, null, null);
INSERT INTO `param` VALUES ('29', null, 'ddd', 'sss', '1476149150', '我就是管理员', '1', '1476149162', '我就是管理员', '1', '', '0');
INSERT INTO `param` VALUES ('30', '1015', 'qq', 'qqq', '1476151397', 'vestin2', '1015', null, null, null, '1', '1');

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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='题库表';

-- ----------------------------
-- Records of questions
-- ----------------------------
INSERT INTO `questions` VALUES ('4', '', '1', '[\"\",\"\"]', '', '1476179676', '1', null);
INSERT INTO `questions` VALUES ('2', 'aa', '1', '[\"A:DDDDDDDDDDD\",\"B:DDDDDDDDDDDDDD\",\"C:MMMMMMMMMMMMM\",\"D:LLLLLLLLLLLLLLLLLLLLLL\"]', null, '1476174466', '1', null);
INSERT INTO `questions` VALUES ('3', 'rre', '1', '[\"rere\"]', 'b', '1476174567', '1', null);
INSERT INTO `questions` VALUES ('5', 'REE', '1', '[\"AFFAFFFFFFF\",\"FSAFSFDS\",\"FDSAFDSFSF\",\"FFFFFFFFFFFFFFAA\"]', '4', '1476236826', '1', null);
INSERT INTO `questions` VALUES ('6', 'GGG', '1', '[\"A:DDDDDDDDDDDDL\",\"A:DDDDDDDDDDDDL\",\"AFFAFFFFFFF\",\"A:DDDDDDDDDDDDL\",\"GGGGGGGGGG\"]', '2', '1476236878', '1', null);
INSERT INTO `questions` VALUES ('7', 'GGGGG', '1', '[\"A:DDDDDDDDDDDDL\",\"B:BBBBBBBBBBBBBBB\",\"C:CCCCCCCCCCCCCC\"]', '3', '1476237294', '1', null);
INSERT INTO `questions` VALUES ('8', '额为我', '1', '[\"\",\"\"]', '', '1476237968', '1', null);
INSERT INTO `questions` VALUES ('9', '1+1=?', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', '4', '1476246380', null, null);
INSERT INTO `questions` VALUES ('10', 'eee', '1', '[\"ee\",\"\",\"\",\"\",\"\",\"\"]', '8', '1476254512', null, null);
INSERT INTO `questions` VALUES ('11', '2+2=?', '1', '[\"3\",\"4\",\"5\",\"6\",\"7\",\"8\",\"9\"]', '', '1476254606', null, null);
INSERT INTO `questions` VALUES ('12', '3*3=?', '1', '[\"1\",\"2\",\"3\",\"4\",\"\",\"\"]', '13', '1476254683', null, null);
INSERT INTO `questions` VALUES ('13', '22', '1', '[\"\",\"\",\"\",\"\",\"\",\"\",\"\"]', '11', '1476259230', null, null);
INSERT INTO `questions` VALUES ('14', '3232', '1', '[\"3\",\"\",\"\",\"\",\"\",\"\"]', '[object Object]', '1476259304', null, null);
INSERT INTO `questions` VALUES ('15', 'vvvvvvvvvv', '1', '[\"sss\",\"sffffffffffff\",\"ssssssssss\",\"ssssssssss\",\"vvvvvvvvvvvvv\",\"\"]', '', '1476259431', null, null);
INSERT INTO `questions` VALUES ('16', 'dsfda', '1', '[\"\",\"\",\"\"]', '', '1476260735', null, null);
INSERT INTO `questions` VALUES ('17', '1+2=？', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\"]', null, '1476263735', null, null);
INSERT INTO `questions` VALUES ('18', '1+3=？', '1', '[\"1\",\"2\",\"3\",\"4\",\"5\",\"6\"]', '4', '1476263858', null, null);

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
-- View structure for a_b_user
-- ----------------------------
DROP VIEW IF EXISTS `a_b_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `a_b_user` AS select 'a_user' AS `flag`,`a_user`.`id` AS `id`,`a_user`.`username` AS `username`,`a_user`.`email` AS `email`,`a_user`.`phone` AS `phone` from `a_user` union select 'b_agent_user' AS `flag`,`b_agent_user`.`id` AS `id`,`b_agent_user`.`username` AS `username`,`b_agent_user`.`email` AS `email`,`b_agent_user`.`phone` AS `phone` from `b_agent_user` ;
SET FOREIGN_KEY_CHECKS=1;

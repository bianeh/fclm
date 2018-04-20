/*
Navicat MySQL Data Transfer

Source Server         : fengchao 云测试
Source Server Version : 50621
Source Host           : 139.224.27.12:3306
Source Database       : Fengchao

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-09-23 16:19:17
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
  `content` varchar(2000) NOT NULL,
  `followid` int(11) DEFAULT '0',
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `isread` tinyint(1) DEFAULT NULL COMMENT '是否阅读',
  `isdone` tinyint(1) DEFAULT '0' COMMENT '是否处理',
  PRIMARY KEY (`id`),
  KEY `sendid` (`sendid`) USING BTREE,
  KEY `recieveid` (`recieveid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `followid` (`followid`) USING BTREE,
  KEY `isread` (`isread`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='意见反馈表';

-- ----------------------------
-- Records of a_feedback
-- ----------------------------
INSERT INTO `a_feedback` VALUES ('1', '1001', '1', '2', '产品不错呢？？继续努力！', '0', '1400000000', '0', '1', '1');
INSERT INTO `a_feedback` VALUES ('2', '1', '1001', '2', '感谢你的意见！', '1', '1400000001', '0', '0', '0');
INSERT INTO `a_feedback` VALUES ('3', '1002', '1', '2', 'OK的', '0', '1474170072', '0', '0', '1');
INSERT INTO `a_feedback` VALUES ('4', '1003', '1', '2', 'fine...', '0', '1456000954', '0', '0', '1');
INSERT INTO `a_feedback` VALUES ('5', '1002', '1001', '1', '这家店不错,搞一个比较长的内容，主要写写什么呢？主要写写赞美吧！互联网金融还真的比较复杂呢...', '0', '1486766544', '0', '1', '1');
INSERT INTO `a_feedback` VALUES ('6', '1001', '1002', '1', '感谢你的支持', '5', '1483434334', '0', '0', '0');

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
-- Table structure for a_menu
-- ----------------------------
DROP TABLE IF EXISTS `a_menu`;
CREATE TABLE `a_menu` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='功能菜单表';

-- ----------------------------
-- Records of a_menu
-- ----------------------------

-- ----------------------------
-- Table structure for a_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `a_menu_role`;
CREATE TABLE `a_menu_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` int(11) NOT NULL,
  `menuid` int(11) NOT NULL,
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roleid` (`roleid`) USING BTREE,
  KEY `menuid` (`menuid`) USING BTREE,
  KEY `isdeleted` (`isdeleted`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='功能角色关联表';

-- ----------------------------
-- Records of a_menu_role
-- ----------------------------

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
INSERT INTO `a_message` VALUES ('9', null, '1', '0', '添加一条消息', '1474526733', '0', '0', '0');

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
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT '0',
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `categoryid` int(11) NOT NULL,
  `publishtime` int(11) NOT NULL COMMENT '发布时间',
  `publishstatus` tinyint(4) DEFAULT NULL COMMENT '发布状态',
  `publisher` varchar(32) DEFAULT NULL COMMENT '发布人',
  `publisherid` int(11) DEFAULT NULL COMMENT '发布者id',
  PRIMARY KEY (`id`),
  KEY `catagoryid` (`categoryid`) USING BTREE,
  KEY `isdeleted` (`isdeleted`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of a_news
-- ----------------------------
INSERT INTO `a_news` VALUES ('77', '范德萨2233', '范德萨', '范德萨', '范德萨', '1474609863', '0', '范德萨', '51', '1474609863', '1', null, null);
INSERT INTO `a_news` VALUES ('76', '范德萨', '发抖', '', '地方', '1474609765', '0', '范德萨', '25', '1474609765', '1', null, null);
INSERT INTO `a_news` VALUES ('75', '功夫', '地方', '地方撒', '范德萨', '1474609340', '0', '范德萨', '25', '1474609340', '1', null, null);
INSERT INTO `a_news` VALUES ('79', '测试', '测试', '测试', '测试', '1474612380', '0', '测试', '54', '1474612380', '0', null, null);

-- ----------------------------
-- Table structure for a_news_attachement
-- ----------------------------
DROP TABLE IF EXISTS `a_news_attachement`;
CREATE TABLE `a_news_attachement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL COMMENT '附件名称',
  `type` int(4) NOT NULL COMMENT '类型 1:缩略图',
  `path` varchar(255) NOT NULL COMMENT '路径',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='新闻附件';

-- ----------------------------
-- Records of a_news_attachement
-- ----------------------------
INSERT INTO `a_news_attachement` VALUES ('62', '79', 'thumb_测试', '1', '/Uploads/news/2016-09-23/57e4cc96b8d5e.jpg', '1474618309');
INSERT INTO `a_news_attachement` VALUES ('55', '75', 'thumb_功夫', '1', '/Uploads/news/2016-09-23/57e4c09343153.jpg', '1474609340');

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
) ENGINE=MyISAM AUTO_INCREMENT=56 DEFAULT CHARSET=utf8 COMMENT='新闻分类表';

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
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COMMENT='新闻内容表';

-- ----------------------------
-- Records of a_news_content
-- ----------------------------
INSERT INTO `a_news_content` VALUES ('56', '75', '&lt;p&gt;范德萨&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('50', '69', '&lt;p&gt;反对撒反对撒&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('52', '71', '&lt;p&gt;范德萨&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('54', '73', '&lt;p&gt;范德萨&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('55', '74', '&lt;p&gt;范德萨&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('57', '76', '');
INSERT INTO `a_news_content` VALUES ('58', '77', '&lt;p&gt;范德萨&lt;/p&gt;');
INSERT INTO `a_news_content` VALUES ('60', '79', '&lt;p&gt;测试&lt;/p&gt;&lt;p&gt;http://139.224.27.12&lt;/p&gt;');

-- ----------------------------
-- Table structure for a_node
-- ----------------------------
DROP TABLE IF EXISTS `a_node`;
CREATE TABLE `a_node` (
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
) ENGINE=MyISAM AUTO_INCREMENT=215 DEFAULT CHARSET=utf8 COMMENT='功能节点表';

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
INSERT INTO `a_node` VALUES ('24', 'Customer', '客户管理', '1', null, '1', '5', '2');
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
INSERT INTO `a_node` VALUES ('189', 'addPage', '添加会员页面', '1', null, '2', '10', '3');
INSERT INTO `a_node` VALUES ('190', 'add', '添加会员动作', '1', null, '3', '10', '3');
INSERT INTO `a_node` VALUES ('191', 'userDetail', '查看用户详情', '1', null, '4', '10', '3');
INSERT INTO `a_node` VALUES ('192', 'review', 'IFA审核页面', '1', null, '5', '10', '3');
INSERT INTO `a_node` VALUES ('193', 'edit', '修改会员信息动作', '1', null, '6', '10', '3');
INSERT INTO `a_node` VALUES ('194', 'reviewPass', '审核通过', '1', null, '7', '10', '3');
INSERT INTO `a_node` VALUES ('195', 'reviewNotPass', '审核不通过', '1', null, '8', '10', '3');
INSERT INTO `a_node` VALUES ('196', 'freeze', '冻结用户', '1', null, '9', '10', '3');
INSERT INTO `a_node` VALUES ('197', 'unFreeze', '解冻用户', '1', null, '10', '10', '3');
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
INSERT INTO `a_node` VALUES ('2', 'Home', '控制台', '1', null, '1', '1', '1');
INSERT INTO `a_node` VALUES ('212', 'Index', '控制台', '1', null, '1', '2', '2');
INSERT INTO `a_node` VALUES ('213', 'index', '控制台页', '1', null, '2', '212', '3');
INSERT INTO `a_node` VALUES ('214', 'dashboard', '控制台展示', '1', null, '3', '212', '3');

-- ----------------------------
-- Table structure for a_product
-- ----------------------------
DROP TABLE IF EXISTS `a_product`;
CREATE TABLE `a_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productno` varchar(32) DEFAULT NULL COMMENT '产品编号',
  `name` varchar(32) DEFAULT NULL COMMENT '产品名称',
  `catagroyid` tinyint(4) DEFAULT NULL COMMENT '类型id',
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
  `establishedconditions` varchar(255) DEFAULT NULL COMMENT '成立条件',
  `establishmentscale` tinyint(4) DEFAULT NULL COMMENT '成立规模',
  `note` varchar(1500) DEFAULT NULL COMMENT '备注信息',
  `riskrating` tinyint(4) DEFAULT NULL COMMENT '风险评级',
  `commissionratio` float(7,4) DEFAULT NULL COMMENT '佣金比例',
  `saleslevel` tinyint(4) DEFAULT NULL COMMENT '销售等级',
  `createtime` int(11) NOT NULL,
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
  `createuser` varchar(32) DEFAULT NULL COMMENT '上架者',
  `createuserid` int(11) DEFAULT NULL COMMENT '上架人id',
  `abletotransfer` int(1) DEFAULT NULL COMMENT '是否允许转让',
  `minitransfershare` int(11) DEFAULT NULL COMMENT '最低转让份数',
  `minitransfershareunit` int(11) DEFAULT NULL COMMENT '转让额最小递增单位',
  PRIMARY KEY (`id`),
  KEY `id` (`catagroyid`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of a_product
-- ----------------------------

-- ----------------------------
-- Table structure for a_product_catagroy
-- ----------------------------
DROP TABLE IF EXISTS `a_product_catagroy`;
CREATE TABLE `a_product_catagroy` (
  `id` int(11) NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `path` varchar(80) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  `isleaf` tinyint(4) DEFAULT NULL COMMENT '是否是子节点',
  `description` text COMMENT '说明',
  `level` int(4) DEFAULT NULL COMMENT '产品级别',
  PRIMARY KEY (`id`),
  UNIQUE KEY `catagroyid` (`id`) USING HASH
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品类别';

-- ----------------------------
-- Records of a_product_catagroy
-- ----------------------------

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
-- Table structure for a_product_networth
-- ----------------------------
DROP TABLE IF EXISTS `a_product_networth`;
CREATE TABLE `a_product_networth` (
  `id` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `networth` float(11,4) NOT NULL,
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
INSERT INTO `a_role_user` VALUES ('1', '8', null);

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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_user
-- ----------------------------
INSERT INTO `a_user` VALUES ('1', 'FM00010001', 'root', 'admin@fm.com', '18801621638', 'ad626a07765d44476c9040c7b39c4937', '140321111111111111', '1483434334', '116.231.71.35', '1474617671', '1', '0', null, '4', '4', null, null, null, '1536735673', '大公司A', '产品部', '总监', '', '1453434335', '1');
INSERT INTO `a_user` VALUES ('2', 'FM00010002', 'chery', 'chery@fm.com', '18930948590', 'ad626a07765d44476c9040c7b39c4937', '140321111111111112', '1483434334', '145.54.43.123', '1483434334', '2', '0', null, '4', '6', null, null, null, '1493434334', '小公司B', '运营部', '副总监', null, '1453434335', '1');
INSERT INTO `a_user` VALUES ('3', 'FM00010003', 'haha', 'haha@chery.com', '17878276374', 'ad626a07765d44476c9040c7b39c4937', '140321111111111113', '1483434335', '145.54.43.123', '1483434336', null, '0', null, '4', '6', null, null, null, '1493434335', '', '运营部', '助手', null, '1453434335', '1');
INSERT INTO `a_user` VALUES ('5', 'FM00100101', 'chery8907', '576078325@qq.com', '13234334446', null, null, null, null, null, null, '0', null, null, null, null, null, null, '2736000', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('6', '10000111', 'FM1111111', '783@qq.com', '18939840579', null, null, null, null, null, null, '1', null, null, null, null, null, null, '1483372800', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('7', '10004', 'chenyt', 'yingting.chen@intelpure.com', '13918001270', null, null, null, null, null, null, '0', null, null, null, null, null, null, '1485878400', '', null, null, null, null, '1');
INSERT INTO `a_user` VALUES ('8', '279115', 'chenyingting', '277797552@qq.com', '13918001270', null, null, null, null, null, null, '0', null, null, null, null, null, null, '0', '', null, null, null, null, '1');

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
INSERT INTO `b_agent` VALUES ('1', 'IFA1', 'IFA 11', 'chen123@qq.com', '18801621631', '14032111111111111', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '1', '1', '审核不通过，哈哈哈');
INSERT INTO `b_agent` VALUES ('2', 'xyongdaima12345', 'IFA2', 'chen11@fm.com', '18373885166', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '3', '1', null);
INSERT INTO `b_agent` VALUES ('3', 'xyongdaima12345', 'IFA3', 'chen1@fm1.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '3', '1', null);
INSERT INTO `b_agent` VALUES ('4', 'xyongdaima123456', 'IFA4', 'chen1@fm.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '4', '0', null);
INSERT INTO `b_agent` VALUES ('5', 'xyongdaima12347', 'IFA5', 'chen2@fm.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '4', '0', null);
INSERT INTO `b_agent` VALUES ('36', null, 'vadfasdf', '1321321@qq.com', '18801565656', '140321199108020011', '1474270563', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('37', null, 'vestin', '11@qq.com', '18800000000', '140321199108020012', '1474337711', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('38', null, 'vestin2', 'bombzds@163.com', '18801621639', '140321199108020012', '1474341045', null, null, null, null, null, null, null, null, null, '4', '1', '资料都没有，审核毛线，不通过');
INSERT INTO `b_agent` VALUES ('39', null, '张三', 'bombzds2@163.com', '18801621640', '140321111102020012', '1474448361', null, null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('40', null, '123456', '456@qq.com', '18801621637', '140321199105050045', '1474525739', null, null, null, null, null, null, null, null, null, '1', '0', null);

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
INSERT INTO `b_agent_user` VALUES ('1015', '38', 'vestin2', 'bombzds@163.com', '18801621639', 'ad626a07765d44476c9040c7b39c4937', null, '1474341045', '1505877045', '1', '116.231.71.35', '1474617338');
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
-- Table structure for b_app_apply
-- ----------------------------
DROP TABLE IF EXISTS `b_app_apply`;
CREATE TABLE `b_app_apply` (
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
-- Records of b_app_apply
-- ----------------------------

-- ----------------------------
-- Table structure for b_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_collect`;
CREATE TABLE `b_collect` (
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
-- Records of b_collect
-- ----------------------------

-- ----------------------------
-- Table structure for b_message
-- ----------------------------
DROP TABLE IF EXISTS `b_message`;
CREATE TABLE `b_message` (
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
-- Records of b_message
-- ----------------------------

-- ----------------------------
-- Table structure for b_refund
-- ----------------------------
DROP TABLE IF EXISTS `b_refund`;
CREATE TABLE `b_refund` (
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
-- Records of b_refund
-- ----------------------------

-- ----------------------------
-- Table structure for b_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `b_subscribe`;
CREATE TABLE `b_subscribe` (
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
-- Records of b_subscribe
-- ----------------------------

-- ----------------------------
-- Table structure for b_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `b_withdraw`;
CREATE TABLE `b_withdraw` (
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
-- Records of b_withdraw
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
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `orderno` varchar(32) DEFAULT NULL COMMENT '订单编号',
  `aproductid` int(11) DEFAULT NULL,
  `bproductid` int(11) DEFAULT NULL,
  `sellerid` int(11) DEFAULT NULL COMMENT '卖方id',
  `buyerid` int(11) DEFAULT NULL COMMENT '买方id',
  `type` tinyint(1) DEFAULT NULL COMMENT '类型  1 大B->小B   2 小B->C',
  `share` int(11) DEFAULT NULL COMMENT '份额',
  `networth` varchar(32) DEFAULT NULL COMMENT '买时净值',
  `status` tinyint(2) DEFAULT NULL COMMENT '状态 审核 反审核 作废 反作废',
  `hash` varchar(64) DEFAULT NULL COMMENT '加密hash',
  `createtime` int(11) DEFAULT NULL COMMENT '订单创建时间',
  `paytime` int(11) DEFAULT NULL COMMENT '付款成功时间',
  `paytype` tinyint(2) DEFAULT NULL COMMENT '付款类型',
  `paystatus` tinyint(1) DEFAULT NULL COMMENT '支付状态 0未付款 1 已付款',
  `amount` float(11,0) DEFAULT NULL COMMENT '总金额',
  `price` float(11,0) DEFAULT NULL COMMENT '单价',
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
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for param
-- ----------------------------
DROP TABLE IF EXISTS `param`;
CREATE TABLE `param` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL COMMENT '用户ID',
  `name` varchar(255) DEFAULT NULL COMMENT '参数key',
  `value` varchar(255) DEFAULT NULL COMMENT '声明内容',
  `createtime` int(11) DEFAULT NULL COMMENT '创建时间',
  `isdeleted` varchar(255) DEFAULT NULL COMMENT '是否删除',
  `type` varchar(255) DEFAULT NULL COMMENT '0 平台方 1 IFA方 2 C方',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`userid`),
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
-- Table structure for settlement
-- ----------------------------
DROP TABLE IF EXISTS `settlement`;
CREATE TABLE `settlement` (
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
-- Records of settlement
-- ----------------------------

-- ----------------------------
-- View structure for a_b_user
-- ----------------------------
DROP VIEW IF EXISTS `a_b_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `a_b_user` AS select 'a_user' AS `flag`,`a_user`.`id` AS `id`,`a_user`.`username` AS `username`,`a_user`.`email` AS `email`,`a_user`.`phone` AS `phone` from `a_user` union select 'b_agent_user' AS `flag`,`b_agent_user`.`id` AS `id`,`b_agent_user`.`username` AS `username`,`b_agent_user`.`email` AS `email`,`b_agent_user`.`phone` AS `phone` from `b_agent_user` ;

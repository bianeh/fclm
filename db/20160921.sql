/*
Navicat MySQL Data Transfer

Source Server         : fengchao 云测试
Source Server Version : 50621
Source Host           : 139.224.27.12:3306
Source Database       : Fengchao

Target Server Type    : MYSQL
Target Server Version : 50621
File Encoding         : 65001

Date: 2016-09-21 16:34:49
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
INSERT INTO `a_access` VALUES ('1', '7', '1', null);
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
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='消息管理';

-- ----------------------------
-- Records of a_message
-- ----------------------------
INSERT INTO `a_message` VALUES ('1', null, '1', '0', '这是条发给级别为1的IFA的消息', '1474170072', '1', '1474170079', '0');
INSERT INTO `a_message` VALUES ('2', null, '2', '2', '这是发送给级别为2级及2级以上的消息', '1474170079', '2', null, '0');
INSERT INTO `a_message` VALUES ('3', null, '4', '4', '这是发送给级别为4级及4级以下的消息', '1474170099', '0', null, '0');
INSERT INTO `a_message` VALUES ('5', null, '3', '2', '时间过的真是快啊...', '1474253998', '0', '0', '0');
INSERT INTO `a_message` VALUES ('6', null, '2', '0', 'setInc和setDec方法支持延迟更新', '1474258246', '0', '0', '1');
INSERT INTO `a_message` VALUES ('7', null, '3', '0', '我们的祖国多么伟大！', '1474258395', '0', '0', '0');
INSERT INTO `a_message` VALUES ('8', null, '3', '2', '填写消息内容', '1474380352', '0', '0', '0');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻表';

-- ----------------------------
-- Records of a_news
-- ----------------------------

-- ----------------------------
-- Table structure for a_news_attachement
-- ----------------------------
DROP TABLE IF EXISTS `a_news_attachement`;
CREATE TABLE `a_news_attachement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '附件名称',
  `type` int(4) NOT NULL COMMENT '类型',
  `path` varchar(255) NOT NULL COMMENT '路径',
  `createtime` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻附件';

-- ----------------------------
-- Records of a_news_attachement
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='新闻分类表';

-- ----------------------------
-- Records of a_news_category
-- ----------------------------
INSERT INTO `a_news_category` VALUES ('1', '军事新闻', '0', '0', '', '208484554', '0');
INSERT INTO `a_news_category` VALUES ('2', '娱乐新闻', '0', '0', '', '12315614', '0');
INSERT INTO `a_news_category` VALUES ('11', '刘杰dev', '1', '0', 'dev', '1474443215', '0');
INSERT INTO `a_news_category` VALUES ('10', '', '1', '0', '', '1474443151', '0');
INSERT INTO `a_news_category` VALUES ('3', '实事新闻', '0', '0', '', '456456', '0');
INSERT INTO `a_news_category` VALUES ('4', '军事新闻1', '1', '0', '', '3423', '0');
INSERT INTO `a_news_category` VALUES ('5', '军事新闻2', '1', '0', '', '5555', '0');
INSERT INTO `a_news_category` VALUES ('6', '娱乐新闻1', '2', '0', '', '54564', '0');
INSERT INTO `a_news_category` VALUES ('7', '娱乐新闻2', '2', '0', '', '4564', '0');
INSERT INTO `a_news_category` VALUES ('8', '时事新闻1', '3', '0', '', '456', '0');
INSERT INTO `a_news_category` VALUES ('9', '时事新闻2', '3', '0', '', '456', '0');
INSERT INTO `a_news_category` VALUES ('12', '添加分类', '0', '0', 'adfdfd', '1474443372', '0');
INSERT INTO `a_news_category` VALUES ('13', '六点层级', '1', '1', 'fddsfa', '1474446566', '0');

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻内容表';

-- ----------------------------
-- Records of a_news_content
-- ----------------------------

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
) ENGINE=MyISAM AUTO_INCREMENT=144 DEFAULT CHARSET=utf8 COMMENT='功能节点表';

-- ----------------------------
-- Records of a_node
-- ----------------------------
INSERT INTO `a_node` VALUES ('3', 'Product', '产品管理', '1', null, '2', '1', '1');
INSERT INTO `a_node` VALUES ('4', 'Train', '培训管理', '1', null, '3', '1', '1');
INSERT INTO `a_node` VALUES ('5', 'Crm', 'CRM管理', '1', null, '4', '1', '1');
INSERT INTO `a_node` VALUES ('6', 'Trans', '交易管理', '1', null, '5', '1', '1');
INSERT INTO `a_node` VALUES ('7', 'Admin', '用户中心', '1', null, '6', '1', '1');
INSERT INTO `a_node` VALUES ('8', 'News', '新闻管理', '1', null, '7', '1', '1');
INSERT INTO `a_node` VALUES ('9', 'Member', '会员管理', '1', null, '1', '5', '2');
INSERT INTO `a_node` VALUES ('10', 'Custom', '客户管理', '1', null, '2', '5', '2');
INSERT INTO `a_node` VALUES ('11', 'Service', '服务管理', '1', null, '3', '5', '2');
INSERT INTO `a_node` VALUES ('12', 'Active', '活动管理', '1', null, '4', '5', '2');
INSERT INTO `a_node` VALUES ('13', 'Strategy', '营销策略配置', '1', null, '5', '5', '2');
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
INSERT INTO `a_node` VALUES ('1', 'System', '蜂巢系统管理后台', '1', null, '1', '0', '0');

-- ----------------------------
-- Table structure for a_node_##copy
-- ----------------------------
DROP TABLE IF EXISTS `a_node_##copy`;
CREATE TABLE `a_node_##copy` (
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
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COMMENT='功能节点表';

-- ----------------------------
-- Records of a_node_##copy
-- ----------------------------
INSERT INTO `a_node_##copy` VALUES ('1', 'System', '蜂巢系统管理后台', '1', null, null, '0', '0');
INSERT INTO `a_node_##copy` VALUES ('2', 'Node', '菜单管理', '1', null, null, '1', '1');
INSERT INTO `a_node_##copy` VALUES ('3', 'Product', '产品管理', '1', null, null, '1', '1');
INSERT INTO `a_node_##copy` VALUES ('4', 'Train', '培训管理', '1', null, null, '1', '1');
INSERT INTO `a_node_##copy` VALUES ('5', 'Crm', 'CRM管理', '1', null, null, '1', '1');
INSERT INTO `a_node_##copy` VALUES ('6', 'Trans', '交易管理', '1', null, null, '1', '1');
INSERT INTO `a_node_##copy` VALUES ('7', 'Admin', '用户中心', '1', null, null, '1', '1');
INSERT INTO `a_node_##copy` VALUES ('8', 'News', '新闻管理', '1', null, null, '1', '1');
INSERT INTO `a_node_##copy` VALUES ('9', 'Member', '会员管理', '1', null, '1', '5', '2');
INSERT INTO `a_node_##copy` VALUES ('10', 'Custom', '客户管理', '1', null, '2', '5', '2');
INSERT INTO `a_node_##copy` VALUES ('11', 'Service', '服务管理', '1', null, '3', '5', '2');
INSERT INTO `a_node_##copy` VALUES ('12', 'Active', '活动管理', '1', null, '4', '5', '2');
INSERT INTO `a_node_##copy` VALUES ('13', 'Strategy', '营销策略配置', '1', null, '5', '5', '2');
INSERT INTO `a_node_##copy` VALUES ('14', 'User', '用户管理', '1', null, '1', '7', '2');
INSERT INTO `a_node_##copy` VALUES ('15', 'Role', '角色管理', '1', null, '2', '7', '2');
INSERT INTO `a_node_##copy` VALUES ('16', 'Message', '消息中心', '1', null, '3', '7', '2');
INSERT INTO `a_node_##copy` VALUES ('17', 'Feedback', '意见反馈', '1', null, '4', '7', '2');
INSERT INTO `a_node_##copy` VALUES ('18', 'index', '管理员列表', '1', null, null, '14', '3');
INSERT INTO `a_node_##copy` VALUES ('19', 'addPage', '展示新增', '1', null, null, '14', '3');
INSERT INTO `a_node_##copy` VALUES ('20', 'delete', '删除管理员', '1', null, null, '14', '3');
INSERT INTO `a_node_##copy` VALUES ('21', 'disable', '临时禁用管理员', '1', null, null, '14', '3');
INSERT INTO `a_node_##copy` VALUES ('22', 'edit', '修改管理员', '1', null, null, '14', '3');
INSERT INTO `a_node_##copy` VALUES ('23', 'index', '列表角色', '1', null, null, '15', '3');
INSERT INTO `a_node_##copy` VALUES ('24', 'add', '新增角色', '1', null, null, '15', '3');
INSERT INTO `a_node_##copy` VALUES ('25', 'delete', '删除角色', '1', null, null, '15', '3');
INSERT INTO `a_node_##copy` VALUES ('26', 'edit', '修改角色', '1', null, null, '15', '3');
INSERT INTO `a_node_##copy` VALUES ('27', 'index', '消息列表', '1', null, null, '16', '3');
INSERT INTO `a_node_##copy` VALUES ('28', 'add', '新增消息', '1', null, null, '16', '3');
INSERT INTO `a_node_##copy` VALUES ('29', 'delete', '删除消息', '1', null, null, '16', '3');
INSERT INTO `a_node_##copy` VALUES ('30', 'edit', '修改消息', '1', null, null, '16', '3');
INSERT INTO `a_node_##copy` VALUES ('31', 'send', '发送消息', '1', null, null, '16', '3');
INSERT INTO `a_node_##copy` VALUES ('32', 'index', '意见列表', '1', null, null, '17', '3');
INSERT INTO `a_node_##copy` VALUES ('33', 'reponse', '回复消息', '1', null, null, '17', '3');
INSERT INTO `a_node_##copy` VALUES ('34', 'index', '会员列表', '1', null, null, '9', '3');
INSERT INTO `a_node_##copy` VALUES ('35', 'add', '新增会员', '1', null, null, '9', '3');
INSERT INTO `a_node_##copy` VALUES ('36', 'delete', '删除会员', '1', null, null, '9', '3');
INSERT INTO `a_node_##copy` VALUES ('37', 'edit', '修改会员', '1', null, null, '9', '3');
INSERT INTO `a_node_##copy` VALUES ('38', 'forbiden', '冻结会员', '1', null, null, '9', '3');
INSERT INTO `a_node_##copy` VALUES ('39', 'grade', '评级会员', '1', null, null, '9', '3');
INSERT INTO `a_node_##copy` VALUES ('40', 'verify', '审核会员', '1', null, null, '9', '3');
INSERT INTO `a_node_##copy` VALUES ('41', 'Strategyitem', '营销策略项', '1', null, '6', '5', '2');
INSERT INTO `a_node_##copy` VALUES ('43', 'add', '添加策略项', '1', null, null, '41', '3');
INSERT INTO `a_node_##copy` VALUES ('42', 'index', '营销策略项列表', '1', null, null, '41', '3');
INSERT INTO `a_node_##copy` VALUES ('44', 'delete', '删除策略项', '1', null, null, '41', '3');
INSERT INTO `a_node_##copy` VALUES ('45', 'edit', '修改策略项', '1', null, null, '41', '3');
INSERT INTO `a_node_##copy` VALUES ('46', 'index', '策略列表', '1', null, null, '13', '3');
INSERT INTO `a_node_##copy` VALUES ('47', 'add', '新增策略', '1', null, null, '13', '3');
INSERT INTO `a_node_##copy` VALUES ('48', 'delete', '删除策略', '1', null, null, '13', '3');
INSERT INTO `a_node_##copy` VALUES ('49', 'edit', '修改策略', '1', null, null, '13', '3');
INSERT INTO `a_node_##copy` VALUES ('50', 'index', '活动列表', '1', null, null, '12', '3');
INSERT INTO `a_node_##copy` VALUES ('51', 'add', '添加活动', '1', null, null, '12', '3');
INSERT INTO `a_node_##copy` VALUES ('52', 'edit', '修改活动', '1', null, null, '12', '3');
INSERT INTO `a_node_##copy` VALUES ('53', 'delete', '删除活动', '1', null, null, '12', '3');
INSERT INTO `a_node_##copy` VALUES ('54', 'publish', '发布活动', '1', null, null, '12', '3');
INSERT INTO `a_node_##copy` VALUES ('55', 'check', '活动回复列表', '1', null, null, '12', '3');
INSERT INTO `a_node_##copy` VALUES ('56', 'index', '服务列表', '1', null, null, '11', '3');
INSERT INTO `a_node_##copy` VALUES ('57', 'add', '添加服务记录', '1', null, null, '11', '3');
INSERT INTO `a_node_##copy` VALUES ('58', 'delete', '删除服务记录', '1', null, null, '11', '3');
INSERT INTO `a_node_##copy` VALUES ('59', 'edit', '修改服务记录', '1', null, null, '11', '3');
INSERT INTO `a_node_##copy` VALUES ('60', 'index', '客户列表', '1', null, null, '10', '3');
INSERT INTO `a_node_##copy` VALUES ('61', 'verify', '审核客户', '1', null, null, '10', '3');
INSERT INTO `a_node_##copy` VALUES ('62', 'forbiden', '冻结客户', '1', null, null, '10', '3');
INSERT INTO `a_node_##copy` VALUES ('63', 'merge', '合并客户', '1', null, null, '10', '3');
INSERT INTO `a_node_##copy` VALUES ('64', 'Sysset', '系统管理', '1', null, null, '1', '1');
INSERT INTO `a_node_##copy` VALUES ('65', 'Params', '参数管理', '1', null, '1', '64', '2');
INSERT INTO `a_node_##copy` VALUES ('66', 'Profile', '基础资料配置', '1', null, '2', '64', '2');
INSERT INTO `a_node_##copy` VALUES ('67', 'Interface', '接口配置', '1', null, '3', '64', '2');
INSERT INTO `a_node_##copy` VALUES ('68', 'Domain', '域名管理', '1', null, '4', '64', '2');
INSERT INTO `a_node_##copy` VALUES ('69', 'Help', '帮助管理', '1', null, '5', '64', '2');
INSERT INTO `a_node_##copy` VALUES ('70', 'add', '添加参数', '0', null, null, '65', '3');
INSERT INTO `a_node_##copy` VALUES ('71', 'edit', '修改参数', '0', null, null, '65', '3');
INSERT INTO `a_node_##copy` VALUES ('72', 'add', '添加资料', '0', null, null, '66', '3');
INSERT INTO `a_node_##copy` VALUES ('73', 'edit', '修改资料', '0', null, null, '66', '3');
INSERT INTO `a_node_##copy` VALUES ('74', 'delete', '删除资料', '0', null, null, '66', '3');
INSERT INTO `a_node_##copy` VALUES ('75', 'add', '添加接口', '0', null, null, '67', '3');
INSERT INTO `a_node_##copy` VALUES ('76', 'forbiden', '暂停接口', '0', null, null, '67', '3');
INSERT INTO `a_node_##copy` VALUES ('77', 'edit', '修改接口', '0', null, null, '67', '3');
INSERT INTO `a_node_##copy` VALUES ('78', 'delete', '删除接口', '0', null, null, '67', '3');
INSERT INTO `a_node_##copy` VALUES ('79', 'enable', '启用接口', '0', null, null, '67', '3');
INSERT INTO `a_node_##copy` VALUES ('80', 'index', '参数列表', '0', null, null, '65', '3');
INSERT INTO `a_node_##copy` VALUES ('81', 'index', '资料列表', '0', null, null, '66', '3');
INSERT INTO `a_node_##copy` VALUES ('82', 'index', '接口列表', '0', null, null, '67', '3');
INSERT INTO `a_node_##copy` VALUES ('83', 'index', '域名列表', '0', null, null, '68', '3');
INSERT INTO `a_node_##copy` VALUES ('84', 'add', '添加域名', '0', null, null, '68', '3');
INSERT INTO `a_node_##copy` VALUES ('85', 'forbiden', '暂停域名', '0', null, null, '68', '3');
INSERT INTO `a_node_##copy` VALUES ('86', 'edit', '修改域名', '0', null, null, '68', '3');
INSERT INTO `a_node_##copy` VALUES ('87', 'delete', '删除域名', '0', null, null, '68', '3');
INSERT INTO `a_node_##copy` VALUES ('89', 'index', '帮助显示', '0', null, null, '69', '3');
INSERT INTO `a_node_##copy` VALUES ('88', 'enable', '启用域名', '0', null, null, '68', '3');
INSERT INTO `a_node_##copy` VALUES ('90', 'Newscat', '新闻栏目', '0', null, '1', '8', '2');
INSERT INTO `a_node_##copy` VALUES ('92', 'index', '栏目列表', '0', null, null, '90', '3');
INSERT INTO `a_node_##copy` VALUES ('91', 'Newscon', '内容管理', '0', null, '2', '8', '2');
INSERT INTO `a_node_##copy` VALUES ('93', 'add', '添加栏目', '0', null, null, '90', '3');
INSERT INTO `a_node_##copy` VALUES ('94', 'edit', '修改栏目', '0', null, null, '90', '3');
INSERT INTO `a_node_##copy` VALUES ('95', 'delete', '删除栏目', '0', null, null, '90', '3');
INSERT INTO `a_node_##copy` VALUES ('96', 'index', '内容列表', '0', null, null, '91', '3');
INSERT INTO `a_node_##copy` VALUES ('97', 'add', '添加内容', '0', null, null, '91', '3');
INSERT INTO `a_node_##copy` VALUES ('98', 'publish', '发布内容', '0', null, null, '91', '3');
INSERT INTO `a_node_##copy` VALUES ('99', 'edit', '修改内容', '0', null, null, '91', '3');
INSERT INTO `a_node_##copy` VALUES ('100', 'delete', '删除内容', '0', null, null, '91', '3');
INSERT INTO `a_node_##copy` VALUES ('101', 'Product', '产品发布', '0', null, '1', '3', '2');
INSERT INTO `a_node_##copy` VALUES ('102', 'Networth', '净值管理', '0', null, '2', '3', '2');
INSERT INTO `a_node_##copy` VALUES ('103', 'Saleconfig', '销售策略配置', '0', null, '3', '3', '2');
INSERT INTO `a_node_##copy` VALUES ('104', 'Progress', '募集进度', '0', null, '4', '3', '2');
INSERT INTO `a_node_##copy` VALUES ('105', 'Recommand', '推荐管理', '0', null, '5', '3', '2');
INSERT INTO `a_node_##copy` VALUES ('106', 'index', '产品列表', '0', null, null, '101', '3');
INSERT INTO `a_node_##copy` VALUES ('107', 'add', '添加产品', '0', null, null, '101', '3');
INSERT INTO `a_node_##copy` VALUES ('108', 'edit', '修改产品', '0', null, null, '101', '3');
INSERT INTO `a_node_##copy` VALUES ('109', 'publish', '发布产品', '0', null, null, '101', '3');
INSERT INTO `a_node_##copy` VALUES ('110', 'off', '下架产品', '0', null, null, '101', '3');
INSERT INTO `a_node_##copy` VALUES ('111', 'delete', '删除产品', '0', null, null, '101', '3');
INSERT INTO `a_node_##copy` VALUES ('112', 'disclosure', '产品披露', '0', null, null, '101', '3');
INSERT INTO `a_node_##copy` VALUES ('113', 'index', '净值列表', '0', null, null, '102', '3');
INSERT INTO `a_node_##copy` VALUES ('114', 'edit', '修改净值', '0', null, null, '102', '3');
INSERT INTO `a_node_##copy` VALUES ('115', 'import', '净值批量导入', '0', null, null, '102', '3');
INSERT INTO `a_node_##copy` VALUES ('116', 'index', '募集进度列表', '0', null, null, '104', '3');
INSERT INTO `a_node_##copy` VALUES ('117', 'index', '推荐管理列表', '0', null, null, '105', '3');
INSERT INTO `a_node_##copy` VALUES ('118', 'index', '销售策略配置列表', '0', null, null, '103', '3');
INSERT INTO `a_node_##copy` VALUES ('119', 'add', '添加产品销售策略', '0', null, null, '103', '3');
INSERT INTO `a_node_##copy` VALUES ('120', 'edit', '编辑产品销售策略', '0', null, null, '103', '3');
INSERT INTO `a_node_##copy` VALUES ('121', 'delete', '删除产品销售策略', '0', null, null, '103', '3');
INSERT INTO `a_node_##copy` VALUES ('122', 'Knowledge', '知识中心', '0', null, '1', '4', '2');
INSERT INTO `a_node_##copy` VALUES ('123', 'Question', '题库管理', '0', null, '2', '4', '2');
INSERT INTO `a_node_##copy` VALUES ('124', 'Riskquestion', '风险承受测试题库管理', '0', null, '3', '4', '2');
INSERT INTO `a_node_##copy` VALUES ('125', 'Exam', '在线考试', '0', null, '4', '4', '2');
INSERT INTO `a_node_##copy` VALUES ('126', 'index', '在线考试列表', '0', null, null, '125', '3');
INSERT INTO `a_node_##copy` VALUES ('127', 'index', '风险题库列表', '0', null, null, '124', '3');
INSERT INTO `a_node_##copy` VALUES ('128', 'add', '添加风险题', '0', null, null, '124', '3');
INSERT INTO `a_node_##copy` VALUES ('129', 'edit', '编辑风险题', '0', null, null, '124', '3');
INSERT INTO `a_node_##copy` VALUES ('130', 'delete', '删除风险题', '0', null, null, '124', '3');
INSERT INTO `a_node_##copy` VALUES ('131', 'index', '题库列表', '0', null, null, '123', '3');
INSERT INTO `a_node_##copy` VALUES ('132', 'add', '添加题', '0', null, null, '123', '3');
INSERT INTO `a_node_##copy` VALUES ('133', 'edit', '修改题', '0', null, null, '123', '3');
INSERT INTO `a_node_##copy` VALUES ('134', 'delete', '删除', '0', null, null, '123', '3');
INSERT INTO `a_node_##copy` VALUES ('135', 'index', '知识列表', '0', null, null, '122', '2');
INSERT INTO `a_node_##copy` VALUES ('136', 'index', '资料列表', '0', null, null, '66', '3');
INSERT INTO `a_node_##copy` VALUES ('137', 'add', '保存用户', '0', null, null, '14', '3');

-- ----------------------------
-- Table structure for a_product
-- ----------------------------
DROP TABLE IF EXISTS `a_product`;
CREATE TABLE `a_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productno` varchar(32) DEFAULT NULL COMMENT '产品编号',
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='平台管理员角色表';

-- ----------------------------
-- Records of a_role
-- ----------------------------
INSERT INTO `a_role` VALUES ('1', '超级管理员', '0', '0', '1', '超级用户');
INSERT INTO `a_role` VALUES ('2', '管理员', '1', '1', '1', '几乎拥有全部权限');
INSERT INTO `a_role` VALUES ('3', '新闻管理员', '1', '1', '1', '新闻管理');
INSERT INTO `a_role` VALUES ('4', '编辑', '3', '2', '1', '编写，保存新闻');
INSERT INTO `a_role` VALUES ('5', '产品管理员', '2', '2', '1', '产品管理员');
INSERT INTO `a_role` VALUES ('6', '产品编辑员', '5', '3', '1', '产品编辑');
INSERT INTO `a_role` VALUES ('7', '产品发布员', '5', '3', '1', '产品发布员');
INSERT INTO `a_role` VALUES ('10', '产品审核员', '5', '3', '1', '产品审核员');
INSERT INTO `a_role` VALUES ('11', '栏目管理员', '3', '2', '1', '栏目管理人员，主要管理新闻栏目');
INSERT INTO `a_role` VALUES ('12', '', '1', '1', '1', '');

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
INSERT INTO `a_role_user` VALUES ('1', '2', null);
INSERT INTO `a_role_user` VALUES ('2', '2', null);

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
  `status` tinyint(4) DEFAULT '1' COMMENT '1: 正常使用 2: 临时禁用 3:禁用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userid` (`id`) USING HASH
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_user
-- ----------------------------
INSERT INTO `a_user` VALUES ('1', 'FM00010001', 'root', 'admin@fm.com', '18801621638', 'ad626a07765d44476c9040c7b39c4937', '140321111111111111', '1483434334', '116.231.71.35', '1474445489', '1', '0', null, '4', '4', null, null, null, '1536735673', '大公司A', '产品部', '总监', '', '1453434335', '1');
INSERT INTO `a_user` VALUES ('2', 'FM00010002', 'chery', 'chery@fm.com', '18930948590', 'ad626a07765d44476c9040c7b39c4937', '140321111111111112', '1483434334', '145.54.43.123', '1483434334', '2', '0', null, '4', '6', null, null, null, '1493434334', '小公司B', '运营部', '副总监', null, '1453434335', '1');
INSERT INTO `a_user` VALUES ('3', 'FM00010003', 'haha', 'haha@chery.com', '17878276374', 'ad626a07765d44476c9040c7b39c4937', '140321111111111113', '1483434335', '145.54.43.123', '1483434336', null, '0', null, '4', '6', null, null, null, '1493434335', '', '运营部', '助手', null, '1453434335', '1');

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
  `userlevel` tinyint(4) DEFAULT NULL COMMENT '客户级别',
  `computerlevel` varchar(32) DEFAULT NULL,
  `englishlevel` varchar(32) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `degree` varchar(32) DEFAULT NULL COMMENT '学位',
  `education` varchar(32) DEFAULT NULL COMMENT '学历',
  `risklevel` varchar(32) DEFAULT NULL COMMENT '风险测试等级',
  `cuserid` int(11) DEFAULT NULL COMMENT 'agent 默认拥有的c账户id',
  `status` tinyint(4) DEFAULT NULL COMMENT '用户可用状态 0未审核 1 可用（审核通过） 2 不可用(审核不通过) 3 不可用（被冻结） 4 可用（解冻） ',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `ipaddr` (`phone`),
  KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_agent
-- ----------------------------
INSERT INTO `b_agent` VALUES ('1', 'IFA1', 'IFA 1', 'chen123@qq.com', '18373885166', '14032111111111111', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '1');
INSERT INTO `b_agent` VALUES ('2', 'xyongdaima12345', 'IFA2', 'chen11@fm.com', '18373885166', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '4');
INSERT INTO `b_agent` VALUES ('3', 'xyongdaima12345', 'IFA3', 'chen1@fm1.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '3');
INSERT INTO `b_agent` VALUES ('4', 'xyongdaima123456', 'IFA4', 'chen1@fm.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '4');
INSERT INTO `b_agent` VALUES ('5', 'xyongdaima12347', 'IFA5', 'chen2@fm.com', '18373885161', '14032111111111112', '1', null, '1', '1', '1', 'cn', '1', '1', '1', '1', '4');
INSERT INTO `b_agent` VALUES ('36', null, 'vadfasdf', '1321321@qq.com', '18801565656', '140321199108020011', '1474270563', null, null, null, null, null, null, null, null, null, '1');
INSERT INTO `b_agent` VALUES ('37', null, 'vestin', '11@qq.com', '18800000000', '140321199108020012', '1474337711', null, null, null, null, null, null, null, null, null, '0');
INSERT INTO `b_agent` VALUES ('38', null, 'vestin2', 'bombzds@163.com', '18801621639', '140321199108020012', '1474341045', null, null, null, null, null, null, null, null, null, '4');

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
) ENGINE=MyISAM AUTO_INCREMENT=1016 DEFAULT CHARSET=utf8 COMMENT='IFA 用户登陆账户表';

-- ----------------------------
-- Records of b_agent_user
-- ----------------------------
INSERT INTO `b_agent_user` VALUES ('1001', '1', 'Chery1', '7853@qq.com', '1898989898', 'sdasdasdasda', '1', '1', '1', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1002', '1', 'chery2', 'sad@qq.com', '123232323', 'adsfsdfsdf', '2', '1', '1', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1003', '2', 'Chery3', 'sdaf@qq.com', '12232323', 'aasdfadsfadsf', '1', '1', '1', '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1013', '36', 'vadfasdf', '1321321@qq.com', '18801565656', 'ad626a07765d44476c9040c7b39c4937', null, '1474270563', null, '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1014', '37', 'vestin', '11@qq.com', '18800000000', 'ad626a07765d44476c9040c7b39c4937', null, '1474337711', null, '1', null, null);
INSERT INTO `b_agent_user` VALUES ('1015', '38', 'vestin2', 'bombzds@163.com', '18801621639', 'ad626a07765d44476c9040c7b39c4937', null, '1474341045', '1505877045', '1', '116.231.71.35', '1474445584');

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
-- Table structure for b_product
-- ----------------------------
DROP TABLE IF EXISTS `b_product`;
CREATE TABLE `b_product` (
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
-- Records of b_product
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
INSERT INTO `c_user` VALUES ('1002', '2', '81686', '76878@qq.com', '45895256879', 'ad626a07765d44476c9040c7b39c4937', '34047057058237183', null, null, null, null, null, '1', null, null, null, null, null, null, '2');
INSERT INTO `c_user` VALUES ('1003', '1', '61051', '61519@qq.com', '24086004449', 'ad626a07765d44476c9040c7b39c4937', '57116768114153055', null, null, null, null, null, '1', null, null, null, null, null, null, '0');

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
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='邀请注册表';

-- ----------------------------
-- Records of invite
-- ----------------------------
INSERT INTO `invite` VALUES ('21', null, '37', '1', '1474337679', '140321199108020012', '18800000000', '11@qq.com', 'vestin', '1474424079', '898453', 'ceb07c42');
INSERT INTO `invite` VALUES ('22', null, null, '1', '1474338050', '140321111111111111', '18801222222', '11@qq.com', 'nihao', '1474424450', '557110', 'd80a47c2');
INSERT INTO `invite` VALUES ('23', null, '38', '1', '1474341020', '140321199108020012', '18801621639', 'bombzds@163.com', 'vestin2', '1474427420', '752467', '0dfd4964');
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
-- Table structure for shop_template
-- ----------------------------
DROP TABLE IF EXISTS `shop_template`;
CREATE TABLE `shop_template` (
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
-- Records of shop_template
-- ----------------------------

-- ----------------------------
-- View structure for a_b_user
-- ----------------------------
DROP VIEW IF EXISTS `a_b_user`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`%` SQL SECURITY DEFINER VIEW `a_b_user` AS select 'a_user' AS `flag`,`a_user`.`id` AS `id`,`a_user`.`username` AS `username`,`a_user`.`email` AS `email`,`a_user`.`phone` AS `phone` from `a_user` union select 'b_agent_user' AS `flag`,`b_agent_user`.`id` AS `id`,`b_agent_user`.`username` AS `username`,`b_agent_user`.`email` AS `email`,`b_agent_user`.`phone` AS `phone` from `b_agent_user` ;

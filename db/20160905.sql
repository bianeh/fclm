/*
Navicat MySQL Data Transfer

Source Server         : fengchao
Source Server Version : 50547
Source Host           : 172.16.20.191:3306
Source Database       : newdb

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-09-05 17:21:47
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a_activity
-- ----------------------------
DROP TABLE IF EXISTS `a_activity`;
CREATE TABLE `a_activity` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `budget` varchar(255) DEFAULT NULL COMMENT '预算',
  `isforce` varchar(255) DEFAULT NULL COMMENT '是否强制参加',
  `phonenotify` varchar(255) DEFAULT NULL COMMENT '是否电话通知',
  `emailnotify` varchar(255) DEFAULT NULL COMMENT '是否邮件通知',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `buserid` int(11) DEFAULT NULL,
  `ischeck` varchar(255) DEFAULT NULL COMMENT '是否参加',
  `budget` varchar(255) DEFAULT NULL COMMENT '预算',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `ischeck` varchar(255) DEFAULT NULL COMMENT '是否启用',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `buserid` varchar(255) DEFAULT NULL COMMENT '小b id',
  `shopid` int(11) DEFAULT NULL COMMENT '商城id',
  `shopname` varchar(255) DEFAULT NULL COMMENT '商城名',
  `subdomain` varchar(255) DEFAULT NULL,
  `userdomain` varchar(255) DEFAULT NULL,
  `subdomaincreatetime` datetime DEFAULT NULL,
  `userdomaincreatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='域名管理';

-- ----------------------------
-- Records of a_domain
-- ----------------------------

-- ----------------------------
-- Table structure for a_feedback
-- ----------------------------
DROP TABLE IF EXISTS `a_feedback`;
CREATE TABLE `a_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sendid` int(11) DEFAULT NULL COMMENT '投诉方id',
  `recieveid` int(11) DEFAULT NULL COMMENT '接受方id',
  `type` varchar(255) DEFAULT NULL COMMENT '类型 1 c-b   2小b-大b',
  `content` varchar(255) DEFAULT NULL,
  `followid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  `isread` varchar(255) DEFAULT NULL COMMENT '是否阅读',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='意见反馈表';

-- ----------------------------
-- Records of a_feedback
-- ----------------------------

-- ----------------------------
-- Table structure for a_help
-- ----------------------------
DROP TABLE IF EXISTS `a_help`;
CREATE TABLE `a_help` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
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
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='营销策略表';

-- ----------------------------
-- Records of a_marketing_strategy
-- ----------------------------

-- ----------------------------
-- Table structure for a_marketing_strategy_item
-- ----------------------------
DROP TABLE IF EXISTS `a_marketing_strategy_item`;
CREATE TABLE `a_marketing_strategy_item` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '方案名称',
  `description` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '类型 ',
  `value` varchar(255) DEFAULT NULL COMMENT '根据type值不同，填写不同的值。如：打折，填写1，表示为打1折；返现10，表示返现10元',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='营销策略项';

-- ----------------------------
-- Records of a_marketing_strategy_item
-- ----------------------------

-- ----------------------------
-- Table structure for a_marketing_strategy_relation
-- ----------------------------
DROP TABLE IF EXISTS `a_marketing_strategy_relation`;
CREATE TABLE `a_marketing_strategy_relation` (
  `itemid` int(11) DEFAULT NULL COMMENT '策略项id',
  `strategyid` int(11) DEFAULT NULL COMMENT '策略id'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='营销策略关联表';

-- ----------------------------
-- Records of a_marketing_strategy_relation
-- ----------------------------

-- ----------------------------
-- Table structure for a_menu
-- ----------------------------
DROP TABLE IF EXISTS `a_menu`;
CREATE TABLE `a_menu` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '目录名称',
  `parentid` int(11) DEFAULT NULL COMMENT '父节点',
  `nodepath` varchar(255) DEFAULT NULL COMMENT '节点路径',
  `isleaf` varchar(255) DEFAULT NULL COMMENT '是否是子节点',
  `path` varchar(255) DEFAULT NULL COMMENT '菜单路径',
  `isdeleted` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_menu
-- ----------------------------

-- ----------------------------
-- Table structure for a_menu_role
-- ----------------------------
DROP TABLE IF EXISTS `a_menu_role`;
CREATE TABLE `a_menu_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `roleid` int(11) DEFAULT NULL,
  `menuid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_menu_role
-- ----------------------------

-- ----------------------------
-- Table structure for a_message
-- ----------------------------
DROP TABLE IF EXISTS `a_message`;
CREATE TABLE `a_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息管理';

-- ----------------------------
-- Records of a_message
-- ----------------------------

-- ----------------------------
-- Table structure for a_news
-- ----------------------------
DROP TABLE IF EXISTS `a_news`;
CREATE TABLE `a_news` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `categoryid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `name` varchar(255) DEFAULT NULL COMMENT '附件名称',
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `name` varchar(255) DEFAULT NULL COMMENT '分类名称',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻分类表';

-- ----------------------------
-- Records of a_news_category
-- ----------------------------

-- ----------------------------
-- Table structure for a_news_content
-- ----------------------------
DROP TABLE IF EXISTS `a_news_content`;
CREATE TABLE `a_news_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `newsid` int(11) DEFAULT NULL,
  `content` text COMMENT '新闻内容',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻内容表';

-- ----------------------------
-- Records of a_news_content
-- ----------------------------

-- ----------------------------
-- Table structure for a_product
-- ----------------------------
DROP TABLE IF EXISTS `a_product`;
CREATE TABLE `a_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '产品名称',
  `catagroyid` int(11) DEFAULT NULL COMMENT '类型id',
  `tradingstructure` varchar(255) DEFAULT NULL COMMENT '交易结构',
  `productscale` varchar(255) DEFAULT NULL COMMENT '产品规模',
  `productform` varchar(255) DEFAULT NULL COMMENT '产品形态',
  `publisher` varchar(255) DEFAULT NULL COMMENT '发行人',
  `custodian` varchar(255) DEFAULT NULL COMMENT '托管人',
  `issuesize` double DEFAULT NULL COMMENT '发行规模',
  `minimuminvestmentamount` varchar(255) DEFAULT NULL COMMENT '最低投资额',
  `increasingunit` varchar(255) DEFAULT NULL COMMENT '递增单位',
  `productterm` varchar(255) DEFAULT NULL COMMENT '产品期限',
  `ror` varchar(255) DEFAULT NULL COMMENT '预期收益率',
  `distributionmethod` varchar(255) DEFAULT NULL COMMENT '收益分配方式',
  `tradingrivals` varchar(255) DEFAULT NULL COMMENT '交易对手',
  `investmenttargets` varchar(255) DEFAULT NULL COMMENT '投资标的',
  `contractquantity` varchar(255) DEFAULT NULL COMMENT '合同数量',
  `assetguarantee` varchar(255) DEFAULT NULL COMMENT '资产保证',
  `establishedconditions` varchar(255) DEFAULT NULL COMMENT '成立条件',
  `establishmentscale` varchar(255) DEFAULT NULL COMMENT '成立规模',
  `note` varchar(255) DEFAULT NULL COMMENT '备注信息',
  `riskrating` varchar(255) DEFAULT NULL COMMENT '风险评级',
  `commissionratio` varchar(255) DEFAULT NULL COMMENT '佣金比例',
  `saleslevel` varchar(255) DEFAULT NULL COMMENT '销售等级',
  `createtime` datetime NOT NULL,
  `producttype` varchar(255) DEFAULT NULL COMMENT '产品类型（公募私募）',
  `type` varchar(255) DEFAULT NULL COMMENT '产品状态 0 编辑   1 上架',
  `qualifiedinvestors` varchar(255) DEFAULT NULL COMMENT '是否合格投资人仅见',
  `overseasinvestors` varchar(255) DEFAULT NULL COMMENT '是否适应海外投资人',
  `closedperiod` varchar(255) DEFAULT NULL COMMENT '封闭期',
  `investmentteam` varchar(255) DEFAULT NULL COMMENT '投资团队',
  `investmentstrategy` varchar(255) DEFAULT NULL COMMENT '投资策略',
  `investmentprocess` varchar(255) DEFAULT NULL COMMENT '投资流程',
  `investmentperformance` varchar(255) DEFAULT NULL COMMENT '投资业绩',
  `subscriptionfee` varchar(255) DEFAULT NULL COMMENT '认购费',
  `managementexpense` varchar(255) DEFAULT NULL COMMENT '管理费',
  `redemptionfee` varchar(255) DEFAULT NULL COMMENT '赎回费',
  `performancereward` varchar(255) DEFAULT NULL COMMENT '业绩报酬',
  `onlinedate` datetime DEFAULT NULL COMMENT '上线日期',
  `establishmentday` varchar(255) DEFAULT NULL COMMENT '成立日',
  `openday` varchar(255) DEFAULT NULL COMMENT '开放日',
  `duedate` datetime DEFAULT NULL COMMENT '到期日',
  `terminationday` varchar(255) DEFAULT NULL COMMENT '终止日',
  `abletobuy` varchar(255) DEFAULT NULL COMMENT '是否可以申购',
  `share` varchar(255) DEFAULT NULL COMMENT '份额',
  `networth` varchar(255) DEFAULT NULL COMMENT '净值',
  `abletoredeem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `name` varchar(255) DEFAULT NULL,
  `parentid` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  `isleaf` varchar(255) DEFAULT NULL COMMENT '是否是子节点',
  `description` varchar(255) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='产品类别';

-- ----------------------------
-- Records of a_product_catagroy
-- ----------------------------

-- ----------------------------
-- Table structure for a_role
-- ----------------------------
DROP TABLE IF EXISTS `a_role`;
CREATE TABLE `a_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '角色名称',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_role
-- ----------------------------

-- ----------------------------
-- Table structure for a_thirdpart
-- ----------------------------
DROP TABLE IF EXISTS `a_thirdpart`;
CREATE TABLE `a_thirdpart` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL COMMENT '说明',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
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
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(255) NOT NULL,
  `phone` int(32) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `credientialnu` varchar(255) DEFAULT NULL COMMENT '身份证',
  `createtime` datetime DEFAULT NULL,
  `ipaddr` varchar(255) DEFAULT NULL COMMENT '上次登陆ip',
  `lastlogintime` datetime DEFAULT NULL COMMENT '上次登陆时间',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `isdeleted` varchar(255) DEFAULT NULL COMMENT '是否删除',
  `userlevel` varchar(255) DEFAULT NULL COMMENT '客户级别',
  `computerlevel` varchar(255) DEFAULT NULL,
  `englishlevel` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL COMMENT '学位',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of a_user
-- ----------------------------

-- ----------------------------
-- Table structure for a_user_attachment
-- ----------------------------
DROP TABLE IF EXISTS `a_user_attachment`;
CREATE TABLE `a_user_attachment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
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
  `name` varchar(255) DEFAULT NULL COMMENT '应用名',
  `path` varchar(255) DEFAULT NULL COMMENT '应用路径',
  `isuse` varchar(255) DEFAULT NULL COMMENT '是否启用',
  `isdeleted` varchar(255) DEFAULT NULL COMMENT '是否删除',
  PRIMARY KEY (`id`)
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
  `isuse` varchar(255) DEFAULT NULL COMMENT '是否启用',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='应用关联表';

-- ----------------------------
-- Records of application_relation
-- ----------------------------

-- ----------------------------
-- Table structure for b_app_apply
-- ----------------------------
DROP TABLE IF EXISTS `b_app_apply`;
CREATE TABLE `b_app_apply` (
  `id` int(11) NOT NULL,
  `buserid` int(11) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT '状态',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='app申请表';

-- ----------------------------
-- Records of b_app_apply
-- ----------------------------

-- ----------------------------
-- Table structure for b_message
-- ----------------------------
DROP TABLE IF EXISTS `b_message`;
CREATE TABLE `b_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sendid` int(11) DEFAULT NULL COMMENT '发送方',
  `reciveid` int(11) DEFAULT NULL COMMENT '接收方',
  `content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `amount` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL COMMENT '体现状态',
  `ipaddr` varchar(255) DEFAULT NULL COMMENT '体现用户ip地址',
  `bankcard` varchar(255) DEFAULT NULL COMMENT '本次提现使用的银行卡',
  `createtime` datetime DEFAULT NULL,
  `successtime` datetime DEFAULT NULL COMMENT '提现成功时间',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA用户提现操作表';

-- ----------------------------
-- Records of b_refund
-- ----------------------------

-- ----------------------------
-- Table structure for b_user
-- ----------------------------
DROP TABLE IF EXISTS `b_user`;
CREATE TABLE `b_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(255) NOT NULL,
  `phone` int(32) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `credientialnu` varchar(255) DEFAULT NULL COMMENT '身份证',
  `createtime` datetime DEFAULT NULL,
  `ipaddr` varchar(255) DEFAULT NULL COMMENT '上次登陆ip',
  `lastlogintime` datetime DEFAULT NULL COMMENT '上次登陆时间',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `isdeleted` varchar(255) DEFAULT NULL COMMENT '是否删除',
  `userlevel` varchar(255) DEFAULT NULL COMMENT '客户级别',
  `computerlevel` varchar(255) DEFAULT NULL,
  `englishlevel` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL COMMENT '学位',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_user
-- ----------------------------

-- ----------------------------
-- Table structure for b_user_account
-- ----------------------------
DROP TABLE IF EXISTS `b_user_account`;
CREATE TABLE `b_user_account` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) DEFAULT NULL,
  `profit` varchar(255) DEFAULT NULL COMMENT '收益',
  `commission` varchar(255) DEFAULT NULL COMMENT '已收佣金',
  `balance` varchar(255) DEFAULT NULL COMMENT '余额',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA 方账户表';

-- ----------------------------
-- Records of b_user_account
-- ----------------------------

-- ----------------------------
-- Table structure for c_collect
-- ----------------------------
DROP TABLE IF EXISTS `c_collect`;
CREATE TABLE `c_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `buserid` int(11) DEFAULT NULL,
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(255) NOT NULL,
  `phone` int(32) NOT NULL,
  `password` varchar(32) DEFAULT NULL,
  `credientialnu` varchar(255) DEFAULT NULL COMMENT '身份证',
  `createtime` datetime DEFAULT NULL,
  `ipaddr` varchar(255) DEFAULT NULL COMMENT '上次登陆ip',
  `lastlogintime` datetime DEFAULT NULL COMMENT '上次登陆时间',
  `roleid` int(11) DEFAULT NULL COMMENT '角色id',
  `isdeleted` varchar(255) DEFAULT NULL COMMENT '是否删除',
  `userlevel` varchar(255) DEFAULT NULL COMMENT '客户级别',
  `computerlevel` varchar(255) DEFAULT NULL,
  `englishlevel` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `degree` varchar(255) DEFAULT NULL COMMENT '学位',
  `education` varchar(255) DEFAULT NULL COMMENT '学历',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of c_user
-- ----------------------------

-- ----------------------------
-- Table structure for invite
-- ----------------------------
DROP TABLE IF EXISTS `invite`;
CREATE TABLE `invite` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `inviteid` int(11) DEFAULT NULL,
  `invitedid` int(11) DEFAULT NULL COMMENT '被邀请方id',
  `type` varchar(255) DEFAULT NULL COMMENT '类型，b-b b-c c-c',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邀请注册表';

-- ----------------------------
-- Records of invite
-- ----------------------------

-- ----------------------------
-- Table structure for knowledge
-- ----------------------------
DROP TABLE IF EXISTS `knowledge`;
CREATE TABLE `knowledge` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `keyword` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL COMMENT '来源',
  `categoryid` varchar(255) DEFAULT NULL,
  `likecount` varchar(255) DEFAULT NULL COMMENT '点赞',
  `replaycount` varchar(255) DEFAULT NULL COMMENT '回复总量',
  `viewcount` varchar(255) DEFAULT NULL COMMENT '浏览量',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻表';

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
  `type` varchar(255) DEFAULT NULL COMMENT '类型',
  `path` varchar(255) DEFAULT NULL COMMENT '路径',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻附件';

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻分类表';

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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻内容表';

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
  `buserid` int(11) DEFAULT NULL,
  `followid` int(11) DEFAULT NULL COMMENT '回复 人对方id',
  `content` varchar(255) DEFAULT NULL,
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `sellerid` int(11) DEFAULT NULL COMMENT '卖方id',
  `buyerid` int(11) DEFAULT NULL COMMENT '买方id',
  `type` varchar(255) DEFAULT NULL COMMENT '类型  1 大B->小B   2 小B->C',
  `share` varchar(255) DEFAULT NULL COMMENT '份额',
  `networth` varchar(255) DEFAULT NULL COMMENT '买时净值',
  `status` varchar(255) DEFAULT NULL COMMENT '状态 审核 反审核 作废 反作废',
  `hash` varchar(255) DEFAULT NULL COMMENT '加密hash',
  `createtime` datetime DEFAULT NULL,
  `paytime` datetime DEFAULT NULL COMMENT '付款成功时间',
  `paytype` varchar(255) DEFAULT NULL COMMENT '付款类型',
  `paystatus` varchar(255) DEFAULT NULL COMMENT '支付状态 0未付款 1 已付款',
  PRIMARY KEY (`id`)
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
  `userid` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL COMMENT '声明内容',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '0 平台方 1 IFA方 2 C方',
  PRIMARY KEY (`id`)
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
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='在线测试最终成绩表';

-- ----------------------------
-- Records of question_final_result
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
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  `risktest` varchar(255) DEFAULT NULL COMMENT '是否是风险测试题库',
  PRIMARY KEY (`id`)
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
-- Table structure for refund
-- ----------------------------
DROP TABLE IF EXISTS `refund`;
CREATE TABLE `refund` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `refundid` int(11) DEFAULT NULL COMMENT '退款方',
  `recieveid` int(11) DEFAULT NULL COMMENT '接收退款方',
  `type` varchar(255) DEFAULT NULL COMMENT '类型 b-a   c-a',
  `orderid` int(11) DEFAULT NULL COMMENT '退款订单号',
  `status` varchar(255) DEFAULT NULL COMMENT '退款状态',
  `amount` varchar(255) DEFAULT NULL COMMENT '退款金额',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `buserid` int(11) DEFAULT NULL,
  `cuserid` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL COMMENT '记录类别 1电话拜访 2实体拜访',
  `note` varchar(255) DEFAULT NULL COMMENT '备注',
  `createtime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `buserid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `normalcommissionrate` varchar(255) DEFAULT NULL COMMENT '标准佣金比例',
  `commissionrate` varchar(255) DEFAULT NULL COMMENT '真实佣金比例',
  `status` varchar(255) DEFAULT NULL COMMENT '结算状态',
  `createtime` datetime DEFAULT NULL,
  `isdeleted` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
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
  `createtime` datetime DEFAULT NULL,
  `isfree` varchar(255) DEFAULT NULL COMMENT '是否免费',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='商城模板表';

-- ----------------------------
-- Records of shop_template
-- ----------------------------

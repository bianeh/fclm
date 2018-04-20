/*
Navicat MySQL Data Transfer

Source Server         : fengchao
Source Server Version : 50547
Source Host           : 172.16.20.191:3306
Source Database       : newdb

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-09-11 15:42:57
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
-- Table structure for #b_agent_function
-- ----------------------------
DROP TABLE IF EXISTS `#b_agent_function`;
CREATE TABLE `#b_agent_function` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA 账户功能表';

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
-- Table structure for a_domain
-- ----------------------------
DROP TABLE IF EXISTS `a_domain`;
CREATE TABLE `a_domain` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) NOT NULL COMMENT '小b id',
  `agentid` int(11) NOT NULL COMMENT '商城id',
  `agentname` varchar(255) NOT NULL COMMENT '商城名',
  `subdomain` varchar(255) DEFAULT NULL,
  `userdomain` varchar(255) DEFAULT NULL,
  `subdomaincreatetime` int(11) DEFAULT NULL,
  `userdomaincreatetime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `buserid` (`buserid`) USING BTREE,
  KEY `shopid` (`agentid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='域名管理';

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
-- Table structure for a_feedback
-- ----------------------------
DROP TABLE IF EXISTS `a_feedback`;
CREATE TABLE `a_feedback` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `sendid` int(11) NOT NULL COMMENT '投诉方id',
  `recieveid` int(11) NOT NULL COMMENT '接受方id',
  `type` int(4) NOT NULL COMMENT '类型 1 c-b   2小b-大b',
  `content` varchar(2000) NOT NULL,
  `followid` int(11) DEFAULT NULL,
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  `isread` tinyint(1) DEFAULT NULL COMMENT '是否阅读',
  PRIMARY KEY (`id`),
  KEY `sendid` (`sendid`) USING BTREE,
  KEY `recieveid` (`recieveid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `followid` (`followid`) USING BTREE,
  KEY `isread` (`isread`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='意见反馈表';

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
  `updateuserid` int(11) DEFAULT NULL COMMENT '修改人id',
  PRIMARY KEY (`id`),
  KEY `isdeleted` (`isdeleted`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='营销策略表';

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='营销策略项';

-- ----------------------------
-- Table structure for a_marketing_strategy_relation
-- ----------------------------
DROP TABLE IF EXISTS `a_marketing_strategy_relation`;
CREATE TABLE `a_marketing_strategy_relation` (
  `itemid` int(11) NOT NULL COMMENT '策略项id',
  `strategyid` int(11) NOT NULL COMMENT '策略id',
  KEY `itemid` (`itemid`) USING BTREE,
  KEY `strategyid` (`strategyid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='营销策略关联表';

-- ----------------------------
-- Table structure for a_message
-- ----------------------------
DROP TABLE IF EXISTS `a_message`;
CREATE TABLE `a_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(32) DEFAULT NULL COMMENT '消息类型',
  `content` varchar(255) DEFAULT NULL COMMENT '消息内容',
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `createtime` (`createtime`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='消息管理';

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
-- Table structure for a_news_category
-- ----------------------------
DROP TABLE IF EXISTS `a_news_category`;
CREATE TABLE `a_news_category` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL COMMENT '分类名称',
  `code` varchar(255) DEFAULT NULL COMMENT '新闻编码分类',
  `createtime` int(11) NOT NULL,
  `isdeleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='新闻分类表';

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
-- Table structure for a_role
-- ----------------------------
DROP TABLE IF EXISTS `a_role`;
CREATE TABLE `a_role` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) DEFAULT NULL COMMENT '角色名称',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `ipaddr` (`phone`),
  KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
-- Table structure for b_agent_user
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_user`;
CREATE TABLE `b_agent_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(15) NOT NULL,
  `password` varchar(255) NOT NULL,
  `bagentid` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `createtime` datetime DEFAULT NULL,
  `validatetime` int(11) DEFAULT NULL COMMENT '账户有效期',
  PRIMARY KEY (`id`),
  KEY `bagentid` (`bagentid`) USING BTREE,
  KEY `roleid` (`roleid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA 用户登陆账户表';

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
-- Table structure for b_collect
-- ----------------------------
DROP TABLE IF EXISTS `b_collect`;
CREATE TABLE `b_collect` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `createtime` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `userid` (`userid`) USING BTREE,
  KEY `productid` (`productid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='IFA产品收藏表';

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
-- Table structure for b_product
-- ----------------------------
DROP TABLE IF EXISTS `b_product`;
CREATE TABLE `b_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productno` varchar(32) DEFAULT NULL COMMENT '产品编号',
  `productid` int(11) DEFAULT NULL COMMENT 'a产品id',
  `buserid` int(11) DEFAULT NULL COMMENT '所属b用户',
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
-- Table structure for b_subscribe
-- ----------------------------
DROP TABLE IF EXISTS `b_subscribe`;
CREATE TABLE `b_subscribe` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
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
-- Table structure for b_withdraw
-- ----------------------------
DROP TABLE IF EXISTS `b_withdraw`;
CREATE TABLE `b_withdraw` (
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
-- Table structure for c_user
-- ----------------------------
DROP TABLE IF EXISTS `c_user`;
CREATE TABLE `c_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) NOT NULL COMMENT '所属B用户ID',
  `username` varchar(32) NOT NULL DEFAULT '' COMMENT '用户名',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `phone` int(15) NOT NULL COMMENT '电话',
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
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `buserid` (`buserid`) USING BTREE,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='C端用户表';

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
  `phone` int(15) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `validate` int(11) DEFAULT NULL COMMENT '有效期',
  `invitecode` varchar(32) DEFAULT NULL COMMENT '邀请码',
  `hash` varchar(32) DEFAULT NULL COMMENT '唯一辨识字符串',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`) USING BTREE,
  KEY `inviteid` (`inviteid`),
  KEY `invitedid` (`invitedid`),
  KEY `type` (`type`),
  KEY `createtime` (`createtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='邀请注册表';

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
-- Table structure for settlement
-- ----------------------------
DROP TABLE IF EXISTS `settlement`;
CREATE TABLE `settlement` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `buserid` int(11) DEFAULT NULL,
  `productid` int(11) DEFAULT NULL,
  `normalcommissionrate` varchar(255) DEFAULT NULL COMMENT '标准佣金比例',
  `commissionrate` varchar(255) DEFAULT NULL COMMENT '真实佣金比例',
  `status` tinyint(2) DEFAULT NULL COMMENT '结算状态',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `buserid` (`buserid`),
  KEY `productid` (`productid`),
  KEY `normalcommissionrate` (`normalcommissionrate`),
  KEY `commissionrate` (`commissionrate`),
  KEY `status` (`status`),
  KEY `createtime` (`createtime`),
  KEY `isdeleted` (`isdeleted`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小B结算表';

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
-- Table structure for think_access
-- ----------------------------
DROP TABLE IF EXISTS `think_access`;
CREATE TABLE `think_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_node
-- ----------------------------
DROP TABLE IF EXISTS `think_node`;
CREATE TABLE `think_node` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_role
-- ----------------------------
DROP TABLE IF EXISTS `think_role`;
CREATE TABLE `think_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for think_role_user
-- ----------------------------
DROP TABLE IF EXISTS `think_role_user`;
CREATE TABLE `think_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  `type` int(4) DEFAULT NULL COMMENT '平台划分  1：大B   2:IFA',
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

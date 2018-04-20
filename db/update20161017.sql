/*
Navicat MySQL Data Transfer

Source Server         : ubuntu
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : Fengmeng

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2016-10-17 16:06:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for a_product
-- ----------------------------
DROP TABLE IF EXISTS `a_product`;
CREATE TABLE `a_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `productno` varchar(32) DEFAULT NULL COMMENT '产品编号',
  `name` varchar(300) DEFAULT NULL COMMENT '产品名称',
  `productimg` varchar(255) DEFAULT NULL COMMENT '产品图片',
  `catagroyida` tinyint(4) DEFAULT NULL COMMENT '类型id',
  `catagroyidb` tinyint(4) DEFAULT NULL,
  `catagroyidc` tinyint(4) DEFAULT NULL,
  `appointment` tinyint(4) DEFAULT '0',
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of a_product
-- ----------------------------
INSERT INTO `a_product` VALUES ('1', 'CP001', '吃土', null, '1', '2', '3', '0', '交易结构文本', '10000000.00', '产品形态文本', '发行人', '托管人', '10000000.00', '100000.00', '100000.00', '3', '15', '0.1011', '收益分配方式文本', '交易对手文本', '投资标的文本', '资产保证文本', '100', '成立条件文本', '10000000.00', '备注信息文本', '2', '0.0200', '2', '1', '1', '1', '0', '2', '0', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1500000000', null, null, null, '1');
INSERT INTO `a_product` VALUES ('2', 'CP002', '中海可转换债券债券型证券投资基金A类份额', '/Uploads/product/2016-10-13/57ff2de6cd5c2.jpg', '2', '6', '20', '0', '即方正证券收益凭证系列产品，是指我司通过中证报价系统或者OTC柜台市场发行的、约定本金和收益的偿付与特定标的挂钩的有价证券（特定标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货', '11111112704.00', '即方正证券收益凭证系列产品，是指我司通过中证报价系统或者OTC柜台市场发行的、约定本金和收益的偿付与特定标的挂钩的有价证券（特定标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货', '张三', '哈哈', '11111222.00', '11111111.00', '220.00', '14', '0', '0.1300', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '20', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '10000.00', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '10', '0.3300', '5', '1', null, '0', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '2016', '2016', '0', '2016', '2016', '1', null, null, '1', null, null, '1474964484', null, null, null, '1');
INSERT INTO `a_product` VALUES ('3', 'CP003', '易方达天天理财货币A', null, '2', '6', '19', '0', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1474964544', null, null, null, '2');
INSERT INTO `a_product` VALUES ('4', 'CP004', 'A股上市企业存货质押融资项目', null, '2', '2', '22', '0', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1475044982', null, null, null, '1');
INSERT INTO `a_product` VALUES ('5', null, 'B股上市企业存货质押融资项目', null, '1', '1', '10', '0', '交易结构', '1000000.00', '产品形态产品形态产品形态产品形态', 'fengmeng', 'fengmeng1', '1000000.00', '10.00', '10.00', '6', '15', '8.0000', '收益分配方式', '交易对手', '投资标的', '资产保证', '10', '成立条件', '1000000.00', '备注信息', '2', '0.3000', '3', '3', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '2016', '2016', '0', '2017', '2017', '1', null, null, '1', null, null, '1476084085', null, null, null, '2');
INSERT INTO `a_product` VALUES ('6', null, '测试啊啊啊啊 ', null, '1', '1', '10', '0', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1476324070', null, null, null, '0');
INSERT INTO `a_product` VALUES ('7', null, '121221', null, '1', '1', '10', '0', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1476324130', null, null, null, '0');
INSERT INTO `a_product` VALUES ('8', null, '这是图片产品', '/Uploads/product/2016-10-13/57ff2d1042bac.jpg', '1', '1', '10', '0', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1476341018', null, null, null, '0');
INSERT INTO `a_product` VALUES ('9', 'CP20161013743', '产品编号测试', '/Uploads/product/2016-10-13/57ff2f676db98.jpg', '1', '1', '10', '0', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1476341610', null, null, null, '0');
INSERT INTO `a_product` VALUES ('10', 'CP161013445', '小年编号123', '/Uploads/product/2016-10-13/57ff2fa5ee80e.jpg', '1', '1', '10', '0', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1476341680', null, null, null, '0');
INSERT INTO `a_product` VALUES ('11', 'CP161014630', '123165465456', '', '2', '6', '19', '0', '', '87878784.00', 'bmm,m', '战士你', '', '0.00', '0.00', '0.00', '12', '12', '0.0000', '2', '', '', '', '22', '1', '1111111.00', '1', '5', '0.0000', '3', '5', null, '0', '0', '11', '11', '', '1', '1', '1', '0.0000', '0.0000', '0.0000', '0.0000', '1476288000', '1475596800', '1476806400', '1476633600', '1475424000', '0', null, null, '0', null, null, '1476411745', null, null, null, '0');

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
  `isinstitutionaluser` tinyint(4) NOT NULL DEFAULT '0',
  `isqualifiedinvestor` tinyint(4) DEFAULT '0' COMMENT '是否是合格投资人',
  `isoverseasinvestor` tinyint(4) DEFAULT '0',
  `credientialnu` varchar(20) DEFAULT NULL COMMENT '身份证',
  `createtime` int(11) DEFAULT NULL,
  `isdeleted` tinyint(4) DEFAULT '0' COMMENT '是否删除',
  `saleslevel` tinyint(4) DEFAULT '0' COMMENT '销售等级',
  `userlevel` tinyint(4) DEFAULT '0' COMMENT '用户等级',
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
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of b_agent
-- ----------------------------
INSERT INTO `b_agent` VALUES ('1', 'IFA1', 'IFA 11', 'chen123@qq.com', '18801621631', '0', '0', '0', '14032111111111111', '1', null, '0', '3', '熟练', '中等', '其他国家', '博士', '博士', '1', '1', '3', '1', '审核不通过，哈哈哈');
INSERT INTO `b_agent` VALUES ('2', 'xyongdaima12345', 'IFA2', 'chen11@fm.com', '18373885166', '0', '0', '0', '14032111111111112', '1', null, '0', '1', '1', '1', 'cn', '1', '1', '1', '1', '3', '1', null);
INSERT INTO `b_agent` VALUES ('3', 'xyongdaima12345', 'IFA3', 'chen1@fm1.com', '18373885161', '0', '0', '0', '14032111111111112', '1', null, '0', '1', '1', '1', 'cn', '1', '1', '1', '1', '3', '1', null);
INSERT INTO `b_agent` VALUES ('4', 'xyongdaima123456', 'IFA4', 'chen1@fm.com', '18373885161', '0', '0', '0', '14032111111111112', '1', null, '0', '1', '1', '1', 'cn', '1', '1', '1', '1', '4', '0', null);
INSERT INTO `b_agent` VALUES ('5', 'xyongdaima12347', 'IFA5', 'chen2@fm.com', '18373885161', '0', '0', '0', '14032111111111112', '1', null, '0', '1', '1', '1', 'cn', '1', '1', '1', '1', '4', '0', null);
INSERT INTO `b_agent` VALUES ('36', null, 'vadfasdf', '1321321@qq.com', '18801565656', '0', '0', '0', '140321199108020011', '1474270563', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('37', null, 'vestin', '11@qq.com', '18800000000', '0', '0', '0', '140321199108020012', '1474337711', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('38', 'hahahdlkfjlkjlkjlkadsfasdf', 'vestin2', 'bombzds@163.com', '18801621639', '0', '1', '0', '140321199108020012', '1474341045', null, '5', '5', '一般', '一般', '中国', '小学', '小学', null, null, '4', '2', '资料都没有，审核毛线，不通过');
INSERT INTO `b_agent` VALUES ('39', null, '张三', 'bombzds2@163.com', '18801621640', '0', '0', '0', '140321111102020012', '1474448361', null, '0', null, null, null, null, null, null, null, null, '1', '1', null);
INSERT INTO `b_agent` VALUES ('40', null, '123456', '456@qq.com', '18801621637', '0', '0', '0', '140321199105050045', '1474525739', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('41', null, '123', '1212@1236.co', '18801621633', '0', '0', '0', '1212', '1476065248', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('42', null, '张三', '1231@564.com', '18801621630', '0', '0', '0', '140321199108010012', '1476065426', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('43', null, '张三1', '123@55.com', '18801621677', '0', '0', '0', '140321199108012001', '1476067026', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('44', null, '张三22', '123@55.com1', '18801621555', '0', '0', '0', '140321155151515515', '1476067106', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('45', null, '张三', '1231@564.com2', '18621732732', '0', '0', '0', '321111111111111111', '1476067216', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('46', null, '2132132', '1231@987.com', '18801621454', '0', '0', '0', '140321199105050032', '1476071261', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('47', null, '2132132', '1231@985.com', '18801621453', '0', '0', '0', '140321199105050032', '1476071314', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('48', null, '2132132', '1231@985.com1', '18801621451', '0', '0', '0', '140321199105050032', '1476071394', null, '0', null, null, null, null, null, null, null, '1004', '1', '0', null);
INSERT INTO `b_agent` VALUES ('49', null, '9879612', '1258@lkj.com', '18854686586', '0', '0', '0', '165456655418020012', '1476071572', null, '0', null, null, null, null, null, null, null, '1005', '1', '1', null);
INSERT INTO `b_agent` VALUES ('50', null, '我就是管理员11', '99@22.com', '18801545789', '0', '0', '0', '789987788787878878', '1476084927', null, '0', null, null, null, null, null, null, null, '0', '1', '0', null);
INSERT INTO `b_agent` VALUES ('51', null, '我就是管理员11', '99@22.com1', '18801545787', '0', '0', '0', '789987788787878878', '1476084999', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);
INSERT INTO `b_agent` VALUES ('52', null, '我就是管理员11', '99@22.com12', '18801545786', '0', '0', '0', '789987788787878878', '1476085053', null, '0', null, null, null, null, null, null, null, '1008', '1', '0', null);
INSERT INTO `b_agent` VALUES ('53', null, '我就是管理员11', '99@22.com123', '18801545785', '0', '0', '0', '789987788787878872', '1476085199', null, '0', null, null, null, null, null, null, null, '1009', '1', '0', null);
INSERT INTO `b_agent` VALUES ('54', null, '里李', '884367094@qq.com', '13454545555', '0', '0', '0', '111111111111111111', '1476085260', null, '0', null, null, null, null, null, null, null, '1010', '1', '1', null);
INSERT INTO `b_agent` VALUES ('55', null, '测试IFA123', 'test123@intelpure.com', '13918001250', '0', '0', '0', '310101198312141234', '1476254924', null, '0', null, null, null, null, null, null, null, '1012', '1', '0', null);
INSERT INTO `b_agent` VALUES ('56', null, '123test', '123@123.com', '13918001271', '0', '0', '0', '310101198312122727', '1476255031', null, '0', null, null, null, null, null, null, null, '1013', '1', '0', null);
INSERT INTO `b_agent` VALUES ('57', null, '张三1', '12332@212.com', '18801658789', '0', '0', '0', '140321199108020045', '1476424674', null, '0', null, null, null, null, null, null, null, '1014', '1', '0', null);
INSERT INTO `b_agent` VALUES ('58', null, '987654', '159@33.com', '18865487865', '0', '0', '0', '140321199108655578', '1476424701', null, '0', null, null, null, null, null, null, null, '1015', '1', '0', null);
INSERT INTO `b_agent` VALUES ('59', null, '2322', '655@1.com', '18845684568', '0', '0', '0', '145654488484848848', '1476424817', null, '0', null, null, null, null, null, null, null, '1016', '1', '0', null);
INSERT INTO `b_agent` VALUES ('60', null, '65465', '1@5465.com', '18815454578', '1', '0', '0', '140321199878787787', '1476425038', null, '0', null, null, null, null, null, null, null, '1017', '1', '0', null);
INSERT INTO `b_agent` VALUES ('61', null, '小张三', '999@999.com', '18899999999', '0', '0', '0', '140999999999999999', '1476427505', null, '0', null, null, null, null, null, null, null, null, '1', '0', null);

-- ----------------------------
-- Table structure for b_agent_product
-- ----------------------------
DROP TABLE IF EXISTS `b_agent_product`;
CREATE TABLE `b_agent_product` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `agentid` int(11) DEFAULT NULL,
  `buserid` int(11) DEFAULT NULL COMMENT '所属b用户',
  `isbuy` tinyint(4) DEFAULT '0' COMMENT '是否是购买类型',
  `isdeputy` tinyint(4) DEFAULT '0' COMMENT '是否是代理类型',
  `productno` varchar(32) DEFAULT NULL COMMENT '产品编号',
  `productid` int(11) DEFAULT NULL COMMENT 'a产品id',
  `name` varchar(300) DEFAULT NULL COMMENT '产品名称',
  `productimg` varchar(255) DEFAULT NULL COMMENT '产品图片',
  `catagroyida` tinyint(4) DEFAULT NULL COMMENT '类型id',
  `catagroyidb` tinyint(4) DEFAULT NULL,
  `catagroyidc` tinyint(4) DEFAULT NULL,
  `appointment` tinyint(4) DEFAULT '0',
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品表';

-- ----------------------------
-- Records of b_agent_product
-- ----------------------------
INSERT INTO `b_agent_product` VALUES ('12', '38', '1015', '0', '1', 'CP004', '4', 'A股上市企业存货质押融资项目', null, '2', '2', '22', '0', '', '0.00', '', '', '', '0.00', '0.00', '0.00', '0', '0', '0.0000', '', '', '', '', '0', '', '0.00', '', '0', '0.0000', '1', '1', null, '1', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0', '1', null, null, '1', null, null, '1476688644', null, null, null, '1');
INSERT INTO `b_agent_product` VALUES ('13', '38', '1015', '0', '1', 'CP002', '2', '中海可转换债券债券型证券投资基金A类份额', '/Uploads/product/2016-10-13/57ff2de6cd5c2.jpg', '2', '6', '20', '0', '即方正证券收益凭证系列产品，是指我司通过中证报价系统或者OTC柜台市场发行的、约定本金和收益的偿付与特定标的挂钩的有价证券（特定标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货', '11111112704.00', '即方正证券收益凭证系列产品，是指我司通过中证报价系统或者OTC柜台市场发行的、约定本金和收益的偿付与特定标的挂钩的有价证券（特定标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货', '张三', '哈哈', '11111222.00', '11111111.00', '220.00', '14', '0', '0.1300', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '20', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '10000.00', '标的包括但不限于股权、债权、信用、基金、利率、汇率、指数、期货及', '10', '0.3300', '5', '1', null, '0', '1', '0', '0', '', '', '', '', '0.0000', '0.0000', '0.0000', '0.0000', '2016', '2016', '0', '2016', '2016', '1', null, null, '1', null, null, '1476690140', null, null, null, '1');
SET FOREIGN_KEY_CHECKS=1;

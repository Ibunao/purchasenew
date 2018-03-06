/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:12:08
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_customer
-- ----------------------------
DROP TABLE IF EXISTS `meet_customer`;
CREATE TABLE `meet_customer` (
  `customer_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `parent_id` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级管理,1是代理，0不是代理',
  `purchase_id` mediumint(8) NOT NULL COMMENT '订货会,1oct,2uki',
  `code` varchar(30) NOT NULL COMMENT '客户代码',
  `relation_code` varchar(30) NOT NULL COMMENT '判断是否为同一客户',
  `name` varchar(30) NOT NULL COMMENT '客户名称',
  `password` varchar(60) NOT NULL COMMENT '密码',
  `mobile` varchar(30) NOT NULL COMMENT '手机',
  `type` varchar(30) NOT NULL COMMENT '客户类型',
  `province` varchar(30) DEFAULT NULL COMMENT '省份',
  `area` varchar(30) DEFAULT NULL COMMENT '区域',
  `target` decimal(20,3) unsigned DEFAULT '0.000' COMMENT '订货指标',
  `disabled` enum('true','false') NOT NULL DEFAULT 'false' COMMENT '是否实现',
  `department` varchar(20) DEFAULT NULL COMMENT '部门类型',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `leader_name` varchar(20) DEFAULT NULL COMMENT '代理名称',
  `agent` varchar(30) DEFAULT NULL COMMENT '代理代码',
  `big_1` decimal(20,0) unsigned DEFAULT '0',
  `big_2` decimal(20,0) unsigned DEFAULT '0',
  `big_3` decimal(20,0) unsigned DEFAULT '0',
  `big_4` decimal(20,0) DEFAULT '0',
  `big_6` decimal(20,0) unsigned DEFAULT '0',
  `big_1_count` decimal(20,3) DEFAULT '100.000',
  `big_2_count` decimal(20,3) DEFAULT '100.000',
  `big_3_count` decimal(20,3) DEFAULT '100.000',
  `big_4_count` decimal(20,3) DEFAULT '100.000',
  `big_6_count` decimal(20,3) DEFAULT '100.000',
  `big_count1` decimal(20,3) DEFAULT '100.000',
  `big_count2` decimal(20,3) DEFAULT '100.000',
  `big_count3` decimal(20,3) DEFAULT '100.000',
  `big_count4` decimal(20,3) DEFAULT '100.000',
  `login` int(11) unsigned DEFAULT NULL COMMENT '最后一次登录时间',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8;


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:11:25
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_color
-- ----------------------------
DROP TABLE IF EXISTS `meet_color`;
CREATE TABLE `meet_color` (
  `color_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `color_no` varchar(5) NOT NULL COMMENT '颜色代码',
  `color_name` varchar(100) NOT NULL COMMENT '颜色名称',
  `scheme_id` mediumint(5) DEFAULT NULL,
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`color_id`),
  KEY `color_id` (`color_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_color
-- ----------------------------
INSERT INTO `meet_color` VALUES ('1', '00', '00无色', '10', '99');
INSERT INTO `meet_color` VALUES ('2', '000', '标品', '10', '99');
INSERT INTO `meet_color` VALUES ('3', '001', '多色', '10', '99');
INSERT INTO `meet_color` VALUES ('4', '10', '10黑色', '1', '99');
INSERT INTO `meet_color` VALUES ('5', '10000', 'BOCFAC', '1', '99');
INSERT INTO `meet_color` VALUES ('6', '10001', 'BOCHAC', '1', '99');
INSERT INTO `meet_color` VALUES ('7', '10002', 'BOCIAC', '1', '99');
INSERT INTO `meet_color` VALUES ('8', '10003', 'BOCGAC', '1', '99');
INSERT INTO `meet_color` VALUES ('9', '10004', 'BODCAC', '1', '99');
INSERT INTO `meet_color` VALUES ('10', '10005', 'BODJAC', '1', '99');
INSERT INTO `meet_color` VALUES ('11', '10006', 'BODAAC', '1', '99');
INSERT INTO `meet_color` VALUES ('12', '10007', 'BODBAC', '1', '99');
INSERT INTO `meet_color` VALUES ('13', '103', '黑色', '1', '99');
INSERT INTO `meet_color` VALUES ('14', '104', '黑色花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('15', '105', '黑色格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('16', '106', '黑色印花', '1', '99');
INSERT INTO `meet_color` VALUES ('17', '107', '黑色波点', '1', '99');
INSERT INTO `meet_color` VALUES ('18', '108', '黑色条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('19', '109', '黑色色块', '1', '99');
INSERT INTO `meet_color` VALUES ('20', '11', '11黑色碎花', '1', '99');
INSERT INTO `meet_color` VALUES ('21', '113', '黑灰', '1', '99');
INSERT INTO `meet_color` VALUES ('22', '114', '黑灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('23', '115', '黑灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('24', '116', '黑灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('25', '117', '黑灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('26', '118', '黑灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('27', '119', '黑灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('28', '120', '电商专用', '1', '99');
INSERT INTO `meet_color` VALUES ('29', '123', '黑藏青预留', '1', '99');
INSERT INTO `meet_color` VALUES ('30', '124', '黑藏青花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('31', '125', '黑藏青格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('32', '126', '黑藏青印花', '1', '99');
INSERT INTO `meet_color` VALUES ('33', '127', '黑藏青波点', '1', '99');
INSERT INTO `meet_color` VALUES ('34', '128', '黑藏青条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('35', '129', '黑藏青色块', '1', '99');
INSERT INTO `meet_color` VALUES ('36', '13', '13深灰', '1', '99');
INSERT INTO `meet_color` VALUES ('37', '130', '黑粉条', '1', '99');
INSERT INTO `meet_color` VALUES ('38', '133', '深灰', '1', '99');
INSERT INTO `meet_color` VALUES ('39', '134', '深灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('40', '135', '深灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('41', '136', '深灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('42', '137', '深灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('43', '138', '深灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('44', '139', '深灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('45', '14', '14中灰', '1', '99');
INSERT INTO `meet_color` VALUES ('46', '143', '烟灰', '1', '99');
INSERT INTO `meet_color` VALUES ('47', '144', '烟灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('48', '145', '烟灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('49', '146', '烟灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('50', '147', '烟灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('51', '148', '烟灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('52', '149', '烟灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('53', '15', '15银灰', '1', '99');
INSERT INTO `meet_color` VALUES ('54', '153', '中灰', '1', '99');
INSERT INTO `meet_color` VALUES ('55', '154', '中灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('56', '155', '中灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('57', '156', '中灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('58', '157', '中灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('59', '158', '中灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('60', '159', '中灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('61', '163', '灰色', '1', '99');
INSERT INTO `meet_color` VALUES ('62', '164', '灰色花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('63', '165', '灰色格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('64', '166', '灰色印花', '1', '99');
INSERT INTO `meet_color` VALUES ('65', '167', '灰色波点', '1', '99');
INSERT INTO `meet_color` VALUES ('66', '168', '灰色条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('67', '169', '灰色色块', '1', '99');
INSERT INTO `meet_color` VALUES ('68', '17', '17灰色', '1', '99');
INSERT INTO `meet_color` VALUES ('69', '173', '浅灰', '1', '99');
INSERT INTO `meet_color` VALUES ('70', '174', '浅灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('71', '175', '浅灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('72', '176', '浅灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('73', '177', '浅灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('74', '178', '浅灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('75', '179', '浅灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('76', '18', '18电商灰色', '1', '99');
INSERT INTO `meet_color` VALUES ('77', '183', '米灰预留', '1', '99');
INSERT INTO `meet_color` VALUES ('78', '184', '米灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('79', '185', '米灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('80', '186', '米灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('81', '187', '米灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('82', '188', '米灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('83', '189', '米灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('84', '20', '20白色', '2', '99');
INSERT INTO `meet_color` VALUES ('85', '203', '杏色', '2', '99');
INSERT INTO `meet_color` VALUES ('86', '204', '杏色花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('87', '205', '杏色格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('88', '206', '杏色印花', '2', '99');
INSERT INTO `meet_color` VALUES ('89', '207', '杏色波点', '2', '99');
INSERT INTO `meet_color` VALUES ('90', '208', '杏色条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('91', '209', '杏色色块', '2', '99');
INSERT INTO `meet_color` VALUES ('92', '21', '21漂白', '2', '99');
INSERT INTO `meet_color` VALUES ('93', '210', '浅杏色阶0-深', '2', '99');
INSERT INTO `meet_color` VALUES ('94', '213', '浅杏', '2', '99');
INSERT INTO `meet_color` VALUES ('95', '214', '浅杏花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('96', '215', '浅杏格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('97', '216', '浅杏印花', '2', '99');
INSERT INTO `meet_color` VALUES ('98', '217', '浅杏波点', '2', '99');
INSERT INTO `meet_color` VALUES ('99', '218', '浅杏条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('100', '219', '浅杏色块', '2', '99');
INSERT INTO `meet_color` VALUES ('101', '22', '22米白', '2', '99');
INSERT INTO `meet_color` VALUES ('102', '223', '米白', '2', '99');
INSERT INTO `meet_color` VALUES ('103', '224', '米白花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('104', '225', '米白格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('105', '226', '米白印花', '2', '99');
INSERT INTO `meet_color` VALUES ('106', '227', '米白波点', '2', '99');
INSERT INTO `meet_color` VALUES ('107', '228', '米白条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('108', '229', '米白色块', '2', '99');
INSERT INTO `meet_color` VALUES ('109', '233', '本白', '2', '99');
INSERT INTO `meet_color` VALUES ('110', '234', '本白花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('111', '235', '本白格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('112', '236', '本白印花', '2', '99');
INSERT INTO `meet_color` VALUES ('113', '237', '本白波点', '2', '99');
INSERT INTO `meet_color` VALUES ('114', '238', '本白条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('115', '239', '本白色块', '2', '99');
INSERT INTO `meet_color` VALUES ('116', '24', '24米色', '2', '99');
INSERT INTO `meet_color` VALUES ('117', '243', '漂白', '2', '99');
INSERT INTO `meet_color` VALUES ('118', '244', '漂白花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('119', '245', '漂白格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('120', '246', '漂白印花', '2', '99');
INSERT INTO `meet_color` VALUES ('121', '247', '漂白波点', '2', '99');
INSERT INTO `meet_color` VALUES ('122', '248', '漂白条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('123', '249', '漂白色块', '2', '99');
INSERT INTO `meet_color` VALUES ('124', '25', '25杏色', '2', '99');
INSERT INTO `meet_color` VALUES ('125', '253', '珍珠白', '2', '99');
INSERT INTO `meet_color` VALUES ('126', '254', '珍珠白花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('127', '255', '珍珠白格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('128', '256', '珍珠白印花', '2', '99');
INSERT INTO `meet_color` VALUES ('129', '257', '珍珠白波点', '2', '99');
INSERT INTO `meet_color` VALUES ('130', '258', '珍珠白条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('131', '259', '珍珠白色块', '2', '99');
INSERT INTO `meet_color` VALUES ('132', '30', '30咖啡', '3', '99');
INSERT INTO `meet_color` VALUES ('133', '303', '灰咖', '3', '99');
INSERT INTO `meet_color` VALUES ('134', '304', '灰咖花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('135', '305', '灰咖格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('136', '306', '灰咖印花', '3', '99');
INSERT INTO `meet_color` VALUES ('137', '307', '灰咖波点', '3', '99');
INSERT INTO `meet_color` VALUES ('138', '308', '灰咖条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('139', '309', '灰咖色块', '3', '99');
INSERT INTO `meet_color` VALUES ('140', '313', '深咖', '3', '99');
INSERT INTO `meet_color` VALUES ('141', '314', '深咖花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('142', '315', '深咖格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('143', '316', '深咖印花', '3', '99');
INSERT INTO `meet_color` VALUES ('144', '317', '深咖波点', '3', '99');
INSERT INTO `meet_color` VALUES ('145', '318', '深咖条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('146', '319', '深咖色块', '3', '99');
INSERT INTO `meet_color` VALUES ('147', '323', '咖啡', '3', '99');
INSERT INTO `meet_color` VALUES ('148', '324', '咖啡花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('149', '325', '咖啡格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('150', '326', '咖啡印花', '3', '99');
INSERT INTO `meet_color` VALUES ('151', '327', '咖啡波点', '3', '99');
INSERT INTO `meet_color` VALUES ('152', '328', '咖啡条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('153', '329', '咖啡色块', '3', '99');
INSERT INTO `meet_color` VALUES ('154', '33', '33驼色', '3', '99');
INSERT INTO `meet_color` VALUES ('155', '34', '34浅驼色', '3', '99');
INSERT INTO `meet_color` VALUES ('156', '343', '驼色', '3', '99');
INSERT INTO `meet_color` VALUES ('157', '344', '驼色花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('158', '345', '驼色格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('159', '346', '驼色印花', '3', '99');
INSERT INTO `meet_color` VALUES ('160', '347', '驼色波点', '3', '99');
INSERT INTO `meet_color` VALUES ('161', '348', '驼色条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('162', '349', '驼色色块', '3', '99');
INSERT INTO `meet_color` VALUES ('163', '353', '浅驼', '3', '99');
INSERT INTO `meet_color` VALUES ('164', '354', '浅驼花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('165', '355', '浅驼格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('166', '356', '浅驼印花', '3', '99');
INSERT INTO `meet_color` VALUES ('167', '357', '浅驼波点', '3', '99');
INSERT INTO `meet_color` VALUES ('168', '358', '浅驼条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('169', '359', '浅驼色块', '3', '99');
INSERT INTO `meet_color` VALUES ('170', '363', '米咖', '3', '99');
INSERT INTO `meet_color` VALUES ('171', '364', '米咖花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('172', '365', '米咖格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('173', '366', '米咖印花', '3', '99');
INSERT INTO `meet_color` VALUES ('174', '367', '米咖波点', '3', '99');
INSERT INTO `meet_color` VALUES ('175', '368', '米咖条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('176', '369', '米咖色块', '3', '99');
INSERT INTO `meet_color` VALUES ('177', '383', '卡其', '3', '99');
INSERT INTO `meet_color` VALUES ('178', '384', '卡其花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('179', '385', '卡其格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('180', '386', '卡其印花', '3', '99');
INSERT INTO `meet_color` VALUES ('181', '387', '卡其波点', '3', '99');
INSERT INTO `meet_color` VALUES ('182', '388', '卡其条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('183', '389', '卡其色块', '3', '99');
INSERT INTO `meet_color` VALUES ('184', '40', '40绿色', '4', '99');
INSERT INTO `meet_color` VALUES ('185', '403', '灰绿', '4', '99');
INSERT INTO `meet_color` VALUES ('186', '404', '灰绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('187', '405', '灰绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('188', '406', '灰绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('189', '407', '灰绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('190', '408', '灰绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('191', '409', '灰绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('192', '41', '41浅绿', '4', '99');
INSERT INTO `meet_color` VALUES ('193', '410', '电商小脚(临时)', '4', '99');
INSERT INTO `meet_color` VALUES ('194', '412', '深绿色阶2-浅', '4', '99');
INSERT INTO `meet_color` VALUES ('195', '413', '深绿', '4', '99');
INSERT INTO `meet_color` VALUES ('196', '414', '深绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('197', '415', '深绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('198', '416', '深绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('199', '417', '深绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('200', '418', '深绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('201', '419', '深绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('202', '42', '42蓝绿', '4', '99');
INSERT INTO `meet_color` VALUES ('203', '43', '43果绿', '4', '99');
INSERT INTO `meet_color` VALUES ('204', '433', '军绿', '4', '99');
INSERT INTO `meet_color` VALUES ('205', '434', '军绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('206', '435', '军绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('207', '436', '军绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('208', '437', '军绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('209', '438', '军绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('210', '439', '军绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('211', '44', '44苹果绿', '4', '99');
INSERT INTO `meet_color` VALUES ('212', '443', '翡绿', '4', '99');
INSERT INTO `meet_color` VALUES ('213', '444', '翡绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('214', '445', '翡绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('215', '446', '翡绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('216', '447', '翡绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('217', '448', '翡绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('218', '449', '翡绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('219', '453', '绿色', '4', '99');
INSERT INTO `meet_color` VALUES ('220', '454', '绿色花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('221', '455', '绿色格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('222', '456', '绿色印花', '4', '99');
INSERT INTO `meet_color` VALUES ('223', '457', '绿色波点', '4', '99');
INSERT INTO `meet_color` VALUES ('224', '458', '绿色条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('225', '459', '绿色色块', '4', '99');
INSERT INTO `meet_color` VALUES ('226', '46', '46粉绿', '4', '99');
INSERT INTO `meet_color` VALUES ('227', '463', '草绿', '4', '99');
INSERT INTO `meet_color` VALUES ('228', '464', '草绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('229', '465', '草绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('230', '466', '草绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('231', '467', '草绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('232', '468', '草绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('233', '469', '草绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('234', '47', '47翠绿', '4', '99');
INSERT INTO `meet_color` VALUES ('235', '473', '果绿', '4', '99');
INSERT INTO `meet_color` VALUES ('236', '474', '果绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('237', '475', '果绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('238', '476', '果绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('239', '477', '果绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('240', '478', '果绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('241', '479', '果绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('242', '49', '49墨绿', '4', '99');
INSERT INTO `meet_color` VALUES ('243', '490', '翠绿色阶0-深', '4', '99');
INSERT INTO `meet_color` VALUES ('244', '491', '电商专用5', '4', '99');
INSERT INTO `meet_color` VALUES ('245', '492', '电商专用2', '4', '99');
INSERT INTO `meet_color` VALUES ('246', '493', '浅绿', '4', '99');
INSERT INTO `meet_color` VALUES ('247', '494', '浅绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('248', '495', '浅绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('249', '496', '浅绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('250', '497', '浅绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('251', '498', '浅绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('252', '499', '浅绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('253', '50', '50红色', '5', '99');
INSERT INTO `meet_color` VALUES ('254', '503', '深红', '5', '99');
INSERT INTO `meet_color` VALUES ('255', '504', '深红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('256', '505', '深红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('257', '506', '深红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('258', '507', '深红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('259', '508', '深红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('260', '509', '深红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('261', '51', '51粉红', '5', '99');
INSERT INTO `meet_color` VALUES ('262', '510', '灰粉色阶0-深', '5', '99');
INSERT INTO `meet_color` VALUES ('263', '511', '灰粉色阶1-中', '5', '99');
INSERT INTO `meet_color` VALUES ('264', '512', '灰粉色阶2-浅', '5', '99');
INSERT INTO `meet_color` VALUES ('265', '513', '灰粉', '5', '99');
INSERT INTO `meet_color` VALUES ('266', '514', '灰粉花纱', '5', '99');
INSERT INTO `meet_color` VALUES ('267', '515', '灰粉格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('268', '516', '灰粉印花', '5', '99');
INSERT INTO `meet_color` VALUES ('269', '517', '灰粉波点', '5', '99');
INSERT INTO `meet_color` VALUES ('270', '518', '灰粉条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('271', '519', '灰粉色块', '5', '99');
INSERT INTO `meet_color` VALUES ('272', '52', '52粉桔', '5', '99');
INSERT INTO `meet_color` VALUES ('273', '523', '暗红', '5', '99');
INSERT INTO `meet_color` VALUES ('274', '524', '暗红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('275', '525', '暗红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('276', '526', '暗红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('277', '527', '暗红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('278', '528', '暗红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('279', '529', '暗红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('280', '53', '53桃红', '5', '99');
INSERT INTO `meet_color` VALUES ('281', '536', '红色预留', '5', '99');
INSERT INTO `meet_color` VALUES ('282', '54', '54玫红', '5', '99');
INSERT INTO `meet_color` VALUES ('283', '540', '大红色阶0-深', '5', '99');
INSERT INTO `meet_color` VALUES ('284', '543', '大红', '5', '99');
INSERT INTO `meet_color` VALUES ('285', '544', '大红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('286', '545', '大红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('287', '546', '大红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('288', '547', '大红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('289', '548', '大红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('290', '549', '大红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('291', '55', '55桔红', '5', '99');
INSERT INTO `meet_color` VALUES ('292', '553', '玫红', '5', '99');
INSERT INTO `meet_color` VALUES ('293', '554', '玫红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('294', '555', '玫红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('295', '556', '玫红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('296', '557', '玫红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('297', '558', '玫红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('298', '559', '玫红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('299', '563', '桃红', '5', '99');
INSERT INTO `meet_color` VALUES ('300', '564', '桃红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('301', '565', '桃红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('302', '566', '桃红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('303', '567', '桃红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('304', '568', '桃红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('305', '569', '桃红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('306', '57', '57枣红', '5', '99');
INSERT INTO `meet_color` VALUES ('307', '573', '热粉红预留', '5', '99');
INSERT INTO `meet_color` VALUES ('308', '574', '热粉红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('309', '575', '热粉红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('310', '576', '热粉红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('311', '577', '热粉红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('312', '578', '热粉红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('313', '579', '热粉红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('314', '58', '58紫红', '5', '99');
INSERT INTO `meet_color` VALUES ('315', '583', '粉红预留', '5', '99');
INSERT INTO `meet_color` VALUES ('316', '584', '粉红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('317', '585', '粉红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('318', '586', '粉红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('319', '587', '粉红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('320', '588', '粉红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('321', '589', '粉红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('322', '590', '电商专用3', '5', '99');
INSERT INTO `meet_color` VALUES ('323', '591', '电商专用7', '5', '99');
INSERT INTO `meet_color` VALUES ('324', '592', '电商专用6', '5', '99');
INSERT INTO `meet_color` VALUES ('325', '593', '裸粉', '5', '99');
INSERT INTO `meet_color` VALUES ('326', '594', '裸粉花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('327', '595', '裸粉格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('328', '596', '裸粉印花', '5', '99');
INSERT INTO `meet_color` VALUES ('329', '597', '裸粉波点', '5', '99');
INSERT INTO `meet_color` VALUES ('330', '598', '裸粉条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('331', '599', '裸粉色块', '5', '99');
INSERT INTO `meet_color` VALUES ('332', '60', '60黄色', '6', '99');
INSERT INTO `meet_color` VALUES ('333', '603', '灰黄', '6', '99');
INSERT INTO `meet_color` VALUES ('334', '604', '灰黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('335', '605', '灰黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('336', '606', '灰黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('337', '607', '灰黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('338', '608', '灰黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('339', '609', '灰黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('340', '61', '61米黄', '6', '99');
INSERT INTO `meet_color` VALUES ('341', '610', '电商喇叭(临时)', '6', '99');
INSERT INTO `meet_color` VALUES ('342', '613', '土黄', '6', '99');
INSERT INTO `meet_color` VALUES ('343', '614', '土黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('344', '615', '土黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('345', '616', '土黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('346', '617', '土黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('347', '618', '土黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('348', '619', '土黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('349', '62', '62柠黄', '6', '99');
INSERT INTO `meet_color` VALUES ('350', '623', '金黄', '6', '99');
INSERT INTO `meet_color` VALUES ('351', '624', '金黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('352', '625', '金黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('353', '626', '金黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('354', '627', '金黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('355', '628', '金黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('356', '629', '金黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('357', '633', '姜黄', '6', '99');
INSERT INTO `meet_color` VALUES ('358', '634', '姜黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('359', '635', '姜黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('360', '636', '姜黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('361', '637', '姜黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('362', '638', '姜黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('363', '639', '姜黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('364', '643', '中黄', '6', '99');
INSERT INTO `meet_color` VALUES ('365', '644', '中黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('366', '645', '中黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('367', '646', '中黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('368', '647', '中黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('369', '648', '中黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('370', '649', '中黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('371', '65', '65浅黄', '6', '99');
INSERT INTO `meet_color` VALUES ('372', '653', '黄色', '6', '99');
INSERT INTO `meet_color` VALUES ('373', '654', '黄色花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('374', '655', '黄色格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('375', '656', '黄色印花', '6', '99');
INSERT INTO `meet_color` VALUES ('376', '657', '黄色波点', '6', '99');
INSERT INTO `meet_color` VALUES ('377', '658', '黄色条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('378', '659', '黄色色块', '6', '99');
INSERT INTO `meet_color` VALUES ('379', '663', '芥黄', '6', '99');
INSERT INTO `meet_color` VALUES ('380', '664', '芥黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('381', '665', '芥黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('382', '666', '芥黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('383', '667', '芥黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('384', '668', '芥黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('385', '669', '芥黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('386', '673', '柠黄', '6', '99');
INSERT INTO `meet_color` VALUES ('387', '674', '柠黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('388', '675', '柠黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('389', '676', '柠黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('390', '677', '柠黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('391', '678', '柠黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('392', '679', '柠黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('393', '690', '电商专用8', '6', '99');
INSERT INTO `meet_color` VALUES ('394', '691', '电商专用4', '6', '99');
INSERT INTO `meet_color` VALUES ('395', '693', '浅黄', '6', '99');
INSERT INTO `meet_color` VALUES ('396', '694', '浅黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('397', '695', '浅黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('398', '696', '浅黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('399', '697', '浅黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('400', '698', '浅黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('401', '699', '浅黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('402', '70', '70蓝色', '7', '99');
INSERT INTO `meet_color` VALUES ('403', '703', '灰蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('404', '704', '灰蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('405', '705', '灰蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('406', '706', '灰蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('407', '707', '灰蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('408', '708', '灰蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('409', '709', '灰蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('410', '71', '71浅蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('411', '713', '藏青', '7', '99');
INSERT INTO `meet_color` VALUES ('412', '714', '藏青花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('413', '715', '藏青格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('414', '716', '藏青印花', '7', '99');
INSERT INTO `meet_color` VALUES ('415', '717', '藏青波点', '7', '99');
INSERT INTO `meet_color` VALUES ('416', '718', '藏青条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('417', '719', '藏青色块', '7', '99');
INSERT INTO `meet_color` VALUES ('418', '72', '72湖蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('419', '723', '深蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('420', '724', '深蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('421', '725', '深蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('422', '726', '深蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('423', '727', '深蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('424', '728', '深蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('425', '729', '深蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('426', '73', '73湖蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('427', '733', '电商专用1', '7', '99');
INSERT INTO `meet_color` VALUES ('428', '739', '名称未定义', '7', '99');
INSERT INTO `meet_color` VALUES ('429', '743', '蓝色', '7', '99');
INSERT INTO `meet_color` VALUES ('430', '744', '蓝色花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('431', '745', '蓝色格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('432', '746', '蓝色印花', '7', '99');
INSERT INTO `meet_color` VALUES ('433', '747', '蓝色波点', '7', '99');
INSERT INTO `meet_color` VALUES ('434', '748', '蓝色条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('435', '749', '蓝色色块', '7', '99');
INSERT INTO `meet_color` VALUES ('436', '750', '蓝白条', '7', '99');
INSERT INTO `meet_color` VALUES ('437', '753', '宝蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('438', '754', '宝蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('439', '755', '宝蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('440', '756', '宝蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('441', '757', '宝蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('442', '758', '宝蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('443', '759', '宝蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('444', '76', '76靛蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('445', '761', '蓝绿色阶1-中', '7', '99');
INSERT INTO `meet_color` VALUES ('446', '763', '蓝绿', '7', '99');
INSERT INTO `meet_color` VALUES ('447', '764', '蓝绿花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('448', '765', '蓝绿格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('449', '766', '蓝绿印花', '7', '99');
INSERT INTO `meet_color` VALUES ('450', '767', '蓝绿波点', '7', '99');
INSERT INTO `meet_color` VALUES ('451', '768', '蓝绿条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('452', '769', '蓝绿色块', '7', '99');
INSERT INTO `meet_color` VALUES ('453', '77', '77深藏青', '7', '99');
INSERT INTO `meet_color` VALUES ('454', '773', '天蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('455', '774', '天蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('456', '775', '天蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('457', '776', '天蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('458', '777', '天蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('459', '778', '天蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('460', '779', '天蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('461', '78', '78电商深藏青碎花', '7', '99');
INSERT INTO `meet_color` VALUES ('462', '793', '浅蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('463', '794', '浅蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('464', '795', '浅蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('465', '796', '浅蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('466', '797', '浅蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('467', '798', '浅蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('468', '799', '浅蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('469', '80', '80紫色', '8', '99');
INSERT INTO `meet_color` VALUES ('470', '803', '灰紫', '8', '99');
INSERT INTO `meet_color` VALUES ('471', '804', '灰紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('472', '805', '灰紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('473', '806', '灰紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('474', '807', '灰紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('475', '808', '灰紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('476', '809', '灰紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('477', '81', '81浅粉', '8', '99');
INSERT INTO `meet_color` VALUES ('478', '813', '深紫', '8', '99');
INSERT INTO `meet_color` VALUES ('479', '814', '深紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('480', '815', '深紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('481', '816', '深紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('482', '817', '深紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('483', '818', '深紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('484', '819', '深紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('485', '82', '82深紫', '8', '99');
INSERT INTO `meet_color` VALUES ('486', '823', '紫红', '8', '99');
INSERT INTO `meet_color` VALUES ('487', '824', '紫红花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('488', '825', '紫红格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('489', '826', '紫红印花', '8', '99');
INSERT INTO `meet_color` VALUES ('490', '827', '紫红波点', '8', '99');
INSERT INTO `meet_color` VALUES ('491', '828', '紫红条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('492', '829', '紫红色块', '8', '99');
INSERT INTO `meet_color` VALUES ('493', '83', '83电商紫色碎花', '8', '99');
INSERT INTO `meet_color` VALUES ('494', '830', '紫白条', '8', '99');
INSERT INTO `meet_color` VALUES ('495', '833', '蓝紫', '8', '99');
INSERT INTO `meet_color` VALUES ('496', '834', '蓝紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('497', '835', '蓝紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('498', '836', '蓝紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('499', '837', '蓝紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('500', '838', '蓝紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('501', '839', '蓝紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('502', '84', '84浅洋李色', '8', '99');
INSERT INTO `meet_color` VALUES ('503', '849', '紫色色块', '8', '99');
INSERT INTO `meet_color` VALUES ('504', '85', '85蓝紫', '8', '99');
INSERT INTO `meet_color` VALUES ('505', '853', '紫色', '8', '99');
INSERT INTO `meet_color` VALUES ('506', '854', '紫色花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('507', '855', '紫色格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('508', '856', '紫色印花', '8', '99');
INSERT INTO `meet_color` VALUES ('509', '857', '紫色波点', '8', '99');
INSERT INTO `meet_color` VALUES ('510', '858', '紫色条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('511', '859', '紫色色块', '8', '99');
INSERT INTO `meet_color` VALUES ('512', '87', '87桃粉红', '8', '99');
INSERT INTO `meet_color` VALUES ('513', '88', '88热粉红', '8', '99');
INSERT INTO `meet_color` VALUES ('514', '883', '浅紫', '8', '99');
INSERT INTO `meet_color` VALUES ('515', '884', '浅紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('516', '885', '浅紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('517', '886', '浅紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('518', '887', '浅紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('519', '888', '浅紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('520', '889', '浅紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('521', '893', '粉紫', '8', '99');
INSERT INTO `meet_color` VALUES ('522', '894', '粉紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('523', '895', '粉紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('524', '896', '粉紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('525', '897', '粉紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('526', '898', '粉紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('527', '899', '粉紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('528', '90', '90标准牛仔色', '9', '99');
INSERT INTO `meet_color` VALUES ('529', '903', '灰桔', '9', '99');
INSERT INTO `meet_color` VALUES ('530', '904', '灰桔花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('531', '905', '灰桔格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('532', '906', '灰桔印花', '9', '99');
INSERT INTO `meet_color` VALUES ('533', '907', '灰桔波点', '9', '99');
INSERT INTO `meet_color` VALUES ('534', '908', '灰桔条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('535', '909', '灰桔色块', '9', '99');
INSERT INTO `meet_color` VALUES ('536', '91', '91浅牛仔色', '9', '99');
INSERT INTO `meet_color` VALUES ('537', '913', '深桔', '9', '99');
INSERT INTO `meet_color` VALUES ('538', '914', '深桔花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('539', '915', '深桔格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('540', '916', '深桔印花', '9', '99');
INSERT INTO `meet_color` VALUES ('541', '917', '深桔波点', '9', '99');
INSERT INTO `meet_color` VALUES ('542', '918', '深桔条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('543', '919', '深桔色块', '9', '99');
INSERT INTO `meet_color` VALUES ('544', '92', '92深牛仔色', '9', '99');
INSERT INTO `meet_color` VALUES ('545', '933', '桔红', '9', '99');
INSERT INTO `meet_color` VALUES ('546', '934', '桔红花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('547', '935', '桔红格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('548', '936', '桔红印花', '9', '99');
INSERT INTO `meet_color` VALUES ('549', '937', '桔红波点', '9', '99');
INSERT INTO `meet_color` VALUES ('550', '938', '桔红条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('551', '939', '桔红色块', '9', '99');
INSERT INTO `meet_color` VALUES ('552', '940', '桔色色阶0-深', '9', '99');
INSERT INTO `meet_color` VALUES ('553', '941', '桔色色阶1-中', '9', '99');
INSERT INTO `meet_color` VALUES ('554', '942', '桔色色阶2-浅', '9', '99');
INSERT INTO `meet_color` VALUES ('555', '943', '桔色', '9', '99');
INSERT INTO `meet_color` VALUES ('556', '944', '桔色花纱', '9', '99');
INSERT INTO `meet_color` VALUES ('557', '945', '桔色格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('558', '946', '桔色印花', '9', '99');
INSERT INTO `meet_color` VALUES ('559', '947', '桔色波点', '9', '99');
INSERT INTO `meet_color` VALUES ('560', '948', '桔色条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('561', '949', '桔色色块', '9', '99');
INSERT INTO `meet_color` VALUES ('562', '953', '桔黄', '9', '99');
INSERT INTO `meet_color` VALUES ('563', '954', '桔黄花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('564', '955', '桔黄格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('565', '956', '桔黄印花', '9', '99');
INSERT INTO `meet_color` VALUES ('566', '957', '桔黄波点', '9', '99');
INSERT INTO `meet_color` VALUES ('567', '958', '桔黄条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('568', '959', '桔黄色块', '9', '99');
INSERT INTO `meet_color` VALUES ('569', '973', '浅桔', '9', '99');
INSERT INTO `meet_color` VALUES ('570', '974', '浅桔花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('571', '975', '浅桔格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('572', '976', '浅桔印花', '9', '99');
INSERT INTO `meet_color` VALUES ('573', '977', '浅桔波点', '9', '99');
INSERT INTO `meet_color` VALUES ('574', '978', '浅桔条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('575', '979', '浅桔色块', '9', '99');
INSERT INTO `meet_color` VALUES ('576', '983', '粉桔', '9', '99');
INSERT INTO `meet_color` VALUES ('577', '984', '粉桔花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('578', '985', '粉桔格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('579', '986', '粉桔印花', '9', '99');
INSERT INTO `meet_color` VALUES ('580', '987', '粉桔波点', '9', '99');
INSERT INTO `meet_color` VALUES ('581', '988', '粉桔条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('582', '989', '粉桔色块', '9', '99');
INSERT INTO `meet_color` VALUES ('584', '0', '0无色', '10', '99');


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:11:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_cat_small
-- ----------------------------
DROP TABLE IF EXISTS `meet_cat_small`;
CREATE TABLE `meet_cat_small` (
  `cat_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `small_id` mediumint(8) unsigned NOT NULL COMMENT '主键，自增，类型id',
  `cat_name` varchar(100) NOT NULL COMMENT '分类名称',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级大分类',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '上级大分类',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_cat_small
-- ----------------------------
INSERT INTO `meet_cat_small` VALUES ('1', '4', '妈咪用品', '7', '99');
INSERT INTO `meet_cat_small` VALUES ('2', '9', '包鞋袜', '19', '99');
INSERT INTO `meet_cat_small` VALUES ('3', '9', '包鞋袜', '20', '99');
INSERT INTO `meet_cat_small` VALUES ('4', '6', '上衣', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('5', '10', 'T恤', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('6', '11', '针织衫', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('7', '12', '无袖连衣裙', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('8', '13', '有袖连衣裙', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('9', '14', '单裙', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('10', '15', '外套', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('11', '17', '套装', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('12', '18', '防辐射抱被', '2', '99');
INSERT INTO `meet_cat_small` VALUES ('13', '19', '手机防护袋', '2', '99');
INSERT INTO `meet_cat_small` VALUES ('14', '6', '上衣', '2', '99');
INSERT INTO `meet_cat_small` VALUES ('15', '1', '文胸', '4', '99');
INSERT INTO `meet_cat_small` VALUES ('16', '2', '内裤(含一次性)', '4', '99');
INSERT INTO `meet_cat_small` VALUES ('17', '7', '便裤(裤子)', '17', '99');
INSERT INTO `meet_cat_small` VALUES ('18', '16', '背带裤裙', '17', '99');
INSERT INTO `meet_cat_small` VALUES ('19', '6', '上衣', '3', '99');
INSERT INTO `meet_cat_small` VALUES ('20', '7', '便裤(裤子)', '3', '99');
INSERT INTO `meet_cat_small` VALUES ('21', '17', '套装', '3', '99');
INSERT INTO `meet_cat_small` VALUES ('22', '10', 'T恤', '3', '99');
INSERT INTO `meet_cat_small` VALUES ('23', '3', '塑身上装', '21', '99');
INSERT INTO `meet_cat_small` VALUES ('24', '8', '塑身下装(含束腹)', '21', '99');
INSERT INTO `meet_cat_small` VALUES ('25', '46', '脸部护理', '8', '99');
INSERT INTO `meet_cat_small` VALUES ('26', '47', '手部护理', '8', '99');
INSERT INTO `meet_cat_small` VALUES ('27', '48', '身体护理', '8', '99');
INSERT INTO `meet_cat_small` VALUES ('28', '59', '洗护用品', '8', '99');
INSERT INTO `meet_cat_small` VALUES ('29', '20', '婴童上装(含套装)', '10', '99');
INSERT INTO `meet_cat_small` VALUES ('30', '22', '婴童用品', '18', '99');
INSERT INTO `meet_cat_small` VALUES ('31', '21', '纸制品', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('32', '23', '婴童下装', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('33', '31', '模特类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('34', '32', '衣裤架类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('35', '33', '软装类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('36', '34', '电子类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('37', '35', '样衣类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('38', '36', '画册类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('39', '37', '书籍类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('40', '38', '其他类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('41', '39', '文具类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('42', '40', '日用品类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('43', '41', '报表类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('44', '42', '包装盒类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('45', '43', '手提袋类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('46', '44', '纸箱类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('47', '45', '封箱带类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('48', '49', '工作服类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('49', '60', '鞋袜', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('50', '56', '项链首饰', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('51', '57', '其他商品', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('52', '58', '奶瓶奶嘴', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('53', '61', '帽子', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('54', '62', '围巾', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('55', '63', '假领', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('56', '64', '口腔护理', '0', '99');



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:11:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_cat_middle
-- ----------------------------
DROP TABLE IF EXISTS `meet_cat_middle`;
CREATE TABLE `meet_cat_middle` (
  `cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `middle_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级大分类',
  `cat_name` varchar(100) NOT NULL COMMENT '分类名称',
  `parent_id` mediumint(5) DEFAULT NULL,
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '上级大分类',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_cat_middle
-- ----------------------------
INSERT INTO `meet_cat_middle` VALUES ('1', '1', '孕妇装', '1', '99');
INSERT INTO `meet_cat_middle` VALUES ('2', '7', '产前后用品', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('3', '19', '妈咪包袋', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('4', '20', '孕妇帽鞋袜', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('5', '4', '孕妇内衣', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('6', '3', '家居服', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('7', '21', '束身产品', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('8', '10', '婴童装', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('9', '18', '婴童用品', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('10', '2', '防辐射', '3', '99');
INSERT INTO `meet_cat_middle` VALUES ('11', '8', '孕妇护肤品', '6', '99');
INSERT INTO `meet_cat_middle` VALUES ('12', '17', '孕妇裤', '1', '99');
INSERT INTO `meet_cat_middle` VALUES ('13', '6', '配饰系列', '1', '99');
INSERT INTO `meet_cat_middle` VALUES ('14', '0', '未定义', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('15', '11', '赠品类', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('16', '12', '终端道具', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('17', '13', '印刷品类', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('18', '14', '包装物类', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('19', '15', '办公用品类', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('20', '16', '外采用品系列', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('21', '5', '防辐射用品', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('22', '9', '其他系列', null, '99');



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:11:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_cat_big_small
-- ----------------------------
DROP TABLE IF EXISTS `meet_cat_big_small`;
CREATE TABLE `meet_cat_big_small` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `big_id` mediumint(8) unsigned NOT NULL COMMENT '大类',
  `big_cat_name` varchar(100) NOT NULL COMMENT '大分类名称',
  `small_id` mediumint(8) unsigned NOT NULL COMMENT '小类',
  `small_cat_name` varchar(100) NOT NULL COMMENT '小分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_cat_big_small
-- ----------------------------
INSERT INTO `meet_cat_big_small` VALUES ('1', '1', '服装', '11', '针织衫');
INSERT INTO `meet_cat_big_small` VALUES ('2', '1', '服装', '60', '鞋袜');
INSERT INTO `meet_cat_big_small` VALUES ('3', '1', '服装', '56', '项链首饰');
INSERT INTO `meet_cat_big_small` VALUES ('4', '1', '服装', '12', '无袖连衣裙');
INSERT INTO `meet_cat_big_small` VALUES ('5', '1', '服装', '13', '有袖连衣裙');
INSERT INTO `meet_cat_big_small` VALUES ('6', '1', '服装', '14', '单裙');
INSERT INTO `meet_cat_big_small` VALUES ('7', '1', '服装', '15', '外套');
INSERT INTO `meet_cat_big_small` VALUES ('8', '1', '服装', '17', '套装');
INSERT INTO `meet_cat_big_small` VALUES ('10', '1', '服装', '16', '背带裤裙');
INSERT INTO `meet_cat_big_small` VALUES ('14', '2', '家居', '1', '文胸');
INSERT INTO `meet_cat_big_small` VALUES ('15', '2', '家居', '2', '内裤(含一次性)');
INSERT INTO `meet_cat_big_small` VALUES ('16', '2', '家居', '6', '上衣');
INSERT INTO `meet_cat_big_small` VALUES ('20', '2', '家居', '3', '塑身上装');
INSERT INTO `meet_cat_big_small` VALUES ('21', '2', '家居', '8', '塑身下装(含束腹)');
INSERT INTO `meet_cat_big_small` VALUES ('22', '2', '家居', '20', '婴童上装(含套装)');
INSERT INTO `meet_cat_big_small` VALUES ('24', '3', '防辐射', '18', '防辐射抱被');
INSERT INTO `meet_cat_big_small` VALUES ('25', '3', '防辐射', '19', '手机防护袋');
INSERT INTO `meet_cat_big_small` VALUES ('27', '6', '化妆品', '46', '脸部护理');
INSERT INTO `meet_cat_big_small` VALUES ('28', '6', '化妆品', '47', '手部护理');
INSERT INTO `meet_cat_big_small` VALUES ('29', '6', '化妆品', '48', '身体护理');
INSERT INTO `meet_cat_big_small` VALUES ('31', '1', '服装', '10', 'T恤');
INSERT INTO `meet_cat_big_small` VALUES ('32', '1', '服装', '7', '便裤(裤子)');
INSERT INTO `meet_cat_big_small` VALUES ('33', '1', '服装', '6', '上衣');
INSERT INTO `meet_cat_big_small` VALUES ('34', '3', '防辐射', '6', '上衣');
INSERT INTO `meet_cat_big_small` VALUES ('35', '3', '防辐射', '7', '便裤(裤子)');
INSERT INTO `meet_cat_big_small` VALUES ('36', '2', '家居', '17', '套装');
INSERT INTO `meet_cat_big_small` VALUES ('39', '2', '家居', '23', '婴童下装');
INSERT INTO `meet_cat_big_small` VALUES ('46', '2', '家居', '7', '便裤(裤子)');
INSERT INTO `meet_cat_big_small` VALUES ('50', '2', '家居', '9', '包鞋袜');
INSERT INTO `meet_cat_big_small` VALUES ('51', '2', '家居', '22', '婴童用品');
INSERT INTO `meet_cat_big_small` VALUES ('52', '2', '家居', '13', '有袖连衣裙');
INSERT INTO `meet_cat_big_small` VALUES ('53', '2', '家居', '4', '妈咪用品');
INSERT INTO `meet_cat_big_small` VALUES ('54', '2', '家居', '10', 'T恤');
INSERT INTO `meet_cat_big_small` VALUES ('55', '2', '家居', '11', '针织衫');
INSERT INTO `meet_cat_big_small` VALUES ('56', '2', '家居', '12', '无袖连衣裙');
INSERT INTO `meet_cat_big_small` VALUES ('57', '2', '家居', '60', '鞋袜');
INSERT INTO `meet_cat_big_small` VALUES ('58', '3', '防辐射', '4', '妈咪用品');
INSERT INTO `meet_cat_big_small` VALUES ('59', '3', '防辐射', '16', '背带裤裙');
INSERT INTO `meet_cat_big_small` VALUES ('60', '6', '化妆品', '59', '洗护用品');
INSERT INTO `meet_cat_big_small` VALUES ('61', '2', '家居', '21', '纸制品');
INSERT INTO `meet_cat_big_small` VALUES ('62', '3', '防辐射', '57', '其他商品');
INSERT INTO `meet_cat_big_small` VALUES ('63', '6', '化妆品', '4', '妈咪用品');
INSERT INTO `meet_cat_big_small` VALUES ('64', '1', '服装', '61', '帽子');
INSERT INTO `meet_cat_big_small` VALUES ('65', '1', '服装', '62', '围巾');
INSERT INTO `meet_cat_big_small` VALUES ('66', '1', '服装', '63', '假领');
INSERT INTO `meet_cat_big_small` VALUES ('67', '4', '备品', '33', '软装类');
INSERT INTO `meet_cat_big_small` VALUES ('68', '6', '化妆品', '64', '口腔护理');



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:10:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_cat_big
-- ----------------------------
DROP TABLE IF EXISTS `meet_cat_big`;
CREATE TABLE `meet_cat_big` (
  `big_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `cat_name` varchar(100) NOT NULL COMMENT '分类名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '上级大分类',
  PRIMARY KEY (`big_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_cat_big
-- ----------------------------
INSERT INTO `meet_cat_big` VALUES ('1', '服装', '99');
INSERT INTO `meet_cat_big` VALUES ('2', '家居', '99');
INSERT INTO `meet_cat_big` VALUES ('3', '防辐射', '99');
INSERT INTO `meet_cat_big` VALUES ('4', '备品', '99');
INSERT INTO `meet_cat_big` VALUES ('6', '化妆品', '99');


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:10:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_brand
-- ----------------------------
DROP TABLE IF EXISTS `meet_brand`;
CREATE TABLE `meet_brand` (
  `brand_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_brand
-- ----------------------------
INSERT INTO `meet_brand` VALUES ('1', 'OCT', '99');
INSERT INTO `meet_brand` VALUES ('2', 'UKI', '99');
INSERT INTO `meet_brand` VALUES ('10', 'UKI 线上', '99');
INSERT INTO `meet_brand` VALUES ('6', '外采用品', '99');
INSERT INTO `meet_brand` VALUES ('9', 'OCT 线上', '99');
INSERT INTO `meet_brand` VALUES ('3', 'Weekend', '99');


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:10:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_agent
-- ----------------------------
DROP TABLE IF EXISTS `meet_agent`;
CREATE TABLE `meet_agent` (
  `agent_id` int(10) NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(255) DEFAULT NULL,
  `agent_code` varchar(255) DEFAULT NULL,
  `p_order` int(10) DEFAULT '99',
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_agent
-- ----------------------------
INSERT INTO `meet_agent` VALUES ('1', '北京办事处（托管）', '001', '99');
INSERT INTO `meet_agent` VALUES ('2', '北京办事处（直营）', '002', '99');
INSERT INTO `meet_agent` VALUES ('3', '成都办事处', '003', '99');
INSERT INTO `meet_agent` VALUES ('4', '福州办事处', '010', '99');
INSERT INTO `meet_agent` VALUES ('5', '浙江办事处', '005', '99');
INSERT INTO `meet_agent` VALUES ('6', '江苏办事处', '006', '99');
INSERT INTO `meet_agent` VALUES ('7', '南昌办事处', '007', '99');
INSERT INTO `meet_agent` VALUES ('8', '南京办事处', '008', '99');
INSERT INTO `meet_agent` VALUES ('9', '上海办事处', '009', '99');
INSERT INTO `meet_agent` VALUES ('10', '深圳办事处', '004', '99');
INSERT INTO `meet_agent` VALUES ('11', '天津办事处', '012', '99');
INSERT INTO `meet_agent` VALUES ('12', '武汉办事处', '011', '99');
INSERT INTO `meet_agent` VALUES ('13', '重庆办事处', '013', '99');
INSERT INTO `meet_agent` VALUES ('14', '浙江上虞陈柯', '057CK', '99');
INSERT INTO `meet_agent` VALUES ('15', '浙江义乌杨永清', '057YYQ', '99');
INSERT INTO `meet_agent` VALUES ('16', '浙江嘉兴周宾', '057ZB', '99');
INSERT INTO `meet_agent` VALUES ('17', '浙江平湖刘仁银', '057BQD', '99');
INSERT INTO `meet_agent` VALUES ('18', '浙江慈溪阮建军', '057RJJ', '99');
INSERT INTO `meet_agent` VALUES ('19', '浙江桐庐郑磊', '057ZL', '99');
INSERT INTO `meet_agent` VALUES ('20', '浙江温州赵晓珍', '057ZXZ', '99');
INSERT INTO `meet_agent` VALUES ('21', '浙江绍兴施菊红', '057SJH', '99');
INSERT INTO `meet_agent` VALUES ('22', '浙江衢州李为华', '057LWH', '99');
INSERT INTO `meet_agent` VALUES ('23', '浙江诸暨姚利祥', '057YLX', '99');
INSERT INTO `meet_agent` VALUES ('24', '台州金秋', 'TZJQ', '99');
INSERT INTO `meet_agent` VALUES ('25', '浙江富阳黄晓琴', '057HXQ', '99');
INSERT INTO `meet_agent` VALUES ('26', '内蒙古乌兰浩特朱凯', '047ZK', '99');
INSERT INTO `meet_agent` VALUES ('27', '内蒙古包头市康珍玉', 'U47KZY', '99');
INSERT INTO `meet_agent` VALUES ('28', '内蒙古包头张秋兰', '047ZQL', '99');
INSERT INTO `meet_agent` VALUES ('29', '内蒙古呼和浩特张丹', '047ZD', '99');
INSERT INTO `meet_agent` VALUES ('30', '内蒙古巴彦淖尔苏秀梅', '047SXM', '99');
INSERT INTO `meet_agent` VALUES ('31', '天津武清赵子龙', 'O22ZZL', '99');
INSERT INTO `meet_agent` VALUES ('32', '河北保定贾磊', '031JL', '99');
INSERT INTO `meet_agent` VALUES ('33', '河北唐山葛彬', '031GB', '99');
INSERT INTO `meet_agent` VALUES ('34', '河北安新朱虹', '031ZH', '99');
INSERT INTO `meet_agent` VALUES ('35', '河北张家口苏利娟', '031SLJ', '99');
INSERT INTO `meet_agent` VALUES ('36', '河北易县王思淇', '312WSQ', '99');
INSERT INTO `meet_agent` VALUES ('37', '河北正定房小明', '031FXM', '99');
INSERT INTO `meet_agent` VALUES ('38', '河北沧州王继娜', '031WJL', '99');
INSERT INTO `meet_agent` VALUES ('39', '河北燕郊赵福萍', '031ZFP', '99');
INSERT INTO `meet_agent` VALUES ('40', '河北石家庄邓江卫', '031DJW', '99');
INSERT INTO `meet_agent` VALUES ('41', '河北秦皇岛王君', '031WJ', '99');
INSERT INTO `meet_agent` VALUES ('42', '河北衡水张瑶', '031ZY', '99');
INSERT INTO `meet_agent` VALUES ('43', '内蒙乌海斯琴（张海燕）', '047SQ', '99');
INSERT INTO `meet_agent` VALUES ('44', '四川宜宾杨贤坤', '028YXK', '99');
INSERT INTO `meet_agent` VALUES ('45', '四川都江堰马雪静', '028MXJ', '99');
INSERT INTO `meet_agent` VALUES ('46', '四川西昌谢磊', '028XL', '99');
INSERT INTO `meet_agent` VALUES ('47', '彭州郫县刘忠刚', '028LZG', '99');
INSERT INTO `meet_agent` VALUES ('48', '眉山朱婷薇', '028ZTW', '99');
INSERT INTO `meet_agent` VALUES ('49', '湖北十堰王丹卉', '071WDH', '99');
INSERT INTO `meet_agent` VALUES ('50', '湖北咸宁余洁', '071YJ', '99');
INSERT INTO `meet_agent` VALUES ('51', '湖北宜昌王春莲', '071WCL', '99');
INSERT INTO `meet_agent` VALUES ('52', '湖北荆门卞翠红', '027BCH', '99');
INSERT INTO `meet_agent` VALUES ('53', '重庆邹波', '023ZB', '99');
INSERT INTO `meet_agent` VALUES ('54', '河南郑州王晓娜', '037WXN', '99');
INSERT INTO `meet_agent` VALUES ('55', '江苏宿迁祖红丽', '052ZHL', '99');
INSERT INTO `meet_agent` VALUES ('56', '安徽太和梁玉英', '055LYY', '99');
INSERT INTO `meet_agent` VALUES ('57', '安徽铜陵吴赬瑾', '055WZJ', '99');
INSERT INTO `meet_agent` VALUES ('58', '安徽合肥潘莉娜', '055LY', '99');
INSERT INTO `meet_agent` VALUES ('59', '安徽阜阳屈伟', '055QW', '99');
INSERT INTO `meet_agent` VALUES ('60', '江苏启东陆黎明', '025LLM', '99');
INSERT INTO `meet_agent` VALUES ('61', '江苏张家港徐燕萍', '025XYP', '99');
INSERT INTO `meet_agent` VALUES ('62', '江苏徐州新沂 赵素丹', '025ZSD', '99');
INSERT INTO `meet_agent` VALUES ('63', '江苏徐州黄重强', '051HZQ', '99');
INSERT INTO `meet_agent` VALUES ('64', '江苏泰州周娟', '051ZJ', '99');
INSERT INTO `meet_agent` VALUES ('65', '江苏海安孙月梅', '025SYM', '99');
INSERT INTO `meet_agent` VALUES ('66', '江苏海门沈鼎城', '025SDC', '99');
INSERT INTO `meet_agent` VALUES ('67', '江苏盐城孙海霞', '051DFL', '99');
INSERT INTO `meet_agent` VALUES ('68', '江苏盐城韦伟', '515WW', '99');
INSERT INTO `meet_agent` VALUES ('69', '云南昆明唐文慧', '087TWH', '99');
INSERT INTO `meet_agent` VALUES ('70', '江西赣州肖琦', '079XQ', '99');
INSERT INTO `meet_agent` VALUES ('71', '宁夏中卫刘学琴', '095LXQ', '99');
INSERT INTO `meet_agent` VALUES ('72', '宁夏银川韩英', '093HY', '99');
INSERT INTO `meet_agent` VALUES ('73', '广西南宁石坚祯', '077SJZ', '99');
INSERT INTO `meet_agent` VALUES ('74', '广西柳州农妮', '077NN', '99');
INSERT INTO `meet_agent` VALUES ('75', '广西桂林蒋艺', '0773ZL', '99');
INSERT INTO `meet_agent` VALUES ('76', '新疆伊犁姜雨', '099JY', '99');
INSERT INTO `meet_agent` VALUES ('77', '贵州贵阳邹波', '085ZB', '99');
INSERT INTO `meet_agent` VALUES ('78', '贵州铜仁李群', '085LQ', '99');
INSERT INTO `meet_agent` VALUES ('79', '贵州黔西杨伟', '857YW', '99');
INSERT INTO `meet_agent` VALUES ('80', '贵州遵义邹波', '0852ZB', '99');
INSERT INTO `meet_agent` VALUES ('81', '新疆乌鲁木齐柴琳', '091CL', '99');
INSERT INTO `meet_agent` VALUES ('82', '上海松江顾玉伟', 'U21GYW', '99');
INSERT INTO `meet_agent` VALUES ('83', '山西太原赵敏', '035ZM', '99');
INSERT INTO `meet_agent` VALUES ('84', '山西运城杨晓', '053YX', '99');
INSERT INTO `meet_agent` VALUES ('85', '山西运城武鑫', '053WX', '99');
INSERT INTO `meet_agent` VALUES ('86', '海南海口黄兰梅', '089HLM', '99');
INSERT INTO `meet_agent` VALUES ('87', '上海吴霜蝶', '021WSD', '99');
INSERT INTO `meet_agent` VALUES ('88', '广东惠州罗松涛', '075LST', '99');
INSERT INTO `meet_agent` VALUES ('89', '湖南娄底梁斐', '073LF', '99');
INSERT INTO `meet_agent` VALUES ('90', '甘肃定西陆江江', '093LJJ', '99');
INSERT INTO `meet_agent` VALUES ('91', '甘肃酒泉曹颖', '0937CY', '99');
INSERT INTO `meet_agent` VALUES ('92', '甘肃兰州李飞', 'U935LF', '99');
INSERT INTO `meet_agent` VALUES ('93', '山东东营柳双', '053WCH', '99');
INSERT INTO `meet_agent` VALUES ('94', '山东临沂王海青', '053WHQ', '99');
INSERT INTO `meet_agent` VALUES ('95', '山东临沂费县范长爱', '053FCA', '99');
INSERT INTO `meet_agent` VALUES ('96', '山东即墨常晓丽', '532CXL', '99');
INSERT INTO `meet_agent` VALUES ('97', '山东威海孙秀文', '053SXW', '99');
INSERT INTO `meet_agent` VALUES ('98', '山东济南范永亮', '053FYL', '99');
INSERT INTO `meet_agent` VALUES ('99', '山东潍坊郭迎新', '053GYX', '99');
INSERT INTO `meet_agent` VALUES ('100', '山东烟台赵燕', '053ZY', '99');
INSERT INTO `meet_agent` VALUES ('101', '山东威海赛超', '053SC', '99');
INSERT INTO `meet_agent` VALUES ('102', '山东海阳张志晓', '053YYW', '99');
INSERT INTO `meet_agent` VALUES ('103', '山东济宁沈静', 'U53SJ', '99');
INSERT INTO `meet_agent` VALUES ('104', '山东聊城李珊珊', '053LSS', '99');
INSERT INTO `meet_agent` VALUES ('105', '山东临沂徐丽芹', '053XLQ', '99');
INSERT INTO `meet_agent` VALUES ('106', '山东青岛辛焕义', '053XHY', '99');
INSERT INTO `meet_agent` VALUES ('107', '甘肃兰州邵新东', '093SXD', '99');
INSERT INTO `meet_agent` VALUES ('108', '陕西西安张大伟（郭鲜莲）', '091ZDW', '99');
INSERT INTO `meet_agent` VALUES ('109', '吉林延吉蔡小琴', '043CXQ', '99');
INSERT INTO `meet_agent` VALUES ('110', '吉林长春张立红', '043ZLH', '99');
INSERT INTO `meet_agent` VALUES ('111', '辽宁大连袁秀兰', '041YXL', '99');
INSERT INTO `meet_agent` VALUES ('112', '辽宁大连陈健', 'O411CJ', '99');
INSERT INTO `meet_agent` VALUES ('113', '辽宁朝阳秦巍', '0421QW', '99');
INSERT INTO `meet_agent` VALUES ('114', '辽宁沈阳郭勇', '041GY', '99');
INSERT INTO `meet_agent` VALUES ('115', '辽宁盘锦徐东飞', '042XDF', '99');
INSERT INTO `meet_agent` VALUES ('116', '辽宁盘锦徐东飞', '041XDF', '99');
INSERT INTO `meet_agent` VALUES ('117', '辽宁葫芦岛徐冰玉', '042XBY', '99');
INSERT INTO `meet_agent` VALUES ('118', '辽宁辽阳金智远', '041JZY', '99');
INSERT INTO `meet_agent` VALUES ('119', '辽宁铁岭李娜', '041LN', '99');
INSERT INTO `meet_agent` VALUES ('120', '辽宁鞍山韩斌', '041HB', '99');
INSERT INTO `meet_agent` VALUES ('121', '黑龙江哈尔滨陈雅芳', '045CYF', '99');
INSERT INTO `meet_agent` VALUES ('122', '黑龙江大庆王学云', '045WXY', '99');
INSERT INTO `meet_agent` VALUES ('123', '河北邯郸王黎莹', '031WLY', '99');



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:15:45
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_wave
-- ----------------------------
DROP TABLE IF EXISTS `meet_wave`;
CREATE TABLE `meet_wave` (
  `wave_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `wave_no` varchar(10) DEFAULT NULL,
  `wave_name` varchar(100) NOT NULL COMMENT '等级名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`wave_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_wave
-- ----------------------------
INSERT INTO `meet_wave` VALUES ('1', '001', '秋一', '99');
INSERT INTO `meet_wave` VALUES ('2', '002', '冬一', '99');
INSERT INTO `meet_wave` VALUES ('3', '003', '冬二', '99');
INSERT INTO `meet_wave` VALUES ('4', '004', '早春', '99');
INSERT INTO `meet_wave` VALUES ('5', '005', '春', '99');
INSERT INTO `meet_wave` VALUES ('6', '006', '夏一', '99');
INSERT INTO `meet_wave` VALUES ('7', '007', '夏二', '99');
INSERT INTO `meet_wave` VALUES ('8', '008', '夏三', '99');
INSERT INTO `meet_wave` VALUES ('9', '009', '夏四', '99');
INSERT INTO `meet_wave` VALUES ('11', '011', '秋二', '99');
INSERT INTO `meet_wave` VALUES ('15', '015', '冬三', '99');
INSERT INTO `meet_wave` VALUES ('16', '016', '冬四', '99');
INSERT INTO `meet_wave` VALUES ('17', '017', '不分波段', '99');
INSERT INTO `meet_wave` VALUES ('18', '000', '未定义', '99');



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:10:38
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `meet_admin_users`;
CREATE TABLE `meet_admin_users` (
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '后台用户ID',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '启用',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `truename` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `config` longtext COMMENT '配置信息',
  `favorite` longtext COMMENT '爱好',
  `super` enum('0','1') NOT NULL DEFAULT '0' COMMENT '超级管理员',
  `lastip` varchar(20) DEFAULT NULL COMMENT '上次登录ip',
  `logincount` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `disabled` enum('true','false') NOT NULL DEFAULT 'false',
  `op_no` varchar(50) DEFAULT NULL COMMENT '操作员no',
  `password` varchar(128) DEFAULT NULL,
  `memo` text COMMENT '备注',
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `ind_disabled` (`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_admin_users
-- ----------------------------
INSERT INTO `meet_admin_users` VALUES ('1', '1', 'admin', '1416965007', null, null, null, '1', null, '323', 'false', null, '14e1b600b1fd579f47433b88e8d85291', null, '1');
INSERT INTO `meet_admin_users` VALUES ('2', '1', 'sd01', '0', '彭红星', '', null, '1', null, '0', 'false', '', '4ac391edb99dac1ce1396dc184b8cfa2', '', '1');
INSERT INTO `meet_admin_users` VALUES ('3', '1', 'sd02', '0', '刘成海', null, null, '1', null, '0', 'false', '', '992ff0f913b4ab64efd4e6769dad49a1', '', '1');
INSERT INTO `meet_admin_users` VALUES ('4', '1', 'sd03', '0', '杨娟', null, null, '1', null, '0', 'false', '', '0e8f566c2d3c546147e831dd31d1864f', '', '1');
INSERT INTO `meet_admin_users` VALUES ('5', '1', 'dy01', '0', '吴振芸', null, null, '1', null, '0', 'false', '', 'bd8015c804185b2af09eca50bce12b86', '', '1');
INSERT INTO `meet_admin_users` VALUES ('6', '1', 'dy02', '0', '张雅琴', null, null, '1', null, '0', 'false', '', '2c8df27f170841c7b73bea83ec09d1c4', '', '1');
INSERT INTO `meet_admin_users` VALUES ('8', '1', '查单', '0', null, null, null, '0', null, '0', 'false', '', '14e1b600b1fd579f47433b88e8d85291', '', '2');


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:15:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_type
-- ----------------------------
DROP TABLE IF EXISTS `meet_type`;
CREATE TABLE `meet_type` (
  `type_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `p_order` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_type
-- ----------------------------
INSERT INTO `meet_type` VALUES ('1', '新款', '0');
INSERT INTO `meet_type` VALUES ('2', 'weekend', '0');
INSERT INTO `meet_type` VALUES ('4', '设限款', '0');
INSERT INTO `meet_type` VALUES ('5', '类型四', '0');
INSERT INTO `meet_type` VALUES ('6', '类型五', '0');
INSERT INTO `meet_type` VALUES ('7', '类型六', '0');



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:15:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_size
-- ----------------------------
DROP TABLE IF EXISTS `meet_size`;
CREATE TABLE `meet_size` (
  `size_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `size_no` varchar(5) NOT NULL COMMENT '尺码代码',
  `size_name` varchar(100) NOT NULL COMMENT '尺码名称',
  `group_id` mediumint(5) NOT NULL,
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  `disabled` enum('false','true') DEFAULT 'false',
  PRIMARY KEY (`size_id`),
  KEY `size_id` (`size_id`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_size
-- ----------------------------
INSERT INTO `meet_size` VALUES ('2', '01', 'S', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('3', '02', 'M', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('4', '03', 'L', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('5', '04', 'XL', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('6', '05', 'XXL', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('7', '06', 'XXXL', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('8', '35', '35', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('9', '36', '36', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('10', '37', '37', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('11', '38', '38', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('12', '39', '39', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('13', '40', '40', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('14', '42', '42', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('15', '44', '44', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('16', '46', '46', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('17', '48', '48', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('18', '234', '75B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('19', '236', '80B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('20', '238', '85B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('21', '240', '90B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('22', '242', '95B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('23', '244', '100B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('24', '334', '75C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('25', '336', '80C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('26', '338', '85C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('27', '340', '90C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('28', '342', '95C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('29', '344', '100C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('30', '434', '75D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('31', '436', '80D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('32', '438', '85D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('33', '440', '90D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('34', '442', '95D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('35', '444', '100D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('36', '534', '75E', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('37', '536', '80E', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('38', '538', '85E', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('39', '540', '90E', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('40', '541', 'SS', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('41', '10000', '161020', '0', '99', 'false');
INSERT INTO `meet_size` VALUES ('1', '00', 'F', '1', '99', 'false');



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:15:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_size_group
-- ----------------------------
DROP TABLE IF EXISTS `meet_size_group`;
CREATE TABLE `meet_size_group` (
  `group_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `size_group_code` varchar(10) DEFAULT NULL,
  `size_group_name` varchar(10) DEFAULT NULL,
  `p_order` mediumint(5) DEFAULT '99',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_size_group
-- ----------------------------
INSERT INTO `meet_size_group` VALUES ('1', 'FZ01', '服装01', '99');
INSERT INTO `meet_size_group` VALUES ('2', 'WX01', '文胸01', '99');
INSERT INTO `meet_size_group` VALUES ('3', 'XZ01', '鞋子01', '99');


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:15:18
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_season_big
-- ----------------------------
DROP TABLE IF EXISTS `meet_season_big`;
CREATE TABLE `meet_season_big` (
  `id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `big_id` mediumint(5) DEFAULT NULL,
  `big_name` varchar(100) DEFAULT NULL,
  `season_id` mediumint(5) DEFAULT NULL,
  `season_name` varchar(100) DEFAULT NULL,
  `p_order` mediumint(5) DEFAULT '99',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_season_big
-- ----------------------------
INSERT INTO `meet_season_big` VALUES ('1', '1', '服装', '1', '春', '99');
INSERT INTO `meet_season_big` VALUES ('2', '1', '服装', '2', '夏', '99');
INSERT INTO `meet_season_big` VALUES ('3', '1', '服装', '3', '秋', '99');
INSERT INTO `meet_season_big` VALUES ('4', '1', '服装', '4', '冬', '99');
INSERT INTO `meet_season_big` VALUES ('5', '2', '家居', '1', '春', '99');
INSERT INTO `meet_season_big` VALUES ('6', '2', '家居', '2', '夏', '99');
INSERT INTO `meet_season_big` VALUES ('7', '2', '家居', '3', '秋', '99');
INSERT INTO `meet_season_big` VALUES ('8', '2', '家居', '4', '冬', '99');
INSERT INTO `meet_season_big` VALUES ('9', '2', '家居', '5', '不分季节', '99');
INSERT INTO `meet_season_big` VALUES ('10', '3', '防辐射', '1', '春', '99');
INSERT INTO `meet_season_big` VALUES ('11', '3', '防辐射', '2', '夏', '99');
INSERT INTO `meet_season_big` VALUES ('12', '3', '防辐射', '3', '秋', '99');
INSERT INTO `meet_season_big` VALUES ('13', '3', '防辐射', '4', '冬', '99');
INSERT INTO `meet_season_big` VALUES ('14', '3', '防辐射', '5', '不分季节', '99');
INSERT INTO `meet_season_big` VALUES ('15', '6', '化妆品', '5', '不分季节', '99');
INSERT INTO `meet_season_big` VALUES ('16', '4', '备品', '1', '春', '99');
INSERT INTO `meet_season_big` VALUES ('17', '4', '备品', '2', '夏', '99');
INSERT INTO `meet_season_big` VALUES ('18', '4', '备品', '3', '秋', '99');
INSERT INTO `meet_season_big` VALUES ('19', '4', '备品', '4', '冬', '99');
INSERT INTO `meet_season_big` VALUES ('20', '4', '备品', '5', '不分季节', '99');
INSERT INTO `meet_season_big` VALUES ('22', '6', '化妆品', '6', '海洋女神', '99');



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:15:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_season
-- ----------------------------
DROP TABLE IF EXISTS `meet_season`;
CREATE TABLE `meet_season` (
  `season_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `season_name` varchar(100) NOT NULL COMMENT '季节名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`season_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_season
-- ----------------------------
INSERT INTO `meet_season` VALUES ('1', '春', '99');
INSERT INTO `meet_season` VALUES ('2', '夏', '99');
INSERT INTO `meet_season` VALUES ('3', '秋', '99');
INSERT INTO `meet_season` VALUES ('4', '冬', '99');
INSERT INTO `meet_season` VALUES ('5', '不分季节', '99');
INSERT INTO `meet_season` VALUES ('6', '海洋女神', '99');



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:15:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_scheme
-- ----------------------------
DROP TABLE IF EXISTS `meet_scheme`;
CREATE TABLE `meet_scheme` (
  `scheme_id` mediumint(5) NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `scheme_name` varchar(100) NOT NULL COMMENT '色系名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  `disabled` enum('true','false') DEFAULT 'false',
  PRIMARY KEY (`scheme_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_scheme
-- ----------------------------
INSERT INTO `meet_scheme` VALUES ('1', '黑', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('2', '白', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('3', '咖', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('4', '绿', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('5', '红', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('6', '黄', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('7', '蓝', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('8', '紫', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('9', '桔', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('10', '标', '99', 'false');


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:14:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_purchase
-- ----------------------------
DROP TABLE IF EXISTS `meet_purchase`;
CREATE TABLE `meet_purchase` (
  `purchase_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `purchase_name` varchar(100) NOT NULL COMMENT '订货会名称',
  `p_order` mediumint(5) unsigned NOT NULL DEFAULT '99',
  PRIMARY KEY (`purchase_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_purchase
-- ----------------------------
INSERT INTO `meet_purchase` VALUES ('1', '2018OCT春夏订货会A', '99');
INSERT INTO `meet_purchase` VALUES ('2', '2018OCT春夏订货会B', '99');


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:13:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_product
-- ----------------------------
DROP TABLE IF EXISTS `meet_product`;
CREATE TABLE `meet_product` (
  `product_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` mediumint(8) unsigned NOT NULL COMMENT '订货会',
  `product_sn` varchar(30) NOT NULL COMMENT '商品的货号(442127150653002)',
  `style_sn` varchar(30) NOT NULL COMMENT '款号(442127150653)',
  `model_sn` varchar(30) NOT NULL COMMENT '型号(44212715)',
  `serial_num` mediumint(5) unsigned NOT NULL COMMENT '流水号',
  `name` varchar(128) NOT NULL COMMENT '商品名称',
  `img_url` varchar(128) DEFAULT NULL COMMENT '图片地址',
  `color_id` mediumint(5) unsigned NOT NULL COMMENT '颜色',
  `size_id` mediumint(5) unsigned NOT NULL COMMENT '尺码',
  `brand_id` mediumint(5) unsigned NOT NULL COMMENT '品牌',
  `cat_b` mediumint(5) unsigned NOT NULL COMMENT '大类',
  `cat_m` mediumint(5) unsigned NOT NULL COMMENT '中类',
  `cat_s` mediumint(5) unsigned NOT NULL COMMENT '小类',
  `season_id` mediumint(5) unsigned NOT NULL COMMENT '季节',
  `level_id` mediumint(5) unsigned NOT NULL COMMENT '等级',
  `wave_id` mediumint(5) unsigned NOT NULL COMMENT '波段',
  `scheme_id` mediumint(5) unsigned NOT NULL COMMENT '色系',
  `cost_price` decimal(10,2) NOT NULL COMMENT '销售价',
  `price_level_id` mediumint(5) unsigned NOT NULL COMMENT '价格带',
  `memo` varchar(256) DEFAULT NULL COMMENT '描述',
  `type_id` mediumint(5) NOT NULL DEFAULT '0',
  `disabled` enum('false','true') NOT NULL DEFAULT 'false' COMMENT '是否实现',
  `is_error` enum('true','false') DEFAULT 'false',
  `is_down` mediumint(5) DEFAULT '0' COMMENT '是否下架 0 上架，1下架',
  `order` int(10) unsigned NOT NULL DEFAULT '999' COMMENT '排序',
  PRIMARY KEY (`product_id`),
  KEY `model` (`model_sn`) USING BTREE,
  KEY `serial` (`model_sn`,`serial_num`) USING BTREE,
  KEY `serial_num` (`serial_num`) USING BTREE,
  KEY `style_sn` (`style_sn`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:13:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_pchange_log
-- ----------------------------
DROP TABLE IF EXISTS `meet_pchange_log`;
CREATE TABLE `meet_pchange_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `change_name` varchar(50) NOT NULL,
  `change_id` varchar(30) NOT NULL,
  `change_log` longtext NOT NULL,
  `change_type` enum('disabled','add','change','error') NOT NULL COMMENT '商品状态，新增，修改，错误',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:13:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_order_log
-- ----------------------------
DROP TABLE IF EXISTS `meet_order_log`;
CREATE TABLE `meet_order_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:12:02
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_order_items
-- ----------------------------
DROP TABLE IF EXISTS `meet_order_items`;
CREATE TABLE `meet_order_items` (
  `item_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，订单明细ID',
  `order_id` bigint(20) unsigned NOT NULL COMMENT '主键，类型id',
  `product_id` mediumint(5) unsigned NOT NULL COMMENT '商品id',
  `product_sn` varchar(40) NOT NULL COMMENT '商品的编号',
  `style_sn` varchar(30) NOT NULL COMMENT '款号',
  `model_sn` varchar(30) NOT NULL COMMENT '型号',
  `name` varchar(200) NOT NULL COMMENT '明细商品的名称',
  `price` decimal(20,2) NOT NULL COMMENT '明细商品的销售价',
  `amount` decimal(20,2) DEFAULT NULL COMMENT '明细商品总额',
  `nums` mediumint(5) unsigned NOT NULL COMMENT '明细商品购买数量',
  `disabled` enum('false','true') NOT NULL DEFAULT 'false' COMMENT '是否实现',
  `import` enum('false','true') DEFAULT 'false' COMMENT '是否为导入用户，true 是  false 否',
  PRIMARY KEY (`item_id`),
  KEY `order` (`order_id`) USING BTREE,
  KEY `model` (`model_sn`) USING BTREE,
  KEY `product` (`product_id`) USING BTREE,
  KEY `disabled` (`disabled`) USING BTREE,
  KEY `order_disabled` (`order_id`,`disabled`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:11:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_order
-- ----------------------------
DROP TABLE IF EXISTS `meet_order`;
CREATE TABLE `meet_order` (
  `order_id` bigint(20) unsigned NOT NULL COMMENT '主键，类型id',
  `purchase_id` mediumint(8) unsigned NOT NULL COMMENT '订货会',
  `status` enum('finish','dead','confirm','active') NOT NULL DEFAULT 'active' COMMENT '订单状态 active：正常订单；confirm：订确认；dead：已作废；finish：已完成',
  `customer_id` bigint(10) unsigned DEFAULT NULL COMMENT '收货人',
  `customer_name` varchar(50) DEFAULT NULL COMMENT '收货姓名',
  `cost_item` decimal(20,2) NOT NULL COMMENT '订单商品总价格',
  `create_time` int(11) unsigned NOT NULL COMMENT '下单时间',
  `edit_time` int(11) unsigned DEFAULT NULL COMMENT '最后更新时间',
  `disabled` enum('false','true') NOT NULL DEFAULT 'false' COMMENT '是否实现',
  PRIMARY KEY (`order_id`),
  KEY `order` (`order_id`) USING BTREE,
  KEY `purchase` (`purchase_id`) USING BTREE,
  KEY `customer` (`customer_id`) USING BTREE,
  KEY `pu_cus` (`purchase_id`,`customer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : 201708newtest

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-03-06 16:11:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_level
-- ----------------------------
DROP TABLE IF EXISTS `meet_level`;
CREATE TABLE `meet_level` (
  `level_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `level_name` varchar(100) NOT NULL COMMENT '等级名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_level
-- ----------------------------
INSERT INTO `meet_level` VALUES ('3', '小S广告款', '99');
INSERT INTO `meet_level` VALUES ('4', '基本款', '99');
INSERT INTO `meet_level` VALUES ('5', '形象款', '99');
INSERT INTO `meet_level` VALUES ('6', '主力款', '99');
INSERT INTO `meet_level` VALUES ('7', '其他', '99');
INSERT INTO `meet_level` VALUES ('8', '未定义', '99');
INSERT INTO `meet_level` VALUES ('9', '渠道款', '99');






















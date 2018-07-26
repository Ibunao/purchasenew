/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:39:21
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

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

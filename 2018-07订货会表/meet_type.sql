/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:39:56
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_type
-- ----------------------------
INSERT INTO `meet_type` VALUES ('1', '新款', '0');
INSERT INTO `meet_type` VALUES ('2', 'weekend', '0');
INSERT INTO `meet_type` VALUES ('4', '设限款', '0');
INSERT INTO `meet_type` VALUES ('5', '类型四', '0');
INSERT INTO `meet_type` VALUES ('6', '类型五', '0');
INSERT INTO `meet_type` VALUES ('7', '类型六', '0');
INSERT INTO `meet_type` VALUES ('8', '融入款', '0');

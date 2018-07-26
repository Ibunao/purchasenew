/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:39:51
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_size_group
-- ----------------------------
INSERT INTO `meet_size_group` VALUES ('1', 'FZ01', '服装01', '99');
INSERT INTO `meet_size_group` VALUES ('2', 'WX01', '文胸01', '99');
INSERT INTO `meet_size_group` VALUES ('3', 'XZ01', '鞋子01', '99');

/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:39:15
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
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_purchase
-- ----------------------------
INSERT INTO `meet_purchase` VALUES ('1', '2018OCT秋冬订货会', '99');
INSERT INTO `meet_purchase` VALUES ('2', '2018OCT春夏订货会B', '99');

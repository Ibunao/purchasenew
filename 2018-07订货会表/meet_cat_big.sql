/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:37:49
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_cat_big
-- ----------------------------
INSERT INTO `meet_cat_big` VALUES ('1', '服装', '99');
INSERT INTO `meet_cat_big` VALUES ('2', '家居', '99');
INSERT INTO `meet_cat_big` VALUES ('3', '防辐射', '99');
INSERT INTO `meet_cat_big` VALUES ('4', '备品', '99');
INSERT INTO `meet_cat_big` VALUES ('6', '化妆品', '99');

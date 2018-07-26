/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:37:42
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_brand
-- ----------------------------
INSERT INTO `meet_brand` VALUES ('1', 'OCT', '99');
INSERT INTO `meet_brand` VALUES ('2', 'UKI', '99');
INSERT INTO `meet_brand` VALUES ('10', 'UKI 线上', '99');
INSERT INTO `meet_brand` VALUES ('6', '外采用品', '99');
INSERT INTO `meet_brand` VALUES ('9', 'OCT 线上', '99');
INSERT INTO `meet_brand` VALUES ('3', 'Weekend', '99');

/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:39:45
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
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

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

/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:40:01
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
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

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

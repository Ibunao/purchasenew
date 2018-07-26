/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:39:30
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_season
-- ----------------------------
INSERT INTO `meet_season` VALUES ('1', '春', '99');
INSERT INTO `meet_season` VALUES ('2', '夏', '99');
INSERT INTO `meet_season` VALUES ('3', '秋', '99');
INSERT INTO `meet_season` VALUES ('4', '冬', '99');
INSERT INTO `meet_season` VALUES ('5', '不分季节', '99');
INSERT INTO `meet_season` VALUES ('6', '海洋女神', '99');

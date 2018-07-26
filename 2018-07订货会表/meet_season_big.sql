/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:39:39
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

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

/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:38:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_cat_middle
-- ----------------------------
DROP TABLE IF EXISTS `meet_cat_middle`;
CREATE TABLE `meet_cat_middle` (
  `cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `middle_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级大分类',
  `cat_name` varchar(100) NOT NULL COMMENT '分类名称',
  `parent_id` mediumint(5) DEFAULT NULL,
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '上级大分类',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_cat_middle
-- ----------------------------
INSERT INTO `meet_cat_middle` VALUES ('1', '1', '孕妇装', '1', '99');
INSERT INTO `meet_cat_middle` VALUES ('2', '7', '产前后用品', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('3', '19', '妈咪包袋', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('4', '20', '孕妇帽鞋袜', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('5', '4', '孕妇内衣', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('6', '3', '家居服', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('7', '21', '束身产品', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('8', '10', '婴童装', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('9', '18', '婴童用品', '2', '99');
INSERT INTO `meet_cat_middle` VALUES ('10', '2', '防辐射', '3', '99');
INSERT INTO `meet_cat_middle` VALUES ('11', '8', '孕妇护肤品', '6', '99');
INSERT INTO `meet_cat_middle` VALUES ('12', '17', '孕妇裤', '1', '99');
INSERT INTO `meet_cat_middle` VALUES ('13', '6', '配饰系列', '1', '99');
INSERT INTO `meet_cat_middle` VALUES ('14', '0', '未定义', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('15', '11', '赠品类', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('16', '12', '终端道具', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('17', '13', '印刷品类', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('18', '14', '包装物类', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('19', '15', '办公用品类', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('20', '16', '外采用品系列', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('21', '5', '防辐射用品', null, '99');
INSERT INTO `meet_cat_middle` VALUES ('22', '9', '其他系列', null, '99');

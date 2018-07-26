/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:37:55
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_cat_big_small
-- ----------------------------
DROP TABLE IF EXISTS `meet_cat_big_small`;
CREATE TABLE `meet_cat_big_small` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `big_id` mediumint(8) unsigned NOT NULL COMMENT '大类',
  `big_cat_name` varchar(100) NOT NULL COMMENT '大分类名称',
  `small_id` mediumint(8) unsigned NOT NULL COMMENT '小类',
  `small_cat_name` varchar(100) NOT NULL COMMENT '小分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_cat_big_small
-- ----------------------------
INSERT INTO `meet_cat_big_small` VALUES ('1', '1', '服装', '11', '针织衫');
INSERT INTO `meet_cat_big_small` VALUES ('2', '1', '服装', '60', '鞋袜');
INSERT INTO `meet_cat_big_small` VALUES ('3', '1', '服装', '56', '项链首饰');
INSERT INTO `meet_cat_big_small` VALUES ('4', '1', '服装', '12', '无袖连衣裙');
INSERT INTO `meet_cat_big_small` VALUES ('5', '1', '服装', '13', '有袖连衣裙');
INSERT INTO `meet_cat_big_small` VALUES ('6', '1', '服装', '14', '单裙');
INSERT INTO `meet_cat_big_small` VALUES ('7', '1', '服装', '15', '外套');
INSERT INTO `meet_cat_big_small` VALUES ('8', '1', '服装', '17', '套装');
INSERT INTO `meet_cat_big_small` VALUES ('10', '1', '服装', '16', '背带裤裙');
INSERT INTO `meet_cat_big_small` VALUES ('14', '2', '家居', '1', '文胸');
INSERT INTO `meet_cat_big_small` VALUES ('15', '2', '家居', '2', '内裤(含一次性)');
INSERT INTO `meet_cat_big_small` VALUES ('16', '2', '家居', '6', '上衣');
INSERT INTO `meet_cat_big_small` VALUES ('20', '2', '家居', '3', '塑身上装');
INSERT INTO `meet_cat_big_small` VALUES ('21', '2', '家居', '8', '塑身下装(含束腹)');
INSERT INTO `meet_cat_big_small` VALUES ('22', '2', '家居', '20', '婴童上装(含套装)');
INSERT INTO `meet_cat_big_small` VALUES ('24', '3', '防辐射', '18', '防辐射抱被');
INSERT INTO `meet_cat_big_small` VALUES ('25', '3', '防辐射', '19', '手机防护袋');
INSERT INTO `meet_cat_big_small` VALUES ('27', '6', '化妆品', '46', '脸部护理');
INSERT INTO `meet_cat_big_small` VALUES ('28', '6', '化妆品', '47', '手部护理');
INSERT INTO `meet_cat_big_small` VALUES ('29', '6', '化妆品', '48', '身体护理');
INSERT INTO `meet_cat_big_small` VALUES ('31', '1', '服装', '10', 'T恤');
INSERT INTO `meet_cat_big_small` VALUES ('32', '1', '服装', '7', '便裤(裤子)');
INSERT INTO `meet_cat_big_small` VALUES ('33', '1', '服装', '6', '上衣');
INSERT INTO `meet_cat_big_small` VALUES ('34', '3', '防辐射', '6', '上衣');
INSERT INTO `meet_cat_big_small` VALUES ('35', '3', '防辐射', '7', '便裤(裤子)');
INSERT INTO `meet_cat_big_small` VALUES ('36', '2', '家居', '17', '套装');
INSERT INTO `meet_cat_big_small` VALUES ('39', '2', '家居', '23', '婴童下装');
INSERT INTO `meet_cat_big_small` VALUES ('46', '2', '家居', '7', '便裤(裤子)');
INSERT INTO `meet_cat_big_small` VALUES ('50', '2', '家居', '9', '包鞋袜');
INSERT INTO `meet_cat_big_small` VALUES ('51', '2', '家居', '22', '婴童用品');
INSERT INTO `meet_cat_big_small` VALUES ('52', '2', '家居', '13', '有袖连衣裙');
INSERT INTO `meet_cat_big_small` VALUES ('53', '2', '家居', '4', '妈咪用品');
INSERT INTO `meet_cat_big_small` VALUES ('54', '2', '家居', '10', 'T恤');
INSERT INTO `meet_cat_big_small` VALUES ('55', '2', '家居', '11', '针织衫');
INSERT INTO `meet_cat_big_small` VALUES ('56', '2', '家居', '12', '无袖连衣裙');
INSERT INTO `meet_cat_big_small` VALUES ('57', '2', '家居', '60', '鞋袜');
INSERT INTO `meet_cat_big_small` VALUES ('58', '3', '防辐射', '4', '妈咪用品');
INSERT INTO `meet_cat_big_small` VALUES ('59', '3', '防辐射', '16', '背带裤裙');
INSERT INTO `meet_cat_big_small` VALUES ('60', '6', '化妆品', '59', '洗护用品');
INSERT INTO `meet_cat_big_small` VALUES ('61', '2', '家居', '21', '纸制品');
INSERT INTO `meet_cat_big_small` VALUES ('62', '3', '防辐射', '57', '其他商品');
INSERT INTO `meet_cat_big_small` VALUES ('63', '6', '化妆品', '4', '妈咪用品');
INSERT INTO `meet_cat_big_small` VALUES ('64', '1', '服装', '61', '帽子');
INSERT INTO `meet_cat_big_small` VALUES ('65', '1', '服装', '62', '围巾');
INSERT INTO `meet_cat_big_small` VALUES ('66', '1', '服装', '63', '假领');
INSERT INTO `meet_cat_big_small` VALUES ('67', '4', '备品', '33', '软装类');
INSERT INTO `meet_cat_big_small` VALUES ('68', '6', '化妆品', '64', '口腔护理');

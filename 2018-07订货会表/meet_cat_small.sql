/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:38:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_cat_small
-- ----------------------------
DROP TABLE IF EXISTS `meet_cat_small`;
CREATE TABLE `meet_cat_small` (
  `cat_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `small_id` mediumint(8) unsigned NOT NULL COMMENT '主键，自增，类型id',
  `cat_name` varchar(100) NOT NULL COMMENT '分类名称',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级大分类',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '上级大分类',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_cat_small
-- ----------------------------
INSERT INTO `meet_cat_small` VALUES ('1', '4', '妈咪用品', '7', '99');
INSERT INTO `meet_cat_small` VALUES ('2', '9', '包鞋袜', '19', '99');
INSERT INTO `meet_cat_small` VALUES ('3', '9', '包鞋袜', '20', '99');
INSERT INTO `meet_cat_small` VALUES ('4', '6', '上衣', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('5', '10', 'T恤', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('6', '11', '针织衫', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('7', '12', '无袖连衣裙', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('8', '13', '有袖连衣裙', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('9', '14', '单裙', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('10', '15', '外套', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('11', '17', '套装', '1', '99');
INSERT INTO `meet_cat_small` VALUES ('12', '18', '防辐射抱被', '2', '99');
INSERT INTO `meet_cat_small` VALUES ('13', '19', '手机防护袋', '2', '99');
INSERT INTO `meet_cat_small` VALUES ('14', '6', '上衣', '2', '99');
INSERT INTO `meet_cat_small` VALUES ('15', '1', '文胸', '4', '99');
INSERT INTO `meet_cat_small` VALUES ('16', '2', '内裤(含一次性)', '4', '99');
INSERT INTO `meet_cat_small` VALUES ('17', '7', '便裤(裤子)', '17', '99');
INSERT INTO `meet_cat_small` VALUES ('18', '16', '背带裤裙', '17', '99');
INSERT INTO `meet_cat_small` VALUES ('19', '6', '上衣', '3', '99');
INSERT INTO `meet_cat_small` VALUES ('20', '7', '便裤(裤子)', '3', '99');
INSERT INTO `meet_cat_small` VALUES ('21', '17', '套装', '3', '99');
INSERT INTO `meet_cat_small` VALUES ('22', '10', 'T恤', '3', '99');
INSERT INTO `meet_cat_small` VALUES ('23', '3', '塑身上装', '21', '99');
INSERT INTO `meet_cat_small` VALUES ('24', '8', '塑身下装(含束腹)', '21', '99');
INSERT INTO `meet_cat_small` VALUES ('25', '46', '脸部护理', '8', '99');
INSERT INTO `meet_cat_small` VALUES ('26', '47', '手部护理', '8', '99');
INSERT INTO `meet_cat_small` VALUES ('27', '48', '身体护理', '8', '99');
INSERT INTO `meet_cat_small` VALUES ('28', '59', '洗护用品', '8', '99');
INSERT INTO `meet_cat_small` VALUES ('29', '20', '婴童上装(含套装)', '10', '99');
INSERT INTO `meet_cat_small` VALUES ('30', '22', '婴童用品', '18', '99');
INSERT INTO `meet_cat_small` VALUES ('31', '21', '纸制品', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('32', '23', '婴童下装', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('33', '31', '模特类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('34', '32', '衣裤架类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('35', '33', '软装类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('36', '34', '电子类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('37', '35', '样衣类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('38', '36', '画册类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('39', '37', '书籍类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('40', '38', '其他类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('41', '39', '文具类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('42', '40', '日用品类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('43', '41', '报表类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('44', '42', '包装盒类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('45', '43', '手提袋类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('46', '44', '纸箱类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('47', '45', '封箱带类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('48', '49', '工作服类', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('49', '60', '鞋袜', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('50', '56', '项链首饰', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('51', '57', '其他商品', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('52', '58', '奶瓶奶嘴', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('53', '61', '帽子', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('54', '62', '围巾', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('55', '63', '假领', '0', '99');
INSERT INTO `meet_cat_small` VALUES ('56', '64', '口腔护理', '0', '99');

/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:39:10
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_product
-- ----------------------------
DROP TABLE IF EXISTS `meet_product`;
CREATE TABLE `meet_product` (
  `product_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_id` mediumint(8) unsigned NOT NULL COMMENT '订货会',
  `product_sn` varchar(30) NOT NULL COMMENT '商品的货号(442127150653002)',
  `style_sn` varchar(30) NOT NULL COMMENT '款号(442127150653)',
  `model_sn` varchar(30) NOT NULL COMMENT '型号(44212715)',
  `serial_num` mediumint(5) unsigned NOT NULL COMMENT '流水号',
  `name` varchar(128) NOT NULL COMMENT '商品名称',
  `img_url` varchar(128) DEFAULT NULL COMMENT '图片地址',
  `color_id` mediumint(5) unsigned NOT NULL COMMENT '颜色',
  `size_id` mediumint(5) unsigned NOT NULL COMMENT '尺码',
  `brand_id` mediumint(5) unsigned NOT NULL COMMENT '品牌',
  `cat_b` mediumint(5) unsigned NOT NULL COMMENT '大类',
  `cat_m` mediumint(5) unsigned NOT NULL COMMENT '中类',
  `cat_s` mediumint(5) unsigned NOT NULL COMMENT '小类',
  `season_id` mediumint(5) unsigned NOT NULL COMMENT '季节',
  `level_id` mediumint(5) unsigned NOT NULL COMMENT '等级',
  `wave_id` mediumint(5) unsigned NOT NULL COMMENT '波段',
  `scheme_id` mediumint(5) unsigned NOT NULL COMMENT '色系',
  `cost_price` decimal(10,2) NOT NULL COMMENT '销售价',
  `price_level_id` mediumint(5) unsigned NOT NULL COMMENT '价格带',
  `memo` varchar(256) DEFAULT NULL COMMENT '描述',
  `type_id` mediumint(5) NOT NULL DEFAULT '0',
  `disabled` enum('false','true') NOT NULL DEFAULT 'false' COMMENT '是否实现',
  `is_error` enum('true','false') DEFAULT 'false',
  `is_down` mediumint(5) DEFAULT '0' COMMENT '是否下架 0 上架，1下架',
  `order` int(10) unsigned NOT NULL DEFAULT '999' COMMENT '排序',
  PRIMARY KEY (`product_id`),
  KEY `model` (`model_sn`) USING BTREE,
  KEY `serial` (`model_sn`,`serial_num`) USING BTREE,
  KEY `serial_num` (`serial_num`) USING BTREE,
  KEY `style_sn` (`style_sn`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=1991 DEFAULT CHARSET=utf8;

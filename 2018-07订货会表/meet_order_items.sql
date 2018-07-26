/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:38:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_order_items
-- ----------------------------
DROP TABLE IF EXISTS `meet_order_items`;
CREATE TABLE `meet_order_items` (
  `item_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，订单明细ID',
  `order_id` bigint(20) unsigned NOT NULL COMMENT '主键，类型id',
  `product_id` mediumint(5) unsigned NOT NULL COMMENT '商品id',
  `product_sn` varchar(40) NOT NULL COMMENT '商品的编号',
  `style_sn` varchar(30) NOT NULL COMMENT '款号',
  `model_sn` varchar(30) NOT NULL COMMENT '型号',
  `name` varchar(200) NOT NULL COMMENT '明细商品的名称',
  `price` decimal(20,2) NOT NULL COMMENT '明细商品的销售价',
  `amount` decimal(20,2) DEFAULT NULL COMMENT '明细商品总额',
  `nums` mediumint(5) unsigned NOT NULL COMMENT '明细商品购买数量',
  `disabled` enum('false','true') NOT NULL DEFAULT 'false' COMMENT '是否实现',
  `import` enum('false','true') DEFAULT 'false' COMMENT '是否为导入用户，true 是  false 否',
  PRIMARY KEY (`item_id`),
  KEY `order` (`order_id`) USING BTREE,
  KEY `model` (`model_sn`) USING BTREE,
  KEY `product` (`product_id`) USING BTREE,
  KEY `disabled` (`disabled`) USING BTREE,
  KEY `order_disabled` (`order_id`,`disabled`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48145 DEFAULT CHARSET=utf8;

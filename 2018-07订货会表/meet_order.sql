/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:38:44
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_order
-- ----------------------------
DROP TABLE IF EXISTS `meet_order`;
CREATE TABLE `meet_order` (
  `order_id` bigint(20) unsigned NOT NULL COMMENT '主键，类型id',
  `purchase_id` mediumint(8) unsigned NOT NULL COMMENT '订货会',
  `status` enum('finish','dead','confirm','active') NOT NULL DEFAULT 'active' COMMENT '订单状态 active：正常订单；confirm：订确认；dead：已作废；finish：已完成',
  `customer_id` bigint(10) unsigned DEFAULT NULL COMMENT '收货人',
  `customer_name` varchar(50) DEFAULT NULL COMMENT '收货姓名',
  `cost_item` decimal(20,2) NOT NULL COMMENT '订单商品总价格',
  `create_time` int(11) unsigned NOT NULL COMMENT '下单时间',
  `edit_time` int(11) unsigned DEFAULT NULL COMMENT '最后更新时间',
  `disabled` enum('false','true') NOT NULL DEFAULT 'false' COMMENT '是否实现',
  PRIMARY KEY (`order_id`),
  KEY `order` (`order_id`) USING BTREE,
  KEY `purchase` (`purchase_id`) USING BTREE,
  KEY `customer` (`customer_id`) USING BTREE,
  KEY `pu_cus` (`purchase_id`,`customer_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:38:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_customer
-- ----------------------------
DROP TABLE IF EXISTS `meet_customer`;
CREATE TABLE `meet_customer` (
  `customer_id` bigint(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `parent_id` bigint(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级管理,1是代理，0不是代理',
  `purchase_id` mediumint(8) NOT NULL COMMENT '订货会,1oct,2uki',
  `code` varchar(30) NOT NULL COMMENT '客户代码',
  `relation_code` varchar(30) NOT NULL COMMENT '判断是否为同一客户',
  `name` varchar(30) NOT NULL COMMENT '客户名称',
  `password` varchar(60) NOT NULL COMMENT '密码',
  `mobile` varchar(30) NOT NULL COMMENT '手机',
  `type` varchar(30) NOT NULL COMMENT '客户类型',
  `province` varchar(30) DEFAULT NULL COMMENT '省份',
  `area` varchar(30) DEFAULT NULL COMMENT '区域',
  `target` decimal(20,3) unsigned DEFAULT '0.000' COMMENT '订货指标',
  `disabled` enum('true','false') NOT NULL DEFAULT 'false' COMMENT '是否实现',
  `department` varchar(20) DEFAULT NULL COMMENT '部门类型',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `leader_name` varchar(20) DEFAULT NULL COMMENT '代理名称',
  `agent` varchar(30) DEFAULT NULL COMMENT '代理代码',
  `big_1` decimal(20,0) unsigned DEFAULT '0',
  `big_2` decimal(20,0) unsigned DEFAULT '0',
  `big_3` decimal(20,0) unsigned DEFAULT '0',
  `big_4` decimal(20,0) DEFAULT '0',
  `big_6` decimal(20,0) unsigned DEFAULT '0',
  `big_1_count` decimal(20,3) DEFAULT '100.000',
  `big_2_count` decimal(20,3) DEFAULT '100.000',
  `big_3_count` decimal(20,3) DEFAULT '100.000',
  `big_4_count` decimal(20,3) DEFAULT '100.000',
  `big_6_count` decimal(20,3) DEFAULT '100.000',
  `big_count1` decimal(20,3) DEFAULT '100.000',
  `big_count2` decimal(20,3) DEFAULT '100.000',
  `big_count3` decimal(20,3) DEFAULT '100.000',
  `big_count4` decimal(20,3) DEFAULT '100.000',
  `login` int(11) unsigned DEFAULT NULL COMMENT '最后一次登录时间',
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=157 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_customer
-- ----------------------------
INSERT INTO `meet_customer` VALUES ('1', '0', '1', 'ceshi', '', 'ceshi', '032ebcd09e23b885fd4e568d8095dee2', '18237121209', '直营', '上海', '沪宁闽', '0.000', 'false', '直营直属', '曾畅', '北京办事处（托管）', '001', '2000', '2000', '2000', '2000', '2000', '1.000', '1.000', '1.000', '1.000', '1.000', '100.000', '100.000', '100.000', '100.000', '1532069092');

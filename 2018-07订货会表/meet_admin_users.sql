/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:37:27
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_admin_users
-- ----------------------------
DROP TABLE IF EXISTS `meet_admin_users`;
CREATE TABLE `meet_admin_users` (
  `user_id` mediumint(8) unsigned NOT NULL COMMENT '后台用户ID',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '启用',
  `name` varchar(30) DEFAULT NULL COMMENT '姓名',
  `lastlogin` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最后登录时间',
  `truename` varchar(30) DEFAULT NULL COMMENT '真实姓名',
  `config` longtext COMMENT '配置信息',
  `favorite` longtext COMMENT '爱好',
  `super` enum('0','1') NOT NULL DEFAULT '0' COMMENT '超级管理员',
  `lastip` varchar(20) DEFAULT NULL COMMENT '上次登录ip',
  `logincount` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '登录次数',
  `disabled` enum('true','false') NOT NULL DEFAULT 'false',
  `op_no` varchar(50) DEFAULT NULL COMMENT '操作员no',
  `password` varchar(128) DEFAULT NULL,
  `memo` text COMMENT '备注',
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `ind_disabled` (`disabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_admin_users
-- ----------------------------
INSERT INTO `meet_admin_users` VALUES ('1', '1', 'admin', '1416965007', null, null, null, '1', null, '323', 'false', null, '14e1b600b1fd579f47433b88e8d85291', null, '1');
INSERT INTO `meet_admin_users` VALUES ('2', '1', 'sd01', '0', '彭红星', '', null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users` VALUES ('3', '1', 'sd02', '0', '刘成海', null, null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users` VALUES ('4', '1', 'sd03', '0', '杨娟', null, null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users` VALUES ('5', '1', 'dy01', '0', '吴振芸', null, null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users` VALUES ('6', '1', 'dy02', '0', '张雅琴', null, null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users` VALUES ('8', '1', '查单', '0', null, null, null, '0', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '2');

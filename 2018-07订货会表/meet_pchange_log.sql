/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:39:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_pchange_log
-- ----------------------------
DROP TABLE IF EXISTS `meet_pchange_log`;
CREATE TABLE `meet_pchange_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `change_name` varchar(50) NOT NULL,
  `change_id` varchar(30) NOT NULL,
  `change_log` longtext NOT NULL,
  `change_type` enum('disabled','add','change','error') NOT NULL COMMENT '商品状态，新增，修改，错误',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=377 DEFAULT CHARSET=utf8;

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : purchase_2018_07

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2018-11-16 11:08:53
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for meet_admin_user
-- ----------------------------
DROP TABLE IF EXISTS `meet_admin_user`;
CREATE TABLE `meet_admin_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meet_admin_user
-- ----------------------------
INSERT INTO `meet_admin_user` VALUES ('1', 'admin', '-_QtrvjuZNPgIa8AhkCWTyfY84nB94lf', '$2y$13$s9W6LZHcw6e7pACvGD1vqOoGAORi/SACbGNIA4C9bBOG.EgKYyEKi', '', 'dingran@octmami.com', '10', '1540793580', '1540793580');
INSERT INTO `meet_admin_user` VALUES ('2', 'shangpin1', 'QUC-svXcGsE7t2dvp6tFUkY8FQ_W6na7', '$2y$13$Yo9JO6CqCIhzCK/zIhLEIuQ2EVHm.3Q/k94tHd96taBHY9Yl7.TjC', null, 'linshi@octmami.com', '10', '1540796379', '1540796379');

-- ----------------------------
-- Table structure for meet_admin_users-backup
-- ----------------------------
DROP TABLE IF EXISTS `meet_admin_users-backup`;
CREATE TABLE `meet_admin_users-backup` (
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
-- Records of meet_admin_users-backup
-- ----------------------------
INSERT INTO `meet_admin_users-backup` VALUES ('1', '1', 'admin', '1416965007', null, null, null, '1', null, '323', 'false', null, '14e1b600b1fd579f47433b88e8d85291', null, '1');
INSERT INTO `meet_admin_users-backup` VALUES ('2', '1', 'sd01', '0', '彭红星', '', null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users-backup` VALUES ('3', '1', 'sd02', '0', '刘成海', null, null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users-backup` VALUES ('4', '1', 'sd03', '0', '杨娟', null, null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users-backup` VALUES ('5', '1', 'dy01', '0', '吴振芸', null, null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users-backup` VALUES ('6', '1', 'dy02', '0', '张雅琴', null, null, '1', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '1');
INSERT INTO `meet_admin_users-backup` VALUES ('8', '1', '查单', '0', null, null, null, '0', null, '0', 'false', '', 'd8cbec4d46e7f421213bab17b89e8174', '', '2');

-- ----------------------------
-- Table structure for meet_agent
-- ----------------------------
DROP TABLE IF EXISTS `meet_agent`;
CREATE TABLE `meet_agent` (
  `agent_id` int(10) NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(255) DEFAULT NULL,
  `agent_code` varchar(255) DEFAULT NULL,
  `p_order` int(10) DEFAULT '99',
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_agent
-- ----------------------------
INSERT INTO `meet_agent` VALUES ('1', '北京办事处（托管）', '001', '99');
INSERT INTO `meet_agent` VALUES ('2', '北京办事处（直营）', '002', '99');
INSERT INTO `meet_agent` VALUES ('3', '成都办事处', '003', '99');
INSERT INTO `meet_agent` VALUES ('4', '福州办事处', '010', '99');
INSERT INTO `meet_agent` VALUES ('5', '浙江办事处', '005', '99');
INSERT INTO `meet_agent` VALUES ('6', '江苏办事处', '006', '99');
INSERT INTO `meet_agent` VALUES ('7', '南昌办事处', '007', '99');
INSERT INTO `meet_agent` VALUES ('8', '南京办事处', '008', '99');
INSERT INTO `meet_agent` VALUES ('9', '上海办事处', '009', '99');
INSERT INTO `meet_agent` VALUES ('10', '深圳办事处', '004', '99');
INSERT INTO `meet_agent` VALUES ('11', '天津办事处', '012', '99');
INSERT INTO `meet_agent` VALUES ('12', '武汉办事处', '011', '99');
INSERT INTO `meet_agent` VALUES ('13', '重庆办事处', '013', '99');
INSERT INTO `meet_agent` VALUES ('14', '浙江上虞陈柯', '057CK', '99');
INSERT INTO `meet_agent` VALUES ('15', '浙江义乌杨永清', '057YYQ', '99');
INSERT INTO `meet_agent` VALUES ('16', '浙江嘉兴周宾', '057ZB', '99');
INSERT INTO `meet_agent` VALUES ('17', '浙江平湖刘仁银', '057BQD', '99');
INSERT INTO `meet_agent` VALUES ('18', '浙江慈溪阮建军', '057RJJ', '99');
INSERT INTO `meet_agent` VALUES ('19', '浙江桐庐郑磊', '057ZL', '99');
INSERT INTO `meet_agent` VALUES ('20', '浙江温州赵晓珍', '057ZXZ', '99');
INSERT INTO `meet_agent` VALUES ('21', '浙江绍兴施菊红', '057SJH', '99');
INSERT INTO `meet_agent` VALUES ('22', '浙江衢州李为华', '057LWH', '99');
INSERT INTO `meet_agent` VALUES ('23', '浙江诸暨姚利祥', '057YLX', '99');
INSERT INTO `meet_agent` VALUES ('24', '台州金秋', 'TZJQ', '99');
INSERT INTO `meet_agent` VALUES ('25', '浙江富阳黄晓琴', '057HXQ', '99');
INSERT INTO `meet_agent` VALUES ('26', '内蒙古乌兰浩特朱凯', '047ZK', '99');
INSERT INTO `meet_agent` VALUES ('27', '内蒙古包头市康珍玉', 'U47KZY', '99');
INSERT INTO `meet_agent` VALUES ('28', '内蒙古包头张秋兰', '047ZQL', '99');
INSERT INTO `meet_agent` VALUES ('29', '内蒙古呼和浩特张丹', '047ZD', '99');
INSERT INTO `meet_agent` VALUES ('30', '内蒙古巴彦淖尔苏秀梅', '047SXM', '99');
INSERT INTO `meet_agent` VALUES ('31', '天津武清赵子龙', 'O22ZZL', '99');
INSERT INTO `meet_agent` VALUES ('32', '河北保定贾磊', '031JL', '99');
INSERT INTO `meet_agent` VALUES ('33', '河北唐山葛彬', '031GB', '99');
INSERT INTO `meet_agent` VALUES ('34', '河北安新朱虹', '031ZH', '99');
INSERT INTO `meet_agent` VALUES ('35', '河北张家口苏利娟', '031SLJ', '99');
INSERT INTO `meet_agent` VALUES ('36', '河北易县王思淇', '312WSQ', '99');
INSERT INTO `meet_agent` VALUES ('37', '河北正定房小明', '031FXM', '99');
INSERT INTO `meet_agent` VALUES ('38', '河北沧州王继娜', '031WJL', '99');
INSERT INTO `meet_agent` VALUES ('39', '河北燕郊赵福萍', '031ZFP', '99');
INSERT INTO `meet_agent` VALUES ('40', '河北石家庄邓江卫', '031DJW', '99');
INSERT INTO `meet_agent` VALUES ('41', '河北秦皇岛王君', '031WJ', '99');
INSERT INTO `meet_agent` VALUES ('42', '河北衡水张瑶', '031ZY', '99');
INSERT INTO `meet_agent` VALUES ('43', '内蒙乌海张海燕', '047SQ', '99');
INSERT INTO `meet_agent` VALUES ('44', '四川宜宾杨贤坤', '028YXK', '99');
INSERT INTO `meet_agent` VALUES ('45', '四川都江堰马雪静', '028MXJ', '99');
INSERT INTO `meet_agent` VALUES ('46', '四川西昌谢磊', '028XL', '99');
INSERT INTO `meet_agent` VALUES ('47', '彭州郫县刘忠刚', '028LZG', '99');
INSERT INTO `meet_agent` VALUES ('48', '眉山朱婷薇', '028ZTW', '99');
INSERT INTO `meet_agent` VALUES ('49', '湖北十堰王丹卉', '071WDH', '99');
INSERT INTO `meet_agent` VALUES ('50', '湖北咸宁余洁', '071YJ', '99');
INSERT INTO `meet_agent` VALUES ('51', '湖北宜昌王春莲', '071WCL', '99');
INSERT INTO `meet_agent` VALUES ('52', '湖北荆门卞翠红', '027BCH', '99');
INSERT INTO `meet_agent` VALUES ('53', '重庆邹波', '023ZB', '99');
INSERT INTO `meet_agent` VALUES ('54', '河南郑州王晓娜', '037WXN', '99');
INSERT INTO `meet_agent` VALUES ('55', '江苏宿迁祖红丽', '052ZHL', '99');
INSERT INTO `meet_agent` VALUES ('56', '安徽太和梁玉英', '055LYY', '99');
INSERT INTO `meet_agent` VALUES ('57', '安徽吴赪瑾', '055WZJ', '99');
INSERT INTO `meet_agent` VALUES ('58', '安徽合肥潘莉娜', '055LY', '99');
INSERT INTO `meet_agent` VALUES ('59', '安徽阜阳屈伟', '055QW', '99');
INSERT INTO `meet_agent` VALUES ('60', '江苏启东陆黎明', '025LLM', '99');
INSERT INTO `meet_agent` VALUES ('61', '江苏张家港徐燕萍', '025XYP', '99');
INSERT INTO `meet_agent` VALUES ('62', '江苏徐州新沂 赵素丹', '025ZSD', '99');
INSERT INTO `meet_agent` VALUES ('63', '江苏徐州黄重强', '051HZQ', '99');
INSERT INTO `meet_agent` VALUES ('64', '江苏泰州周娟', '051ZJ', '99');
INSERT INTO `meet_agent` VALUES ('65', '江苏海安孙月梅', '025SYM', '99');
INSERT INTO `meet_agent` VALUES ('66', '江苏海门沈鼎城', '025SDC', '99');
INSERT INTO `meet_agent` VALUES ('67', '江苏盐城孙海霞', '051DFL', '99');
INSERT INTO `meet_agent` VALUES ('68', '江苏盐城韦伟', '515WW', '99');
INSERT INTO `meet_agent` VALUES ('69', '云南昆明唐文慧', '087TWH', '99');
INSERT INTO `meet_agent` VALUES ('70', '江西赣州肖琦', '079XQ', '99');
INSERT INTO `meet_agent` VALUES ('71', '宁夏中卫刘学琴', '095LXQ', '99');
INSERT INTO `meet_agent` VALUES ('72', '宁夏银川韩英', '093HY', '99');
INSERT INTO `meet_agent` VALUES ('73', '广西南宁石坚祯', '077SJZ', '99');
INSERT INTO `meet_agent` VALUES ('74', '广西柳州农妮', '077NN', '99');
INSERT INTO `meet_agent` VALUES ('75', '广西桂林周玲（蒋艺转)', '0773ZL', '99');
INSERT INTO `meet_agent` VALUES ('76', '新疆伊犁姜雨', '099JY', '99');
INSERT INTO `meet_agent` VALUES ('77', '贵州贵阳邹波', '085ZB', '99');
INSERT INTO `meet_agent` VALUES ('78', '贵州铜仁李群', '085LQ', '99');
INSERT INTO `meet_agent` VALUES ('79', '贵州黔西杨伟', '857YW', '99');
INSERT INTO `meet_agent` VALUES ('80', '贵州遵义邹波', '0852ZB', '99');
INSERT INTO `meet_agent` VALUES ('81', '新疆乌鲁木齐柴琳', '091CL', '99');
INSERT INTO `meet_agent` VALUES ('82', '上海松江顾玉伟', 'U21GYW', '99');
INSERT INTO `meet_agent` VALUES ('83', '山西太原赵敏', '035ZM', '99');
INSERT INTO `meet_agent` VALUES ('84', '山西运城杨晓', '053YX', '99');
INSERT INTO `meet_agent` VALUES ('85', '山西运城武鑫', '053WX', '99');
INSERT INTO `meet_agent` VALUES ('86', '海南海口黄兰梅', '089HLM', '99');
INSERT INTO `meet_agent` VALUES ('87', '上海吴霜蝶', '021WSD', '99');
INSERT INTO `meet_agent` VALUES ('88', '广东惠州罗松涛', '075LST', '99');
INSERT INTO `meet_agent` VALUES ('89', '湖南娄底梁斐', '073LF', '99');
INSERT INTO `meet_agent` VALUES ('90', '甘肃定西陆江江', '093LJJ', '99');
INSERT INTO `meet_agent` VALUES ('91', '甘肃酒泉曹颖', '0937CY', '99');
INSERT INTO `meet_agent` VALUES ('92', '甘肃兰州李飞', 'U935LF', '99');
INSERT INTO `meet_agent` VALUES ('93', '山东东营柳双', '053WCH', '99');
INSERT INTO `meet_agent` VALUES ('94', '山东临沂王海青', '053WHQ', '99');
INSERT INTO `meet_agent` VALUES ('95', '山东临沂费县范长爱', '053FCA', '99');
INSERT INTO `meet_agent` VALUES ('96', '山东即墨常晓丽', '532CXL', '99');
INSERT INTO `meet_agent` VALUES ('97', '山东威海孙秀文/陈怀凤', '053SXW', '99');
INSERT INTO `meet_agent` VALUES ('98', '山东济南范永亮', '053FYL', '99');
INSERT INTO `meet_agent` VALUES ('99', '山东潍坊郭迎新', '053GYX', '99');
INSERT INTO `meet_agent` VALUES ('100', '山东烟台赵燕', '053ZY', '99');
INSERT INTO `meet_agent` VALUES ('101', '山东威海赛超', '053SC', '99');
INSERT INTO `meet_agent` VALUES ('102', '山东海阳张志晓', '053YYW', '99');
INSERT INTO `meet_agent` VALUES ('103', '山东济宁沈静', 'U53SJ', '99');
INSERT INTO `meet_agent` VALUES ('104', '山东聊城李珊珊', '053LSS', '99');
INSERT INTO `meet_agent` VALUES ('105', '山东临沂徐丽芹', '053XLQ', '99');
INSERT INTO `meet_agent` VALUES ('106', '山东青岛辛焕义', '053XHY', '99');
INSERT INTO `meet_agent` VALUES ('107', '甘肃兰州邵新东', '093SXD', '99');
INSERT INTO `meet_agent` VALUES ('108', '陕西西安张大伟（郭鲜莲）', '091ZDW', '99');
INSERT INTO `meet_agent` VALUES ('109', '吉林延吉蔡小琴', '043CXQ', '99');
INSERT INTO `meet_agent` VALUES ('110', '吉林长春张立红', '043ZLH', '99');
INSERT INTO `meet_agent` VALUES ('111', '辽宁大连袁秀兰', '041YXL', '99');
INSERT INTO `meet_agent` VALUES ('112', '辽宁大连陈健', 'O411CJ', '99');
INSERT INTO `meet_agent` VALUES ('113', '辽宁朝阳秦巍', '0421QW', '99');
INSERT INTO `meet_agent` VALUES ('114', '辽宁沈阳郭勇', '041GY', '99');
INSERT INTO `meet_agent` VALUES ('115', '辽宁盘锦徐东飞', '042XDF', '99');
INSERT INTO `meet_agent` VALUES ('116', '辽宁阜新徐东飞', '041XDF', '99');
INSERT INTO `meet_agent` VALUES ('117', '辽宁葫芦岛徐冰玉', '042XBY', '99');
INSERT INTO `meet_agent` VALUES ('118', '辽宁辽阳金智远', '041JZY', '99');
INSERT INTO `meet_agent` VALUES ('119', '辽宁铁岭李娜', '041LN', '99');
INSERT INTO `meet_agent` VALUES ('120', '辽宁鞍山韩斌', '041HB', '99');
INSERT INTO `meet_agent` VALUES ('121', '黑龙江哈尔滨陈雅芳', '045CYF', '99');
INSERT INTO `meet_agent` VALUES ('122', '黑龙江大庆王学云', '045WXY', '99');
INSERT INTO `meet_agent` VALUES ('123', '河北邯郸王黎莹', '031WLY', '99');
INSERT INTO `meet_agent` VALUES ('124', '辽宁营口徐颖', '047XY', '99');
INSERT INTO `meet_agent` VALUES ('125', '山东济宁王萍', '053WP', '99');
INSERT INTO `meet_agent` VALUES ('126', '山东滨州王洋泽薷', '053WYZ', '99');
INSERT INTO `meet_agent` VALUES ('127', '广东深圳李嘉', '0755LJ', '99');
INSERT INTO `meet_agent` VALUES ('128', '安徽亳州陈圣贤', '055CSX', '99');
INSERT INTO `meet_agent` VALUES ('129', '安徽利辛范卫珍', '055FWZ', '99');
INSERT INTO `meet_agent` VALUES ('130', '江苏泰州周梅', '051ZM', '99');
INSERT INTO `meet_agent` VALUES ('131', '江苏江阴何江', '051HJ', '99');
INSERT INTO `meet_agent` VALUES ('132', '江苏高邮瞿根', '025QG', '99');
INSERT INTO `meet_agent` VALUES ('133', '安徽广德罗永凤', '055LYF', '99');
INSERT INTO `meet_agent` VALUES ('134', '安徽合肥王丽', '055LY', '99');
INSERT INTO `meet_agent` VALUES ('135', '四川达州洪攀', '028HP', '99');
INSERT INTO `meet_agent` VALUES ('136', '浙江乐清计庆妹', 'U57JQM', '99');
INSERT INTO `meet_agent` VALUES ('137', '浙江永嘉朱文强', '057ZWQ', '99');
INSERT INTO `meet_agent` VALUES ('138', '江西宜春刘金容', '079LJR', '99');
INSERT INTO `meet_agent` VALUES ('139', '浙江余姚马振礼', '057MZL', '99');
INSERT INTO `meet_agent` VALUES ('140', '安徽六安戚士娟', '055QSJ', '99');
INSERT INTO `meet_agent` VALUES ('141', '吉林延吉吕品', '043LP', '99');
INSERT INTO `meet_agent` VALUES ('142', '辽宁辽阳徐梦娇', '041XMJ', '99');
INSERT INTO `meet_agent` VALUES ('143', '深圳赵龙翠', '075ZLC', '99');
INSERT INTO `meet_agent` VALUES ('144', '山东寿光王庆丽', '053WQL', '99');
INSERT INTO `meet_agent` VALUES ('145', '武汉可恩宝贝', '027KE', '99');
INSERT INTO `meet_agent` VALUES ('146', '浙江富阳黄晓勤', '057HXQ', '99');
INSERT INTO `meet_agent` VALUES ('147', '重庆贺欢', '023HH', '99');
INSERT INTO `meet_agent` VALUES ('148', '广州办事处', '026', '99');
INSERT INTO `meet_agent` VALUES ('149', '珠海办事处', '022', '99');
INSERT INTO `meet_agent` VALUES ('150', '湖南办事处', '027', '99');

-- ----------------------------
-- Table structure for meet_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `meet_auth_assignment`;
CREATE TABLE `meet_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `meet_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `meet_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meet_auth_assignment
-- ----------------------------
INSERT INTO `meet_auth_assignment` VALUES ('商品管理', '2', '1540796898');
INSERT INTO `meet_auth_assignment` VALUES ('超级管理员', '1', '1540796028');

-- ----------------------------
-- Table structure for meet_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `meet_auth_item`;
CREATE TABLE `meet_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `meet_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `meet_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meet_auth_item
-- ----------------------------
INSERT INTO `meet_auth_item` VALUES ('/*', '2', null, null, null, '1540795940', '1540795940');
INSERT INTO `meet_auth_item` VALUES ('/default/index', '2', null, null, null, '1540796536', '1540796536');
INSERT INTO `meet_auth_item` VALUES ('/product/*', '2', null, null, null, '1540796284', '1540796284');
INSERT INTO `meet_auth_item` VALUES ('all', '2', '所有权限', null, null, '1540795984', '1540795984');
INSERT INTO `meet_auth_item` VALUES ('product', '2', '商品管理', null, null, '1540796311', '1540796311');
INSERT INTO `meet_auth_item` VALUES ('商品管理', '1', '商品管理', null, null, '1540796336', '1540796858');
INSERT INTO `meet_auth_item` VALUES ('超级管理员', '1', '拥有所有的权限', null, null, '1540796012', '1540796012');
INSERT INTO `meet_auth_item` VALUES ('首页', '2', '首页，允许所有登陆的访问', null, null, '1540796594', '1540796594');

-- ----------------------------
-- Table structure for meet_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `meet_auth_item_child`;
CREATE TABLE `meet_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `meet_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `meet_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `meet_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `meet_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meet_auth_item_child
-- ----------------------------
INSERT INTO `meet_auth_item_child` VALUES ('all', '/*');
INSERT INTO `meet_auth_item_child` VALUES ('商品管理', '/default/index');
INSERT INTO `meet_auth_item_child` VALUES ('首页', '/default/index');
INSERT INTO `meet_auth_item_child` VALUES ('product', '/product/*');
INSERT INTO `meet_auth_item_child` VALUES ('商品管理', '/product/*');
INSERT INTO `meet_auth_item_child` VALUES ('超级管理员', 'all');

-- ----------------------------
-- Table structure for meet_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `meet_auth_rule`;
CREATE TABLE `meet_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of meet_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for meet_brand
-- ----------------------------
DROP TABLE IF EXISTS `meet_brand`;
CREATE TABLE `meet_brand` (
  `brand_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_brand
-- ----------------------------
INSERT INTO `meet_brand` VALUES ('1', 'OCT', '99');
INSERT INTO `meet_brand` VALUES ('2', 'UKI', '99');
INSERT INTO `meet_brand` VALUES ('10', 'UKI 线上', '99');
INSERT INTO `meet_brand` VALUES ('6', '外采用品', '99');
INSERT INTO `meet_brand` VALUES ('9', 'OCT 线上', '99');
INSERT INTO `meet_brand` VALUES ('3', 'Weekend', '99');

-- ----------------------------
-- Table structure for meet_cat_big
-- ----------------------------
DROP TABLE IF EXISTS `meet_cat_big`;
CREATE TABLE `meet_cat_big` (
  `big_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `cat_name` varchar(100) NOT NULL COMMENT '分类名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '上级大分类',
  PRIMARY KEY (`big_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_cat_big
-- ----------------------------
INSERT INTO `meet_cat_big` VALUES ('1', '服装', '99');
INSERT INTO `meet_cat_big` VALUES ('2', '家居', '99');
INSERT INTO `meet_cat_big` VALUES ('3', '防辐射', '99');
INSERT INTO `meet_cat_big` VALUES ('4', '备品', '99');
INSERT INTO `meet_cat_big` VALUES ('6', '化妆品', '99');

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

-- ----------------------------
-- Table structure for meet_color
-- ----------------------------
DROP TABLE IF EXISTS `meet_color`;
CREATE TABLE `meet_color` (
  `color_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `color_no` varchar(5) NOT NULL COMMENT '颜色代码',
  `color_name` varchar(100) NOT NULL COMMENT '颜色名称',
  `scheme_id` mediumint(5) DEFAULT NULL,
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`color_id`),
  KEY `color_id` (`color_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=585 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_color
-- ----------------------------
INSERT INTO `meet_color` VALUES ('1', '00', '00无色', '10', '99');
INSERT INTO `meet_color` VALUES ('2', '000', '标品', '10', '99');
INSERT INTO `meet_color` VALUES ('3', '001', '多色', '10', '99');
INSERT INTO `meet_color` VALUES ('4', '10', '10黑色', '1', '99');
INSERT INTO `meet_color` VALUES ('5', '10000', 'BOCFAC', '1', '99');
INSERT INTO `meet_color` VALUES ('6', '10001', 'BOCHAC', '1', '99');
INSERT INTO `meet_color` VALUES ('7', '10002', 'BOCIAC', '1', '99');
INSERT INTO `meet_color` VALUES ('8', '10003', 'BOCGAC', '1', '99');
INSERT INTO `meet_color` VALUES ('9', '10004', 'BODCAC', '1', '99');
INSERT INTO `meet_color` VALUES ('10', '10005', 'BODJAC', '1', '99');
INSERT INTO `meet_color` VALUES ('11', '10006', 'BODAAC', '1', '99');
INSERT INTO `meet_color` VALUES ('12', '10007', 'BODBAC', '1', '99');
INSERT INTO `meet_color` VALUES ('13', '103', '黑色', '1', '99');
INSERT INTO `meet_color` VALUES ('14', '104', '黑色花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('15', '105', '黑色格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('16', '106', '黑色印花', '1', '99');
INSERT INTO `meet_color` VALUES ('17', '107', '黑色波点', '1', '99');
INSERT INTO `meet_color` VALUES ('18', '108', '黑色条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('19', '109', '黑色色块', '1', '99');
INSERT INTO `meet_color` VALUES ('20', '11', '11黑色碎花', '1', '99');
INSERT INTO `meet_color` VALUES ('21', '113', '黑灰', '1', '99');
INSERT INTO `meet_color` VALUES ('22', '114', '黑灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('23', '115', '黑灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('24', '116', '黑灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('25', '117', '黑灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('26', '118', '黑灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('27', '119', '黑灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('28', '120', '电商专用', '1', '99');
INSERT INTO `meet_color` VALUES ('29', '123', '黑藏青预留', '1', '99');
INSERT INTO `meet_color` VALUES ('30', '124', '黑藏青花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('31', '125', '黑藏青格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('32', '126', '黑藏青印花', '1', '99');
INSERT INTO `meet_color` VALUES ('33', '127', '黑藏青波点', '1', '99');
INSERT INTO `meet_color` VALUES ('34', '128', '黑藏青条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('35', '129', '黑藏青色块', '1', '99');
INSERT INTO `meet_color` VALUES ('36', '13', '13深灰', '1', '99');
INSERT INTO `meet_color` VALUES ('37', '130', '黑粉条', '1', '99');
INSERT INTO `meet_color` VALUES ('38', '133', '深灰', '1', '99');
INSERT INTO `meet_color` VALUES ('39', '134', '深灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('40', '135', '深灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('41', '136', '深灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('42', '137', '深灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('43', '138', '深灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('44', '139', '深灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('45', '14', '14中灰', '1', '99');
INSERT INTO `meet_color` VALUES ('46', '143', '烟灰', '1', '99');
INSERT INTO `meet_color` VALUES ('47', '144', '烟灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('48', '145', '烟灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('49', '146', '烟灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('50', '147', '烟灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('51', '148', '烟灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('52', '149', '烟灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('53', '15', '15银灰', '1', '99');
INSERT INTO `meet_color` VALUES ('54', '153', '中灰', '1', '99');
INSERT INTO `meet_color` VALUES ('55', '154', '中灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('56', '155', '中灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('57', '156', '中灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('58', '157', '中灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('59', '158', '中灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('60', '159', '中灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('61', '163', '灰色', '1', '99');
INSERT INTO `meet_color` VALUES ('62', '164', '灰色花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('63', '165', '灰色格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('64', '166', '灰色印花', '1', '99');
INSERT INTO `meet_color` VALUES ('65', '167', '灰色波点', '1', '99');
INSERT INTO `meet_color` VALUES ('66', '168', '灰色条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('67', '169', '灰色色块', '1', '99');
INSERT INTO `meet_color` VALUES ('68', '17', '17灰色', '1', '99');
INSERT INTO `meet_color` VALUES ('69', '173', '浅灰', '1', '99');
INSERT INTO `meet_color` VALUES ('70', '174', '浅灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('71', '175', '浅灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('72', '176', '浅灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('73', '177', '浅灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('74', '178', '浅灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('75', '179', '浅灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('76', '18', '18电商灰色', '1', '99');
INSERT INTO `meet_color` VALUES ('77', '183', '米灰预留', '1', '99');
INSERT INTO `meet_color` VALUES ('78', '184', '米灰花沙', '1', '99');
INSERT INTO `meet_color` VALUES ('79', '185', '米灰格纹', '1', '99');
INSERT INTO `meet_color` VALUES ('80', '186', '米灰印花', '1', '99');
INSERT INTO `meet_color` VALUES ('81', '187', '米灰波点', '1', '99');
INSERT INTO `meet_color` VALUES ('82', '188', '米灰条纹', '1', '99');
INSERT INTO `meet_color` VALUES ('83', '189', '米灰色块', '1', '99');
INSERT INTO `meet_color` VALUES ('84', '20', '20白色', '2', '99');
INSERT INTO `meet_color` VALUES ('85', '203', '杏色', '2', '99');
INSERT INTO `meet_color` VALUES ('86', '204', '杏色花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('87', '205', '杏色格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('88', '206', '杏色印花', '2', '99');
INSERT INTO `meet_color` VALUES ('89', '207', '杏色波点', '2', '99');
INSERT INTO `meet_color` VALUES ('90', '208', '杏色条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('91', '209', '杏色色块', '2', '99');
INSERT INTO `meet_color` VALUES ('92', '21', '21漂白', '2', '99');
INSERT INTO `meet_color` VALUES ('93', '210', '浅杏色阶0-深', '2', '99');
INSERT INTO `meet_color` VALUES ('94', '213', '浅杏', '2', '99');
INSERT INTO `meet_color` VALUES ('95', '214', '浅杏花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('96', '215', '浅杏格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('97', '216', '浅杏印花', '2', '99');
INSERT INTO `meet_color` VALUES ('98', '217', '浅杏波点', '2', '99');
INSERT INTO `meet_color` VALUES ('99', '218', '浅杏条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('100', '219', '浅杏色块', '2', '99');
INSERT INTO `meet_color` VALUES ('101', '22', '22米白', '2', '99');
INSERT INTO `meet_color` VALUES ('102', '223', '米白', '2', '99');
INSERT INTO `meet_color` VALUES ('103', '224', '米白花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('104', '225', '米白格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('105', '226', '米白印花', '2', '99');
INSERT INTO `meet_color` VALUES ('106', '227', '米白波点', '2', '99');
INSERT INTO `meet_color` VALUES ('107', '228', '米白条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('108', '229', '米白色块', '2', '99');
INSERT INTO `meet_color` VALUES ('109', '233', '本白', '2', '99');
INSERT INTO `meet_color` VALUES ('110', '234', '本白花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('111', '235', '本白格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('112', '236', '本白印花', '2', '99');
INSERT INTO `meet_color` VALUES ('113', '237', '本白波点', '2', '99');
INSERT INTO `meet_color` VALUES ('114', '238', '本白条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('115', '239', '本白色块', '2', '99');
INSERT INTO `meet_color` VALUES ('116', '24', '24米色', '2', '99');
INSERT INTO `meet_color` VALUES ('117', '243', '漂白', '2', '99');
INSERT INTO `meet_color` VALUES ('118', '244', '漂白花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('119', '245', '漂白格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('120', '246', '漂白印花', '2', '99');
INSERT INTO `meet_color` VALUES ('121', '247', '漂白波点', '2', '99');
INSERT INTO `meet_color` VALUES ('122', '248', '漂白条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('123', '249', '漂白色块', '2', '99');
INSERT INTO `meet_color` VALUES ('124', '25', '25杏色', '2', '99');
INSERT INTO `meet_color` VALUES ('125', '253', '珍珠白', '2', '99');
INSERT INTO `meet_color` VALUES ('126', '254', '珍珠白花沙', '2', '99');
INSERT INTO `meet_color` VALUES ('127', '255', '珍珠白格纹', '2', '99');
INSERT INTO `meet_color` VALUES ('128', '256', '珍珠白印花', '2', '99');
INSERT INTO `meet_color` VALUES ('129', '257', '珍珠白波点', '2', '99');
INSERT INTO `meet_color` VALUES ('130', '258', '珍珠白条纹', '2', '99');
INSERT INTO `meet_color` VALUES ('131', '259', '珍珠白色块', '2', '99');
INSERT INTO `meet_color` VALUES ('132', '30', '30咖啡', '3', '99');
INSERT INTO `meet_color` VALUES ('133', '303', '灰咖', '3', '99');
INSERT INTO `meet_color` VALUES ('134', '304', '灰咖花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('135', '305', '灰咖格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('136', '306', '灰咖印花', '3', '99');
INSERT INTO `meet_color` VALUES ('137', '307', '灰咖波点', '3', '99');
INSERT INTO `meet_color` VALUES ('138', '308', '灰咖条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('139', '309', '灰咖色块', '3', '99');
INSERT INTO `meet_color` VALUES ('140', '313', '深咖', '3', '99');
INSERT INTO `meet_color` VALUES ('141', '314', '深咖花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('142', '315', '深咖格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('143', '316', '深咖印花', '3', '99');
INSERT INTO `meet_color` VALUES ('144', '317', '深咖波点', '3', '99');
INSERT INTO `meet_color` VALUES ('145', '318', '深咖条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('146', '319', '深咖色块', '3', '99');
INSERT INTO `meet_color` VALUES ('147', '323', '咖啡', '3', '99');
INSERT INTO `meet_color` VALUES ('148', '324', '咖啡花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('149', '325', '咖啡格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('150', '326', '咖啡印花', '3', '99');
INSERT INTO `meet_color` VALUES ('151', '327', '咖啡波点', '3', '99');
INSERT INTO `meet_color` VALUES ('152', '328', '咖啡条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('153', '329', '咖啡色块', '3', '99');
INSERT INTO `meet_color` VALUES ('154', '33', '33驼色', '3', '99');
INSERT INTO `meet_color` VALUES ('155', '34', '34浅驼色', '3', '99');
INSERT INTO `meet_color` VALUES ('156', '343', '驼色', '3', '99');
INSERT INTO `meet_color` VALUES ('157', '344', '驼色花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('158', '345', '驼色格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('159', '346', '驼色印花', '3', '99');
INSERT INTO `meet_color` VALUES ('160', '347', '驼色波点', '3', '99');
INSERT INTO `meet_color` VALUES ('161', '348', '驼色条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('162', '349', '驼色色块', '3', '99');
INSERT INTO `meet_color` VALUES ('163', '353', '浅驼', '3', '99');
INSERT INTO `meet_color` VALUES ('164', '354', '浅驼花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('165', '355', '浅驼格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('166', '356', '浅驼印花', '3', '99');
INSERT INTO `meet_color` VALUES ('167', '357', '浅驼波点', '3', '99');
INSERT INTO `meet_color` VALUES ('168', '358', '浅驼条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('169', '359', '浅驼色块', '3', '99');
INSERT INTO `meet_color` VALUES ('170', '363', '米咖', '3', '99');
INSERT INTO `meet_color` VALUES ('171', '364', '米咖花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('172', '365', '米咖格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('173', '366', '米咖印花', '3', '99');
INSERT INTO `meet_color` VALUES ('174', '367', '米咖波点', '3', '99');
INSERT INTO `meet_color` VALUES ('175', '368', '米咖条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('176', '369', '米咖色块', '3', '99');
INSERT INTO `meet_color` VALUES ('177', '383', '卡其', '3', '99');
INSERT INTO `meet_color` VALUES ('178', '384', '卡其花沙', '3', '99');
INSERT INTO `meet_color` VALUES ('179', '385', '卡其格纹', '3', '99');
INSERT INTO `meet_color` VALUES ('180', '386', '卡其印花', '3', '99');
INSERT INTO `meet_color` VALUES ('181', '387', '卡其波点', '3', '99');
INSERT INTO `meet_color` VALUES ('182', '388', '卡其条纹', '3', '99');
INSERT INTO `meet_color` VALUES ('183', '389', '卡其色块', '3', '99');
INSERT INTO `meet_color` VALUES ('184', '40', '40绿色', '4', '99');
INSERT INTO `meet_color` VALUES ('185', '403', '灰绿', '4', '99');
INSERT INTO `meet_color` VALUES ('186', '404', '灰绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('187', '405', '灰绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('188', '406', '灰绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('189', '407', '灰绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('190', '408', '灰绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('191', '409', '灰绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('192', '41', '41浅绿', '4', '99');
INSERT INTO `meet_color` VALUES ('193', '410', '电商小脚(临时)', '4', '99');
INSERT INTO `meet_color` VALUES ('194', '412', '深绿色阶2-浅', '4', '99');
INSERT INTO `meet_color` VALUES ('195', '413', '深绿', '4', '99');
INSERT INTO `meet_color` VALUES ('196', '414', '深绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('197', '415', '深绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('198', '416', '深绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('199', '417', '深绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('200', '418', '深绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('201', '419', '深绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('202', '42', '42蓝绿', '4', '99');
INSERT INTO `meet_color` VALUES ('203', '43', '43果绿', '4', '99');
INSERT INTO `meet_color` VALUES ('204', '433', '军绿', '4', '99');
INSERT INTO `meet_color` VALUES ('205', '434', '军绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('206', '435', '军绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('207', '436', '军绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('208', '437', '军绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('209', '438', '军绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('210', '439', '军绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('211', '44', '44苹果绿', '4', '99');
INSERT INTO `meet_color` VALUES ('212', '443', '翡绿', '4', '99');
INSERT INTO `meet_color` VALUES ('213', '444', '翡绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('214', '445', '翡绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('215', '446', '翡绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('216', '447', '翡绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('217', '448', '翡绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('218', '449', '翡绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('219', '453', '绿色', '4', '99');
INSERT INTO `meet_color` VALUES ('220', '454', '绿色花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('221', '455', '绿色格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('222', '456', '绿色印花', '4', '99');
INSERT INTO `meet_color` VALUES ('223', '457', '绿色波点', '4', '99');
INSERT INTO `meet_color` VALUES ('224', '458', '绿色条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('225', '459', '绿色色块', '4', '99');
INSERT INTO `meet_color` VALUES ('226', '46', '46粉绿', '4', '99');
INSERT INTO `meet_color` VALUES ('227', '463', '草绿', '4', '99');
INSERT INTO `meet_color` VALUES ('228', '464', '草绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('229', '465', '草绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('230', '466', '草绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('231', '467', '草绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('232', '468', '草绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('233', '469', '草绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('234', '47', '47翠绿', '4', '99');
INSERT INTO `meet_color` VALUES ('235', '473', '果绿', '4', '99');
INSERT INTO `meet_color` VALUES ('236', '474', '果绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('237', '475', '果绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('238', '476', '果绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('239', '477', '果绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('240', '478', '果绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('241', '479', '果绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('242', '49', '49墨绿', '4', '99');
INSERT INTO `meet_color` VALUES ('243', '490', '翠绿色阶0-深', '4', '99');
INSERT INTO `meet_color` VALUES ('244', '491', '电商专用5', '4', '99');
INSERT INTO `meet_color` VALUES ('245', '492', '电商专用2', '4', '99');
INSERT INTO `meet_color` VALUES ('246', '493', '浅绿', '4', '99');
INSERT INTO `meet_color` VALUES ('247', '494', '浅绿花沙', '4', '99');
INSERT INTO `meet_color` VALUES ('248', '495', '浅绿格纹', '4', '99');
INSERT INTO `meet_color` VALUES ('249', '496', '浅绿印花', '4', '99');
INSERT INTO `meet_color` VALUES ('250', '497', '浅绿波点', '4', '99');
INSERT INTO `meet_color` VALUES ('251', '498', '浅绿条纹', '4', '99');
INSERT INTO `meet_color` VALUES ('252', '499', '浅绿色块', '4', '99');
INSERT INTO `meet_color` VALUES ('253', '50', '50红色', '5', '99');
INSERT INTO `meet_color` VALUES ('254', '503', '深红', '5', '99');
INSERT INTO `meet_color` VALUES ('255', '504', '深红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('256', '505', '深红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('257', '506', '深红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('258', '507', '深红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('259', '508', '深红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('260', '509', '深红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('261', '51', '51粉红', '5', '99');
INSERT INTO `meet_color` VALUES ('262', '510', '灰粉色阶0-深', '5', '99');
INSERT INTO `meet_color` VALUES ('263', '511', '灰粉色阶1-中', '5', '99');
INSERT INTO `meet_color` VALUES ('264', '512', '灰粉色阶2-浅', '5', '99');
INSERT INTO `meet_color` VALUES ('265', '513', '灰粉', '5', '99');
INSERT INTO `meet_color` VALUES ('266', '514', '灰粉花纱', '5', '99');
INSERT INTO `meet_color` VALUES ('267', '515', '灰粉格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('268', '516', '灰粉印花', '5', '99');
INSERT INTO `meet_color` VALUES ('269', '517', '灰粉波点', '5', '99');
INSERT INTO `meet_color` VALUES ('270', '518', '灰粉条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('271', '519', '灰粉色块', '5', '99');
INSERT INTO `meet_color` VALUES ('272', '52', '52粉桔', '5', '99');
INSERT INTO `meet_color` VALUES ('273', '523', '暗红', '5', '99');
INSERT INTO `meet_color` VALUES ('274', '524', '暗红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('275', '525', '暗红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('276', '526', '暗红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('277', '527', '暗红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('278', '528', '暗红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('279', '529', '暗红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('280', '53', '53桃红', '5', '99');
INSERT INTO `meet_color` VALUES ('281', '536', '红色预留', '5', '99');
INSERT INTO `meet_color` VALUES ('282', '54', '54玫红', '5', '99');
INSERT INTO `meet_color` VALUES ('283', '540', '大红色阶0-深', '5', '99');
INSERT INTO `meet_color` VALUES ('284', '543', '大红', '5', '99');
INSERT INTO `meet_color` VALUES ('285', '544', '大红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('286', '545', '大红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('287', '546', '大红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('288', '547', '大红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('289', '548', '大红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('290', '549', '大红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('291', '55', '55桔红', '5', '99');
INSERT INTO `meet_color` VALUES ('292', '553', '玫红', '5', '99');
INSERT INTO `meet_color` VALUES ('293', '554', '玫红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('294', '555', '玫红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('295', '556', '玫红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('296', '557', '玫红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('297', '558', '玫红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('298', '559', '玫红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('299', '563', '桃红', '5', '99');
INSERT INTO `meet_color` VALUES ('300', '564', '桃红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('301', '565', '桃红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('302', '566', '桃红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('303', '567', '桃红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('304', '568', '桃红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('305', '569', '桃红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('306', '57', '57枣红', '5', '99');
INSERT INTO `meet_color` VALUES ('307', '573', '热粉红预留', '5', '99');
INSERT INTO `meet_color` VALUES ('308', '574', '热粉红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('309', '575', '热粉红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('310', '576', '热粉红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('311', '577', '热粉红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('312', '578', '热粉红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('313', '579', '热粉红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('314', '58', '58紫红', '5', '99');
INSERT INTO `meet_color` VALUES ('315', '583', '粉红预留', '5', '99');
INSERT INTO `meet_color` VALUES ('316', '584', '粉红花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('317', '585', '粉红格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('318', '586', '粉红印花', '5', '99');
INSERT INTO `meet_color` VALUES ('319', '587', '粉红波点', '5', '99');
INSERT INTO `meet_color` VALUES ('320', '588', '粉红条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('321', '589', '粉红色块', '5', '99');
INSERT INTO `meet_color` VALUES ('322', '590', '电商专用3', '5', '99');
INSERT INTO `meet_color` VALUES ('323', '591', '电商专用7', '5', '99');
INSERT INTO `meet_color` VALUES ('324', '592', '电商专用6', '5', '99');
INSERT INTO `meet_color` VALUES ('325', '593', '裸粉', '5', '99');
INSERT INTO `meet_color` VALUES ('326', '594', '裸粉花沙', '5', '99');
INSERT INTO `meet_color` VALUES ('327', '595', '裸粉格纹', '5', '99');
INSERT INTO `meet_color` VALUES ('328', '596', '裸粉印花', '5', '99');
INSERT INTO `meet_color` VALUES ('329', '597', '裸粉波点', '5', '99');
INSERT INTO `meet_color` VALUES ('330', '598', '裸粉条纹', '5', '99');
INSERT INTO `meet_color` VALUES ('331', '599', '裸粉色块', '5', '99');
INSERT INTO `meet_color` VALUES ('332', '60', '60黄色', '6', '99');
INSERT INTO `meet_color` VALUES ('333', '603', '灰黄', '6', '99');
INSERT INTO `meet_color` VALUES ('334', '604', '灰黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('335', '605', '灰黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('336', '606', '灰黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('337', '607', '灰黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('338', '608', '灰黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('339', '609', '灰黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('340', '61', '61米黄', '6', '99');
INSERT INTO `meet_color` VALUES ('341', '610', '电商喇叭(临时)', '6', '99');
INSERT INTO `meet_color` VALUES ('342', '613', '土黄', '6', '99');
INSERT INTO `meet_color` VALUES ('343', '614', '土黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('344', '615', '土黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('345', '616', '土黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('346', '617', '土黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('347', '618', '土黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('348', '619', '土黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('349', '62', '62柠黄', '6', '99');
INSERT INTO `meet_color` VALUES ('350', '623', '金黄', '6', '99');
INSERT INTO `meet_color` VALUES ('351', '624', '金黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('352', '625', '金黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('353', '626', '金黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('354', '627', '金黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('355', '628', '金黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('356', '629', '金黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('357', '633', '姜黄', '6', '99');
INSERT INTO `meet_color` VALUES ('358', '634', '姜黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('359', '635', '姜黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('360', '636', '姜黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('361', '637', '姜黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('362', '638', '姜黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('363', '639', '姜黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('364', '643', '中黄', '6', '99');
INSERT INTO `meet_color` VALUES ('365', '644', '中黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('366', '645', '中黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('367', '646', '中黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('368', '647', '中黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('369', '648', '中黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('370', '649', '中黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('371', '65', '65浅黄', '6', '99');
INSERT INTO `meet_color` VALUES ('372', '653', '黄色', '6', '99');
INSERT INTO `meet_color` VALUES ('373', '654', '黄色花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('374', '655', '黄色格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('375', '656', '黄色印花', '6', '99');
INSERT INTO `meet_color` VALUES ('376', '657', '黄色波点', '6', '99');
INSERT INTO `meet_color` VALUES ('377', '658', '黄色条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('378', '659', '黄色色块', '6', '99');
INSERT INTO `meet_color` VALUES ('379', '663', '芥黄', '6', '99');
INSERT INTO `meet_color` VALUES ('380', '664', '芥黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('381', '665', '芥黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('382', '666', '芥黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('383', '667', '芥黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('384', '668', '芥黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('385', '669', '芥黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('386', '673', '柠黄', '6', '99');
INSERT INTO `meet_color` VALUES ('387', '674', '柠黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('388', '675', '柠黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('389', '676', '柠黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('390', '677', '柠黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('391', '678', '柠黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('392', '679', '柠黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('393', '690', '电商专用8', '6', '99');
INSERT INTO `meet_color` VALUES ('394', '691', '电商专用4', '6', '99');
INSERT INTO `meet_color` VALUES ('395', '693', '浅黄', '6', '99');
INSERT INTO `meet_color` VALUES ('396', '694', '浅黄花沙', '6', '99');
INSERT INTO `meet_color` VALUES ('397', '695', '浅黄格纹', '6', '99');
INSERT INTO `meet_color` VALUES ('398', '696', '浅黄印花', '6', '99');
INSERT INTO `meet_color` VALUES ('399', '697', '浅黄波点', '6', '99');
INSERT INTO `meet_color` VALUES ('400', '698', '浅黄条纹', '6', '99');
INSERT INTO `meet_color` VALUES ('401', '699', '浅黄色块', '6', '99');
INSERT INTO `meet_color` VALUES ('402', '70', '70蓝色', '7', '99');
INSERT INTO `meet_color` VALUES ('403', '703', '灰蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('404', '704', '灰蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('405', '705', '灰蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('406', '706', '灰蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('407', '707', '灰蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('408', '708', '灰蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('409', '709', '灰蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('410', '71', '71浅蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('411', '713', '藏青', '7', '99');
INSERT INTO `meet_color` VALUES ('412', '714', '藏青花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('413', '715', '藏青格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('414', '716', '藏青印花', '7', '99');
INSERT INTO `meet_color` VALUES ('415', '717', '藏青波点', '7', '99');
INSERT INTO `meet_color` VALUES ('416', '718', '藏青条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('417', '719', '藏青色块', '7', '99');
INSERT INTO `meet_color` VALUES ('418', '72', '72湖蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('419', '723', '深蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('420', '724', '深蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('421', '725', '深蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('422', '726', '深蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('423', '727', '深蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('424', '728', '深蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('425', '729', '深蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('426', '73', '73湖蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('427', '733', '电商专用1', '7', '99');
INSERT INTO `meet_color` VALUES ('428', '739', '名称未定义', '7', '99');
INSERT INTO `meet_color` VALUES ('429', '743', '蓝色', '7', '99');
INSERT INTO `meet_color` VALUES ('430', '744', '蓝色花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('431', '745', '蓝色格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('432', '746', '蓝色印花', '7', '99');
INSERT INTO `meet_color` VALUES ('433', '747', '蓝色波点', '7', '99');
INSERT INTO `meet_color` VALUES ('434', '748', '蓝色条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('435', '749', '蓝色色块', '7', '99');
INSERT INTO `meet_color` VALUES ('436', '750', '蓝白条', '7', '99');
INSERT INTO `meet_color` VALUES ('437', '753', '宝蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('438', '754', '宝蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('439', '755', '宝蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('440', '756', '宝蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('441', '757', '宝蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('442', '758', '宝蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('443', '759', '宝蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('444', '76', '76靛蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('445', '761', '蓝绿色阶1-中', '7', '99');
INSERT INTO `meet_color` VALUES ('446', '763', '蓝绿', '7', '99');
INSERT INTO `meet_color` VALUES ('447', '764', '蓝绿花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('448', '765', '蓝绿格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('449', '766', '蓝绿印花', '7', '99');
INSERT INTO `meet_color` VALUES ('450', '767', '蓝绿波点', '7', '99');
INSERT INTO `meet_color` VALUES ('451', '768', '蓝绿条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('452', '769', '蓝绿色块', '7', '99');
INSERT INTO `meet_color` VALUES ('453', '77', '77深藏青', '7', '99');
INSERT INTO `meet_color` VALUES ('454', '773', '天蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('455', '774', '天蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('456', '775', '天蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('457', '776', '天蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('458', '777', '天蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('459', '778', '天蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('460', '779', '天蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('461', '78', '78电商深藏青碎花', '7', '99');
INSERT INTO `meet_color` VALUES ('462', '793', '浅蓝', '7', '99');
INSERT INTO `meet_color` VALUES ('463', '794', '浅蓝花沙', '7', '99');
INSERT INTO `meet_color` VALUES ('464', '795', '浅蓝格纹', '7', '99');
INSERT INTO `meet_color` VALUES ('465', '796', '浅蓝印花', '7', '99');
INSERT INTO `meet_color` VALUES ('466', '797', '浅蓝波点', '7', '99');
INSERT INTO `meet_color` VALUES ('467', '798', '浅蓝条纹', '7', '99');
INSERT INTO `meet_color` VALUES ('468', '799', '浅蓝色块', '7', '99');
INSERT INTO `meet_color` VALUES ('469', '80', '80紫色', '8', '99');
INSERT INTO `meet_color` VALUES ('470', '803', '灰紫', '8', '99');
INSERT INTO `meet_color` VALUES ('471', '804', '灰紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('472', '805', '灰紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('473', '806', '灰紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('474', '807', '灰紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('475', '808', '灰紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('476', '809', '灰紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('477', '81', '81浅粉', '8', '99');
INSERT INTO `meet_color` VALUES ('478', '813', '深紫', '8', '99');
INSERT INTO `meet_color` VALUES ('479', '814', '深紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('480', '815', '深紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('481', '816', '深紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('482', '817', '深紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('483', '818', '深紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('484', '819', '深紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('485', '82', '82深紫', '8', '99');
INSERT INTO `meet_color` VALUES ('486', '823', '紫红', '8', '99');
INSERT INTO `meet_color` VALUES ('487', '824', '紫红花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('488', '825', '紫红格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('489', '826', '紫红印花', '8', '99');
INSERT INTO `meet_color` VALUES ('490', '827', '紫红波点', '8', '99');
INSERT INTO `meet_color` VALUES ('491', '828', '紫红条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('492', '829', '紫红色块', '8', '99');
INSERT INTO `meet_color` VALUES ('493', '83', '83电商紫色碎花', '8', '99');
INSERT INTO `meet_color` VALUES ('494', '830', '紫白条', '8', '99');
INSERT INTO `meet_color` VALUES ('495', '833', '蓝紫', '8', '99');
INSERT INTO `meet_color` VALUES ('496', '834', '蓝紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('497', '835', '蓝紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('498', '836', '蓝紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('499', '837', '蓝紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('500', '838', '蓝紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('501', '839', '蓝紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('502', '84', '84浅洋李色', '8', '99');
INSERT INTO `meet_color` VALUES ('503', '849', '紫色色块', '8', '99');
INSERT INTO `meet_color` VALUES ('504', '85', '85蓝紫', '8', '99');
INSERT INTO `meet_color` VALUES ('505', '853', '紫色', '8', '99');
INSERT INTO `meet_color` VALUES ('506', '854', '紫色花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('507', '855', '紫色格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('508', '856', '紫色印花', '8', '99');
INSERT INTO `meet_color` VALUES ('509', '857', '紫色波点', '8', '99');
INSERT INTO `meet_color` VALUES ('510', '858', '紫色条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('511', '859', '紫色色块', '8', '99');
INSERT INTO `meet_color` VALUES ('512', '87', '87桃粉红', '8', '99');
INSERT INTO `meet_color` VALUES ('513', '88', '88热粉红', '8', '99');
INSERT INTO `meet_color` VALUES ('514', '883', '浅紫', '8', '99');
INSERT INTO `meet_color` VALUES ('515', '884', '浅紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('516', '885', '浅紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('517', '886', '浅紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('518', '887', '浅紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('519', '888', '浅紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('520', '889', '浅紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('521', '893', '粉紫', '8', '99');
INSERT INTO `meet_color` VALUES ('522', '894', '粉紫花沙', '8', '99');
INSERT INTO `meet_color` VALUES ('523', '895', '粉紫格纹', '8', '99');
INSERT INTO `meet_color` VALUES ('524', '896', '粉紫印花', '8', '99');
INSERT INTO `meet_color` VALUES ('525', '897', '粉紫波点', '8', '99');
INSERT INTO `meet_color` VALUES ('526', '898', '粉紫条纹', '8', '99');
INSERT INTO `meet_color` VALUES ('527', '899', '粉紫色块', '8', '99');
INSERT INTO `meet_color` VALUES ('528', '90', '90标准牛仔色', '9', '99');
INSERT INTO `meet_color` VALUES ('529', '903', '灰桔', '9', '99');
INSERT INTO `meet_color` VALUES ('530', '904', '灰桔花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('531', '905', '灰桔格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('532', '906', '灰桔印花', '9', '99');
INSERT INTO `meet_color` VALUES ('533', '907', '灰桔波点', '9', '99');
INSERT INTO `meet_color` VALUES ('534', '908', '灰桔条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('535', '909', '灰桔色块', '9', '99');
INSERT INTO `meet_color` VALUES ('536', '91', '91浅牛仔色', '9', '99');
INSERT INTO `meet_color` VALUES ('537', '913', '深桔', '9', '99');
INSERT INTO `meet_color` VALUES ('538', '914', '深桔花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('539', '915', '深桔格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('540', '916', '深桔印花', '9', '99');
INSERT INTO `meet_color` VALUES ('541', '917', '深桔波点', '9', '99');
INSERT INTO `meet_color` VALUES ('542', '918', '深桔条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('543', '919', '深桔色块', '9', '99');
INSERT INTO `meet_color` VALUES ('544', '92', '92深牛仔色', '9', '99');
INSERT INTO `meet_color` VALUES ('545', '933', '桔红', '9', '99');
INSERT INTO `meet_color` VALUES ('546', '934', '桔红花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('547', '935', '桔红格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('548', '936', '桔红印花', '9', '99');
INSERT INTO `meet_color` VALUES ('549', '937', '桔红波点', '9', '99');
INSERT INTO `meet_color` VALUES ('550', '938', '桔红条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('551', '939', '桔红色块', '9', '99');
INSERT INTO `meet_color` VALUES ('552', '940', '桔色色阶0-深', '9', '99');
INSERT INTO `meet_color` VALUES ('553', '941', '桔色色阶1-中', '9', '99');
INSERT INTO `meet_color` VALUES ('554', '942', '桔色色阶2-浅', '9', '99');
INSERT INTO `meet_color` VALUES ('555', '943', '桔色', '9', '99');
INSERT INTO `meet_color` VALUES ('556', '944', '桔色花纱', '9', '99');
INSERT INTO `meet_color` VALUES ('557', '945', '桔色格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('558', '946', '桔色印花', '9', '99');
INSERT INTO `meet_color` VALUES ('559', '947', '桔色波点', '9', '99');
INSERT INTO `meet_color` VALUES ('560', '948', '桔色条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('561', '949', '桔色色块', '9', '99');
INSERT INTO `meet_color` VALUES ('562', '953', '桔黄', '9', '99');
INSERT INTO `meet_color` VALUES ('563', '954', '桔黄花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('564', '955', '桔黄格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('565', '956', '桔黄印花', '9', '99');
INSERT INTO `meet_color` VALUES ('566', '957', '桔黄波点', '9', '99');
INSERT INTO `meet_color` VALUES ('567', '958', '桔黄条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('568', '959', '桔黄色块', '9', '99');
INSERT INTO `meet_color` VALUES ('569', '973', '浅桔', '9', '99');
INSERT INTO `meet_color` VALUES ('570', '974', '浅桔花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('571', '975', '浅桔格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('572', '976', '浅桔印花', '9', '99');
INSERT INTO `meet_color` VALUES ('573', '977', '浅桔波点', '9', '99');
INSERT INTO `meet_color` VALUES ('574', '978', '浅桔条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('575', '979', '浅桔色块', '9', '99');
INSERT INTO `meet_color` VALUES ('576', '983', '粉桔', '9', '99');
INSERT INTO `meet_color` VALUES ('577', '984', '粉桔花沙', '9', '99');
INSERT INTO `meet_color` VALUES ('578', '985', '粉桔格纹', '9', '99');
INSERT INTO `meet_color` VALUES ('579', '986', '粉桔印花', '9', '99');
INSERT INTO `meet_color` VALUES ('580', '987', '粉桔波点', '9', '99');
INSERT INTO `meet_color` VALUES ('581', '988', '粉桔条纹', '9', '99');
INSERT INTO `meet_color` VALUES ('582', '989', '粉桔色块', '9', '99');
INSERT INTO `meet_color` VALUES ('584', '0', '0无色', '10', '99');

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
INSERT INTO `meet_customer` VALUES ('1', '0', '1', 'ceshi', '', 'ceshi', '032ebcd09e23b885fd4e568d8095dee2', '18237121209', '直营', '上海', '沪宁闽', '0.000', 'false', '直营直属', '曾畅', '北京办事处（托管）', '001', '2000', '2000', '2000', '2000', '2000', '1.000', '1.000', '1.000', '1.000', '1.000', '100.000', '100.000', '100.000', '100.000', '1534140161');

-- ----------------------------
-- Table structure for meet_level
-- ----------------------------
DROP TABLE IF EXISTS `meet_level`;
CREATE TABLE `meet_level` (
  `level_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `level_name` varchar(100) NOT NULL COMMENT '等级名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_level
-- ----------------------------
INSERT INTO `meet_level` VALUES ('3', '小S广告款', '99');
INSERT INTO `meet_level` VALUES ('4', '基本款', '99');
INSERT INTO `meet_level` VALUES ('5', '形象款', '99');
INSERT INTO `meet_level` VALUES ('6', '主力款', '99');
INSERT INTO `meet_level` VALUES ('7', '其他', '99');
INSERT INTO `meet_level` VALUES ('8', '未定义', '99');
INSERT INTO `meet_level` VALUES ('9', '渠道款', '99');

-- ----------------------------
-- Table structure for meet_menu
-- ----------------------------
DROP TABLE IF EXISTS `meet_menu`;
CREATE TABLE `meet_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `meet_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `meet_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_menu
-- ----------------------------

-- ----------------------------
-- Table structure for meet_migration
-- ----------------------------
DROP TABLE IF EXISTS `meet_migration`;
CREATE TABLE `meet_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_migration
-- ----------------------------
INSERT INTO `meet_migration` VALUES ('m000000_000000_base', '1540783176');
INSERT INTO `meet_migration` VALUES ('m140506_102106_rbac_init', '1540783500');
INSERT INTO `meet_migration` VALUES ('m140602_111327_create_menu_table', '1540783597');
INSERT INTO `meet_migration` VALUES ('m160312_050000_create_user', '1540783597');

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

-- ----------------------------
-- Records of meet_order
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_order_items
-- ----------------------------

-- ----------------------------
-- Table structure for meet_order_log
-- ----------------------------
DROP TABLE IF EXISTS `meet_order_log`;
CREATE TABLE `meet_order_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_order_log
-- ----------------------------

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_pchange_log
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=3337 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_product
-- ----------------------------
INSERT INTO `meet_product` VALUES ('2605', '1', '191315280163001', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '18', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2606', '1', '191315280163002', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '24', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2607', '1', '191315280163003', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '19', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2608', '1', '191315280163004', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '20', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2609', '1', '191315280163005', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '26', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2610', '1', '191315280163006', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '21', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2611', '1', '191315280163007', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '27', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2612', '1', '191315280163008', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '22', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2613', '1', '191315280163009', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '28', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2614', '1', '191315280163010', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '23', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2615', '1', '191315280163011', '191315280163', '19131528', '1000', '背心式无钢托哺乳文胸', '/images/2018-07/19131528_163.jpg', '61', '29', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：65.7%锦纶8.1%氨纶26.2%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2616', '1', '191415280163001', '191415280163', '19141528', '1001', '蕾丝中腰内裤', '/images/2018-07/19141528_163.jpg', '61', '1', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：49%莫代尔47%棉4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2617', '1', '191415280163002', '191415280163', '19141528', '1001', '蕾丝中腰内裤', '/images/2018-07/19141528_163.jpg', '61', '2', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：49%莫代尔47%棉4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2618', '1', '191415280163003', '191415280163', '19141528', '1001', '蕾丝中腰内裤', '/images/2018-07/19141528_163.jpg', '61', '3', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：49%莫代尔47%棉4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2619', '1', '191415280163004', '191415280163', '19141528', '1001', '蕾丝中腰内裤', '/images/2018-07/19141528_163.jpg', '61', '4', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：49%莫代尔47%棉4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2620', '1', '191415280163005', '191415280163', '19141528', '1001', '蕾丝中腰内裤', '/images/2018-07/19141528_163.jpg', '61', '5', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：49%莫代尔47%棉4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2621', '1', '191415280163006', '191415280163', '19141528', '1001', '蕾丝中腰内裤', '/images/2018-07/19141528_163.jpg', '61', '6', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：49%莫代尔47%棉4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2622', '1', '191415280163007', '191415280163', '19141528', '1001', '蕾丝中腰内裤', '/images/2018-07/19141528_163.jpg', '61', '7', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：49%莫代尔47%棉4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2623', '1', '191315290236001', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '18', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2624', '1', '191315290236002', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '24', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2625', '1', '191315290236003', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '19', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2626', '1', '191315290236004', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '20', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2627', '1', '191315290236005', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '26', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2628', '1', '191315290236006', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '21', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2629', '1', '191315290236007', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '27', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2630', '1', '191315290236008', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '22', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2631', '1', '191315290236009', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '28', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2632', '1', '191315290236010', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '23', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2633', '1', '191315290236011', '191315290236', '19131529', '1002', '花版无钢托可哺乳文胸', '/images/2018-07/19131529_236.jpg', '112', '29', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2634', '1', '191425290236001', '191425290236', '19142529', '1003', '蕾丝拼接低腰内裤', '/images/2018-07/19142529_236.jpg', '112', '1', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2635', '1', '191425290236002', '191425290236', '19142529', '1003', '蕾丝拼接低腰内裤', '/images/2018-07/19142529_236.jpg', '112', '2', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2636', '1', '191425290236003', '191425290236', '19142529', '1003', '蕾丝拼接低腰内裤', '/images/2018-07/19142529_236.jpg', '112', '3', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2637', '1', '191425290236004', '191425290236', '19142529', '1003', '蕾丝拼接低腰内裤', '/images/2018-07/19142529_236.jpg', '112', '4', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2638', '1', '191425290236005', '191425290236', '19142529', '1003', '蕾丝拼接低腰内裤', '/images/2018-07/19142529_236.jpg', '112', '5', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2639', '1', '191425290236006', '191425290236', '19142529', '1003', '蕾丝拼接低腰内裤', '/images/2018-07/19142529_236.jpg', '112', '6', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2640', '1', '191425290236007', '191425290236', '19142529', '1003', '蕾丝拼接低腰内裤', '/images/2018-07/19142529_236.jpg', '112', '7', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2641', '1', '191425070236001', '191425070236', '19142507', '1004', '孕妇低腰内裤', '/images/2018-07/19142507_236.jpg', '112', '1', '1', '2', '4', '2', '1', '6', '5', '2', '68.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2642', '1', '191425070236002', '191425070236', '19142507', '1004', '孕妇低腰内裤', '/images/2018-07/19142507_236.jpg', '112', '2', '1', '2', '4', '2', '1', '6', '5', '2', '68.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2643', '1', '191425070236003', '191425070236', '19142507', '1004', '孕妇低腰内裤', '/images/2018-07/19142507_236.jpg', '112', '3', '1', '2', '4', '2', '1', '6', '5', '2', '68.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2644', '1', '191425070236004', '191425070236', '19142507', '1004', '孕妇低腰内裤', '/images/2018-07/19142507_236.jpg', '112', '4', '1', '2', '4', '2', '1', '6', '5', '2', '68.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2645', '1', '191425070236005', '191425070236', '19142507', '1004', '孕妇低腰内裤', '/images/2018-07/19142507_236.jpg', '112', '5', '1', '2', '4', '2', '1', '6', '5', '2', '68.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2646', '1', '191425070236006', '191425070236', '19142507', '1004', '孕妇低腰内裤', '/images/2018-07/19142507_236.jpg', '112', '6', '1', '2', '4', '2', '1', '6', '5', '2', '68.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2647', '1', '191425070236007', '191425070236', '19142507', '1004', '孕妇低腰内裤', '/images/2018-07/19142507_236.jpg', '112', '7', '1', '2', '4', '2', '1', '6', '5', '2', '68.00', '1', '面料：75%聚酯纤维25%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2648', '1', '191305060583001', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '18', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2649', '1', '191305060583002', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '24', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2650', '1', '191305060583003', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '19', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2651', '1', '191305060583004', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '20', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2652', '1', '191305060583005', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '26', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2653', '1', '191305060583006', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '21', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2654', '1', '191305060583007', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '27', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2655', '1', '191305060583008', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '22', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2656', '1', '191305060583009', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '28', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2657', '1', '191305060583010', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '23', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2658', '1', '191305060583011', '191305060583', '19130506', '1005', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_583.jpg', '315', '29', '1', '2', '4', '1', '1', '6', '5', '5', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2659', '1', '191305060163012', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '18', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2660', '1', '191305060163013', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '24', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2661', '1', '191305060163014', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '19', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2662', '1', '191305060163015', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '20', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2663', '1', '191305060163016', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '26', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2664', '1', '191305060163017', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '21', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2665', '1', '191305060163018', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '27', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2666', '1', '191305060163019', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '22', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2667', '1', '191305060163020', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '28', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2668', '1', '191305060163021', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '23', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2669', '1', '191305060163022', '191305060163', '19130506', '1006', '蕾丝可哺乳软钢托文胸', '/images/2018-07/19130506_163.jpg', '61', '29', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：100%锦纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2670', '1', '191425060583001', '191425060583', '19142506', '1007', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_583.jpg', '315', '1', '1', '2', '4', '2', '1', '6', '5', '5', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2671', '1', '191425060583002', '191425060583', '19142506', '1007', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_583.jpg', '315', '2', '1', '2', '4', '2', '1', '6', '5', '5', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2672', '1', '191425060583003', '191425060583', '19142506', '1007', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_583.jpg', '315', '3', '1', '2', '4', '2', '1', '6', '5', '5', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2673', '1', '191425060583004', '191425060583', '19142506', '1007', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_583.jpg', '315', '4', '1', '2', '4', '2', '1', '6', '5', '5', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2674', '1', '191425060583005', '191425060583', '19142506', '1007', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_583.jpg', '315', '5', '1', '2', '4', '2', '1', '6', '5', '5', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2675', '1', '191425060583006', '191425060583', '19142506', '1007', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_583.jpg', '315', '6', '1', '2', '4', '2', '1', '6', '5', '5', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2676', '1', '191425060583007', '191425060583', '19142506', '1007', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_583.jpg', '315', '7', '1', '2', '4', '2', '1', '6', '5', '5', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2677', '1', '191425060163008', '191425060163', '19142506', '1008', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_163.jpg', '61', '1', '1', '2', '4', '2', '1', '6', '5', '1', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2678', '1', '191425060163009', '191425060163', '19142506', '1008', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_163.jpg', '61', '2', '1', '2', '4', '2', '1', '6', '5', '1', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2679', '1', '191425060163010', '191425060163', '19142506', '1008', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_163.jpg', '61', '3', '1', '2', '4', '2', '1', '6', '5', '1', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2680', '1', '191425060163011', '191425060163', '19142506', '1008', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_163.jpg', '61', '4', '1', '2', '4', '2', '1', '6', '5', '1', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2681', '1', '191425060163012', '191425060163', '19142506', '1008', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_163.jpg', '61', '5', '1', '2', '4', '2', '1', '6', '5', '1', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2682', '1', '191425060163013', '191425060163', '19142506', '1008', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_163.jpg', '61', '6', '1', '2', '4', '2', '1', '6', '5', '1', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2683', '1', '191425060163014', '191425060163', '19142506', '1008', '蕾丝拼接低腰内裤', '/images/2018-07/19142506_163.jpg', '61', '7', '1', '2', '4', '2', '1', '6', '5', '1', '128.00', '2', '面料：82%锦纶18%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2684', '1', '191317110203001', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '18', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2685', '1', '191317110203002', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '24', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2686', '1', '191317110203003', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '19', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2687', '1', '191317110203004', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '20', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2688', '1', '191317110203005', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '26', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2689', '1', '191317110203006', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '21', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2690', '1', '191317110203007', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '27', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2691', '1', '191317110203008', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '22', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2692', '1', '191317110203009', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '28', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2693', '1', '191317110203010', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '23', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2694', '1', '191317110203011', '191317110203', '19131711', '1009', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_203.jpg', '85', '29', '1', '2', '4', '1', '1', '6', '5', '2', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2695', '1', '191317110103012', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '18', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2696', '1', '191317110103013', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '24', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2697', '1', '191317110103014', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '19', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2698', '1', '191317110103015', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '20', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2699', '1', '191317110103016', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '26', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2700', '1', '191317110103017', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '21', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2701', '1', '191317110103018', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '27', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2702', '1', '191317110103019', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '22', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2703', '1', '191317110103020', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '28', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2704', '1', '191317110103021', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '23', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2705', '1', '191317110103022', '191317110103', '19131711', '1010', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131711_103.jpg', '13', '29', '1', '2', '4', '1', '1', '6', '5', '1', '428.00', '5', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2706', '1', '191425110203001', '191425110203', '19142511', '1011', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_203.jpg', '85', '1', '1', '2', '4', '2', '1', '6', '5', '2', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2707', '1', '191425110203002', '191425110203', '19142511', '1011', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_203.jpg', '85', '2', '1', '2', '4', '2', '1', '6', '5', '2', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2708', '1', '191425110203003', '191425110203', '19142511', '1011', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_203.jpg', '85', '3', '1', '2', '4', '2', '1', '6', '5', '2', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2709', '1', '191425110203004', '191425110203', '19142511', '1011', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_203.jpg', '85', '4', '1', '2', '4', '2', '1', '6', '5', '2', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2710', '1', '191425110203005', '191425110203', '19142511', '1011', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_203.jpg', '85', '5', '1', '2', '4', '2', '1', '6', '5', '2', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2711', '1', '191425110203006', '191425110203', '19142511', '1011', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_203.jpg', '85', '6', '1', '2', '4', '2', '1', '6', '5', '2', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2712', '1', '191425110203007', '191425110203', '19142511', '1011', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_203.jpg', '85', '7', '1', '2', '4', '2', '1', '6', '5', '2', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2713', '1', '191425110103008', '191425110103', '19142511', '1012', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_103.jpg', '13', '1', '1', '2', '4', '2', '1', '6', '5', '1', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2714', '1', '191425110103009', '191425110103', '19142511', '1012', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_103.jpg', '13', '2', '1', '2', '4', '2', '1', '6', '5', '1', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2715', '1', '191425110103010', '191425110103', '19142511', '1012', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_103.jpg', '13', '3', '1', '2', '4', '2', '1', '6', '5', '1', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2716', '1', '191425110103011', '191425110103', '19142511', '1012', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_103.jpg', '13', '4', '1', '2', '4', '2', '1', '6', '5', '1', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2717', '1', '191425110103012', '191425110103', '19142511', '1012', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_103.jpg', '13', '5', '1', '2', '4', '2', '1', '6', '5', '1', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2718', '1', '191425110103013', '191425110103', '19142511', '1012', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_103.jpg', '13', '6', '1', '2', '4', '2', '1', '6', '5', '1', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2719', '1', '191425110103014', '191425110103', '19142511', '1012', '蕾丝拼接低腰内裤', '/images/2018-07/19142511_103.jpg', '13', '7', '1', '2', '4', '2', '1', '6', '5', '1', '88.00', '1', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2720', '1', '191317120743001', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '18', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2721', '1', '191317120743002', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '24', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2722', '1', '191317120743003', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '19', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2723', '1', '191317120743004', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '20', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2724', '1', '191317120743005', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '26', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2725', '1', '191317120743006', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '21', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2726', '1', '191317120743007', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '27', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2727', '1', '191317120743008', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '22', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2728', '1', '191317120743009', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '28', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2729', '1', '191317120743010', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '23', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2730', '1', '191317120743011', '191317120743', '19131712', '1013', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_743.jpg', '429', '29', '1', '2', '4', '1', '1', '6', '5', '7', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2731', '1', '191317120583012', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '18', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2732', '1', '191317120583013', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '24', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2733', '1', '191317120583014', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '19', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2734', '1', '191317120583015', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '20', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2735', '1', '191317120583016', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '26', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2736', '1', '191317120583017', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '21', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2737', '1', '191317120583018', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '27', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2738', '1', '191317120583019', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '22', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2739', '1', '191317120583020', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '28', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2740', '1', '191317120583021', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '23', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2741', '1', '191317120583022', '191317120583', '19131712', '1014', '蕾丝拼接一体成型文胸', '/images/2018-07/19131712_583.jpg', '315', '29', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：87.9%锦纶10.3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2742', '1', '191407120743001', '191407120743', '19140712', '1015', '一体成型内裤', '/images/2018-07/19140712_743.jpg', '429', '1', '1', '2', '4', '2', '1', '6', '5', '7', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2743', '1', '191407120743002', '191407120743', '19140712', '1015', '一体成型内裤', '/images/2018-07/19140712_743.jpg', '429', '2', '1', '2', '4', '2', '1', '6', '5', '7', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2744', '1', '191407120743003', '191407120743', '19140712', '1015', '一体成型内裤', '/images/2018-07/19140712_743.jpg', '429', '3', '1', '2', '4', '2', '1', '6', '5', '7', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2745', '1', '191407120743004', '191407120743', '19140712', '1015', '一体成型内裤', '/images/2018-07/19140712_743.jpg', '429', '4', '1', '2', '4', '2', '1', '6', '5', '7', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2746', '1', '191407120743005', '191407120743', '19140712', '1015', '一体成型内裤', '/images/2018-07/19140712_743.jpg', '429', '5', '1', '2', '4', '2', '1', '6', '5', '7', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2747', '1', '191407120743006', '191407120743', '19140712', '1015', '一体成型内裤', '/images/2018-07/19140712_743.jpg', '429', '6', '1', '2', '4', '2', '1', '6', '5', '7', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2748', '1', '191407120743007', '191407120743', '19140712', '1015', '一体成型内裤', '/images/2018-07/19140712_743.jpg', '429', '7', '1', '2', '4', '2', '1', '6', '5', '7', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2749', '1', '191407120583008', '191407120583', '19140712', '1016', '一体成型内裤', '/images/2018-07/19140712_583.jpg', '315', '1', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2750', '1', '191407120583009', '191407120583', '19140712', '1016', '一体成型内裤', '/images/2018-07/19140712_583.jpg', '315', '2', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2751', '1', '191407120583010', '191407120583', '19140712', '1016', '一体成型内裤', '/images/2018-07/19140712_583.jpg', '315', '3', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2752', '1', '191407120583011', '191407120583', '19140712', '1016', '一体成型内裤', '/images/2018-07/19140712_583.jpg', '315', '4', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2753', '1', '191407120583012', '191407120583', '19140712', '1016', '一体成型内裤', '/images/2018-07/19140712_583.jpg', '315', '5', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2754', '1', '191407120583013', '191407120583', '19140712', '1016', '一体成型内裤', '/images/2018-07/19140712_583.jpg', '315', '6', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2755', '1', '191407120583014', '191407120583', '19140712', '1016', '一体成型内裤', '/images/2018-07/19140712_583.jpg', '315', '7', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：91%锦纶9%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2756', '1', '191327140238001', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '18', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2757', '1', '191327140238002', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '24', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2758', '1', '191327140238003', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '19', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2759', '1', '191327140238004', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '20', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2760', '1', '191327140238005', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '26', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2761', '1', '191327140238006', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '21', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2762', '1', '191327140238007', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '27', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2763', '1', '191327140238008', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '22', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2764', '1', '191327140238009', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '28', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2765', '1', '191327140238010', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '23', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2766', '1', '191327140238011', '191327140238', '19132714', '1017', '可哺乳运动背心', '/images/2018-07/19132714_238.jpg', '114', '29', '1', '2', '4', '1', '1', '6', '5', '2', '298.00', '3', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2767', '1', '191312180583001', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '18', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2768', '1', '191312180583002', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '24', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2769', '1', '191312180583003', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '19', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2770', '1', '191312180583004', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '20', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2771', '1', '191312180583005', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '26', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2772', '1', '191312180583006', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '21', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2773', '1', '191312180583007', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '27', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2774', '1', '191312180583008', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '22', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2775', '1', '191312180583009', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '28', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2776', '1', '191312180583010', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '23', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2777', '1', '191312180583011', '191312180583', '19131218', '1018', '无钢托可哺乳文胸', '/images/2018-07/19131218_583.jpg', '315', '29', '1', '2', '4', '1', '1', '6', '5', '5', '328.00', '4', '面料：85.3%锦纶14.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2778', '1', '191317220588001', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '18', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2779', '1', '191317220588002', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '24', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2780', '1', '191317220588003', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '19', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2781', '1', '191317220588004', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '20', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2782', '1', '191317220588005', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '26', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2783', '1', '191317220588006', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '21', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2784', '1', '191317220588007', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '27', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2785', '1', '191317220588008', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '22', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2786', '1', '191317220588009', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '28', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2787', '1', '191317220588010', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '23', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2788', '1', '191317220588011', '191317220588', '19131722', '1019', '可哺乳无钢托文胸', '/images/2018-07/19131722_588.jpg', '320', '29', '1', '2', '4', '1', '1', '6', '5', '5', '298.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2789', '1', '191312310748001', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '18', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2790', '1', '191312310748002', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '24', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2791', '1', '191312310748003', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '19', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2792', '1', '191312310748004', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '20', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2793', '1', '191312310748005', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '26', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2794', '1', '191312310748006', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '21', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2795', '1', '191312310748007', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '27', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2796', '1', '191312310748008', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '22', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2797', '1', '191312310748009', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '28', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2798', '1', '191312310748010', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '23', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2799', '1', '191312310748011', '191312310748', '19131231', '1020', '前开扣可哺乳文胸', '/images/2018-07/19131231_748.jpg', '434', '29', '1', '2', '4', '1', '1', '6', '5', '7', '228.00', '3', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2800', '1', '191407180583001', '191407180583', '19140718', '1021', '高腰内裤', '/images/2018-07/19140718_583.jpg', '315', '1', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：54%莫代尔35.9%锦纶10.1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2801', '1', '191407180583002', '191407180583', '19140718', '1021', '高腰内裤', '/images/2018-07/19140718_583.jpg', '315', '2', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：54%莫代尔35.9%锦纶10.1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2802', '1', '191407180583003', '191407180583', '19140718', '1021', '高腰内裤', '/images/2018-07/19140718_583.jpg', '315', '3', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：54%莫代尔35.9%锦纶10.1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2803', '1', '191407180583004', '191407180583', '19140718', '1021', '高腰内裤', '/images/2018-07/19140718_583.jpg', '315', '4', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：54%莫代尔35.9%锦纶10.1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2804', '1', '191407180583005', '191407180583', '19140718', '1021', '高腰内裤', '/images/2018-07/19140718_583.jpg', '315', '5', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：54%莫代尔35.9%锦纶10.1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2805', '1', '191407180583006', '191407180583', '19140718', '1021', '高腰内裤', '/images/2018-07/19140718_583.jpg', '315', '6', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：54%莫代尔35.9%锦纶10.1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2806', '1', '191407180583007', '191407180583', '19140718', '1021', '高腰内裤', '/images/2018-07/19140718_583.jpg', '315', '7', '1', '2', '4', '2', '1', '6', '5', '5', '88.00', '1', '面料：54%莫代尔35.9%锦纶10.1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2807', '1', '191427220588001', '191427220588', '19142722', '1022', '低腰托腹内裤', '/images/2018-07/19142722_588.jpg', '320', '1', '1', '2', '4', '2', '1', '6', '5', '5', '98.00', '1', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2808', '1', '191427220588002', '191427220588', '19142722', '1022', '低腰托腹内裤', '/images/2018-07/19142722_588.jpg', '320', '2', '1', '2', '4', '2', '1', '6', '5', '5', '98.00', '1', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2809', '1', '191427220588003', '191427220588', '19142722', '1022', '低腰托腹内裤', '/images/2018-07/19142722_588.jpg', '320', '3', '1', '2', '4', '2', '1', '6', '5', '5', '98.00', '1', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2810', '1', '191427220588004', '191427220588', '19142722', '1022', '低腰托腹内裤', '/images/2018-07/19142722_588.jpg', '320', '4', '1', '2', '4', '2', '1', '6', '5', '5', '98.00', '1', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2811', '1', '191427220588005', '191427220588', '19142722', '1022', '低腰托腹内裤', '/images/2018-07/19142722_588.jpg', '320', '5', '1', '2', '4', '2', '1', '6', '5', '5', '98.00', '1', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2812', '1', '191427220588006', '191427220588', '19142722', '1022', '低腰托腹内裤', '/images/2018-07/19142722_588.jpg', '320', '6', '1', '2', '4', '2', '1', '6', '5', '5', '98.00', '1', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2813', '1', '191427220588007', '191427220588', '19142722', '1022', '低腰托腹内裤', '/images/2018-07/19142722_588.jpg', '320', '7', '1', '2', '4', '2', '1', '6', '5', '5', '98.00', '1', '面料：95.3%棉4.7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2814', '1', '191407170000001', '191407170000', '19140717', '1023', '高腰内裤两条包', '/images/2018-07/19140717_0.jpg', '584', '1', '1', '2', '4', '2', '1', '6', '5', '10', '98.00', '1', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2815', '1', '191407170000002', '191407170000', '19140717', '1023', '高腰内裤两条包', '/images/2018-07/19140717_0.jpg', '584', '2', '1', '2', '4', '2', '1', '6', '5', '10', '98.00', '1', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2816', '1', '191407170000003', '191407170000', '19140717', '1023', '高腰内裤两条包', '/images/2018-07/19140717_0.jpg', '584', '3', '1', '2', '4', '2', '1', '6', '5', '10', '98.00', '1', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2817', '1', '191407170000004', '191407170000', '19140717', '1023', '高腰内裤两条包', '/images/2018-07/19140717_0.jpg', '584', '4', '1', '2', '4', '2', '1', '6', '5', '10', '98.00', '1', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2818', '1', '191407170000005', '191407170000', '19140717', '1023', '高腰内裤两条包', '/images/2018-07/19140717_0.jpg', '584', '5', '1', '2', '4', '2', '1', '6', '5', '10', '98.00', '1', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2819', '1', '191407170000006', '191407170000', '19140717', '1023', '高腰内裤两条包', '/images/2018-07/19140717_0.jpg', '584', '6', '1', '2', '4', '2', '1', '6', '5', '10', '98.00', '1', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2820', '1', '191407170000007', '191407170000', '19140717', '1023', '高腰内裤两条包', '/images/2018-07/19140717_0.jpg', '584', '7', '1', '2', '4', '2', '1', '6', '5', '10', '98.00', '1', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2821', '1', '191427190000001', '191427190000', '19142719', '1024', '低腰内裤三条包', '/images/2018-07/19142719_0.jpg', '584', '1', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2822', '1', '191427190000002', '191427190000', '19142719', '1024', '低腰内裤三条包', '/images/2018-07/19142719_0.jpg', '584', '2', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2823', '1', '191427190000003', '191427190000', '19142719', '1024', '低腰内裤三条包', '/images/2018-07/19142719_0.jpg', '584', '3', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2824', '1', '191427190000004', '191427190000', '19142719', '1024', '低腰内裤三条包', '/images/2018-07/19142719_0.jpg', '584', '4', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2825', '1', '191427190000005', '191427190000', '19142719', '1024', '低腰内裤三条包', '/images/2018-07/19142719_0.jpg', '584', '5', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2826', '1', '191427190000006', '191427190000', '19142719', '1024', '低腰内裤三条包', '/images/2018-07/19142719_0.jpg', '584', '6', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2827', '1', '191427190000007', '191427190000', '19142719', '1024', '低腰内裤三条包', '/images/2018-07/19142719_0.jpg', '584', '7', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2828', '1', '191427210000001', '191427210000', '19142721', '1025', '低腰内裤三条包', '/images/2018-07/19142721_0.jpg', '584', '1', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2829', '1', '191427210000002', '191427210000', '19142721', '1025', '低腰内裤三条包', '/images/2018-07/19142721_0.jpg', '584', '2', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2830', '1', '191427210000003', '191427210000', '19142721', '1025', '低腰内裤三条包', '/images/2018-07/19142721_0.jpg', '584', '3', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2831', '1', '191427210000004', '191427210000', '19142721', '1025', '低腰内裤三条包', '/images/2018-07/19142721_0.jpg', '584', '4', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2832', '1', '191427210000005', '191427210000', '19142721', '1025', '低腰内裤三条包', '/images/2018-07/19142721_0.jpg', '584', '5', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2833', '1', '191427210000006', '191427210000', '19142721', '1025', '低腰内裤三条包', '/images/2018-07/19142721_0.jpg', '584', '6', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2834', '1', '191427210000007', '191427210000', '19142721', '1025', '低腰内裤三条包', '/images/2018-07/19142721_0.jpg', '584', '7', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：94.6%棉5.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2835', '1', '191407230000001', '191407230000', '19140723', '1026', '高腰内裤三条包', '/images/2018-07/19140723_0.jpg', '584', '1', '1', '2', '4', '2', '1', '6', '5', '10', '128.00', '2', '面料：94%棉6%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2836', '1', '191407230000002', '191407230000', '19140723', '1026', '高腰内裤三条包', '/images/2018-07/19140723_0.jpg', '584', '2', '1', '2', '4', '2', '1', '6', '5', '10', '128.00', '2', '面料：94%棉6%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2837', '1', '191407230000003', '191407230000', '19140723', '1026', '高腰内裤三条包', '/images/2018-07/19140723_0.jpg', '584', '3', '1', '2', '4', '2', '1', '6', '5', '10', '128.00', '2', '面料：94%棉6%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2838', '1', '191407230000004', '191407230000', '19140723', '1026', '高腰内裤三条包', '/images/2018-07/19140723_0.jpg', '584', '4', '1', '2', '4', '2', '1', '6', '5', '10', '128.00', '2', '面料：94%棉6%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2839', '1', '191407230000005', '191407230000', '19140723', '1026', '高腰内裤三条包', '/images/2018-07/19140723_0.jpg', '584', '5', '1', '2', '4', '2', '1', '6', '5', '10', '128.00', '2', '面料：94%棉6%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2840', '1', '191407230000006', '191407230000', '19140723', '1026', '高腰内裤三条包', '/images/2018-07/19140723_0.jpg', '584', '6', '1', '2', '4', '2', '1', '6', '5', '10', '128.00', '2', '面料：94%棉6%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2841', '1', '191407230000007', '191407230000', '19140723', '1026', '高腰内裤三条包', '/images/2018-07/19140723_0.jpg', '584', '7', '1', '2', '4', '2', '1', '6', '5', '10', '128.00', '2', '面料：94%棉6%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2842', '1', '191417240000001', '191417240000', '19141724', '1027', '孕妇三条包', '/images/2018-07/19141724_0.jpg', '584', '1', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2843', '1', '191417240000002', '191417240000', '19141724', '1027', '孕妇三条包', '/images/2018-07/19141724_0.jpg', '584', '2', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2844', '1', '191417240000003', '191417240000', '19141724', '1027', '孕妇三条包', '/images/2018-07/19141724_0.jpg', '584', '3', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2845', '1', '191417240000004', '191417240000', '19141724', '1027', '孕妇三条包', '/images/2018-07/19141724_0.jpg', '584', '4', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2846', '1', '191417240000005', '191417240000', '19141724', '1027', '孕妇三条包', '/images/2018-07/19141724_0.jpg', '584', '5', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2847', '1', '191417240000006', '191417240000', '19141724', '1027', '孕妇三条包', '/images/2018-07/19141724_0.jpg', '584', '6', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2848', '1', '191417240000007', '191417240000', '19141724', '1027', '孕妇三条包', '/images/2018-07/19141724_0.jpg', '584', '7', '1', '2', '4', '2', '1', '6', '5', '10', '198.00', '2', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2849', '1', '191415040000001', '191415040000', '19141504', '1028', '高腰束腹裤两条包', '/images/2018-07/19141504_0.jpg', '584', '1', '1', '2', '4', '2', '1', '6', '5', '10', '148.00', '2', '面料：90%尼龙10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2850', '1', '191415040000002', '191415040000', '19141504', '1028', '高腰束腹裤两条包', '/images/2018-07/19141504_0.jpg', '584', '2', '1', '2', '4', '2', '1', '6', '5', '10', '148.00', '2', '面料：90%尼龙10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2851', '1', '191415040000003', '191415040000', '19141504', '1028', '高腰束腹裤两条包', '/images/2018-07/19141504_0.jpg', '584', '3', '1', '2', '4', '2', '1', '6', '5', '10', '148.00', '2', '面料：90%尼龙10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2852', '1', '191415040000004', '191415040000', '19141504', '1028', '高腰束腹裤两条包', '/images/2018-07/19141504_0.jpg', '584', '4', '1', '2', '4', '2', '1', '6', '5', '10', '148.00', '2', '面料：90%尼龙10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2853', '1', '191415040000005', '191415040000', '19141504', '1028', '高腰束腹裤两条包', '/images/2018-07/19141504_0.jpg', '584', '5', '1', '2', '4', '2', '1', '6', '5', '10', '148.00', '2', '面料：90%尼龙10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2854', '1', '191415040000006', '191415040000', '19141504', '1028', '高腰束腹裤两条包', '/images/2018-07/19141504_0.jpg', '584', '6', '1', '2', '4', '2', '1', '6', '5', '10', '148.00', '2', '面料：90%尼龙10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2855', '1', '191415040000007', '191415040000', '19141504', '1028', '高腰束腹裤两条包', '/images/2018-07/19141504_0.jpg', '584', '7', '1', '2', '4', '2', '1', '6', '5', '10', '148.00', '2', '面料：90%尼龙10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2856', '1', '191427140238001', '191427140238', '19142714', '1029', '条纹低腰内裤', '/images/2018-07/19142714_238.jpg', '114', '1', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2857', '1', '191427140238002', '191427140238', '19142714', '1029', '条纹低腰内裤', '/images/2018-07/19142714_238.jpg', '114', '2', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2858', '1', '191427140238003', '191427140238', '19142714', '1029', '条纹低腰内裤', '/images/2018-07/19142714_238.jpg', '114', '3', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2859', '1', '191427140238004', '191427140238', '19142714', '1029', '条纹低腰内裤', '/images/2018-07/19142714_238.jpg', '114', '4', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2860', '1', '191427140238005', '191427140238', '19142714', '1029', '条纹低腰内裤', '/images/2018-07/19142714_238.jpg', '114', '5', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2861', '1', '191427140238006', '191427140238', '19142714', '1029', '条纹低腰内裤', '/images/2018-07/19142714_238.jpg', '114', '6', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2862', '1', '191427140238007', '191427140238', '19142714', '1029', '条纹低腰内裤', '/images/2018-07/19142714_238.jpg', '114', '7', '1', '2', '4', '2', '1', '6', '5', '2', '78.00', '1', '面料：93%锦纶7%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2863', '1', '191317320163001', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '18', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2864', '1', '191317320163002', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '24', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2865', '1', '191317320163003', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '19', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2866', '1', '191317320163004', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '20', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2867', '1', '191317320163005', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '26', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2868', '1', '191317320163006', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '21', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2869', '1', '191317320163007', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '27', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2870', '1', '191317320163008', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '22', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2871', '1', '191317320163009', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '28', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2872', '1', '191317320163010', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '23', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2873', '1', '191317320163011', '191317320163', '19131732', '1030', '无痕可哺乳文胸', '/images/2018-07/19131732_163.jpg', '61', '29', '1', '2', '4', '1', '1', '6', '5', '1', '398.00', '4', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2874', '1', '191317330163001', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '18', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2875', '1', '191317330163002', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '24', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2876', '1', '191317330163003', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '19', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2877', '1', '191317330163004', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '20', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2878', '1', '191317330163005', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '26', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2879', '1', '191317330163006', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '21', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2880', '1', '191317330163007', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '27', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2881', '1', '191317330163008', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '22', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2882', '1', '191317330163009', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '28', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2883', '1', '191317330163010', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '23', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2884', '1', '191317330163011', '191317330163', '19131733', '1031', '撞色可哺乳文胸', '/images/2018-07/19131733_163.jpg', '61', '29', '1', '2', '4', '1', '1', '6', '5', '1', '368.00', '4', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2885', '1', '191327340403001', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '18', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2886', '1', '191327340403002', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '24', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2887', '1', '191327340403003', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '19', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2888', '1', '191327340403004', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '20', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2889', '1', '191327340403005', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '26', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2890', '1', '191327340403006', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '21', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2891', '1', '191327340403007', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '27', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2892', '1', '191327340403008', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '22', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2893', '1', '191327340403009', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '28', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2894', '1', '191327340403010', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '23', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2895', '1', '191327340403011', '191327340403', '19132734', '1032', '蕾丝拼接可哺乳背心', '/images/2018-07/19132734_403.jpg', '185', '29', '1', '2', '4', '1', '1', '6', '5', '4', '298.00', '3', '面料：80%锦纶20%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2896', '1', '191317350203001', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '18', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2897', '1', '191317350203002', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '24', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2898', '1', '191317350203003', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '19', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2899', '1', '191317350203004', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '20', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2900', '1', '191317350203005', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '26', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2901', '1', '191317350203006', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '21', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2902', '1', '191317350203007', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '27', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2903', '1', '191317350203008', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '22', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2904', '1', '191317350203009', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '28', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2905', '1', '191317350203010', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '23', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2906', '1', '191317350203011', '191317350203', '19131735', '1033', '蕾丝拼接可哺乳文胸', '/images/2018-07/19131735_203.jpg', '85', '29', '1', '2', '4', '1', '1', '6', '5', '2', '398.00', '4', '面料：89%锦纶11%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2907', '1', '191327360388001', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '18', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2908', '1', '191327360388002', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '24', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2909', '1', '191327360388003', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '19', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2910', '1', '191327360388004', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '20', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2911', '1', '191327360388005', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '26', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2912', '1', '191327360388006', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '21', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2913', '1', '191327360388007', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '27', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2914', '1', '191327360388008', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '22', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2915', '1', '191327360388009', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '28', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2916', '1', '191327360388010', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '23', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2917', '1', '191327360388011', '191327360388', '19132736', '1034', '可哺乳背心', '/images/2018-07/19132736_388.jpg', '182', '29', '1', '2', '4', '1', '1', '6', '5', '3', '248.00', '3', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2918', '1', '191407360388001', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '18', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2919', '1', '191407360388002', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '24', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2920', '1', '191407360388003', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '19', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2921', '1', '191407360388004', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '20', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2922', '1', '191407360388005', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '26', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2923', '1', '191407360388006', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '21', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2924', '1', '191407360388007', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '27', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2925', '1', '191407360388008', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '22', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2926', '1', '191407360388009', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '28', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2927', '1', '191407360388010', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '23', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2928', '1', '191407360388011', '191407360388', '19140736', '1035', '高腰内裤', '/images/2018-07/19140736_388.jpg', '182', '29', '1', '2', '4', '1', '1', '6', '5', '3', '68.00', '1', '面料：95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2929', '1', '191307380584001', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '18', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2930', '1', '191307380584002', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '24', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2931', '1', '191307380584003', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '19', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2932', '1', '191307380584004', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '20', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2933', '1', '191307380584005', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '26', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2934', '1', '191307380584006', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '21', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2935', '1', '191307380584007', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '27', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2936', '1', '191307380584008', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '22', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2937', '1', '191307380584009', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '28', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2938', '1', '191307380584010', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '23', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2939', '1', '191307380584011', '191307380584', '19130738', '1036', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_584.jpg', '316', '29', '1', '2', '4', '1', '1', '6', '5', '5', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2940', '1', '191307380164012', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '18', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2941', '1', '191307380164013', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '24', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2942', '1', '191307380164014', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '19', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2943', '1', '191307380164015', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '20', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2944', '1', '191307380164016', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '26', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2945', '1', '191307380164017', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '21', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2946', '1', '191307380164018', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '27', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2947', '1', '191307380164019', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '22', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2948', '1', '191307380164020', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '28', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2949', '1', '191307380164021', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '23', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2950', '1', '191307380164022', '191307380164', '19130738', '1037', '针织提花软钢圈哺乳文胸', '/images/2018-07/19130738_164.jpg', '62', '29', '1', '2', '4', '1', '1', '6', '5', '1', '228.00', '3', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2951', '1', '191425390203001', '191425390203', '19142539', '1038', '无痕低腰内裤', '/images/2018-07/19142539_203.jpg', '85', '1', '1', '2', '4', '2', '1', '6', '5', '2', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2952', '1', '191425390203002', '191425390203', '19142539', '1038', '无痕低腰内裤', '/images/2018-07/19142539_203.jpg', '85', '2', '1', '2', '4', '2', '1', '6', '5', '2', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2953', '1', '191425390203003', '191425390203', '19142539', '1038', '无痕低腰内裤', '/images/2018-07/19142539_203.jpg', '85', '3', '1', '2', '4', '2', '1', '6', '5', '2', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2954', '1', '191425390203004', '191425390203', '19142539', '1038', '无痕低腰内裤', '/images/2018-07/19142539_203.jpg', '85', '4', '1', '2', '4', '2', '1', '6', '5', '2', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2955', '1', '191425390203005', '191425390203', '19142539', '1038', '无痕低腰内裤', '/images/2018-07/19142539_203.jpg', '85', '5', '1', '2', '4', '2', '1', '6', '5', '2', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2956', '1', '191425390203006', '191425390203', '19142539', '1038', '无痕低腰内裤', '/images/2018-07/19142539_203.jpg', '85', '6', '1', '2', '4', '2', '1', '6', '5', '2', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2957', '1', '191425390203007', '191425390203', '19142539', '1038', '无痕低腰内裤', '/images/2018-07/19142539_203.jpg', '85', '7', '1', '2', '4', '2', '1', '6', '5', '2', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2958', '1', '191425390103008', '191425390103', '19142539', '1039', '无痕低腰内裤', '/images/2018-07/19142539_103.jpg', '13', '1', '1', '2', '4', '2', '1', '6', '5', '1', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2959', '1', '191425390103009', '191425390103', '19142539', '1039', '无痕低腰内裤', '/images/2018-07/19142539_103.jpg', '13', '2', '1', '2', '4', '2', '1', '6', '5', '1', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2960', '1', '191425390103010', '191425390103', '19142539', '1039', '无痕低腰内裤', '/images/2018-07/19142539_103.jpg', '13', '3', '1', '2', '4', '2', '1', '6', '5', '1', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2961', '1', '191425390103011', '191425390103', '19142539', '1039', '无痕低腰内裤', '/images/2018-07/19142539_103.jpg', '13', '4', '1', '2', '4', '2', '1', '6', '5', '1', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2962', '1', '191425390103012', '191425390103', '19142539', '1039', '无痕低腰内裤', '/images/2018-07/19142539_103.jpg', '13', '5', '1', '2', '4', '2', '1', '6', '5', '1', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2963', '1', '191425390103013', '191425390103', '19142539', '1039', '无痕低腰内裤', '/images/2018-07/19142539_103.jpg', '13', '6', '1', '2', '4', '2', '1', '6', '5', '1', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2964', '1', '191425390103014', '191425390103', '19142539', '1039', '无痕低腰内裤', '/images/2018-07/19142539_103.jpg', '13', '7', '1', '2', '4', '2', '1', '6', '5', '1', '98.00', '1', '面料：86%锦纶 14%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2965', '1', '191317380584001', '191317380584', '19131738', '1040', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_584.jpg', '316', '1', '1', '2', '4', '2', '1', '6', '5', '5', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2966', '1', '191317380584002', '191317380584', '19131738', '1040', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_584.jpg', '316', '2', '1', '2', '4', '2', '1', '6', '5', '5', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2967', '1', '191317380584003', '191317380584', '19131738', '1040', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_584.jpg', '316', '3', '1', '2', '4', '2', '1', '6', '5', '5', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2968', '1', '191317380584004', '191317380584', '19131738', '1040', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_584.jpg', '316', '4', '1', '2', '4', '2', '1', '6', '5', '5', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2969', '1', '191317380584005', '191317380584', '19131738', '1040', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_584.jpg', '316', '5', '1', '2', '4', '2', '1', '6', '5', '5', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2970', '1', '191317380584006', '191317380584', '19131738', '1040', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_584.jpg', '316', '6', '1', '2', '4', '2', '1', '6', '5', '5', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2971', '1', '191317380584007', '191317380584', '19131738', '1040', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_584.jpg', '316', '7', '1', '2', '4', '2', '1', '6', '5', '5', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2972', '1', '191317380163008', '191317380163', '19131738', '1041', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_163.jpg', '61', '1', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2973', '1', '191317380163009', '191317380163', '19131738', '1041', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_163.jpg', '61', '2', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2974', '1', '191317380163010', '191317380163', '19131738', '1041', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_163.jpg', '61', '3', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2975', '1', '191317380163011', '191317380163', '19131738', '1041', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_163.jpg', '61', '4', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2976', '1', '191317380163012', '191317380163', '19131738', '1041', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_163.jpg', '61', '5', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2977', '1', '191317380163013', '191317380163', '19131738', '1041', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_163.jpg', '61', '6', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2978', '1', '191317380163014', '191317380163', '19131738', '1041', '针织提花蕾丝边中腰内裤', '/images/2018-07/19131738_163.jpg', '61', '7', '1', '2', '4', '2', '1', '6', '5', '1', '78.00', '1', '面料：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2979', '1', '191187230164001', '191187230164', '19118723', '301', '孕妇打底裤', '/images/2018-07/19118723_164.jpg', '62', '3', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '46%棉46%莫代尔8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2980', '1', '191187230164002', '191187230164', '19118723', '301', '孕妇打底裤', '/images/2018-07/19118723_164.jpg', '62', '4', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '46%棉46%莫代尔8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2981', '1', '191187230164003', '191187230164', '19118723', '301', '孕妇打底裤', '/images/2018-07/19118723_164.jpg', '62', '5', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '46%棉46%莫代尔8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2982', '1', '191187230164004', '191187230164', '19118723', '301', '孕妇打底裤', '/images/2018-07/19118723_164.jpg', '62', '6', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '46%棉46%莫代尔8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2983', '1', '191187230103005', '191187230103', '19118723', '302', '孕妇打底裤', '/images/2018-07/19118723_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '46%棉46%莫代尔8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2984', '1', '191187230103006', '191187230103', '19118723', '302', '孕妇打底裤', '/images/2018-07/19118723_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '46%棉46%莫代尔8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2985', '1', '191187230103007', '191187230103', '19118723', '302', '孕妇打底裤', '/images/2018-07/19118723_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '46%棉46%莫代尔8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2986', '1', '191187230103008', '191187230103', '19118723', '302', '孕妇打底裤', '/images/2018-07/19118723_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '46%棉46%莫代尔8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2987', '1', '191187240103001', '191187240103', '19118724', '303', '撞色织带打底裤', '/images/2018-07/19118724_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2988', '1', '191187240103002', '191187240103', '19118724', '303', '撞色织带打底裤', '/images/2018-07/19118724_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2989', '1', '191187240103003', '191187240103', '19118724', '303', '撞色织带打底裤', '/images/2018-07/19118724_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2990', '1', '191187240103004', '191187240103', '19118724', '303', '撞色织带打底裤', '/images/2018-07/19118724_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2991', '1', '191187250164001', '191187250164', '19118725', '304', '侧边印字打底裤', '/images/2018-07/19118725_164.jpg', '62', '3', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2992', '1', '191187250164002', '191187250164', '19118725', '304', '侧边印字打底裤', '/images/2018-07/19118725_164.jpg', '62', '4', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2993', '1', '191187250164003', '191187250164', '19118725', '304', '侧边印字打底裤', '/images/2018-07/19118725_164.jpg', '62', '5', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2994', '1', '191187250164004', '191187250164', '19118725', '304', '侧边印字打底裤', '/images/2018-07/19118725_164.jpg', '62', '6', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2995', '1', '191187250103005', '191187250103', '19118725', '305', '侧边印字打底裤', '/images/2018-07/19118725_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2996', '1', '191187250103006', '191187250103', '19118725', '305', '侧边印字打底裤', '/images/2018-07/19118725_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2997', '1', '191187250103007', '191187250103', '19118725', '305', '侧边印字打底裤', '/images/2018-07/19118725_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2998', '1', '191187250103008', '191187250103', '19118725', '305', '侧边印字打底裤', '/images/2018-07/19118725_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '268.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('2999', '1', '191187260164001', '191187260164', '19118726', '306', '孕妇打底裤', '/images/2018-07/19118726_164.jpg', '62', '3', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3000', '1', '191187260164002', '191187260164', '19118726', '306', '孕妇打底裤', '/images/2018-07/19118726_164.jpg', '62', '4', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3001', '1', '191187260164003', '191187260164', '19118726', '306', '孕妇打底裤', '/images/2018-07/19118726_164.jpg', '62', '5', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3002', '1', '191187260164004', '191187260164', '19118726', '306', '孕妇打底裤', '/images/2018-07/19118726_164.jpg', '62', '6', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3003', '1', '191187260103005', '191187260103', '19118726', '307', '孕妇打底裤', '/images/2018-07/19118726_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3004', '1', '191187260103006', '191187260103', '19118726', '307', '孕妇打底裤', '/images/2018-07/19118726_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3005', '1', '191187260103007', '191187260103', '19118726', '307', '孕妇打底裤', '/images/2018-07/19118726_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3006', '1', '191187260103008', '191187260103', '19118726', '307', '孕妇打底裤', '/images/2018-07/19118726_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '198.00', '2', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3007', '1', '191185220103001', '191185220103', '19118522', '308', '斜纹梭织运动裤', '/images/2018-07/19118522_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%涤纶                       配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3008', '1', '191185220103002', '191185220103', '19118522', '308', '斜纹梭织运动裤', '/images/2018-07/19118522_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%涤纶                       配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3009', '1', '191185220103003', '191185220103', '19118522', '308', '斜纹梭织运动裤', '/images/2018-07/19118522_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%涤纶                       配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3010', '1', '191185220103004', '191185220103', '19118522', '308', '斜纹梭织运动裤', '/images/2018-07/19118522_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%涤纶                       配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3011', '1', '191185450103001', '191185450103', '19118545', '309', '撞色织带梭织裤', '/images/2018-07/19118545_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：48%人棉16%锦纶36%涤纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3012', '1', '191185450103002', '191185450103', '19118545', '309', '撞色织带梭织裤', '/images/2018-07/19118545_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：48%人棉16%锦纶36%涤纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3013', '1', '191185450103003', '191185450103', '19118545', '309', '撞色织带梭织裤', '/images/2018-07/19118545_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：48%人棉16%锦纶36%涤纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3014', '1', '191185450103004', '191185450103', '19118545', '309', '撞色织带梭织裤', '/images/2018-07/19118545_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：48%人棉16%锦纶36%涤纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3015', '1', '191185450163005', '191185450163', '19118545', '310', '撞色织带梭织裤', '/images/2018-07/19118545_163.jpg', '61', '3', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：48%人棉16%锦纶36%涤纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3016', '1', '191185450163006', '191185450163', '19118545', '310', '撞色织带梭织裤', '/images/2018-07/19118545_163.jpg', '61', '4', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：48%人棉16%锦纶36%涤纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3017', '1', '191185450163007', '191185450163', '19118545', '310', '撞色织带梭织裤', '/images/2018-07/19118545_163.jpg', '61', '5', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：48%人棉16%锦纶36%涤纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3018', '1', '191185450163008', '191185450163', '19118545', '310', '撞色织带梭织裤', '/images/2018-07/19118545_163.jpg', '61', '6', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：48%人棉16%锦纶36%涤纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3019', '1', '191185280163001', '191185280163', '19118528', '311', '梭织锥形裤', '/images/2018-07/19118528_163.jpg', '61', '3', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%粘纤               配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3020', '1', '191185280163002', '191185280163', '19118528', '311', '梭织锥形裤', '/images/2018-07/19118528_163.jpg', '61', '4', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%粘纤               配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3021', '1', '191185280163003', '191185280163', '19118528', '311', '梭织锥形裤', '/images/2018-07/19118528_163.jpg', '61', '5', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%粘纤               配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3022', '1', '191185280163004', '191185280163', '19118528', '311', '梭织锥形裤', '/images/2018-07/19118528_163.jpg', '61', '6', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%粘纤               配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3023', '1', '191185280103005', '191185280103', '19118528', '312', '梭织锥形裤', '/images/2018-07/19118528_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%粘纤               配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3024', '1', '191185280103006', '191185280103', '19118528', '312', '梭织锥形裤', '/images/2018-07/19118528_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%粘纤               配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3025', '1', '191185280103007', '191185280103', '19118528', '312', '梭织锥形裤', '/images/2018-07/19118528_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%粘纤               配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3026', '1', '191185280103008', '191185280103', '19118528', '312', '梭织锥形裤', '/images/2018-07/19118528_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：100%粘纤               配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3027', '1', '191185290383001', '191185290383', '19118529', '313', '织带装饰梭织裤', '/images/2018-07/19118529_383.jpg', '177', '3', '1', '1', '17', '7', '1', '8', '5', '3', '328.00', '4', '主：45%人棉37%涤纶18%锦纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3028', '1', '191185290383002', '191185290383', '19118529', '313', '织带装饰梭织裤', '/images/2018-07/19118529_383.jpg', '177', '4', '1', '1', '17', '7', '1', '8', '5', '3', '328.00', '4', '主：45%人棉37%涤纶18%锦纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3029', '1', '191185290383003', '191185290383', '19118529', '313', '织带装饰梭织裤', '/images/2018-07/19118529_383.jpg', '177', '5', '1', '1', '17', '7', '1', '8', '5', '3', '328.00', '4', '主：45%人棉37%涤纶18%锦纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3030', '1', '191185290383004', '191185290383', '19118529', '313', '织带装饰梭织裤', '/images/2018-07/19118529_383.jpg', '177', '6', '1', '1', '17', '7', '1', '8', '5', '3', '328.00', '4', '主：45%人棉37%涤纶18%锦纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3031', '1', '191185290103005', '191185290103', '19118529', '314', '织带装饰梭织裤', '/images/2018-07/19118529_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：45%人棉37%涤纶18%锦纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3032', '1', '191185290103006', '191185290103', '19118529', '314', '织带装饰梭织裤', '/images/2018-07/19118529_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：45%人棉37%涤纶18%锦纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3033', '1', '191185290103007', '191185290103', '19118529', '314', '织带装饰梭织裤', '/images/2018-07/19118529_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：45%人棉37%涤纶18%锦纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3034', '1', '191185290103008', '191185290103', '19118529', '314', '织带装饰梭织裤', '/images/2018-07/19118529_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '328.00', '4', '主：45%人棉37%涤纶18%锦纶    配：92%棉8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3035', '1', '191185310103001', '191185310103', '19118531', '315', '梭织阔腿裤', '/images/2018-07/19118531_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '528.00', '6', '主：100%涤纶                 配1:92%棉8%氨纶                   配2:100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3036', '1', '191185310103002', '191185310103', '19118531', '315', '梭织阔腿裤', '/images/2018-07/19118531_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '528.00', '6', '主：100%涤纶                 配1:92%棉8%氨纶                   配2:100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3037', '1', '191185310103003', '191185310103', '19118531', '315', '梭织阔腿裤', '/images/2018-07/19118531_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '528.00', '6', '主：100%涤纶                 配1:92%棉8%氨纶                   配2:100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3038', '1', '191185310103004', '191185310103', '19118531', '315', '梭织阔腿裤', '/images/2018-07/19118531_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '528.00', '6', '主：100%涤纶                 配1:92%棉8%氨纶                   配2:100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3039', '1', '191181470743001', '191181470743', '19118147', '316', '牛仔铅笔裤', '/images/2018-07/19118147_743.jpg', '429', '3', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '主：98.6%棉1.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3040', '1', '191181470743002', '191181470743', '19118147', '316', '牛仔铅笔裤', '/images/2018-07/19118147_743.jpg', '429', '4', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '主：98.6%棉1.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3041', '1', '191181470743003', '191181470743', '19118147', '316', '牛仔铅笔裤', '/images/2018-07/19118147_743.jpg', '429', '5', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '主：98.6%棉1.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3042', '1', '191181470743004', '191181470743', '19118147', '316', '牛仔铅笔裤', '/images/2018-07/19118147_743.jpg', '429', '6', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '主：98.6%棉1.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3043', '1', '191181470793005', '191181470793', '19118147', '317', '牛仔铅笔裤', '/images/2018-07/19118147_793.jpg', '462', '3', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '主：98.6%棉1.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3044', '1', '191181470793006', '191181470793', '19118147', '317', '牛仔铅笔裤', '/images/2018-07/19118147_793.jpg', '462', '4', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '主：98.6%棉1.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3045', '1', '191181470793007', '191181470793', '19118147', '317', '牛仔铅笔裤', '/images/2018-07/19118147_793.jpg', '462', '5', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '主：98.6%棉1.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3046', '1', '191181470793008', '191181470793', '19118147', '317', '牛仔铅笔裤', '/images/2018-07/19118147_793.jpg', '462', '6', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '主：98.6%棉1.4%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3047', '1', '192181480743001', '192181480743', '19218148', '318', '牛仔短裤', '/images/2018-07/19218148_743.jpg', '429', '3', '1', '1', '17', '7', '1', '8', '5', '7', '298.00', '3', '主：58%棉21%粘纤20%聚酯纤维1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3048', '1', '192181480743002', '192181480743', '19218148', '318', '牛仔短裤', '/images/2018-07/19218148_743.jpg', '429', '4', '1', '1', '17', '7', '1', '8', '5', '7', '298.00', '3', '主：58%棉21%粘纤20%聚酯纤维1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3049', '1', '192181480743003', '192181480743', '19218148', '318', '牛仔短裤', '/images/2018-07/19218148_743.jpg', '429', '5', '1', '1', '17', '7', '1', '8', '5', '7', '298.00', '3', '主：58%棉21%粘纤20%聚酯纤维1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3050', '1', '192181480743004', '192181480743', '19218148', '318', '牛仔短裤', '/images/2018-07/19218148_743.jpg', '429', '6', '1', '1', '17', '7', '1', '8', '5', '7', '298.00', '3', '主：58%棉21%粘纤20%聚酯纤维1%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3051', '1', '191181020793001', '191181020793', '19118102', '319', '脚口毛边牛仔铅笔裤', '/images/2018-07/19118102_793.jpg', '462', '3', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '主：75%棉21%涤纶2%人棉2%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3052', '1', '191181020793002', '191181020793', '19118102', '319', '脚口毛边牛仔铅笔裤', '/images/2018-07/19118102_793.jpg', '462', '4', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '主：75%棉21%涤纶2%人棉2%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3053', '1', '191181020793003', '191181020793', '19118102', '319', '脚口毛边牛仔铅笔裤', '/images/2018-07/19118102_793.jpg', '462', '5', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '主：75%棉21%涤纶2%人棉2%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3054', '1', '191181020793004', '191181020793', '19118102', '319', '脚口毛边牛仔铅笔裤', '/images/2018-07/19118102_793.jpg', '462', '6', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '主：75%棉21%涤纶2%人棉2%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3055', '1', '191181040743001', '191181040743', '19118104', '320', '水洗牛仔九分喇叭裤', '/images/2018-07/19118104_743.jpg', '429', '3', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3056', '1', '191181040743002', '191181040743', '19118104', '320', '水洗牛仔九分喇叭裤', '/images/2018-07/19118104_743.jpg', '429', '4', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3057', '1', '191181040743003', '191181040743', '19118104', '320', '水洗牛仔九分喇叭裤', '/images/2018-07/19118104_743.jpg', '429', '5', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3058', '1', '191181040743004', '191181040743', '19118104', '320', '水洗牛仔九分喇叭裤', '/images/2018-07/19118104_743.jpg', '429', '6', '1', '1', '17', '7', '1', '8', '5', '7', '398.00', '4', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3059', '1', '191181330233001', '191181330233', '19118133', '321', '针织牛仔铅笔裤', '/images/2018-07/19118133_233.jpg', '109', '3', '1', '1', '17', '7', '1', '8', '5', '2', '428.00', '5', '主：58%棉27%涤纶15%氨纶     配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3060', '1', '191181330233002', '191181330233', '19118133', '321', '针织牛仔铅笔裤', '/images/2018-07/19118133_233.jpg', '109', '4', '1', '1', '17', '7', '1', '8', '5', '2', '428.00', '5', '主：58%棉27%涤纶15%氨纶     配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3061', '1', '191181330233003', '191181330233', '19118133', '321', '针织牛仔铅笔裤', '/images/2018-07/19118133_233.jpg', '109', '5', '1', '1', '17', '7', '1', '8', '5', '2', '428.00', '5', '主：58%棉27%涤纶15%氨纶     配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3062', '1', '191181330233004', '191181330233', '19118133', '321', '针织牛仔铅笔裤', '/images/2018-07/19118133_233.jpg', '109', '6', '1', '1', '17', '7', '1', '8', '5', '2', '428.00', '5', '主：58%棉27%涤纶15%氨纶     配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3063', '1', '191181340743001', '191181340743', '19118134', '322', '牛仔阔腿裤', '/images/2018-07/19118134_743.jpg', '429', '3', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3064', '1', '191181340743002', '191181340743', '19118134', '322', '牛仔阔腿裤', '/images/2018-07/19118134_743.jpg', '429', '4', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3065', '1', '191181340743003', '191181340743', '19118134', '322', '牛仔阔腿裤', '/images/2018-07/19118134_743.jpg', '429', '5', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3066', '1', '191181340743004', '191181340743', '19118134', '322', '牛仔阔腿裤', '/images/2018-07/19118134_743.jpg', '429', '6', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3067', '1', '191167350203001', '191167350203', '19116735', '323', '可哺乳背带裤', '/images/2018-07/19116735_203.jpg', '85', '3', '1', '1', '17', '16', '1', '8', '5', '2', '528.00', '6', '主：48%涤纶48%粘纤4%氨纶     配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3068', '1', '191167350203002', '191167350203', '19116735', '323', '可哺乳背带裤', '/images/2018-07/19116735_203.jpg', '85', '4', '1', '1', '17', '16', '1', '8', '5', '2', '528.00', '6', '主：48%涤纶48%粘纤4%氨纶     配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3069', '1', '191167350203003', '191167350203', '19116735', '323', '可哺乳背带裤', '/images/2018-07/19116735_203.jpg', '85', '5', '1', '1', '17', '16', '1', '8', '5', '2', '528.00', '6', '主：48%涤纶48%粘纤4%氨纶     配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3070', '1', '191167350103004', '191167350103', '19116735', '324', '可哺乳背带裤', '/images/2018-07/19116735_103.jpg', '13', '3', '1', '1', '17', '16', '1', '8', '5', '1', '528.00', '6', '主：48%涤纶48%粘纤4%氨纶     配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3071', '1', '191167350103005', '191167350103', '19116735', '324', '可哺乳背带裤', '/images/2018-07/19116735_103.jpg', '13', '4', '1', '1', '17', '16', '1', '8', '5', '1', '528.00', '6', '主：48%涤纶48%粘纤4%氨纶     配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3072', '1', '191167350103006', '191167350103', '19116735', '324', '可哺乳背带裤', '/images/2018-07/19116735_103.jpg', '13', '5', '1', '1', '17', '16', '1', '8', '5', '1', '528.00', '6', '主：48%涤纶48%粘纤4%氨纶     配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3073', '1', '192187360103001', '192187360103', '19218736', '325', '无痕孕妇打底裤', '/images/2018-07/19218736_103.jpg', '13', '3', '1', '1', '17', '7', '2', '8', '6', '1', '98.00', '1', '95%莫代尔5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3074', '1', '192187360103002', '192187360103', '19218736', '325', '无痕孕妇打底裤', '/images/2018-07/19218736_103.jpg', '13', '4', '1', '1', '17', '7', '2', '8', '6', '1', '98.00', '1', '95%莫代尔5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3075', '1', '192187360103003', '192187360103', '19218736', '325', '无痕孕妇打底裤', '/images/2018-07/19218736_103.jpg', '13', '5', '1', '1', '17', '7', '2', '8', '6', '1', '98.00', '1', '95%莫代尔5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3076', '1', '192187360103004', '192187360103', '19218736', '325', '无痕孕妇打底裤', '/images/2018-07/19218736_103.jpg', '13', '6', '1', '1', '17', '7', '2', '8', '6', '1', '98.00', '1', '95%莫代尔5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3077', '1', '192187360203005', '192187360203', '19218736', '326', '无痕孕妇打底裤', '/images/2018-07/19218736_203.jpg', '85', '3', '1', '1', '17', '7', '2', '8', '6', '2', '98.00', '1', '95%莫代尔5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3078', '1', '192187360203006', '192187360203', '19218736', '326', '无痕孕妇打底裤', '/images/2018-07/19218736_203.jpg', '85', '4', '1', '1', '17', '7', '2', '8', '6', '2', '98.00', '1', '95%莫代尔5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3079', '1', '192187360203007', '192187360203', '19218736', '326', '无痕孕妇打底裤', '/images/2018-07/19218736_203.jpg', '85', '5', '1', '1', '17', '7', '2', '8', '6', '2', '98.00', '1', '95%莫代尔5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3080', '1', '192187360203008', '192187360203', '19218736', '326', '无痕孕妇打底裤', '/images/2018-07/19218736_203.jpg', '85', '6', '1', '1', '17', '7', '2', '8', '6', '2', '98.00', '1', '95%莫代尔5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3081', '1', '192186370573001', '192186370573', '19218637', '327', '孕妇七分阔腿裤', '/images/2018-07/19218637_573.jpg', '307', '3', '1', '1', '17', '7', '2', '8', '6', '5', '398.00', '4', '主：48%粘纤16%锦纶36%涤纶   配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3082', '1', '192186370573002', '192186370573', '19218637', '327', '孕妇七分阔腿裤', '/images/2018-07/19218637_573.jpg', '307', '4', '1', '1', '17', '7', '2', '8', '6', '5', '398.00', '4', '主：48%粘纤16%锦纶36%涤纶   配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3083', '1', '192186370573003', '192186370573', '19218637', '327', '孕妇七分阔腿裤', '/images/2018-07/19218637_573.jpg', '307', '5', '1', '1', '17', '7', '2', '8', '6', '5', '398.00', '4', '主：48%粘纤16%锦纶36%涤纶   配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3084', '1', '192186370573004', '192186370573', '19218637', '327', '孕妇七分阔腿裤', '/images/2018-07/19218637_573.jpg', '307', '6', '1', '1', '17', '7', '2', '8', '6', '5', '398.00', '4', '主：48%粘纤16%锦纶36%涤纶   配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3085', '1', '192186370103005', '192186370103', '19218637', '328', '孕妇七分阔腿裤', '/images/2018-07/19218637_103.jpg', '13', '3', '1', '1', '17', '7', '2', '8', '6', '1', '398.00', '4', '主：48%粘纤16%锦纶36%涤纶   配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3086', '1', '192186370103006', '192186370103', '19218637', '328', '孕妇七分阔腿裤', '/images/2018-07/19218637_103.jpg', '13', '4', '1', '1', '17', '7', '2', '8', '6', '1', '398.00', '4', '主：48%粘纤16%锦纶36%涤纶   配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3087', '1', '192186370103007', '192186370103', '19218637', '328', '孕妇七分阔腿裤', '/images/2018-07/19218637_103.jpg', '13', '5', '1', '1', '17', '7', '2', '8', '6', '1', '398.00', '4', '主：48%粘纤16%锦纶36%涤纶   配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3088', '1', '192186370103008', '192186370103', '19218637', '328', '孕妇七分阔腿裤', '/images/2018-07/19218637_103.jpg', '13', '6', '1', '1', '17', '7', '2', '8', '6', '1', '398.00', '4', '主：48%粘纤16%锦纶36%涤纶   配：97%棉3%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3089', '1', '192187390103001', '192187390103', '19218739', '329', '针织阔腿裤', '/images/2018-07/19218739_103.jpg', '13', '3', '1', '1', '17', '7', '2', '8', '6', '1', '468.00', '5', '50%锦纶42%粘仟8%氨纶  ', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3090', '1', '192187390103002', '192187390103', '19218739', '329', '针织阔腿裤', '/images/2018-07/19218739_103.jpg', '13', '4', '1', '1', '17', '7', '2', '8', '6', '1', '468.00', '5', '50%锦纶42%粘仟8%氨纶  ', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3091', '1', '192187390103003', '192187390103', '19218739', '329', '针织阔腿裤', '/images/2018-07/19218739_103.jpg', '13', '5', '1', '1', '17', '7', '2', '8', '6', '1', '468.00', '5', '50%锦纶42%粘仟8%氨纶  ', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3092', '1', '192187390103004', '192187390103', '19218739', '329', '针织阔腿裤', '/images/2018-07/19218739_103.jpg', '13', '6', '1', '1', '17', '7', '2', '8', '6', '1', '468.00', '5', '50%锦纶42%粘仟8%氨纶  ', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3093', '1', '192187410103001', '192187410103', '19218741', '330', '装饰织带阔腿裤', '/images/2018-07/19218741_103.jpg', '13', '3', '1', '1', '17', '7', '2', '8', '6', '1', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3094', '1', '192187410103002', '192187410103', '19218741', '330', '装饰织带阔腿裤', '/images/2018-07/19218741_103.jpg', '13', '4', '1', '1', '17', '7', '2', '8', '6', '1', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3095', '1', '192187410103003', '192187410103', '19218741', '330', '装饰织带阔腿裤', '/images/2018-07/19218741_103.jpg', '13', '5', '1', '1', '17', '7', '2', '8', '6', '1', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3096', '1', '192187410103004', '192187410103', '19218741', '330', '装饰织带阔腿裤', '/images/2018-07/19218741_103.jpg', '13', '6', '1', '1', '17', '7', '2', '8', '6', '1', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3097', '1', '192187410163005', '192187410163', '19218741', '331', '装饰织带阔腿裤', '/images/2018-07/19218741_163.jpg', '61', '3', '1', '1', '17', '7', '2', '8', '6', '1', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3098', '1', '192187410163006', '192187410163', '19218741', '331', '装饰织带阔腿裤', '/images/2018-07/19218741_163.jpg', '61', '4', '1', '1', '17', '7', '2', '8', '6', '1', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3099', '1', '192187410163007', '192187410163', '19218741', '331', '装饰织带阔腿裤', '/images/2018-07/19218741_163.jpg', '61', '5', '1', '1', '17', '7', '2', '8', '6', '1', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3100', '1', '192187410163008', '192187410163', '19218741', '331', '装饰织带阔腿裤', '/images/2018-07/19218741_163.jpg', '61', '6', '1', '1', '17', '7', '2', '8', '6', '1', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3101', '1', '192187410583009', '192187410583', '19218741', '332', '装饰织带阔腿裤', '/images/2018-07/19218741_583.jpg', '315', '3', '1', '1', '17', '7', '2', '8', '6', '5', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3102', '1', '192187410583010', '192187410583', '19218741', '332', '装饰织带阔腿裤', '/images/2018-07/19218741_583.jpg', '315', '4', '1', '1', '17', '7', '2', '8', '6', '5', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3103', '1', '192187410583011', '192187410583', '19218741', '332', '装饰织带阔腿裤', '/images/2018-07/19218741_583.jpg', '315', '5', '1', '1', '17', '7', '2', '8', '6', '5', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3104', '1', '192187410583012', '192187410583', '19218741', '332', '装饰织带阔腿裤', '/images/2018-07/19218741_583.jpg', '315', '6', '1', '1', '17', '7', '2', '8', '6', '5', '298.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3105', '1', '192187420583001', '192187420583', '19218742', '333', '装饰织带短裤', '/images/2018-07/19218742_583.jpg', '315', '3', '1', '1', '17', '7', '2', '8', '6', '5', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3106', '1', '192187420583002', '192187420583', '19218742', '333', '装饰织带短裤', '/images/2018-07/19218742_583.jpg', '315', '4', '1', '1', '17', '7', '2', '8', '6', '5', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3107', '1', '192187420583003', '192187420583', '19218742', '333', '装饰织带短裤', '/images/2018-07/19218742_583.jpg', '315', '5', '1', '1', '17', '7', '2', '8', '6', '5', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3108', '1', '192187420583004', '192187420583', '19218742', '333', '装饰织带短裤', '/images/2018-07/19218742_583.jpg', '315', '6', '1', '1', '17', '7', '2', '8', '6', '5', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3109', '1', '192187420103005', '192187420103', '19218742', '334', '装饰织带短裤', '/images/2018-07/19218742_103.jpg', '13', '3', '1', '1', '17', '7', '2', '8', '6', '1', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3110', '1', '192187420103006', '192187420103', '19218742', '334', '装饰织带短裤', '/images/2018-07/19218742_103.jpg', '13', '4', '1', '1', '17', '7', '2', '8', '6', '1', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3111', '1', '192187420103007', '192187420103', '19218742', '334', '装饰织带短裤', '/images/2018-07/19218742_103.jpg', '13', '5', '1', '1', '17', '7', '2', '8', '6', '1', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3112', '1', '192187420103008', '192187420103', '19218742', '334', '装饰织带短裤', '/images/2018-07/19218742_103.jpg', '13', '6', '1', '1', '17', '7', '2', '8', '6', '1', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3113', '1', '192181440743001', '192181440743', '19218144', '335', '水洗牛仔磨破短裤', '/images/2018-07/19218144_743.jpg', '429', '3', '1', '1', '17', '7', '2', '8', '6', '7', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3114', '1', '192181440743002', '192181440743', '19218144', '335', '水洗牛仔磨破短裤', '/images/2018-07/19218144_743.jpg', '429', '4', '1', '1', '17', '7', '2', '8', '6', '7', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3115', '1', '192181440743003', '192181440743', '19218144', '335', '水洗牛仔磨破短裤', '/images/2018-07/19218144_743.jpg', '429', '5', '1', '1', '17', '7', '2', '8', '6', '7', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3116', '1', '192181440743004', '192181440743', '19218144', '335', '水洗牛仔磨破短裤', '/images/2018-07/19218144_743.jpg', '429', '6', '1', '1', '17', '7', '2', '8', '6', '7', '248.00', '3', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3117', '1', '192107170719001', '192107170719', '19210717', '350', '可哺乳T恤', '/images/2018-07/19210717_719.jpg', '417', '3', '1', '1', '1', '10', '1', '8', '5', '7', '368.00', '4', '95%粘纤 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3118', '1', '192107170719002', '192107170719', '19210717', '350', '可哺乳T恤', '/images/2018-07/19210717_719.jpg', '417', '4', '1', '1', '1', '10', '1', '8', '5', '7', '368.00', '4', '95%粘纤 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3119', '1', '192107170719003', '192107170719', '19210717', '350', '可哺乳T恤', '/images/2018-07/19210717_719.jpg', '417', '5', '1', '1', '1', '10', '1', '8', '5', '7', '368.00', '4', '95%粘纤 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3120', '1', '192107190588001', '192107190588', '19210719', '351', '印花T恤', '/images/2018-07/19210719_588.jpg', '320', '3', '1', '1', '1', '10', '1', '8', '5', '5', '268.00', '3', '82%锦纶 10%粘纤 8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3121', '1', '192107190588002', '192107190588', '19210719', '351', '印花T恤', '/images/2018-07/19210719_588.jpg', '320', '4', '1', '1', '1', '10', '1', '8', '5', '5', '268.00', '3', '82%锦纶 10%粘纤 8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3122', '1', '192107190588003', '192107190588', '19210719', '351', '印花T恤', '/images/2018-07/19210719_588.jpg', '320', '5', '1', '1', '1', '10', '1', '8', '5', '5', '268.00', '3', '82%锦纶 10%粘纤 8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3123', '1', '192107190748004', '192107190748', '19210719', '352', '印花T恤', '/images/2018-07/19210719_748.jpg', '434', '3', '1', '1', '1', '10', '1', '8', '5', '7', '268.00', '3', '82%锦纶 10%粘纤 8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3124', '1', '192107190748005', '192107190748', '19210719', '352', '印花T恤', '/images/2018-07/19210719_748.jpg', '434', '4', '1', '1', '1', '10', '1', '8', '5', '7', '268.00', '3', '82%锦纶 10%粘纤 8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3125', '1', '192107190748006', '192107190748', '19210719', '352', '印花T恤', '/images/2018-07/19210719_748.jpg', '434', '5', '1', '1', '1', '10', '1', '8', '5', '7', '268.00', '3', '82%锦纶 10%粘纤 8%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3126', '1', '191152280236001', '191152280236', '19115228', '353', '人棉印花上衣', '/images/2018-07/19115228_236.jpg', '112', '3', '1', '1', '1', '6', '1', '8', '5', '2', '328.00', '4', '100%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3127', '1', '191152280236002', '191152280236', '19115228', '353', '人棉印花上衣', '/images/2018-07/19115228_236.jpg', '112', '4', '1', '1', '1', '6', '1', '8', '5', '2', '328.00', '4', '100%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3128', '1', '191152280236003', '191152280236', '19115228', '353', '人棉印花上衣', '/images/2018-07/19115228_236.jpg', '112', '5', '1', '1', '1', '6', '1', '8', '5', '2', '328.00', '4', '100%粘纤', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3129', '1', '192152010233001', '192152010233', '19215201', '354', '针梭相拼绣花上衣', '/images/2018-07/19215201_233.jpg', '109', '3', '1', '1', '1', '6', '1', '8', '5', '2', '298.00', '3', '主：100%棉 配：100%棉 刺绣：100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3130', '1', '192152010233002', '192152010233', '19215201', '354', '针梭相拼绣花上衣', '/images/2018-07/19215201_233.jpg', '109', '4', '1', '1', '1', '6', '1', '8', '5', '2', '298.00', '3', '主：100%棉 配：100%棉 刺绣：100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3131', '1', '192152010233003', '192152010233', '19215201', '354', '针梭相拼绣花上衣', '/images/2018-07/19215201_233.jpg', '109', '5', '1', '1', '1', '6', '1', '8', '5', '2', '298.00', '3', '主：100%棉 配：100%棉 刺绣：100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3132', '1', '192152010933004', '192152010933', '19215201', '355', '针梭相拼绣花上衣', '/images/2018-07/19215201_933.jpg', '545', '3', '1', '1', '1', '6', '1', '8', '5', '9', '298.00', '3', '主：100%棉 配：100%棉 刺绣：100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3133', '1', '192152010933005', '192152010933', '19215201', '355', '针梭相拼绣花上衣', '/images/2018-07/19215201_933.jpg', '545', '4', '1', '1', '1', '6', '1', '8', '5', '9', '298.00', '3', '主：100%棉 配：100%棉 刺绣：100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3134', '1', '192152010933006', '192152010933', '19215201', '355', '针梭相拼绣花上衣', '/images/2018-07/19215201_933.jpg', '545', '5', '1', '1', '1', '6', '1', '8', '5', '9', '298.00', '3', '主：100%棉 配：100%棉 刺绣：100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3135', '1', '191152230105001', '191152230105', '19115223', '356', '假两件露肩上衣', '/images/2018-07/19115223_105.jpg', '15', '3', '1', '1', '1', '6', '1', '8', '5', '1', '398.00', '4', '主：100%棉 配：95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3136', '1', '191152230105002', '191152230105', '19115223', '356', '假两件露肩上衣', '/images/2018-07/19115223_105.jpg', '15', '4', '1', '1', '1', '6', '1', '8', '5', '1', '398.00', '4', '主：100%棉 配：95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3137', '1', '191152230105003', '191152230105', '19115223', '356', '假两件露肩上衣', '/images/2018-07/19115223_105.jpg', '15', '4', '1', '1', '1', '6', '1', '8', '5', '1', '398.00', '4', '主：100%棉 配：95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3138', '1', '191152240233001', '191152240233', '19115224', '357', '梭织棉上衣', '/images/2018-07/19115224_233.jpg', '109', '3', '1', '1', '1', '6', '1', '8', '5', '2', '328.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3139', '1', '191152240233002', '191152240233', '19115224', '357', '梭织棉上衣', '/images/2018-07/19115224_233.jpg', '109', '4', '1', '1', '1', '6', '1', '8', '5', '2', '328.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3140', '1', '191152240233003', '191152240233', '19115224', '357', '梭织棉上衣', '/images/2018-07/19115224_233.jpg', '109', '5', '1', '1', '1', '6', '1', '8', '5', '2', '328.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3141', '1', '191152220748001', '191152220748', '19115222', '358', '印花可哺乳上衣', '/images/2018-07/19115222_748.jpg', '434', '3', '1', '1', '1', '6', '1', '8', '5', '7', '358.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3142', '1', '191152220748002', '191152220748', '19115222', '358', '印花可哺乳上衣', '/images/2018-07/19115222_748.jpg', '434', '4', '1', '1', '1', '6', '1', '8', '5', '7', '358.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3143', '1', '191152220748003', '191152220748', '19115222', '358', '印花可哺乳上衣', '/images/2018-07/19115222_748.jpg', '434', '5', '1', '1', '1', '6', '1', '8', '5', '7', '358.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3144', '1', '191157250589001', '191157250589', '19115725', '359', '针梭相拼上衣', '/images/2018-07/19115725_589.jpg', '321', '3', '1', '1', '1', '6', '1', '8', '5', '5', '328.00', '4', '主：95%棉5%氨纶 配：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3145', '1', '191157250589002', '191157250589', '19115725', '359', '针梭相拼上衣', '/images/2018-07/19115725_589.jpg', '321', '4', '1', '1', '1', '6', '1', '8', '5', '5', '328.00', '4', '主：95%棉5%氨纶 配：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3146', '1', '191157250589003', '191157250589', '19115725', '359', '针梭相拼上衣', '/images/2018-07/19115725_589.jpg', '321', '5', '1', '1', '1', '6', '1', '8', '5', '5', '328.00', '4', '主：95%棉5%氨纶 配：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3147', '1', '191132730233001', '191132730233', '19113273', '360', '可哺乳连衣裙', '/images/2018-07/19113273_233.jpg', '109', '3', '1', '1', '1', '13', '1', '8', '5', '2', '398.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3148', '1', '191132730233002', '191132730233', '19113273', '360', '可哺乳连衣裙', '/images/2018-07/19113273_233.jpg', '109', '4', '1', '1', '1', '13', '1', '8', '5', '2', '398.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3149', '1', '191132730233003', '191132730233', '19113273', '360', '可哺乳连衣裙', '/images/2018-07/19113273_233.jpg', '109', '5', '1', '1', '1', '13', '1', '8', '5', '2', '398.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3150', '1', '191137660109001', '191137660109', '19113766', '361', '针织连衣裙', '/images/2018-07/19113766_109.jpg', '19', '3', '1', '1', '1', '13', '1', '8', '5', '1', '398.00', '4', '主：100%棉配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3151', '1', '191137660109002', '191137660109', '19113766', '361', '针织连衣裙', '/images/2018-07/19113766_109.jpg', '19', '4', '1', '1', '1', '13', '1', '8', '5', '1', '398.00', '4', '主：100%棉配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3152', '1', '191137660109003', '191137660109', '19113766', '361', '针织连衣裙', '/images/2018-07/19113766_109.jpg', '19', '5', '1', '1', '1', '13', '1', '8', '5', '1', '398.00', '4', '主：100%棉配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3153', '1', '191137830718001', '191137830718', '19113783', '362', '条纹连衣裙', '/images/2018-07/19113783_718.jpg', '416', '3', '1', '1', '1', '13', '1', '8', '5', '7', '398.00', '4', '主：95%棉5%氨纶配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3154', '1', '191137830718002', '191137830718', '19113783', '362', '条纹连衣裙', '/images/2018-07/19113783_718.jpg', '416', '4', '1', '1', '1', '13', '1', '8', '5', '7', '398.00', '4', '主：95%棉5%氨纶配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3155', '1', '191137830718003', '191137830718', '19113783', '362', '条纹连衣裙', '/images/2018-07/19113783_718.jpg', '416', '5', '1', '1', '1', '13', '1', '8', '5', '7', '398.00', '4', '主：95%棉5%氨纶配：100%涤纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3156', '1', '191132550748001', '191132550748', '19113255', '363', '人棉印花可哺乳连衣裙', '/images/2018-07/19113255_748.jpg', '434', '3', '1', '1', '1', '13', '1', '8', '5', '7', '428.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3157', '1', '191132550748002', '191132550748', '19113255', '363', '人棉印花可哺乳连衣裙', '/images/2018-07/19113255_748.jpg', '434', '4', '1', '1', '1', '13', '1', '8', '5', '7', '428.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3158', '1', '191132550748003', '191132550748', '19113255', '363', '人棉印花可哺乳连衣裙', '/images/2018-07/19113255_748.jpg', '434', '5', '1', '1', '1', '13', '1', '8', '5', '7', '428.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3159', '1', '191132560748001', '191132560748', '19113256', '364', '假两件可哺乳连衣裙', '/images/2018-07/19113256_748.jpg', '434', '3', '1', '1', '1', '13', '1', '8', '5', '7', '468.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3160', '1', '191132560748002', '191132560748', '19113256', '364', '假两件可哺乳连衣裙', '/images/2018-07/19113256_748.jpg', '434', '4', '1', '1', '1', '13', '1', '8', '5', '7', '468.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3161', '1', '191132560748003', '191132560748', '19113256', '364', '假两件可哺乳连衣裙', '/images/2018-07/19113256_748.jpg', '434', '5', '1', '1', '1', '13', '1', '8', '5', '7', '468.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3162', '1', '191131670743001', '191131670743', '19113167', '365', '牛仔可哺乳连衣裙', '/images/2018-07/19113167_743.jpg', '429', '3', '1', '1', '1', '13', '1', '8', '5', '7', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3163', '1', '191131670743002', '191131670743', '19113167', '365', '牛仔可哺乳连衣裙', '/images/2018-07/19113167_743.jpg', '429', '4', '1', '1', '1', '13', '1', '8', '5', '7', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3164', '1', '191131670743003', '191131670743', '19113167', '365', '牛仔可哺乳连衣裙', '/images/2018-07/19113167_743.jpg', '429', '5', '1', '1', '1', '13', '1', '8', '5', '7', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3165', '1', '191132680233001', '191132680233', '19113268', '366', '可哺乳连衣裙', '/images/2018-07/19113268_233.jpg', '109', '3', '1', '1', '1', '13', '1', '8', '5', '2', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3166', '1', '191132680233002', '191132680233', '19113268', '366', '可哺乳连衣裙', '/images/2018-07/19113268_233.jpg', '109', '4', '1', '1', '1', '13', '1', '8', '5', '2', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3167', '1', '191132680233003', '191132680233', '19113268', '366', '可哺乳连衣裙', '/images/2018-07/19113268_233.jpg', '109', '5', '1', '1', '1', '13', '1', '8', '5', '2', '498.00', '5', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3168', '1', '191132690105001', '191132690105', '19113269', '367', '梭织棉连衣裙', '/images/2018-07/19113269_105.jpg', '15', '3', '1', '1', '1', '13', '1', '8', '5', '1', '368.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3169', '1', '191132690105002', '191132690105', '19113269', '367', '梭织棉连衣裙', '/images/2018-07/19113269_105.jpg', '15', '4', '1', '1', '1', '13', '1', '8', '5', '1', '368.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3170', '1', '191132690105003', '191132690105', '19113269', '367', '梭织棉连衣裙', '/images/2018-07/19113269_105.jpg', '15', '5', '1', '1', '1', '13', '1', '8', '5', '1', '368.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3171', '1', '191132690745004', '191132690745', '19113269', '368', '梭织棉连衣裙', '/images/2018-07/19113269_745.jpg', '431', '3', '1', '1', '1', '13', '1', '8', '5', '7', '368.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3172', '1', '191132690745005', '191132690745', '19113269', '368', '梭织棉连衣裙', '/images/2018-07/19113269_745.jpg', '431', '4', '1', '1', '1', '13', '1', '8', '5', '7', '368.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3173', '1', '191132690745006', '191132690745', '19113269', '368', '梭织棉连衣裙', '/images/2018-07/19113269_745.jpg', '431', '5', '1', '1', '1', '13', '1', '8', '5', '7', '368.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3174', '1', '192135630748001', '192135630748', '19213563', '369', '撞色可哺乳连衣裙', '/images/2018-07/19213563_748.jpg', '434', '3', '1', '1', '1', '13', '1', '8', '5', '7', '368.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3175', '1', '192135630748002', '192135630748', '19213563', '369', '撞色可哺乳连衣裙', '/images/2018-07/19213563_748.jpg', '434', '4', '1', '1', '1', '13', '1', '8', '5', '7', '368.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3176', '1', '192135630748003', '192135630748', '19213563', '369', '撞色可哺乳连衣裙', '/images/2018-07/19213563_748.jpg', '434', '5', '1', '1', '1', '13', '1', '8', '5', '7', '368.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3177', '1', '192135220718001', '192135220718', '19213522', '370', '真两件可哺乳连衣裙', '/images/2018-07/19213522_718.jpg', '416', '3', '1', '1', '1', '13', '1', '8', '5', '7', '498.00', '5', '主：95%棉5%氨纶 配：100%人棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3178', '1', '192135220718002', '192135220718', '19213522', '370', '真两件可哺乳连衣裙', '/images/2018-07/19213522_718.jpg', '416', '4', '1', '1', '1', '13', '1', '8', '5', '7', '498.00', '5', '主：95%棉5%氨纶 配：100%人棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3179', '1', '192135220718003', '192135220718', '19213522', '370', '真两件可哺乳连衣裙', '/images/2018-07/19213522_718.jpg', '416', '5', '1', '1', '1', '13', '1', '8', '5', '7', '498.00', '5', '主：95%棉5%氨纶 配：100%人棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3180', '1', '192132650548001', '192132650548', '19213265', '371', '印花连衣裙', '/images/2018-07/19213265_548.jpg', '289', '3', '1', '1', '1', '13', '1', '8', '5', '5', '398.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3181', '1', '192132650548002', '192132650548', '19213265', '371', '印花连衣裙', '/images/2018-07/19213265_548.jpg', '289', '4', '1', '1', '1', '13', '1', '8', '5', '5', '398.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3182', '1', '192132650548003', '192132650548', '19213265', '371', '印花连衣裙', '/images/2018-07/19213265_548.jpg', '289', '5', '1', '1', '1', '13', '1', '8', '5', '5', '398.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3183', '1', '192132650458004', '192132650458', '19213265', '372', '印花连衣裙', '/images/2018-07/19213265_458.jpg', '224', '3', '1', '1', '1', '13', '1', '8', '5', '4', '398.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3184', '1', '192132650458005', '192132650458', '19213265', '372', '印花连衣裙', '/images/2018-07/19213265_458.jpg', '224', '4', '1', '1', '1', '13', '1', '8', '5', '4', '398.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3185', '1', '192132650458006', '192132650458', '19213265', '372', '印花连衣裙', '/images/2018-07/19213265_458.jpg', '224', '5', '1', '1', '1', '13', '1', '8', '5', '4', '398.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3186', '1', '192137740108001', '192137740108', '19213774', '373', '针织条纹可哺乳连衣裙', '/images/2018-07/19213774_108.jpg', '18', '3', '1', '1', '1', '13', '1', '8', '5', '1', '328.00', '4', '95%粘纤 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3187', '1', '192137740108002', '192137740108', '19213774', '373', '针织条纹可哺乳连衣裙', '/images/2018-07/19213774_108.jpg', '18', '4', '1', '1', '1', '13', '1', '8', '5', '1', '328.00', '4', '95%粘纤 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3188', '1', '192137740108003', '192137740108', '19213774', '373', '针织条纹可哺乳连衣裙', '/images/2018-07/19213774_108.jpg', '18', '5', '1', '1', '1', '13', '1', '8', '5', '1', '328.00', '4', '95%粘纤 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3189', '1', '192137520748001', '192137520748', '19213752', '374', '拼接可哺乳连衣裙', '/images/2018-07/19213752_748.jpg', '434', '3', '1', '1', '1', '13', '1', '8', '5', '7', '398.00', '4', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3190', '1', '192137520748002', '192137520748', '19213752', '374', '拼接可哺乳连衣裙', '/images/2018-07/19213752_748.jpg', '434', '4', '1', '1', '1', '13', '1', '8', '5', '7', '398.00', '4', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3191', '1', '192137520748003', '192137520748', '19213752', '374', '拼接可哺乳连衣裙', '/images/2018-07/19213752_748.jpg', '434', '5', '1', '1', '1', '13', '1', '8', '5', '7', '398.00', '4', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3192', '1', '192137520588004', '192137520588', '19213752', '375', '拼接可哺乳连衣裙', '/images/2018-07/19213752_588.jpg', '320', '3', '1', '1', '1', '13', '1', '8', '5', '5', '398.00', '4', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3193', '1', '192137520588005', '192137520588', '19213752', '375', '拼接可哺乳连衣裙', '/images/2018-07/19213752_588.jpg', '320', '4', '1', '1', '1', '13', '1', '8', '5', '5', '398.00', '4', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3194', '1', '192137520588006', '192137520588', '19213752', '375', '拼接可哺乳连衣裙', '/images/2018-07/19213752_588.jpg', '320', '5', '1', '1', '1', '13', '1', '8', '5', '5', '398.00', '4', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3195', '1', '192137640719001', '192137640719', '19213764', '376', '假两件连衣裙', '/images/2018-07/19213764_719.jpg', '417', '3', '1', '1', '1', '13', '1', '8', '5', '7', '328.00', '4', '主：95%棉5%氨纶 配：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3196', '1', '192137640719002', '192137640719', '19213764', '376', '假两件连衣裙', '/images/2018-07/19213764_719.jpg', '417', '4', '1', '1', '1', '13', '1', '8', '5', '7', '328.00', '4', '主：95%棉5%氨纶 配：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3197', '1', '192137640719003', '192137640719', '19213764', '376', '假两件连衣裙', '/images/2018-07/19213764_719.jpg', '417', '5', '1', '1', '1', '13', '1', '8', '5', '7', '328.00', '4', '主：95%棉5%氨纶 配：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3198', '1', '192137610719001', '192137610719', '19213761', '377', '拼接可哺乳连衣裙', '/images/2018-07/19213761_719.jpg', '417', '3', '1', '1', '1', '13', '1', '8', '5', '7', '328.00', '4', '主：95%棉5%氨纶 配：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3199', '1', '192137610719002', '192137610719', '19213761', '377', '拼接可哺乳连衣裙', '/images/2018-07/19213761_719.jpg', '417', '4', '1', '1', '1', '13', '1', '8', '5', '7', '328.00', '4', '主：95%棉5%氨纶 配：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3200', '1', '192137610719003', '192137610719', '19213761', '377', '拼接可哺乳连衣裙', '/images/2018-07/19213761_719.jpg', '417', '5', '1', '1', '1', '13', '1', '8', '5', '7', '328.00', '4', '主：95%棉5%氨纶 配：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3201', '1', '192137750753001', '192137750753', '19213775', '378', '印花连衣裙', '/images/2018-07/19213775_753.jpg', '437', '3', '1', '1', '1', '13', '1', '8', '5', '7', '298.00', '3', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3202', '1', '192137750753002', '192137750753', '19213775', '378', '印花连衣裙', '/images/2018-07/19213775_753.jpg', '437', '4', '1', '1', '1', '13', '1', '8', '5', '7', '298.00', '3', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3203', '1', '192137750753003', '192137750753', '19213775', '378', '印花连衣裙', '/images/2018-07/19213775_753.jpg', '437', '5', '1', '1', '1', '13', '1', '8', '5', '7', '298.00', '3', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3204', '1', '192137750103004', '192137750103', '19213775', '379', '印花连衣裙', '/images/2018-07/19213775_103.jpg', '13', '3', '1', '1', '1', '13', '1', '8', '5', '1', '298.00', '3', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3205', '1', '192137750103005', '192137750103', '19213775', '379', '印花连衣裙', '/images/2018-07/19213775_103.jpg', '13', '4', '1', '1', '1', '13', '1', '8', '5', '1', '298.00', '3', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3206', '1', '192137750103006', '192137750103', '19213775', '379', '印花连衣裙', '/images/2018-07/19213775_103.jpg', '13', '5', '1', '1', '1', '13', '1', '8', '5', '1', '298.00', '3', '95%棉 5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3207', '1', '192137770548001', '192137770548', '19213777', '380', '条纹可哺乳连衣裙', '/images/2018-07/19213777_548.jpg', '289', '3', '1', '1', '1', '13', '1', '8', '5', '5', '368.00', '4', '90%锦纶  10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3208', '1', '192137770548002', '192137770548', '19213777', '380', '条纹可哺乳连衣裙', '/images/2018-07/19213777_548.jpg', '289', '4', '1', '1', '1', '13', '1', '8', '5', '5', '368.00', '4', '90%锦纶  10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3209', '1', '192137770548003', '192137770548', '19213777', '380', '条纹可哺乳连衣裙', '/images/2018-07/19213777_548.jpg', '289', '5', '1', '1', '1', '13', '1', '8', '5', '5', '368.00', '4', '90%锦纶  10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3210', '1', '192137770108004', '192137770108', '19213777', '381', '条纹可哺乳连衣裙', '/images/2018-07/19213777_108.jpg', '18', '3', '1', '1', '1', '13', '1', '8', '5', '1', '368.00', '4', '90%锦纶  10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3211', '1', '192137770108005', '192137770108', '19213777', '381', '条纹可哺乳连衣裙', '/images/2018-07/19213777_108.jpg', '18', '4', '1', '1', '1', '13', '1', '8', '5', '1', '368.00', '4', '90%锦纶  10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3212', '1', '192137770108006', '192137770108', '19213777', '381', '条纹可哺乳连衣裙', '/images/2018-07/19213777_108.jpg', '18', '5', '1', '1', '1', '13', '1', '8', '5', '1', '368.00', '4', '90%锦纶  10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3213', '1', '192137840583001', '192137840583', '19213784', '382', '织带装饰连衣裙', '/images/2018-07/19213784_583.jpg', '315', '3', '1', '1', '1', '13', '1', '8', '5', '5', '298.00', '3', '90%粘纤10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3214', '1', '192137840583002', '192137840583', '19213784', '382', '织带装饰连衣裙', '/images/2018-07/19213784_583.jpg', '315', '4', '1', '1', '1', '13', '1', '8', '5', '5', '298.00', '3', '90%粘纤10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3215', '1', '192137840583003', '192137840583', '19213784', '382', '织带装饰连衣裙', '/images/2018-07/19213784_583.jpg', '315', '5', '1', '1', '1', '13', '1', '8', '5', '5', '298.00', '3', '90%粘纤10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3216', '1', '192137840103004', '192137840103', '19213784', '383', '织带装饰连衣裙', '/images/2018-07/19213784_103.jpg', '13', '3', '1', '1', '1', '13', '1', '8', '5', '1', '298.00', '3', '90%粘纤10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3217', '1', '192137840103005', '192137840103', '19213784', '383', '织带装饰连衣裙', '/images/2018-07/19213784_103.jpg', '13', '4', '1', '1', '1', '13', '1', '8', '5', '1', '298.00', '3', '90%粘纤10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3218', '1', '192137840103006', '192137840103', '19213784', '383', '织带装饰连衣裙', '/images/2018-07/19213784_103.jpg', '13', '5', '1', '1', '1', '13', '1', '8', '5', '1', '298.00', '3', '90%粘纤10%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3219', '1', '192135420233001', '192135420233', '19213542', '384', '烂花露肩有袖裙', '/images/2018-07/19213542_233.jpg', '109', '3', '1', '1', '1', '13', '1', '8', '5', '2', '368.00', '4', '100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3220', '1', '192135420233002', '192135420233', '19213542', '384', '烂花露肩有袖裙', '/images/2018-07/19213542_233.jpg', '109', '4', '1', '1', '1', '13', '1', '8', '5', '2', '368.00', '4', '100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3221', '1', '192135420233003', '192135420233', '19213542', '384', '烂花露肩有袖裙', '/images/2018-07/19213542_233.jpg', '109', '5', '1', '1', '1', '13', '1', '8', '5', '2', '368.00', '4', '100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3222', '1', '192132780748001', '192132780748', '19213278', '385', '梭织棉连衣裙', '/images/2018-07/19213278_748.jpg', '434', '3', '1', '1', '1', '13', '1', '8', '5', '7', '468.00', '5', '100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3223', '1', '192132780748002', '192132780748', '19213278', '385', '梭织棉连衣裙', '/images/2018-07/19213278_748.jpg', '434', '4', '1', '1', '1', '13', '1', '8', '5', '7', '468.00', '5', '100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3224', '1', '192132780748003', '192132780748', '19213278', '385', '梭织棉连衣裙', '/images/2018-07/19213278_748.jpg', '434', '5', '1', '1', '1', '13', '1', '8', '5', '7', '468.00', '5', '100%聚酯纤维', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3225', '1', '192132790546001', '192132790546', '19213279', '386', '人棉印花连衣裙', '/images/2018-07/19213279_546.jpg', '287', '3', '1', '1', '1', '13', '1', '8', '5', '5', '328.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3226', '1', '192132790546002', '192132790546', '19213279', '386', '人棉印花连衣裙', '/images/2018-07/19213279_546.jpg', '287', '4', '1', '1', '1', '13', '1', '8', '5', '5', '328.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3227', '1', '192132790546003', '192132790546', '19213279', '386', '人棉印花连衣裙', '/images/2018-07/19213279_546.jpg', '287', '5', '1', '1', '1', '13', '1', '8', '5', '5', '328.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3228', '1', '192132790106004', '192132790106', '19213279', '387', '人棉印花连衣裙', '/images/2018-07/19213279_106.jpg', '16', '3', '1', '1', '1', '13', '1', '8', '5', '1', '328.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3229', '1', '192132790106005', '192132790106', '19213279', '387', '人棉印花连衣裙', '/images/2018-07/19213279_106.jpg', '16', '4', '1', '1', '1', '13', '1', '8', '5', '1', '328.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3230', '1', '192132790106006', '192132790106', '19213279', '387', '人棉印花连衣裙', '/images/2018-07/19213279_106.jpg', '16', '5', '1', '1', '1', '13', '1', '8', '5', '1', '328.00', '4', '100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3231', '1', '192137810718001', '192137810718', '19213781', '388', '条纹连衣裙', '/images/2018-07/19213781_718.jpg', '416', '3', '1', '1', '1', '13', '1', '8', '5', '7', '468.00', '5', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3232', '1', '192137810718002', '192137810718', '19213781', '388', '条纹连衣裙', '/images/2018-07/19213781_718.jpg', '416', '4', '1', '1', '1', '13', '1', '8', '5', '7', '468.00', '5', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3233', '1', '192137810718003', '192137810718', '19213781', '388', '条纹连衣裙', '/images/2018-07/19213781_718.jpg', '416', '5', '1', '1', '1', '13', '1', '8', '5', '7', '468.00', '5', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3234', '1', '192137810108004', '192137810108', '19213781', '389', '条纹连衣裙', '/images/2018-07/19213781_108.jpg', '18', '3', '1', '1', '1', '13', '1', '8', '5', '1', '468.00', '5', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3235', '1', '192137810108005', '192137810108', '19213781', '389', '条纹连衣裙', '/images/2018-07/19213781_108.jpg', '18', '4', '1', '1', '1', '13', '1', '8', '5', '1', '468.00', '5', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3236', '1', '192137810108006', '192137810108', '19213781', '389', '条纹连衣裙', '/images/2018-07/19213781_108.jpg', '18', '5', '1', '1', '1', '13', '1', '8', '5', '1', '468.00', '5', '95%棉5%氨纶', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3237', '1', '192132820746001', '192132820746', '19213282', '390', '针梭相拼可哺乳连衣裙', '/images/2018-07/19213282_746.jpg', '432', '3', '1', '1', '1', '13', '1', '8', '5', '7', '428.00', '5', '主：95%棉5%氨纶 配：100%人棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3238', '1', '192132820746002', '192132820746', '19213282', '390', '针梭相拼可哺乳连衣裙', '/images/2018-07/19213282_746.jpg', '432', '4', '1', '1', '1', '13', '1', '8', '5', '7', '428.00', '5', '主：95%棉5%氨纶 配：100%人棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3239', '1', '192132820746003', '192132820746', '19213282', '390', '针梭相拼可哺乳连衣裙', '/images/2018-07/19213282_746.jpg', '432', '5', '1', '1', '1', '13', '1', '8', '5', '7', '428.00', '5', '主：95%棉5%氨纶 配：100%人棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3240', '1', '191191010743001', '191191010743', '19119101', '391', '纱卡连帽外套', '/images/2018-07/19119101_743.jpg', '429', '3', '1', '1', '1', '13', '1', '8', '5', '7', '498.00', '5', '主：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3241', '1', '191191010743002', '191191010743', '19119101', '391', '纱卡连帽外套', '/images/2018-07/19119101_743.jpg', '429', '4', '1', '1', '1', '13', '1', '8', '5', '7', '498.00', '5', '主：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3242', '1', '191191010743003', '191191010743', '19119101', '391', '纱卡连帽外套', '/images/2018-07/19119101_743.jpg', '429', '5', '1', '1', '1', '13', '1', '8', '5', '7', '498.00', '5', '主：100%棉', '1', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3243', '1', '181187060233001', '181187060233', '18118706', '420', '斜纹牛仔九分裤', '/images/2018-07/18118706_233.jpg', '109', '3', '1', '1', '17', '7', '1', '8', '5', '2', '428.00', '5', '主：56%莱赛尔42%棉2%氨纶    配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3244', '1', '181187060233002', '181187060233', '18118706', '420', '斜纹牛仔九分裤', '/images/2018-07/18118706_233.jpg', '109', '4', '1', '1', '17', '7', '1', '8', '5', '2', '428.00', '5', '主：56%莱赛尔42%棉2%氨纶    配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3245', '1', '181187060233003', '181187060233', '18118706', '420', '斜纹牛仔九分裤', '/images/2018-07/18118706_233.jpg', '109', '5', '1', '1', '17', '7', '1', '8', '5', '2', '428.00', '5', '主：56%莱赛尔42%棉2%氨纶    配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3246', '1', '181187060233004', '181187060233', '18118706', '420', '斜纹牛仔九分裤', '/images/2018-07/18118706_233.jpg', '109', '6', '1', '1', '17', '7', '1', '8', '5', '2', '428.00', '5', '主：56%莱赛尔42%棉2%氨纶    配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3247', '1', '181187060103005', '181187060103', '18118706', '421', '斜纹牛仔九分裤', '/images/2018-07/18118706_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '428.00', '5', '主：56%莱赛尔42%棉2%氨纶    配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3248', '1', '181187060103006', '181187060103', '18118706', '421', '斜纹牛仔九分裤', '/images/2018-07/18118706_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '428.00', '5', '主：56%莱赛尔42%棉2%氨纶    配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3249', '1', '181187060103007', '181187060103', '18118706', '421', '斜纹牛仔九分裤', '/images/2018-07/18118706_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '428.00', '5', '主：56%莱赛尔42%棉2%氨纶    配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3250', '1', '181187060103008', '181187060103', '18118706', '421', '斜纹牛仔九分裤', '/images/2018-07/18118706_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '428.00', '5', '主：56%莱赛尔42%棉2%氨纶    配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3251', '1', '181142040793001', '181142040793', '18114204', '422', '水洗牛仔半裙', '/images/2018-07/18114204_793.jpg', '462', '3', '1', '1', '17', '7', '1', '8', '5', '7', '368.00', '4', '主：53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶  配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3252', '1', '181142040793002', '181142040793', '18114204', '422', '水洗牛仔半裙', '/images/2018-07/18114204_793.jpg', '462', '4', '1', '1', '17', '7', '1', '8', '5', '7', '368.00', '4', '主：53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶  配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3253', '1', '181142040793003', '181142040793', '18114204', '422', '水洗牛仔半裙', '/images/2018-07/18114204_793.jpg', '462', '5', '1', '1', '17', '7', '1', '8', '5', '7', '368.00', '4', '主：53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶  配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3254', '1', '181142040793004', '181142040793', '18114204', '422', '水洗牛仔半裙', '/images/2018-07/18114204_793.jpg', '462', '6', '1', '1', '17', '7', '1', '8', '5', '7', '368.00', '4', '主：53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶  配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3255', '1', '181142030233001', '181142030233', '18114203', '423', '斜纹纱卡半裙', '/images/2018-07/18114203_233.jpg', '109', '3', '1', '1', '17', '7', '1', '8', '5', '2', '368.00', '4', '主：97%棉3%氨纶            配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3256', '1', '181142030233002', '181142030233', '18114203', '423', '斜纹纱卡半裙', '/images/2018-07/18114203_233.jpg', '109', '4', '1', '1', '17', '7', '1', '8', '5', '2', '368.00', '4', '主：97%棉3%氨纶            配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3257', '1', '181142030233003', '181142030233', '18114203', '423', '斜纹纱卡半裙', '/images/2018-07/18114203_233.jpg', '109', '5', '1', '1', '17', '7', '1', '8', '5', '2', '368.00', '4', '主：97%棉3%氨纶            配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3258', '1', '181142030233004', '181142030233', '18114203', '423', '斜纹纱卡半裙', '/images/2018-07/18114203_233.jpg', '109', '6', '1', '1', '17', '7', '1', '8', '5', '2', '368.00', '4', '主：97%棉3%氨纶            配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3259', '1', '181181030743001', '181181030743', '18118103', '424', '牛仔水洗直筒裤', '/images/2018-07/18118103_743.jpg', '429', '3', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '主：67%棉24%聚酯纤维8%粘纤1%氨纶                          配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3260', '1', '181181030743002', '181181030743', '18118103', '424', '牛仔水洗直筒裤', '/images/2018-07/18118103_743.jpg', '429', '4', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '主：67%棉24%聚酯纤维8%粘纤1%氨纶                          配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3261', '1', '181181030743003', '181181030743', '18118103', '424', '牛仔水洗直筒裤', '/images/2018-07/18118103_743.jpg', '429', '5', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '主：67%棉24%聚酯纤维8%粘纤1%氨纶                          配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3262', '1', '181181030743004', '181181030743', '18118103', '424', '牛仔水洗直筒裤', '/images/2018-07/18118103_743.jpg', '429', '6', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '主：67%棉24%聚酯纤维8%粘纤1%氨纶                          配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3263', '1', '181187260103001', '181187260103', '18118726', '425', '双面针织铅笔裤', '/images/2018-07/18118726_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：51.3%聚酯纤维48.7%棉       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3264', '1', '181187260103002', '181187260103', '18118726', '425', '双面针织铅笔裤', '/images/2018-07/18118726_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：51.3%聚酯纤维48.7%棉       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3265', '1', '181187260103003', '181187260103', '18118726', '425', '双面针织铅笔裤', '/images/2018-07/18118726_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：51.3%聚酯纤维48.7%棉       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3266', '1', '181187260103004', '181187260103', '18118726', '425', '双面针织铅笔裤', '/images/2018-07/18118726_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '主：51.3%聚酯纤维48.7%棉       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3267', '1', '181187270103001', '181187270103', '18118727', '426', '双面针织直筒裤', '/images/2018-07/18118727_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '94.4%棉5.6%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3268', '1', '181187270103002', '181187270103', '18118727', '426', '双面针织直筒裤', '/images/2018-07/18118727_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '94.4%棉5.6%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3269', '1', '181187270103003', '181187270103', '18118727', '426', '双面针织直筒裤', '/images/2018-07/18118727_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '94.4%棉5.6%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3270', '1', '181187270103004', '181187270103', '18118727', '426', '双面针织直筒裤', '/images/2018-07/18118727_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '398.00', '4', '94.4%棉5.6%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3271', '1', '181181370743001', '181181370743', '18118137', '427', '水洗牛仔铅笔', '/images/2018-07/18118137_743.jpg', '429', '3', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3272', '1', '181181370743002', '181181370743', '18118137', '427', '水洗牛仔铅笔', '/images/2018-07/18118137_743.jpg', '429', '4', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3273', '1', '181181370743003', '181181370743', '18118137', '427', '水洗牛仔铅笔', '/images/2018-07/18118137_743.jpg', '429', '5', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3274', '1', '181181370743004', '181181370743', '18118137', '427', '水洗牛仔铅笔', '/images/2018-07/18118137_743.jpg', '429', '6', '1', '1', '17', '7', '1', '8', '5', '7', '498.00', '5', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3275', '1', '181161030743001', '181161030743', '18116103', '428', '水洗牛仔背带裤', '/images/2018-07/18116103_743.jpg', '429', '3', '1', '1', '17', '16', '1', '8', '5', '7', '628.00', '6', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3276', '1', '181161030743002', '181161030743', '18116103', '428', '水洗牛仔背带裤', '/images/2018-07/18116103_743.jpg', '429', '4', '1', '1', '17', '16', '1', '8', '5', '7', '628.00', '6', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3277', '1', '181161030743003', '181161030743', '18116103', '428', '水洗牛仔背带裤', '/images/2018-07/18116103_743.jpg', '429', '5', '1', '1', '17', '16', '1', '8', '5', '7', '628.00', '6', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3278', '1', '181187250103001', '181187250103', '18118725', '429', '针织打底裤', '/images/2018-07/18118725_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '228.00', '3', '93.1%棉6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3279', '1', '181187250103002', '181187250103', '18118725', '429', '针织打底裤', '/images/2018-07/18118725_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '228.00', '3', '93.1%棉6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3280', '1', '181187250103003', '181187250103', '18118725', '429', '针织打底裤', '/images/2018-07/18118725_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '228.00', '3', '93.1%棉6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3281', '1', '181187250103004', '181187250103', '18118725', '429', '针织打底裤', '/images/2018-07/18118725_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '228.00', '3', '93.1%棉6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3282', '1', '181187030103001', '181187030103', '18118703', '430', '功能性针织九分打底裤', '/images/2018-07/18118703_103.jpg', '13', '3', '1', '1', '17', '7', '1', '8', '5', '1', '248.00', '3', '59.4%莫代尔纤维34.7%聚酯纤维5.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3283', '1', '181187030103002', '181187030103', '18118703', '430', '功能性针织九分打底裤', '/images/2018-07/18118703_103.jpg', '13', '4', '1', '1', '17', '7', '1', '8', '5', '1', '248.00', '3', '59.4%莫代尔纤维34.7%聚酯纤维5.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3284', '1', '181187030103003', '181187030103', '18118703', '430', '功能性针织九分打底裤', '/images/2018-07/18118703_103.jpg', '13', '5', '1', '1', '17', '7', '1', '8', '5', '1', '248.00', '3', '59.4%莫代尔纤维34.7%聚酯纤维5.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3285', '1', '181187030103004', '181187030103', '18118703', '430', '功能性针织九分打底裤', '/images/2018-07/18118703_103.jpg', '13', '6', '1', '1', '17', '7', '1', '8', '5', '1', '248.00', '3', '59.4%莫代尔纤维34.7%聚酯纤维5.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3286', '1', '182161010743001', '182161010743', '18216101', '431', '水洗牛仔绣花背带短裤', '/images/2018-07/18216101_743.jpg', '429', '3', '1', '1', '17', '16', '2', '8', '6', '7', '428.00', '5', '53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3287', '1', '182161010743002', '182161010743', '18216101', '431', '水洗牛仔绣花背带短裤', '/images/2018-07/18216101_743.jpg', '429', '4', '1', '1', '17', '16', '2', '8', '6', '7', '428.00', '5', '53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3288', '1', '182161010743003', '182161010743', '18216101', '431', '水洗牛仔绣花背带短裤', '/images/2018-07/18216101_743.jpg', '429', '5', '1', '1', '17', '16', '2', '8', '6', '7', '428.00', '5', '53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3289', '1', '182181420793001', '182181420793', '18218142', '432', '水洗牛仔七分裤', '/images/2018-07/18218142_793.jpg', '462', '3', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '80%棉18%粘纤2%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3290', '1', '182181420793002', '182181420793', '18218142', '432', '水洗牛仔七分裤', '/images/2018-07/18218142_793.jpg', '462', '4', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '80%棉18%粘纤2%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3291', '1', '182181420793003', '182181420793', '18218142', '432', '水洗牛仔七分裤', '/images/2018-07/18218142_793.jpg', '462', '5', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '80%棉18%粘纤2%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3292', '1', '182181420793004', '182181420793', '18218142', '432', '水洗牛仔七分裤', '/images/2018-07/18218142_793.jpg', '462', '6', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '80%棉18%粘纤2%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3293', '1', '182181040233001', '182181040233', '18218104', '433', '斜纹牛仔七分裤', '/images/2018-07/18218104_233.jpg', '109', '3', '1', '1', '17', '7', '2', '8', '6', '2', '368.00', '4', '主：56%莱赛尔42%棉2%氨纶       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3294', '1', '182181040233002', '182181040233', '18218104', '433', '斜纹牛仔七分裤', '/images/2018-07/18218104_233.jpg', '109', '4', '1', '1', '17', '7', '2', '8', '6', '2', '368.00', '4', '主：56%莱赛尔42%棉2%氨纶       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3295', '1', '182181040233003', '182181040233', '18218104', '433', '斜纹牛仔七分裤', '/images/2018-07/18218104_233.jpg', '109', '5', '1', '1', '17', '7', '2', '8', '6', '2', '368.00', '4', '主：56%莱赛尔42%棉2%氨纶       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3296', '1', '182181040233004', '182181040233', '18218104', '433', '斜纹牛仔七分裤', '/images/2018-07/18218104_233.jpg', '109', '6', '1', '1', '17', '7', '2', '8', '6', '2', '368.00', '4', '主：56%莱赛尔42%棉2%氨纶       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3297', '1', '182181040103005', '182181040103', '18218104', '434', '斜纹牛仔七分裤', '/images/2018-07/18218104_103.jpg', '13', '3', '1', '1', '17', '7', '2', '8', '6', '1', '368.00', '4', '主：56%莱赛尔42%棉2%氨纶       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3298', '1', '182181040103006', '182181040103', '18218104', '434', '斜纹牛仔七分裤', '/images/2018-07/18218104_103.jpg', '13', '4', '1', '1', '17', '7', '2', '8', '6', '1', '368.00', '4', '主：56%莱赛尔42%棉2%氨纶       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3299', '1', '182181040103007', '182181040103', '18218104', '434', '斜纹牛仔七分裤', '/images/2018-07/18218104_103.jpg', '13', '5', '1', '1', '17', '7', '2', '8', '6', '1', '368.00', '4', '主：56%莱赛尔42%棉2%氨纶       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3300', '1', '182181040103008', '182181040103', '18218104', '434', '斜纹牛仔七分裤', '/images/2018-07/18218104_103.jpg', '13', '6', '1', '1', '17', '7', '2', '8', '6', '1', '368.00', '4', '主：56%莱赛尔42%棉2%氨纶       配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3301', '1', '182181440103001', '182181440103', '18218144', '435', '牛仔破洞短裤', '/images/2018-07/18218144_103.jpg', '13', '3', '1', '1', '17', '7', '2', '8', '6', '1', '328.00', '4', '主：97%棉3%氨纶              配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3302', '1', '182181440103002', '182181440103', '18218144', '435', '牛仔破洞短裤', '/images/2018-07/18218144_103.jpg', '13', '4', '1', '1', '17', '7', '2', '8', '6', '1', '328.00', '4', '主：97%棉3%氨纶              配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3303', '1', '182181440103003', '182181440103', '18218144', '435', '牛仔破洞短裤', '/images/2018-07/18218144_103.jpg', '13', '5', '1', '1', '17', '7', '2', '8', '6', '1', '328.00', '4', '主：97%棉3%氨纶              配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3304', '1', '182181440103004', '182181440103', '18218144', '435', '牛仔破洞短裤', '/images/2018-07/18218144_103.jpg', '13', '6', '1', '1', '17', '7', '2', '8', '6', '1', '328.00', '4', '主：97%棉3%氨纶              配：94.3%棉5.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3305', '1', '182181430793001', '182181430793', '18218143', '436', '天丝牛仔萝卜裤', '/images/2018-07/18218143_793.jpg', '462', '3', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '100%莱赛尔', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3306', '1', '182181430793002', '182181430793', '18218143', '436', '天丝牛仔萝卜裤', '/images/2018-07/18218143_793.jpg', '462', '4', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '100%莱赛尔', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3307', '1', '182181430793003', '182181430793', '18218143', '436', '天丝牛仔萝卜裤', '/images/2018-07/18218143_793.jpg', '462', '5', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '100%莱赛尔', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3308', '1', '182181430793004', '182181430793', '18218143', '436', '天丝牛仔萝卜裤', '/images/2018-07/18218143_793.jpg', '462', '6', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '100%莱赛尔', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3309', '1', '182181050793001', '182181050793', '18218105', '437', '牛仔毛边七分裤', '/images/2018-07/18218105_793.jpg', '462', '3', '1', '1', '17', '7', '2', '8', '6', '7', '498.00', '5', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3310', '1', '182181050793002', '182181050793', '18218105', '437', '牛仔毛边七分裤', '/images/2018-07/18218105_793.jpg', '462', '4', '1', '1', '17', '7', '2', '8', '6', '7', '498.00', '5', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3311', '1', '182181050793003', '182181050793', '18218105', '437', '牛仔毛边七分裤', '/images/2018-07/18218105_793.jpg', '462', '5', '1', '1', '17', '7', '2', '8', '6', '7', '498.00', '5', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3312', '1', '182181050793004', '182181050793', '18218105', '437', '牛仔毛边七分裤', '/images/2018-07/18218105_793.jpg', '462', '6', '1', '1', '17', '7', '2', '8', '6', '7', '498.00', '5', '67%棉24%聚酯纤维8%粘纤1%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3313', '1', '182187240103001', '182187240103', '18218724', '438', '孕妇安全裤', '/images/2018-07/18218724_103.jpg', '13', '3', '1', '1', '17', '7', '2', '8', '6', '1', '128.00', '2', '93.8%粘纤6.2%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3314', '1', '182187240103002', '182187240103', '18218724', '438', '孕妇安全裤', '/images/2018-07/18218724_103.jpg', '13', '4', '1', '1', '17', '7', '2', '8', '6', '1', '128.00', '2', '93.8%粘纤6.2%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3315', '1', '182187240103003', '182187240103', '18218724', '438', '孕妇安全裤', '/images/2018-07/18218724_103.jpg', '13', '5', '1', '1', '17', '7', '2', '8', '6', '1', '128.00', '2', '93.8%粘纤6.2%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3316', '1', '182187240103004', '182187240103', '18218724', '438', '孕妇安全裤', '/images/2018-07/18218724_103.jpg', '13', '6', '1', '1', '17', '7', '2', '8', '6', '1', '128.00', '2', '93.8%粘纤6.2%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3317', '1', '182187320164001', '182187320164', '18218732', '439', '竹纤五分打底裤', '/images/2018-07/18218732_164.jpg', '62', '3', '1', '1', '17', '7', '2', '8', '6', '1', '128.00', '2', '93.6%粘纤6.4%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3318', '1', '182187320164002', '182187320164', '18218732', '439', '竹纤五分打底裤', '/images/2018-07/18218732_164.jpg', '62', '4', '1', '1', '17', '7', '2', '8', '6', '1', '128.00', '2', '93.6%粘纤6.4%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3319', '1', '182187320164003', '182187320164', '18218732', '439', '竹纤五分打底裤', '/images/2018-07/18218732_164.jpg', '62', '5', '1', '1', '17', '7', '2', '8', '6', '1', '128.00', '2', '93.6%粘纤6.4%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3320', '1', '182187320164004', '182187320164', '18218732', '439', '竹纤五分打底裤', '/images/2018-07/18218732_164.jpg', '62', '6', '1', '1', '17', '7', '2', '8', '6', '1', '128.00', '2', '93.6%粘纤6.4%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3321', '1', '182187320233005', '182187320233', '18218732', '440', '竹纤五分打底裤', '/images/2018-07/18218732_233.jpg', '109', '3', '1', '1', '17', '7', '2', '8', '6', '2', '128.00', '2', '93.6%粘纤6.4%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3322', '1', '182187320233006', '182187320233', '18218732', '440', '竹纤五分打底裤', '/images/2018-07/18218732_233.jpg', '109', '4', '1', '1', '17', '7', '2', '8', '6', '2', '128.00', '2', '93.6%粘纤6.4%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3323', '1', '182187320233007', '182187320233', '18218732', '440', '竹纤五分打底裤', '/images/2018-07/18218732_233.jpg', '109', '5', '1', '1', '17', '7', '2', '8', '6', '2', '128.00', '2', '93.6%粘纤6.4%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3324', '1', '182187320233008', '182187320233', '18218732', '440', '竹纤五分打底裤', '/images/2018-07/18218732_233.jpg', '109', '6', '1', '1', '17', '7', '2', '8', '6', '2', '128.00', '2', '93.6%粘纤6.4%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3325', '1', '182181060743001', '182181060743', '18218106', '441', '水洗牛仔绣花短裤', '/images/2018-07/18218106_743.jpg', '429', '3', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3326', '1', '182181060743002', '182181060743', '18218106', '441', '水洗牛仔绣花短裤', '/images/2018-07/18218106_743.jpg', '429', '4', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3327', '1', '182181060743003', '182181060743', '18218106', '441', '水洗牛仔绣花短裤', '/images/2018-07/18218106_743.jpg', '429', '5', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3328', '1', '182181060743004', '182181060743', '18218106', '441', '水洗牛仔绣花短裤', '/images/2018-07/18218106_743.jpg', '429', '6', '1', '1', '17', '7', '2', '8', '6', '7', '398.00', '4', '53.9%棉22.4%聚酯纤维22%粘纤1.7%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3329', '1', '182187360103001', '182187360103', '18218736', '442', '莫代尔托腹安全裤', '/images/2018-07/18218736_103.jpg', '13', '3', '1', '1', '17', '7', '2', '8', '6', '1', '98.00', '1', '93.1%莫代尔6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3330', '1', '182187360103002', '182187360103', '18218736', '442', '莫代尔托腹安全裤', '/images/2018-07/18218736_103.jpg', '13', '4', '1', '1', '17', '7', '2', '8', '6', '1', '98.00', '1', '93.1%莫代尔6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3331', '1', '182187360103003', '182187360103', '18218736', '442', '莫代尔托腹安全裤', '/images/2018-07/18218736_103.jpg', '13', '5', '1', '1', '17', '7', '2', '8', '6', '1', '98.00', '1', '93.1%莫代尔6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3332', '1', '182187360103004', '182187360103', '18218736', '442', '莫代尔托腹安全裤', '/images/2018-07/18218736_103.jpg', '13', '6', '1', '1', '17', '7', '2', '8', '6', '1', '98.00', '1', '93.1%莫代尔6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3333', '1', '182187360203005', '182187360203', '18218736', '443', '莫代尔托腹安全裤', '/images/2018-07/18218736_203.jpg', '85', '3', '1', '1', '17', '7', '2', '8', '6', '2', '98.00', '1', '93.1%莫代尔6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3334', '1', '182187360203006', '182187360203', '18218736', '443', '莫代尔托腹安全裤', '/images/2018-07/18218736_203.jpg', '85', '4', '1', '1', '17', '7', '2', '8', '6', '2', '98.00', '1', '93.1%莫代尔6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3335', '1', '182187360203007', '182187360203', '18218736', '443', '莫代尔托腹安全裤', '/images/2018-07/18218736_203.jpg', '85', '5', '1', '1', '17', '7', '2', '8', '6', '2', '98.00', '1', '93.1%莫代尔6.9%氨纶', '8', 'false', 'false', '0', '999');
INSERT INTO `meet_product` VALUES ('3336', '1', '182187360203008', '182187360203', '18218736', '443', '莫代尔托腹安全裤', '/images/2018-07/18218736_203.jpg', '85', '6', '1', '1', '17', '7', '2', '8', '6', '2', '98.00', '1', '93.1%莫代尔6.9%氨纶', '8', 'false', 'false', '0', '999');

-- ----------------------------
-- Table structure for meet_purchase
-- ----------------------------
DROP TABLE IF EXISTS `meet_purchase`;
CREATE TABLE `meet_purchase` (
  `purchase_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `purchase_name` varchar(100) NOT NULL COMMENT '订货会名称',
  `p_order` mediumint(5) unsigned NOT NULL DEFAULT '99',
  PRIMARY KEY (`purchase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_purchase
-- ----------------------------
INSERT INTO `meet_purchase` VALUES ('1', '2018OCT秋冬订货会', '99');
INSERT INTO `meet_purchase` VALUES ('2', '2018OCT春夏订货会B', '99');

-- ----------------------------
-- Table structure for meet_scheme
-- ----------------------------
DROP TABLE IF EXISTS `meet_scheme`;
CREATE TABLE `meet_scheme` (
  `scheme_id` mediumint(5) NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `scheme_name` varchar(100) NOT NULL COMMENT '色系名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  `disabled` enum('true','false') DEFAULT 'false',
  PRIMARY KEY (`scheme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_scheme
-- ----------------------------
INSERT INTO `meet_scheme` VALUES ('1', '黑', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('2', '白', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('3', '咖', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('4', '绿', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('5', '红', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('6', '黄', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('7', '蓝', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('8', '紫', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('9', '桔', '99', 'false');
INSERT INTO `meet_scheme` VALUES ('10', '标', '99', 'false');

-- ----------------------------
-- Table structure for meet_season
-- ----------------------------
DROP TABLE IF EXISTS `meet_season`;
CREATE TABLE `meet_season` (
  `season_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `season_name` varchar(100) NOT NULL COMMENT '季节名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`season_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_season
-- ----------------------------
INSERT INTO `meet_season` VALUES ('1', '春', '99');
INSERT INTO `meet_season` VALUES ('2', '夏', '99');
INSERT INTO `meet_season` VALUES ('3', '秋', '99');
INSERT INTO `meet_season` VALUES ('4', '冬', '99');
INSERT INTO `meet_season` VALUES ('5', '不分季节', '99');
INSERT INTO `meet_season` VALUES ('6', '海洋女神', '99');

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

-- ----------------------------
-- Table structure for meet_size
-- ----------------------------
DROP TABLE IF EXISTS `meet_size`;
CREATE TABLE `meet_size` (
  `size_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `size_no` varchar(5) NOT NULL COMMENT '尺码代码',
  `size_name` varchar(100) NOT NULL COMMENT '尺码名称',
  `group_id` mediumint(5) NOT NULL,
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  `disabled` enum('false','true') DEFAULT 'false',
  PRIMARY KEY (`size_id`),
  KEY `size_id` (`size_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_size
-- ----------------------------
INSERT INTO `meet_size` VALUES ('2', '01', 'S', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('3', '02', 'M', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('4', '03', 'L', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('5', '04', 'XL', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('6', '05', 'XXL', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('7', '06', 'XXXL', '1', '99', 'false');
INSERT INTO `meet_size` VALUES ('8', '35', '35', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('9', '36', '36', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('10', '37', '37', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('11', '38', '38', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('12', '39', '39', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('13', '40', '40', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('14', '42', '42', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('15', '44', '44', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('16', '46', '46', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('17', '48', '48', '3', '99', 'false');
INSERT INTO `meet_size` VALUES ('18', '234', '75B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('19', '236', '80B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('20', '238', '85B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('21', '240', '90B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('22', '242', '95B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('23', '244', '100B', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('24', '334', '75C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('25', '336', '80C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('26', '338', '85C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('27', '340', '90C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('28', '342', '95C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('29', '344', '100C', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('30', '434', '75D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('31', '436', '80D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('32', '438', '85D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('33', '440', '90D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('34', '442', '95D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('35', '444', '100D', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('36', '534', '75E', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('37', '536', '80E', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('38', '538', '85E', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('39', '540', '90E', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('40', '541', 'SS', '2', '99', 'false');
INSERT INTO `meet_size` VALUES ('41', '10000', '161020', '0', '99', 'false');
INSERT INTO `meet_size` VALUES ('1', '00', 'F', '1', '99', 'false');

-- ----------------------------
-- Table structure for meet_size_group
-- ----------------------------
DROP TABLE IF EXISTS `meet_size_group`;
CREATE TABLE `meet_size_group` (
  `group_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `size_group_code` varchar(10) DEFAULT NULL,
  `size_group_name` varchar(10) DEFAULT NULL,
  `p_order` mediumint(5) DEFAULT '99',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_size_group
-- ----------------------------
INSERT INTO `meet_size_group` VALUES ('1', 'FZ01', '服装01', '99');
INSERT INTO `meet_size_group` VALUES ('2', 'WX01', '文胸01', '99');
INSERT INTO `meet_size_group` VALUES ('3', 'XZ01', '鞋子01', '99');

-- ----------------------------
-- Table structure for meet_type
-- ----------------------------
DROP TABLE IF EXISTS `meet_type`;
CREATE TABLE `meet_type` (
  `type_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `p_order` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_type
-- ----------------------------
INSERT INTO `meet_type` VALUES ('1', '新款', '0');
INSERT INTO `meet_type` VALUES ('2', 'weekend', '0');
INSERT INTO `meet_type` VALUES ('4', '设限款', '0');
INSERT INTO `meet_type` VALUES ('5', '类型四', '0');
INSERT INTO `meet_type` VALUES ('6', '类型五', '0');
INSERT INTO `meet_type` VALUES ('7', '类型六', '0');
INSERT INTO `meet_type` VALUES ('8', '融入款', '0');

-- ----------------------------
-- Table structure for meet_wave
-- ----------------------------
DROP TABLE IF EXISTS `meet_wave`;
CREATE TABLE `meet_wave` (
  `wave_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `wave_no` varchar(10) DEFAULT NULL,
  `wave_name` varchar(100) NOT NULL COMMENT '等级名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`wave_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of meet_wave
-- ----------------------------
INSERT INTO `meet_wave` VALUES ('1', '001', '秋一', '99');
INSERT INTO `meet_wave` VALUES ('2', '002', '冬一', '99');
INSERT INTO `meet_wave` VALUES ('3', '003', '冬二', '99');
INSERT INTO `meet_wave` VALUES ('4', '004', '早春', '99');
INSERT INTO `meet_wave` VALUES ('5', '005', '春', '99');
INSERT INTO `meet_wave` VALUES ('6', '006', '夏一', '99');
INSERT INTO `meet_wave` VALUES ('7', '007', '夏二', '99');
INSERT INTO `meet_wave` VALUES ('8', '008', '夏三', '99');
INSERT INTO `meet_wave` VALUES ('9', '009', '夏四', '99');
INSERT INTO `meet_wave` VALUES ('11', '011', '秋二', '99');
INSERT INTO `meet_wave` VALUES ('15', '015', '冬三', '99');
INSERT INTO `meet_wave` VALUES ('16', '016', '冬四', '99');
INSERT INTO `meet_wave` VALUES ('17', '017', '不分波段', '99');
INSERT INTO `meet_wave` VALUES ('18', '000', '未定义', '99');

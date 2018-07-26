/*
Navicat MySQL Data Transfer

Source Server         : 128.128.1.66
Source Server Version : 50542
Source Host           : 128.128.1.66:3306
Source Database       : purchase_2018_03

Target Server Type    : MYSQL
Target Server Version : 50542
File Encoding         : 65001

Date: 2018-07-26 09:37:36
*/

SET FOREIGN_KEY_CHECKS=0;

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

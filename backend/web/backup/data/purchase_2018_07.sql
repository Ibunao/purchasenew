-- MySQL dump 10.13  Distrib 5.7.14, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: purchase_2019_03_04
-- ------------------------------------------------------
-- Server version	5.7.14

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `meet_admin_user`
--

DROP TABLE IF EXISTS `meet_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_admin_user`
--

LOCK TABLES `meet_admin_user` WRITE;
/*!40000 ALTER TABLE `meet_admin_user` DISABLE KEYS */;
INSERT INTO `meet_admin_user` VALUES (1,'admin','-_QtrvjuZNPgIa8AhkCWTyfY84nB94lf','$2y$13$s9W6LZHcw6e7pACvGD1vqOoGAORi/SACbGNIA4C9bBOG.EgKYyEKi','','dingran@octmami.com',10,1540793580,1540793580),(2,'shangpin1','QUC-svXcGsE7t2dvp6tFUkY8FQ_W6na7','$2y$13$Yo9JO6CqCIhzCK/zIhLEIuQ2EVHm.3Q/k94tHd96taBHY9Yl7.TjC',NULL,'linshi@octmami.com',10,1540796379,1540796379),(3,'shendan1','4k5N0hrMp5ezNaHidbqpzh56sgJdkeFf','$2y$13$DyBG5rkLTigibrHH9ATHt.SSA9PUvlSpoK8YRik0EoSgTEk3HnoAm',NULL,'shendan1@octmami.com',10,1551682006,1551682006),(4,'shendan2','LQLKROhj1rm17GjgtC5UwHhv7naL_hTA','$2y$13$QR7HAVus30TsGaus1I2/XuFAo5RlqVDSH6H2hdJnfRaA9fGWP5ToK',NULL,'shendan2@octmami.com',10,1551682081,1551682081),(5,'shendan3','tz4fzVDWd9MYv085gQHPjcIna3t-8152','$2y$13$jpxE4YmZZ/I3mx9GhKaB8uDks3qmLTQvjCxhP82xb3WxXRkKazGCq',NULL,'shendan3@octmami.com',10,1551682096,1551682096),(6,'shendan4','bqk_2I_S1PGMKQwYYaoXQCV1Fr2cnspG','$2y$13$mLCBfUCNXqaCNoiw5XH8NuMqoUu7Qbomx.u7Pt3MCGbXkQ7NisZD6',NULL,'shendan4@octmami.com',10,1551682120,1551682120),(7,'shendan5','Xu6QV_QvMVEjiOL8KOc9K8Sf_lTwqtol','$2y$13$e6jOjR/wFoPONqBedYPl1.D2OjS6n2NPQluOFpyk0bnIBPqqLW0.q',NULL,'shendan5@octmami.com',10,1551682136,1551682136),(8,'shendan6','hcFEOw5_2BABdtPSg5cBvt3HctqUmQlX','$2y$13$XHOWWse4cbGXBvIibqnXh.ESfhKqOrn2271heqwevslPjZbkJt2pK',NULL,'shendan6@octmami.com',10,1551682195,1551682195),(9,'shangpin2','-PdlPQCStX0UcA5Ztr0DFuz8BYmqsNTI','$2y$13$iM6tICuBV8kQRPrzG9gMBO1DcOm4urubBSKuHqyBbaH8eeNnKbV0O',NULL,'shangpin2@octmami.com',10,1551682243,1551682243),(10,'shangpin3','UvC8G8yjQjA9sZpbobfhTn7l7v9wBwE8','$2y$13$iFmPrwdj9czGCZUONknNl.SizIrM/soX9kj3AeAj9M8w875q/LYUy',NULL,'shangpin3@octmami.com',10,1551682258,1551682258),(11,'shangpin4','4hvscUk20UZmYCMX6f3G9GwXXcXapybC','$2y$13$LepaVNhG1JNYP2oMxOhmQuHmsA25xhCw0msspIrxOPbu17q622TmS',NULL,'shangpin4@octmami.com',10,1551682273,1551682273),(12,'shangpin5','F0IQ8grBpyHTozBh8pKom_-6QOJUfmS0','$2y$13$dLUQxRza6KeK7CwEdy1mvOZidoXb5iu7lEquXv3FqZ0TKxuHv4fye',NULL,'shangpin5@octmami.com',10,1551682289,1551682289),(13,'shangpin6','cCPR5DRYbyJfaBJ045CkgmNyXZF13OPp','$2y$13$2qoBDQM7hk0ea74P4IC6jOabZijoGG0h0VSv1vPM2qCv7Md1BxiNW',NULL,'shangpin6@octmami.com',10,1551682306,1551682306);
/*!40000 ALTER TABLE `meet_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_admin_users-backup`
--

DROP TABLE IF EXISTS `meet_admin_users-backup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_admin_users-backup`
--

LOCK TABLES `meet_admin_users-backup` WRITE;
/*!40000 ALTER TABLE `meet_admin_users-backup` DISABLE KEYS */;
INSERT INTO `meet_admin_users-backup` VALUES (1,'1','admin',1416965007,NULL,NULL,NULL,'1',NULL,323,'false',NULL,'14e1b600b1fd579f47433b88e8d85291',NULL,'1'),(2,'1','sd01',0,'彭红星','',NULL,'1',NULL,0,'false','','d8cbec4d46e7f421213bab17b89e8174','','1'),(3,'1','sd02',0,'刘成海',NULL,NULL,'1',NULL,0,'false','','d8cbec4d46e7f421213bab17b89e8174','','1'),(4,'1','sd03',0,'杨娟',NULL,NULL,'1',NULL,0,'false','','d8cbec4d46e7f421213bab17b89e8174','','1'),(5,'1','dy01',0,'吴振芸',NULL,NULL,'1',NULL,0,'false','','d8cbec4d46e7f421213bab17b89e8174','','1'),(6,'1','dy02',0,'张雅琴',NULL,NULL,'1',NULL,0,'false','','d8cbec4d46e7f421213bab17b89e8174','','1'),(8,'1','查单',0,NULL,NULL,NULL,'0',NULL,0,'false','','d8cbec4d46e7f421213bab17b89e8174','','2');
/*!40000 ALTER TABLE `meet_admin_users-backup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_agent`
--

DROP TABLE IF EXISTS `meet_agent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_agent` (
  `agent_id` int(10) NOT NULL AUTO_INCREMENT,
  `agent_name` varchar(255) DEFAULT NULL,
  `agent_code` varchar(255) DEFAULT NULL,
  `p_order` int(10) DEFAULT '99',
  PRIMARY KEY (`agent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_agent`
--

LOCK TABLES `meet_agent` WRITE;
/*!40000 ALTER TABLE `meet_agent` DISABLE KEYS */;
INSERT INTO `meet_agent` VALUES (1,'北京办事处（托管）','001',99),(2,'北京办事处（直营）','002',99),(3,'成都办事处','003',99),(4,'福州办事处','010',99),(5,'浙江办事处','005',99),(6,'江苏办事处','006',99),(7,'南昌办事处','007',99),(8,'南京办事处','008',99),(9,'上海办事处','009',99),(10,'深圳办事处','004',99),(11,'天津办事处','012',99),(12,'武汉办事处','011',99),(13,'重庆办事处','013',99),(14,'浙江上虞陈柯','057CK',99),(15,'浙江义乌杨永清','057YYQ',99),(16,'浙江嘉兴周宾','057ZB',99),(17,'浙江平湖刘仁银','057BQD',99),(18,'浙江慈溪阮建军','057RJJ',99),(19,'浙江桐庐郑磊','057ZL',99),(20,'浙江温州赵晓珍','057ZXZ',99),(21,'浙江绍兴施菊红','057SJH',99),(22,'浙江衢州李为华','057LWH',99),(23,'浙江诸暨姚利祥','057YLX',99),(24,'台州金秋','TZJQ',99),(25,'浙江富阳黄晓琴','057HXQ',99),(26,'内蒙古乌兰浩特朱凯','047ZK',99),(27,'内蒙古包头市康珍玉','U47KZY',99),(28,'内蒙古包头张秋兰','047ZQL',99),(29,'内蒙古呼和浩特张丹','047ZD',99),(30,'内蒙古巴彦淖尔苏秀梅','047SXM',99),(31,'天津武清赵子龙','O22ZZL',99),(32,'河北保定贾磊','031JL',99),(33,'河北唐山葛彬','031GB',99),(34,'河北安新朱虹','031ZH',99),(35,'河北张家口苏利娟','031SLJ',99),(36,'河北易县王思淇','312WSQ',99),(37,'河北正定房小明','031FXM',99),(38,'河北沧州王继娜','031WJL',99),(39,'河北燕郊赵福萍','031ZFP',99),(40,'河北石家庄邓江卫','031DJW',99),(41,'河北秦皇岛王君','031WJ',99),(42,'河北衡水张瑶','031ZY',99),(43,'内蒙乌海张海燕','047SQ',99),(44,'四川宜宾杨贤坤','028YXK',99),(45,'四川都江堰马雪静','028MXJ',99),(46,'四川西昌谢磊','028XL',99),(47,'彭州郫县刘忠刚','028LZG',99),(48,'眉山朱婷薇','028ZTW',99),(49,'湖北十堰王丹卉','071WDH',99),(50,'湖北咸宁余洁','071YJ',99),(51,'湖北宜昌王春莲','071WCL',99),(52,'湖北荆门卞翠红','027BCH',99),(53,'重庆邹波','023ZB',99),(54,'河南郑州王晓娜','037WXN',99),(55,'江苏宿迁祖红丽','052ZHL',99),(56,'安徽太和梁玉英','055LYY',99),(57,'安徽吴赪瑾','055WZJ',99),(58,'安徽合肥潘莉娜','055LY',99),(59,'安徽阜阳屈伟','055QW',99),(60,'江苏启东陆黎明','025LLM',99),(61,'江苏张家港徐燕萍','025XYP',99),(62,'江苏徐州新沂 赵素丹','025ZSD',99),(63,'江苏徐州黄重强','051HZQ',99),(64,'江苏泰州周娟','051ZJ',99),(65,'江苏海安孙月梅','025SYM',99),(66,'江苏海门沈鼎城','025SDC',99),(67,'江苏盐城孙海霞','051DFL',99),(68,'江苏盐城韦伟','515WW',99),(69,'云南昆明唐文慧','087TWH',99),(70,'江西赣州肖琦','079XQ',99),(71,'宁夏中卫刘学琴','095LXQ',99),(72,'宁夏银川韩英','093HY',99),(73,'广西南宁石坚祯','077SJZ',99),(74,'广西柳州农妮','077NN',99),(75,'广西桂林周玲（蒋艺转)','0773ZL',99),(76,'新疆伊犁姜雨','099JY',99),(77,'贵州贵阳邹波','085ZB',99),(78,'贵州铜仁李群','085LQ',99),(79,'贵州黔西杨伟','857YW',99),(80,'贵州遵义邹波','0852ZB',99),(81,'新疆乌鲁木齐柴琳','091CL',99),(82,'上海松江顾玉伟','U21GYW',99),(83,'山西太原赵敏','035ZM',99),(84,'山西运城杨晓','053YX',99),(85,'山西运城武鑫','053WX',99),(86,'海南海口黄兰梅','089HLM',99),(87,'上海吴霜蝶','021WSD',99),(88,'广东惠州罗松涛','075LST',99),(89,'湖南娄底梁斐','073LF',99),(90,'甘肃定西陆江江','093LJJ',99),(91,'甘肃酒泉曹颖','0937CY',99),(92,'甘肃兰州李飞','U935LF',99),(93,'山东东营柳双','053WCH',99),(94,'山东临沂王海青','053WHQ',99),(95,'山东临沂费县范长爱','053FCA',99),(96,'山东即墨常晓丽','532CXL',99),(97,'山东威海孙秀文/陈怀凤','053SXW',99),(98,'山东济南范永亮','053FYL',99),(99,'山东潍坊郭迎新','053GYX',99),(100,'山东烟台赵燕','053ZY',99),(101,'山东威海赛超','053SC',99),(102,'山东海阳张志晓','053YYW',99),(103,'山东济宁沈静','U53SJ',99),(104,'山东聊城李珊珊','053LSS',99),(105,'山东临沂徐丽芹','053XLQ',99),(106,'山东青岛辛焕义','053XHY',99),(107,'甘肃兰州邵新东','093SXD',99),(108,'陕西西安张大伟（郭鲜莲）','091ZDW',99),(109,'吉林延吉蔡小琴','043CXQ',99),(110,'吉林长春张立红','043ZLH',99),(111,'辽宁大连袁秀兰','041YXL',99),(112,'辽宁大连陈健','O411CJ',99),(113,'辽宁朝阳秦巍','0421QW',99),(114,'辽宁沈阳郭勇','041GY',99),(115,'辽宁盘锦徐东飞','042XDF',99),(116,'辽宁阜新徐东飞','041XDF',99),(117,'辽宁葫芦岛徐冰玉','042XBY',99),(118,'辽宁辽阳金智远','041JZY',99),(119,'辽宁铁岭李娜','041LN',99),(120,'辽宁鞍山韩斌','041HB',99),(121,'黑龙江哈尔滨陈雅芳','045CYF',99),(122,'黑龙江大庆王学云','045WXY',99),(123,'河北邯郸王黎莹','031WLY',99),(124,'辽宁营口徐颖','047XY',99),(125,'山东济宁王萍','053WP',99),(126,'山东滨州王洋泽薷','053WYZ',99),(127,'广东深圳李嘉','0755LJ',99),(128,'安徽亳州陈圣贤','055CSX',99),(129,'安徽利辛范卫珍','055FWZ',99),(130,'江苏泰州周梅','051ZM',99),(131,'江苏江阴何江','051HJ',99),(132,'江苏高邮瞿根','025QG',99),(133,'安徽广德罗永凤','055LYF',99),(134,'安徽合肥王丽','055LY',99),(135,'四川达州洪攀','028HP',99),(136,'浙江乐清计庆妹','U57JQM',99),(137,'浙江永嘉朱文强','057ZWQ',99),(138,'江西宜春刘金容','079LJR',99),(139,'浙江余姚马振礼','057MZL',99),(140,'安徽六安戚士娟','055QSJ',99),(141,'吉林延吉吕品','043LP',99),(142,'辽宁辽阳徐梦娇','041XMJ',99),(143,'深圳赵龙翠','075ZLC',99),(144,'山东寿光王庆丽','053WQL',99),(145,'武汉可恩宝贝','027KE',99),(146,'浙江富阳黄晓勤','057HXQ',99),(147,'重庆贺欢','023HH',99),(148,'广州办事处','026',99),(149,'珠海办事处','022',99),(150,'湖南办事处','027',99);
/*!40000 ALTER TABLE `meet_agent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_auth_assignment`
--

DROP TABLE IF EXISTS `meet_auth_assignment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `meet_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `meet_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_auth_assignment`
--

LOCK TABLES `meet_auth_assignment` WRITE;
/*!40000 ALTER TABLE `meet_auth_assignment` DISABLE KEYS */;
INSERT INTO `meet_auth_assignment` VALUES ('商品管理','10',1551682427),('商品管理','11',1551682436),('商品管理','12',1551682460),('商品管理','13',1551682471),('商品管理','2',1540796898),('商品管理','9',1551682415),('审单','3',1551682047),('审单','4',1551682358),('审单','5',1551682368),('审单','6',1551682386),('审单','7',1551682396),('审单','8',1551682405),('超级管理员','1',1540796028);
/*!40000 ALTER TABLE `meet_auth_assignment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_auth_item`
--

DROP TABLE IF EXISTS `meet_auth_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_auth_item`
--

LOCK TABLES `meet_auth_item` WRITE;
/*!40000 ALTER TABLE `meet_auth_item` DISABLE KEYS */;
INSERT INTO `meet_auth_item` VALUES ('/*',2,NULL,NULL,NULL,1540795940,1540795940),('/default/index',2,NULL,NULL,NULL,1540796536,1540796536),('/down/*',2,NULL,NULL,NULL,1551680971,1551680971),('/help/*',2,NULL,NULL,NULL,1551680975,1551680975),('/insert/*',2,NULL,NULL,NULL,1551680979,1551680979),('/manage/*',2,NULL,NULL,NULL,1551680983,1551680983),('/morder/*',2,NULL,NULL,NULL,1551680989,1551680989),('/other/*',2,NULL,NULL,NULL,1551680997,1551680997),('/porder/*',2,NULL,NULL,NULL,1551681002,1551681002),('/product/*',2,NULL,NULL,NULL,1540796284,1540796284),('/site/*',2,NULL,NULL,NULL,1551681009,1551681009),('/test/*',2,NULL,NULL,NULL,1551681014,1551681014),('/upload/*',2,NULL,NULL,NULL,1551681017,1551681017),('/user/*',2,NULL,NULL,NULL,1551681811,1551681811),('product',2,'商品管理',NULL,NULL,1540796311,1551680740),('shendan',2,'审单的权限',NULL,NULL,1551680860,1551681902),('商品管理',1,'商品管理',NULL,NULL,1540796336,1551680794),('审单',1,'审单人，权限较大',NULL,NULL,1551681957,1551681957),('管理员权限',2,'所有权限',NULL,NULL,1540795984,1551680719),('超级管理员',1,'拥有所有的权限',NULL,NULL,1540796012,1551680776),('首页',2,'首页，允许所有登陆的访问',NULL,NULL,1540796594,1540796594);
/*!40000 ALTER TABLE `meet_auth_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_auth_item_child`
--

DROP TABLE IF EXISTS `meet_auth_item_child`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `meet_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `meet_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `meet_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `meet_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_auth_item_child`
--

LOCK TABLES `meet_auth_item_child` WRITE;
/*!40000 ALTER TABLE `meet_auth_item_child` DISABLE KEYS */;
INSERT INTO `meet_auth_item_child` VALUES ('管理员权限','/*'),('shendan','/default/index'),('商品管理','/default/index'),('首页','/default/index'),('shendan','/down/*'),('shendan','/help/*'),('shendan','/insert/*'),('shendan','/manage/*'),('shendan','/morder/*'),('shendan','/other/*'),('shendan','/porder/*'),('product','/product/*'),('shendan','/product/*'),('商品管理','/product/*'),('shendan','/site/*'),('shendan','/test/*'),('shendan','/upload/*'),('shendan','/user/*'),('审单','shendan'),('超级管理员','管理员权限');
/*!40000 ALTER TABLE `meet_auth_item_child` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_auth_rule`
--

DROP TABLE IF EXISTS `meet_auth_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_auth_rule`
--

LOCK TABLES `meet_auth_rule` WRITE;
/*!40000 ALTER TABLE `meet_auth_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `meet_auth_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_brand`
--

DROP TABLE IF EXISTS `meet_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_brand` (
  `brand_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `brand_name` varchar(100) NOT NULL COMMENT '品牌名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`brand_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_brand`
--

LOCK TABLES `meet_brand` WRITE;
/*!40000 ALTER TABLE `meet_brand` DISABLE KEYS */;
INSERT INTO `meet_brand` VALUES (1,'OCT',99),(2,'UKI',99),(10,'UKI 线上',99),(6,'外采用品',99),(9,'OCT 线上',99),(3,'Weekend',99);
/*!40000 ALTER TABLE `meet_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_cat_big`
--

DROP TABLE IF EXISTS `meet_cat_big`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_cat_big` (
  `big_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `cat_name` varchar(100) NOT NULL COMMENT '分类名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '上级大分类',
  PRIMARY KEY (`big_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_cat_big`
--

LOCK TABLES `meet_cat_big` WRITE;
/*!40000 ALTER TABLE `meet_cat_big` DISABLE KEYS */;
INSERT INTO `meet_cat_big` VALUES (1,'服装',99),(2,'家居',99),(3,'防辐射',99),(4,'备品',99),(6,'化妆品',99);
/*!40000 ALTER TABLE `meet_cat_big` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_cat_big_small`
--

DROP TABLE IF EXISTS `meet_cat_big_small`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_cat_big_small` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `big_id` mediumint(8) unsigned NOT NULL COMMENT '大类',
  `big_cat_name` varchar(100) NOT NULL COMMENT '大分类名称',
  `small_id` mediumint(8) unsigned NOT NULL COMMENT '小类',
  `small_cat_name` varchar(100) NOT NULL COMMENT '小分类名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_cat_big_small`
--

LOCK TABLES `meet_cat_big_small` WRITE;
/*!40000 ALTER TABLE `meet_cat_big_small` DISABLE KEYS */;
INSERT INTO `meet_cat_big_small` VALUES (1,1,'服装',11,'针织衫'),(2,1,'服装',60,'鞋袜'),(3,1,'服装',56,'项链首饰'),(4,1,'服装',12,'无袖连衣裙'),(5,1,'服装',13,'有袖连衣裙'),(6,1,'服装',14,'单裙'),(7,1,'服装',15,'外套'),(8,1,'服装',17,'套装'),(10,1,'服装',16,'背带裤裙'),(14,2,'家居',1,'文胸'),(15,2,'家居',2,'内裤(含一次性)'),(16,2,'家居',6,'上衣'),(20,2,'家居',3,'塑身上装'),(21,2,'家居',8,'塑身下装(含束腹)'),(22,2,'家居',20,'婴童上装(含套装)'),(24,3,'防辐射',18,'防辐射抱被'),(25,3,'防辐射',19,'手机防护袋'),(27,6,'化妆品',46,'脸部护理'),(28,6,'化妆品',47,'手部护理'),(29,6,'化妆品',48,'身体护理'),(31,1,'服装',10,'T恤'),(32,1,'服装',7,'便裤(裤子)'),(33,1,'服装',6,'上衣'),(34,3,'防辐射',6,'上衣'),(35,3,'防辐射',7,'便裤(裤子)'),(36,2,'家居',17,'套装'),(39,2,'家居',23,'婴童下装'),(46,2,'家居',7,'便裤(裤子)'),(50,2,'家居',9,'包鞋袜'),(51,2,'家居',22,'婴童用品'),(52,2,'家居',13,'有袖连衣裙'),(53,2,'家居',4,'妈咪用品'),(54,2,'家居',10,'T恤'),(55,2,'家居',11,'针织衫'),(56,2,'家居',12,'无袖连衣裙'),(57,2,'家居',60,'鞋袜'),(58,3,'防辐射',4,'妈咪用品'),(59,3,'防辐射',16,'背带裤裙'),(60,6,'化妆品',59,'洗护用品'),(61,2,'家居',21,'纸制品'),(62,3,'防辐射',57,'其他商品'),(63,6,'化妆品',4,'妈咪用品'),(64,1,'服装',61,'帽子'),(65,1,'服装',62,'围巾'),(66,1,'服装',63,'假领'),(67,4,'备品',33,'软装类'),(68,6,'化妆品',64,'口腔护理');
/*!40000 ALTER TABLE `meet_cat_big_small` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_cat_middle`
--

DROP TABLE IF EXISTS `meet_cat_middle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_cat_middle` (
  `cat_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `middle_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级大分类',
  `cat_name` varchar(100) NOT NULL COMMENT '分类名称',
  `parent_id` mediumint(5) DEFAULT NULL,
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '上级大分类',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_cat_middle`
--

LOCK TABLES `meet_cat_middle` WRITE;
/*!40000 ALTER TABLE `meet_cat_middle` DISABLE KEYS */;
INSERT INTO `meet_cat_middle` VALUES (1,1,'孕妇装',1,99),(2,7,'产前后用品',2,99),(3,19,'妈咪包袋',2,99),(4,20,'孕妇帽鞋袜',2,99),(5,4,'孕妇内衣',2,99),(6,3,'家居服',2,99),(7,21,'束身产品',2,99),(8,10,'婴童装',2,99),(9,18,'婴童用品',2,99),(10,2,'防辐射',3,99),(11,8,'孕妇护肤品',6,99),(12,17,'孕妇裤',1,99),(13,6,'配饰系列',1,99),(14,0,'未定义',NULL,99),(15,11,'赠品类',NULL,99),(16,12,'终端道具',NULL,99),(17,13,'印刷品类',NULL,99),(18,14,'包装物类',NULL,99),(19,15,'办公用品类',NULL,99),(20,16,'外采用品系列',NULL,99),(21,5,'防辐射用品',NULL,99),(22,9,'其他系列',NULL,99);
/*!40000 ALTER TABLE `meet_cat_middle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_cat_small`
--

DROP TABLE IF EXISTS `meet_cat_small`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_cat_small` (
  `cat_id` int(8) unsigned NOT NULL AUTO_INCREMENT,
  `small_id` mediumint(8) unsigned NOT NULL COMMENT '主键，自增，类型id',
  `cat_name` varchar(100) NOT NULL COMMENT '分类名称',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0' COMMENT '上级大分类',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '上级大分类',
  PRIMARY KEY (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_cat_small`
--

LOCK TABLES `meet_cat_small` WRITE;
/*!40000 ALTER TABLE `meet_cat_small` DISABLE KEYS */;
INSERT INTO `meet_cat_small` VALUES (1,4,'妈咪用品',7,99),(2,9,'包鞋袜',19,99),(3,9,'包鞋袜',20,99),(4,6,'上衣',1,99),(5,10,'T恤',1,99),(6,11,'针织衫',1,99),(7,12,'无袖连衣裙',1,99),(8,13,'有袖连衣裙',1,99),(9,14,'单裙',1,99),(10,15,'外套',1,99),(11,17,'套装',1,99),(12,18,'防辐射抱被',2,99),(13,19,'手机防护袋',2,99),(14,6,'上衣',2,99),(15,1,'文胸',4,99),(16,2,'内裤(含一次性)',4,99),(17,7,'便裤(裤子)',17,99),(18,16,'背带裤裙',17,99),(19,6,'上衣',3,99),(20,7,'便裤(裤子)',3,99),(21,17,'套装',3,99),(22,10,'T恤',3,99),(23,3,'塑身上装',21,99),(24,8,'塑身下装(含束腹)',21,99),(25,46,'脸部护理',8,99),(26,47,'手部护理',8,99),(27,48,'身体护理',8,99),(28,59,'洗护用品',8,99),(29,20,'婴童上装(含套装)',10,99),(30,22,'婴童用品',18,99),(31,21,'纸制品',0,99),(32,23,'婴童下装',0,99),(33,31,'模特类',0,99),(34,32,'衣裤架类',0,99),(35,33,'软装类',0,99),(36,34,'电子类',0,99),(37,35,'样衣类',0,99),(38,36,'画册类',0,99),(39,37,'书籍类',0,99),(40,38,'其他类',0,99),(41,39,'文具类',0,99),(42,40,'日用品类',0,99),(43,41,'报表类',0,99),(44,42,'包装盒类',0,99),(45,43,'手提袋类',0,99),(46,44,'纸箱类',0,99),(47,45,'封箱带类',0,99),(48,49,'工作服类',0,99),(49,60,'鞋袜',0,99),(50,56,'项链首饰',0,99),(51,57,'其他商品',0,99),(52,58,'奶瓶奶嘴',0,99),(53,61,'帽子',0,99),(54,62,'围巾',0,99),(55,63,'假领',0,99),(56,64,'口腔护理',0,99);
/*!40000 ALTER TABLE `meet_cat_small` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_color`
--

DROP TABLE IF EXISTS `meet_color`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_color` (
  `color_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `color_no` varchar(5) NOT NULL COMMENT '颜色代码',
  `color_name` varchar(100) NOT NULL COMMENT '颜色名称',
  `scheme_id` mediumint(5) DEFAULT NULL,
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`color_id`),
  KEY `color_id` (`color_id`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=585 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_color`
--

LOCK TABLES `meet_color` WRITE;
/*!40000 ALTER TABLE `meet_color` DISABLE KEYS */;
INSERT INTO `meet_color` VALUES (1,'00','00无色',10,99),(2,'000','标品',10,99),(3,'001','多色',10,99),(4,'10','10黑色',1,99),(5,'10000','BOCFAC',1,99),(6,'10001','BOCHAC',1,99),(7,'10002','BOCIAC',1,99),(8,'10003','BOCGAC',1,99),(9,'10004','BODCAC',1,99),(10,'10005','BODJAC',1,99),(11,'10006','BODAAC',1,99),(12,'10007','BODBAC',1,99),(13,'103','黑色',1,99),(14,'104','黑色花沙',1,99),(15,'105','黑色格纹',1,99),(16,'106','黑色印花',1,99),(17,'107','黑色波点',1,99),(18,'108','黑色条纹',1,99),(19,'109','黑色色块',1,99),(20,'11','11黑色碎花',1,99),(21,'113','黑灰',1,99),(22,'114','黑灰花沙',1,99),(23,'115','黑灰格纹',1,99),(24,'116','黑灰印花',1,99),(25,'117','黑灰波点',1,99),(26,'118','黑灰条纹',1,99),(27,'119','黑灰色块',1,99),(28,'120','电商专用',1,99),(29,'123','黑藏青预留',1,99),(30,'124','黑藏青花沙',1,99),(31,'125','黑藏青格纹',1,99),(32,'126','黑藏青印花',1,99),(33,'127','黑藏青波点',1,99),(34,'128','黑藏青条纹',1,99),(35,'129','黑藏青色块',1,99),(36,'13','13深灰',1,99),(37,'130','黑粉条',1,99),(38,'133','深灰',1,99),(39,'134','深灰花沙',1,99),(40,'135','深灰格纹',1,99),(41,'136','深灰印花',1,99),(42,'137','深灰波点',1,99),(43,'138','深灰条纹',1,99),(44,'139','深灰色块',1,99),(45,'14','14中灰',1,99),(46,'143','烟灰',1,99),(47,'144','烟灰花沙',1,99),(48,'145','烟灰格纹',1,99),(49,'146','烟灰印花',1,99),(50,'147','烟灰波点',1,99),(51,'148','烟灰条纹',1,99),(52,'149','烟灰色块',1,99),(53,'15','15银灰',1,99),(54,'153','中灰',1,99),(55,'154','中灰花沙',1,99),(56,'155','中灰格纹',1,99),(57,'156','中灰印花',1,99),(58,'157','中灰波点',1,99),(59,'158','中灰条纹',1,99),(60,'159','中灰色块',1,99),(61,'163','灰色',1,99),(62,'164','灰色花沙',1,99),(63,'165','灰色格纹',1,99),(64,'166','灰色印花',1,99),(65,'167','灰色波点',1,99),(66,'168','灰色条纹',1,99),(67,'169','灰色色块',1,99),(68,'17','17灰色',1,99),(69,'173','浅灰',1,99),(70,'174','浅灰花沙',1,99),(71,'175','浅灰格纹',1,99),(72,'176','浅灰印花',1,99),(73,'177','浅灰波点',1,99),(74,'178','浅灰条纹',1,99),(75,'179','浅灰色块',1,99),(76,'18','18电商灰色',1,99),(77,'183','米灰预留',1,99),(78,'184','米灰花沙',1,99),(79,'185','米灰格纹',1,99),(80,'186','米灰印花',1,99),(81,'187','米灰波点',1,99),(82,'188','米灰条纹',1,99),(83,'189','米灰色块',1,99),(84,'20','20白色',2,99),(85,'203','杏色',2,99),(86,'204','杏色花沙',2,99),(87,'205','杏色格纹',2,99),(88,'206','杏色印花',2,99),(89,'207','杏色波点',2,99),(90,'208','杏色条纹',2,99),(91,'209','杏色色块',2,99),(92,'21','21漂白',2,99),(93,'210','浅杏色阶0-深',2,99),(94,'213','浅杏',2,99),(95,'214','浅杏花沙',2,99),(96,'215','浅杏格纹',2,99),(97,'216','浅杏印花',2,99),(98,'217','浅杏波点',2,99),(99,'218','浅杏条纹',2,99),(100,'219','浅杏色块',2,99),(101,'22','22米白',2,99),(102,'223','米白',2,99),(103,'224','米白花沙',2,99),(104,'225','米白格纹',2,99),(105,'226','米白印花',2,99),(106,'227','米白波点',2,99),(107,'228','米白条纹',2,99),(108,'229','米白色块',2,99),(109,'233','本白',2,99),(110,'234','本白花沙',2,99),(111,'235','本白格纹',2,99),(112,'236','本白印花',2,99),(113,'237','本白波点',2,99),(114,'238','本白条纹',2,99),(115,'239','本白色块',2,99),(116,'24','24米色',2,99),(117,'243','漂白',2,99),(118,'244','漂白花沙',2,99),(119,'245','漂白格纹',2,99),(120,'246','漂白印花',2,99),(121,'247','漂白波点',2,99),(122,'248','漂白条纹',2,99),(123,'249','漂白色块',2,99),(124,'25','25杏色',2,99),(125,'253','珍珠白',2,99),(126,'254','珍珠白花沙',2,99),(127,'255','珍珠白格纹',2,99),(128,'256','珍珠白印花',2,99),(129,'257','珍珠白波点',2,99),(130,'258','珍珠白条纹',2,99),(131,'259','珍珠白色块',2,99),(132,'30','30咖啡',3,99),(133,'303','灰咖',3,99),(134,'304','灰咖花沙',3,99),(135,'305','灰咖格纹',3,99),(136,'306','灰咖印花',3,99),(137,'307','灰咖波点',3,99),(138,'308','灰咖条纹',3,99),(139,'309','灰咖色块',3,99),(140,'313','深咖',3,99),(141,'314','深咖花沙',3,99),(142,'315','深咖格纹',3,99),(143,'316','深咖印花',3,99),(144,'317','深咖波点',3,99),(145,'318','深咖条纹',3,99),(146,'319','深咖色块',3,99),(147,'323','咖啡',3,99),(148,'324','咖啡花沙',3,99),(149,'325','咖啡格纹',3,99),(150,'326','咖啡印花',3,99),(151,'327','咖啡波点',3,99),(152,'328','咖啡条纹',3,99),(153,'329','咖啡色块',3,99),(154,'33','33驼色',3,99),(155,'34','34浅驼色',3,99),(156,'343','驼色',3,99),(157,'344','驼色花沙',3,99),(158,'345','驼色格纹',3,99),(159,'346','驼色印花',3,99),(160,'347','驼色波点',3,99),(161,'348','驼色条纹',3,99),(162,'349','驼色色块',3,99),(163,'353','浅驼',3,99),(164,'354','浅驼花沙',3,99),(165,'355','浅驼格纹',3,99),(166,'356','浅驼印花',3,99),(167,'357','浅驼波点',3,99),(168,'358','浅驼条纹',3,99),(169,'359','浅驼色块',3,99),(170,'363','米咖',3,99),(171,'364','米咖花沙',3,99),(172,'365','米咖格纹',3,99),(173,'366','米咖印花',3,99),(174,'367','米咖波点',3,99),(175,'368','米咖条纹',3,99),(176,'369','米咖色块',3,99),(177,'383','卡其',3,99),(178,'384','卡其花沙',3,99),(179,'385','卡其格纹',3,99),(180,'386','卡其印花',3,99),(181,'387','卡其波点',3,99),(182,'388','卡其条纹',3,99),(183,'389','卡其色块',3,99),(184,'40','40绿色',4,99),(185,'403','灰绿',4,99),(186,'404','灰绿花沙',4,99),(187,'405','灰绿格纹',4,99),(188,'406','灰绿印花',4,99),(189,'407','灰绿波点',4,99),(190,'408','灰绿条纹',4,99),(191,'409','灰绿色块',4,99),(192,'41','41浅绿',4,99),(193,'410','电商小脚(临时)',4,99),(194,'412','深绿色阶2-浅',4,99),(195,'413','深绿',4,99),(196,'414','深绿花沙',4,99),(197,'415','深绿格纹',4,99),(198,'416','深绿印花',4,99),(199,'417','深绿波点',4,99),(200,'418','深绿条纹',4,99),(201,'419','深绿色块',4,99),(202,'42','42蓝绿',4,99),(203,'43','43果绿',4,99),(204,'433','军绿',4,99),(205,'434','军绿花沙',4,99),(206,'435','军绿格纹',4,99),(207,'436','军绿印花',4,99),(208,'437','军绿波点',4,99),(209,'438','军绿条纹',4,99),(210,'439','军绿色块',4,99),(211,'44','44苹果绿',4,99),(212,'443','翡绿',4,99),(213,'444','翡绿花沙',4,99),(214,'445','翡绿格纹',4,99),(215,'446','翡绿印花',4,99),(216,'447','翡绿波点',4,99),(217,'448','翡绿条纹',4,99),(218,'449','翡绿色块',4,99),(219,'453','绿色',4,99),(220,'454','绿色花沙',4,99),(221,'455','绿色格纹',4,99),(222,'456','绿色印花',4,99),(223,'457','绿色波点',4,99),(224,'458','绿色条纹',4,99),(225,'459','绿色色块',4,99),(226,'46','46粉绿',4,99),(227,'463','草绿',4,99),(228,'464','草绿花沙',4,99),(229,'465','草绿格纹',4,99),(230,'466','草绿印花',4,99),(231,'467','草绿波点',4,99),(232,'468','草绿条纹',4,99),(233,'469','草绿色块',4,99),(234,'47','47翠绿',4,99),(235,'473','果绿',4,99),(236,'474','果绿花沙',4,99),(237,'475','果绿格纹',4,99),(238,'476','果绿印花',4,99),(239,'477','果绿波点',4,99),(240,'478','果绿条纹',4,99),(241,'479','果绿色块',4,99),(242,'49','49墨绿',4,99),(243,'490','翠绿色阶0-深',4,99),(244,'491','电商专用5',4,99),(245,'492','电商专用2',4,99),(246,'493','浅绿',4,99),(247,'494','浅绿花沙',4,99),(248,'495','浅绿格纹',4,99),(249,'496','浅绿印花',4,99),(250,'497','浅绿波点',4,99),(251,'498','浅绿条纹',4,99),(252,'499','浅绿色块',4,99),(253,'50','50红色',5,99),(254,'503','深红',5,99),(255,'504','深红花沙',5,99),(256,'505','深红格纹',5,99),(257,'506','深红印花',5,99),(258,'507','深红波点',5,99),(259,'508','深红条纹',5,99),(260,'509','深红色块',5,99),(261,'51','51粉红',5,99),(262,'510','灰粉色阶0-深',5,99),(263,'511','灰粉色阶1-中',5,99),(264,'512','灰粉色阶2-浅',5,99),(265,'513','灰粉',5,99),(266,'514','灰粉花纱',5,99),(267,'515','灰粉格纹',5,99),(268,'516','灰粉印花',5,99),(269,'517','灰粉波点',5,99),(270,'518','灰粉条纹',5,99),(271,'519','灰粉色块',5,99),(272,'52','52粉桔',5,99),(273,'523','暗红',5,99),(274,'524','暗红花沙',5,99),(275,'525','暗红格纹',5,99),(276,'526','暗红印花',5,99),(277,'527','暗红波点',5,99),(278,'528','暗红条纹',5,99),(279,'529','暗红色块',5,99),(280,'53','53桃红',5,99),(281,'536','红色预留',5,99),(282,'54','54玫红',5,99),(283,'540','大红色阶0-深',5,99),(284,'543','大红',5,99),(285,'544','大红花沙',5,99),(286,'545','大红格纹',5,99),(287,'546','大红印花',5,99),(288,'547','大红波点',5,99),(289,'548','大红条纹',5,99),(290,'549','大红色块',5,99),(291,'55','55桔红',5,99),(292,'553','玫红',5,99),(293,'554','玫红花沙',5,99),(294,'555','玫红格纹',5,99),(295,'556','玫红印花',5,99),(296,'557','玫红波点',5,99),(297,'558','玫红条纹',5,99),(298,'559','玫红色块',5,99),(299,'563','桃红',5,99),(300,'564','桃红花沙',5,99),(301,'565','桃红格纹',5,99),(302,'566','桃红印花',5,99),(303,'567','桃红波点',5,99),(304,'568','桃红条纹',5,99),(305,'569','桃红色块',5,99),(306,'57','57枣红',5,99),(307,'573','热粉红预留',5,99),(308,'574','热粉红花沙',5,99),(309,'575','热粉红格纹',5,99),(310,'576','热粉红印花',5,99),(311,'577','热粉红波点',5,99),(312,'578','热粉红条纹',5,99),(313,'579','热粉红色块',5,99),(314,'58','58紫红',5,99),(315,'583','粉红预留',5,99),(316,'584','粉红花沙',5,99),(317,'585','粉红格纹',5,99),(318,'586','粉红印花',5,99),(319,'587','粉红波点',5,99),(320,'588','粉红条纹',5,99),(321,'589','粉红色块',5,99),(322,'590','电商专用3',5,99),(323,'591','电商专用7',5,99),(324,'592','电商专用6',5,99),(325,'593','裸粉',5,99),(326,'594','裸粉花沙',5,99),(327,'595','裸粉格纹',5,99),(328,'596','裸粉印花',5,99),(329,'597','裸粉波点',5,99),(330,'598','裸粉条纹',5,99),(331,'599','裸粉色块',5,99),(332,'60','60黄色',6,99),(333,'603','灰黄',6,99),(334,'604','灰黄花沙',6,99),(335,'605','灰黄格纹',6,99),(336,'606','灰黄印花',6,99),(337,'607','灰黄波点',6,99),(338,'608','灰黄条纹',6,99),(339,'609','灰黄色块',6,99),(340,'61','61米黄',6,99),(341,'610','电商喇叭(临时)',6,99),(342,'613','土黄',6,99),(343,'614','土黄花沙',6,99),(344,'615','土黄格纹',6,99),(345,'616','土黄印花',6,99),(346,'617','土黄波点',6,99),(347,'618','土黄条纹',6,99),(348,'619','土黄色块',6,99),(349,'62','62柠黄',6,99),(350,'623','金黄',6,99),(351,'624','金黄花沙',6,99),(352,'625','金黄格纹',6,99),(353,'626','金黄印花',6,99),(354,'627','金黄波点',6,99),(355,'628','金黄条纹',6,99),(356,'629','金黄色块',6,99),(357,'633','姜黄',6,99),(358,'634','姜黄花沙',6,99),(359,'635','姜黄格纹',6,99),(360,'636','姜黄印花',6,99),(361,'637','姜黄波点',6,99),(362,'638','姜黄条纹',6,99),(363,'639','姜黄色块',6,99),(364,'643','中黄',6,99),(365,'644','中黄花沙',6,99),(366,'645','中黄格纹',6,99),(367,'646','中黄印花',6,99),(368,'647','中黄波点',6,99),(369,'648','中黄条纹',6,99),(370,'649','中黄色块',6,99),(371,'65','65浅黄',6,99),(372,'653','黄色',6,99),(373,'654','黄色花沙',6,99),(374,'655','黄色格纹',6,99),(375,'656','黄色印花',6,99),(376,'657','黄色波点',6,99),(377,'658','黄色条纹',6,99),(378,'659','黄色色块',6,99),(379,'663','芥黄',6,99),(380,'664','芥黄花沙',6,99),(381,'665','芥黄格纹',6,99),(382,'666','芥黄印花',6,99),(383,'667','芥黄波点',6,99),(384,'668','芥黄条纹',6,99),(385,'669','芥黄色块',6,99),(386,'673','柠黄',6,99),(387,'674','柠黄花沙',6,99),(388,'675','柠黄格纹',6,99),(389,'676','柠黄印花',6,99),(390,'677','柠黄波点',6,99),(391,'678','柠黄条纹',6,99),(392,'679','柠黄色块',6,99),(393,'690','电商专用8',6,99),(394,'691','电商专用4',6,99),(395,'693','浅黄',6,99),(396,'694','浅黄花沙',6,99),(397,'695','浅黄格纹',6,99),(398,'696','浅黄印花',6,99),(399,'697','浅黄波点',6,99),(400,'698','浅黄条纹',6,99),(401,'699','浅黄色块',6,99),(402,'70','70蓝色',7,99),(403,'703','灰蓝',7,99),(404,'704','灰蓝花沙',7,99),(405,'705','灰蓝格纹',7,99),(406,'706','灰蓝印花',7,99),(407,'707','灰蓝波点',7,99),(408,'708','灰蓝条纹',7,99),(409,'709','灰蓝色块',7,99),(410,'71','71浅蓝',7,99),(411,'713','藏青',7,99),(412,'714','藏青花沙',7,99),(413,'715','藏青格纹',7,99),(414,'716','藏青印花',7,99),(415,'717','藏青波点',7,99),(416,'718','藏青条纹',7,99),(417,'719','藏青色块',7,99),(418,'72','72湖蓝',7,99),(419,'723','深蓝',7,99),(420,'724','深蓝花沙',7,99),(421,'725','深蓝格纹',7,99),(422,'726','深蓝印花',7,99),(423,'727','深蓝波点',7,99),(424,'728','深蓝条纹',7,99),(425,'729','深蓝色块',7,99),(426,'73','73湖蓝',7,99),(427,'733','电商专用1',7,99),(428,'739','名称未定义',7,99),(429,'743','蓝色',7,99),(430,'744','蓝色花沙',7,99),(431,'745','蓝色格纹',7,99),(432,'746','蓝色印花',7,99),(433,'747','蓝色波点',7,99),(434,'748','蓝色条纹',7,99),(435,'749','蓝色色块',7,99),(436,'750','蓝白条',7,99),(437,'753','宝蓝',7,99),(438,'754','宝蓝花沙',7,99),(439,'755','宝蓝格纹',7,99),(440,'756','宝蓝印花',7,99),(441,'757','宝蓝波点',7,99),(442,'758','宝蓝条纹',7,99),(443,'759','宝蓝色块',7,99),(444,'76','76靛蓝',7,99),(445,'761','蓝绿色阶1-中',7,99),(446,'763','蓝绿',7,99),(447,'764','蓝绿花沙',7,99),(448,'765','蓝绿格纹',7,99),(449,'766','蓝绿印花',7,99),(450,'767','蓝绿波点',7,99),(451,'768','蓝绿条纹',7,99),(452,'769','蓝绿色块',7,99),(453,'77','77深藏青',7,99),(454,'773','天蓝',7,99),(455,'774','天蓝花沙',7,99),(456,'775','天蓝格纹',7,99),(457,'776','天蓝印花',7,99),(458,'777','天蓝波点',7,99),(459,'778','天蓝条纹',7,99),(460,'779','天蓝色块',7,99),(461,'78','78电商深藏青碎花',7,99),(462,'793','浅蓝',7,99),(463,'794','浅蓝花沙',7,99),(464,'795','浅蓝格纹',7,99),(465,'796','浅蓝印花',7,99),(466,'797','浅蓝波点',7,99),(467,'798','浅蓝条纹',7,99),(468,'799','浅蓝色块',7,99),(469,'80','80紫色',8,99),(470,'803','灰紫',8,99),(471,'804','灰紫花沙',8,99),(472,'805','灰紫格纹',8,99),(473,'806','灰紫印花',8,99),(474,'807','灰紫波点',8,99),(475,'808','灰紫条纹',8,99),(476,'809','灰紫色块',8,99),(477,'81','81浅粉',8,99),(478,'813','深紫',8,99),(479,'814','深紫花沙',8,99),(480,'815','深紫格纹',8,99),(481,'816','深紫印花',8,99),(482,'817','深紫波点',8,99),(483,'818','深紫条纹',8,99),(484,'819','深紫色块',8,99),(485,'82','82深紫',8,99),(486,'823','紫红',8,99),(487,'824','紫红花沙',8,99),(488,'825','紫红格纹',8,99),(489,'826','紫红印花',8,99),(490,'827','紫红波点',8,99),(491,'828','紫红条纹',8,99),(492,'829','紫红色块',8,99),(493,'83','83电商紫色碎花',8,99),(494,'830','紫白条',8,99),(495,'833','蓝紫',8,99),(496,'834','蓝紫花沙',8,99),(497,'835','蓝紫格纹',8,99),(498,'836','蓝紫印花',8,99),(499,'837','蓝紫波点',8,99),(500,'838','蓝紫条纹',8,99),(501,'839','蓝紫色块',8,99),(502,'84','84浅洋李色',8,99),(503,'849','紫色色块',8,99),(504,'85','85蓝紫',8,99),(505,'853','紫色',8,99),(506,'854','紫色花沙',8,99),(507,'855','紫色格纹',8,99),(508,'856','紫色印花',8,99),(509,'857','紫色波点',8,99),(510,'858','紫色条纹',8,99),(511,'859','紫色色块',8,99),(512,'87','87桃粉红',8,99),(513,'88','88热粉红',8,99),(514,'883','浅紫',8,99),(515,'884','浅紫花沙',8,99),(516,'885','浅紫格纹',8,99),(517,'886','浅紫印花',8,99),(518,'887','浅紫波点',8,99),(519,'888','浅紫条纹',8,99),(520,'889','浅紫色块',8,99),(521,'893','粉紫',8,99),(522,'894','粉紫花沙',8,99),(523,'895','粉紫格纹',8,99),(524,'896','粉紫印花',8,99),(525,'897','粉紫波点',8,99),(526,'898','粉紫条纹',8,99),(527,'899','粉紫色块',8,99),(528,'90','90标准牛仔色',9,99),(529,'903','灰桔',9,99),(530,'904','灰桔花沙',9,99),(531,'905','灰桔格纹',9,99),(532,'906','灰桔印花',9,99),(533,'907','灰桔波点',9,99),(534,'908','灰桔条纹',9,99),(535,'909','灰桔色块',9,99),(536,'91','91浅牛仔色',9,99),(537,'913','深桔',9,99),(538,'914','深桔花沙',9,99),(539,'915','深桔格纹',9,99),(540,'916','深桔印花',9,99),(541,'917','深桔波点',9,99),(542,'918','深桔条纹',9,99),(543,'919','深桔色块',9,99),(544,'92','92深牛仔色',9,99),(545,'933','桔红',9,99),(546,'934','桔红花沙',9,99),(547,'935','桔红格纹',9,99),(548,'936','桔红印花',9,99),(549,'937','桔红波点',9,99),(550,'938','桔红条纹',9,99),(551,'939','桔红色块',9,99),(552,'940','桔色色阶0-深',9,99),(553,'941','桔色色阶1-中',9,99),(554,'942','桔色色阶2-浅',9,99),(555,'943','桔色',9,99),(556,'944','桔色花纱',9,99),(557,'945','桔色格纹',9,99),(558,'946','桔色印花',9,99),(559,'947','桔色波点',9,99),(560,'948','桔色条纹',9,99),(561,'949','桔色色块',9,99),(562,'953','桔黄',9,99),(563,'954','桔黄花沙',9,99),(564,'955','桔黄格纹',9,99),(565,'956','桔黄印花',9,99),(566,'957','桔黄波点',9,99),(567,'958','桔黄条纹',9,99),(568,'959','桔黄色块',9,99),(569,'973','浅桔',9,99),(570,'974','浅桔花沙',9,99),(571,'975','浅桔格纹',9,99),(572,'976','浅桔印花',9,99),(573,'977','浅桔波点',9,99),(574,'978','浅桔条纹',9,99),(575,'979','浅桔色块',9,99),(576,'983','粉桔',9,99),(577,'984','粉桔花沙',9,99),(578,'985','粉桔格纹',9,99),(579,'986','粉桔印花',9,99),(580,'987','粉桔波点',9,99),(581,'988','粉桔条纹',9,99),(582,'989','粉桔色块',9,99),(584,'0','0无色',10,99);
/*!40000 ALTER TABLE `meet_color` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_customer`
--

DROP TABLE IF EXISTS `meet_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_customer`
--

LOCK TABLES `meet_customer` WRITE;
/*!40000 ALTER TABLE `meet_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `meet_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_level`
--

DROP TABLE IF EXISTS `meet_level`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_level` (
  `level_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `level_name` varchar(100) NOT NULL COMMENT '等级名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`level_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_level`
--

LOCK TABLES `meet_level` WRITE;
/*!40000 ALTER TABLE `meet_level` DISABLE KEYS */;
INSERT INTO `meet_level` VALUES (3,'小S广告款',99),(4,'基本款',99),(5,'形象款',99),(6,'主力款',99),(7,'其他',99),(8,'未定义',99),(9,'渠道款',99);
/*!40000 ALTER TABLE `meet_level` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_menu`
--

DROP TABLE IF EXISTS `meet_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_menu`
--

LOCK TABLES `meet_menu` WRITE;
/*!40000 ALTER TABLE `meet_menu` DISABLE KEYS */;
/*!40000 ALTER TABLE `meet_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_migration`
--

DROP TABLE IF EXISTS `meet_migration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_migration`
--

LOCK TABLES `meet_migration` WRITE;
/*!40000 ALTER TABLE `meet_migration` DISABLE KEYS */;
INSERT INTO `meet_migration` VALUES ('m000000_000000_base',1540783176),('m140506_102106_rbac_init',1540783500),('m140602_111327_create_menu_table',1540783597),('m160312_050000_create_user',1540783597);
/*!40000 ALTER TABLE `meet_migration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_order`
--

DROP TABLE IF EXISTS `meet_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_order`
--

LOCK TABLES `meet_order` WRITE;
/*!40000 ALTER TABLE `meet_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `meet_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_order_items`
--

DROP TABLE IF EXISTS `meet_order_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_order_items`
--

LOCK TABLES `meet_order_items` WRITE;
/*!40000 ALTER TABLE `meet_order_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `meet_order_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_order_log`
--

DROP TABLE IF EXISTS `meet_order_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_order_log` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL,
  `user_id` int(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `time` int(10) NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_order_log`
--

LOCK TABLES `meet_order_log` WRITE;
/*!40000 ALTER TABLE `meet_order_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `meet_order_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_pchange_log`
--

DROP TABLE IF EXISTS `meet_pchange_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_pchange_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `change_name` varchar(50) NOT NULL,
  `change_id` varchar(30) NOT NULL,
  `change_log` longtext NOT NULL,
  `change_type` enum('disabled','add','change','error') NOT NULL COMMENT '商品状态，新增，修改，错误',
  `create_time` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_pchange_log`
--

LOCK TABLES `meet_pchange_log` WRITE;
/*!40000 ALTER TABLE `meet_pchange_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `meet_pchange_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_product`
--

DROP TABLE IF EXISTS `meet_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_product`
--

LOCK TABLES `meet_product` WRITE;
/*!40000 ALTER TABLE `meet_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `meet_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_purchase`
--

DROP TABLE IF EXISTS `meet_purchase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_purchase` (
  `purchase_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `purchase_name` varchar(100) NOT NULL COMMENT '订货会名称',
  `p_order` mediumint(5) unsigned NOT NULL DEFAULT '99',
  PRIMARY KEY (`purchase_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_purchase`
--

LOCK TABLES `meet_purchase` WRITE;
/*!40000 ALTER TABLE `meet_purchase` DISABLE KEYS */;
INSERT INTO `meet_purchase` VALUES (1,'2019OCT秋冬订货会A',99),(2,'2019OCT春夏订货会B',99);
/*!40000 ALTER TABLE `meet_purchase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_scheme`
--

DROP TABLE IF EXISTS `meet_scheme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_scheme` (
  `scheme_id` mediumint(5) NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `scheme_name` varchar(100) NOT NULL COMMENT '色系名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  `disabled` enum('true','false') DEFAULT 'false',
  PRIMARY KEY (`scheme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_scheme`
--

LOCK TABLES `meet_scheme` WRITE;
/*!40000 ALTER TABLE `meet_scheme` DISABLE KEYS */;
INSERT INTO `meet_scheme` VALUES (1,'黑',99,'false'),(2,'白',99,'false'),(3,'咖',99,'false'),(4,'绿',99,'false'),(5,'红',99,'false'),(6,'黄',99,'false'),(7,'蓝',99,'false'),(8,'紫',99,'false'),(9,'桔',99,'false'),(10,'标',99,'false');
/*!40000 ALTER TABLE `meet_scheme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_season`
--

DROP TABLE IF EXISTS `meet_season`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_season` (
  `season_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `season_name` varchar(100) NOT NULL COMMENT '季节名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`season_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_season`
--

LOCK TABLES `meet_season` WRITE;
/*!40000 ALTER TABLE `meet_season` DISABLE KEYS */;
INSERT INTO `meet_season` VALUES (1,'春',99),(2,'夏',99),(3,'秋',99),(4,'冬',99),(5,'不分季节',99),(6,'海洋女神',99);
/*!40000 ALTER TABLE `meet_season` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_season_big`
--

DROP TABLE IF EXISTS `meet_season_big`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_season_big` (
  `id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `big_id` mediumint(5) DEFAULT NULL,
  `big_name` varchar(100) DEFAULT NULL,
  `season_id` mediumint(5) DEFAULT NULL,
  `season_name` varchar(100) DEFAULT NULL,
  `p_order` mediumint(5) DEFAULT '99',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_season_big`
--

LOCK TABLES `meet_season_big` WRITE;
/*!40000 ALTER TABLE `meet_season_big` DISABLE KEYS */;
INSERT INTO `meet_season_big` VALUES (1,1,'服装',1,'春',99),(2,1,'服装',2,'夏',99),(3,1,'服装',3,'秋',99),(4,1,'服装',4,'冬',99),(5,2,'家居',1,'春',99),(6,2,'家居',2,'夏',99),(7,2,'家居',3,'秋',99),(8,2,'家居',4,'冬',99),(9,2,'家居',5,'不分季节',99),(10,3,'防辐射',1,'春',99),(11,3,'防辐射',2,'夏',99),(12,3,'防辐射',3,'秋',99),(13,3,'防辐射',4,'冬',99),(14,3,'防辐射',5,'不分季节',99),(15,6,'化妆品',5,'不分季节',99),(16,4,'备品',1,'春',99),(17,4,'备品',2,'夏',99),(18,4,'备品',3,'秋',99),(19,4,'备品',4,'冬',99),(20,4,'备品',5,'不分季节',99),(22,6,'化妆品',6,'海洋女神',99);
/*!40000 ALTER TABLE `meet_season_big` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_size`
--

DROP TABLE IF EXISTS `meet_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_size`
--

LOCK TABLES `meet_size` WRITE;
/*!40000 ALTER TABLE `meet_size` DISABLE KEYS */;
INSERT INTO `meet_size` VALUES (2,'01','S',1,99,'false'),(3,'02','M',1,99,'false'),(4,'03','L',1,99,'false'),(5,'04','XL',1,99,'false'),(6,'05','XXL',1,99,'false'),(7,'06','XXXL',1,99,'false'),(8,'35','35',3,99,'false'),(9,'36','36',3,99,'false'),(10,'37','37',3,99,'false'),(11,'38','38',3,99,'false'),(12,'39','39',3,99,'false'),(13,'40','40',3,99,'false'),(14,'42','42',3,99,'false'),(15,'44','44',3,99,'false'),(16,'46','46',3,99,'false'),(17,'48','48',3,99,'false'),(18,'234','75B',2,99,'false'),(19,'236','80B',2,99,'false'),(20,'238','85B',2,99,'false'),(21,'240','90B',2,99,'false'),(22,'242','95B',2,99,'false'),(23,'244','100B',2,99,'false'),(24,'334','75C',2,99,'false'),(25,'336','80C',2,99,'false'),(26,'338','85C',2,99,'false'),(27,'340','90C',2,99,'false'),(28,'342','95C',2,99,'false'),(29,'344','100C',2,99,'false'),(30,'434','75D',2,99,'false'),(31,'436','80D',2,99,'false'),(32,'438','85D',2,99,'false'),(33,'440','90D',2,99,'false'),(34,'442','95D',2,99,'false'),(35,'444','100D',2,99,'false'),(36,'534','75E',2,99,'false'),(37,'536','80E',2,99,'false'),(38,'538','85E',2,99,'false'),(39,'540','90E',2,99,'false'),(40,'541','SS',2,99,'false'),(41,'10000','161020',0,99,'false'),(1,'00','F',1,99,'false');
/*!40000 ALTER TABLE `meet_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_size_group`
--

DROP TABLE IF EXISTS `meet_size_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_size_group` (
  `group_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `size_group_code` varchar(10) DEFAULT NULL,
  `size_group_name` varchar(10) DEFAULT NULL,
  `p_order` mediumint(5) DEFAULT '99',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_size_group`
--

LOCK TABLES `meet_size_group` WRITE;
/*!40000 ALTER TABLE `meet_size_group` DISABLE KEYS */;
INSERT INTO `meet_size_group` VALUES (1,'FZ01','服装01',99),(2,'WX01','文胸01',99),(3,'XZ01','鞋子01',99);
/*!40000 ALTER TABLE `meet_size_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_type`
--

DROP TABLE IF EXISTS `meet_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_type` (
  `type_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT,
  `type_name` varchar(255) NOT NULL,
  `p_order` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_type`
--

LOCK TABLES `meet_type` WRITE;
/*!40000 ALTER TABLE `meet_type` DISABLE KEYS */;
INSERT INTO `meet_type` VALUES (1,'新款',0),(2,'weekend',0),(4,'设限款',0),(5,'类型四',0),(6,'类型五',0),(7,'类型六',0),(8,'融入款',0);
/*!40000 ALTER TABLE `meet_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meet_wave`
--

DROP TABLE IF EXISTS `meet_wave`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meet_wave` (
  `wave_id` mediumint(5) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键，自增，类型id',
  `wave_no` varchar(10) DEFAULT NULL,
  `wave_name` varchar(100) NOT NULL COMMENT '等级名称',
  `p_order` mediumint(8) unsigned NOT NULL DEFAULT '99' COMMENT '排序',
  PRIMARY KEY (`wave_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meet_wave`
--

LOCK TABLES `meet_wave` WRITE;
/*!40000 ALTER TABLE `meet_wave` DISABLE KEYS */;
INSERT INTO `meet_wave` VALUES (1,'001','秋一',99),(2,'002','冬一',99),(3,'003','冬二',99),(4,'004','早春',99),(5,'005','春',99),(6,'006','夏一',99),(7,'007','夏二',99),(8,'008','夏三',99),(9,'009','夏四',99),(11,'011','秋二',99),(15,'015','冬三',99),(16,'016','冬四',99),(17,'017','不分波段',99),(18,'000','未定义',99);
/*!40000 ALTER TABLE `meet_wave` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-04 15:10:15

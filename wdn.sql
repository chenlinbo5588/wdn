/*
MySQL Data Transfer
Source Host: 192.168.152.129
Source Database: wdn
Target Host: 192.168.152.129
Target Database: wdn
Date: 2014/2/27 12:59:49
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for attachment
-- ----------------------------
CREATE TABLE `attachment` (
  `aid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `file_name` varchar(200) NOT NULL DEFAULT '',
  `file_size` int(11) NOT NULL DEFAULT '0' COMMENT '字节数',
  `file_suffix` varchar(10) NOT NULL,
  `path_name` varchar(100) NOT NULL,
  `width` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '度宽, 图片、视频',
  `height` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '高度',
  `play_sec` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '播放时间, 视频',
  `refcount` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '应用计数',
  `createtime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatetime` datetime NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM AUTO_INCREMENT=185 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for ci_sessions
-- ----------------------------
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT '0',
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for image
-- ----------------------------
CREATE TABLE `image` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `images` text,
  `online_images` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_idx` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for news
-- ----------------------------
CREATE TABLE `news` (
  `news_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `title2` varchar(200) NOT NULL DEFAULT '',
  `cover_img` varchar(100) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `is_delete` varchar(10) NOT NULL DEFAULT '正常',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  PRIMARY KEY (`news_id`),
  KEY `status_idx` (`status`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for shop
-- ----------------------------
CREATE TABLE `shop` (
  `shop_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shop_name` varchar(200) NOT NULL,
  `address` varchar(200) DEFAULT NULL,
  `manager` varchar(50) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `tel` varchar(20) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT '',
  `is_delete` varchar(10) NOT NULL DEFAULT '正常',
  `createtime` datetime DEFAULT NULL,
  `updatetime` datetime DEFAULT NULL,
  `images` text NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for user
-- ----------------------------
CREATE TABLE `user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(50) NOT NULL,
  `nickname` varchar(60) NOT NULL DEFAULT '' COMMENT '用户名称',
  `password` varchar(32) NOT NULL DEFAULT '' COMMENT '用户密码',
  `createtime` datetime NOT NULL,
  `updatetime` datetime NOT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_account` (`account`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `attachment` VALUES ('1', 'button.png', '270', '.png', 'admin/201212/e0331b4f84e61e706cb80e72f5b89c91.png', '0', '0', '0', '0', '2012-12-19 21:20:29', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('2', 'client_login.jpg', '111287', '.jpg', 'admin/201212/3034b965baa7bd60d9d6161808d5914c.jpg', '0', '0', '0', '0', '2012-12-19 21:25:37', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('3', 'client_login.jpg', '111287', '.jpg', 'admin/201212/4afa42c127e51c26c3c66a75db9e485e.jpg', '0', '0', '0', '0', '2012-12-19 21:29:28', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('4', 'button.png', '270', '.png', '201212/34aa7d15eded6ea6bcb41ea9118465fd.png', '72', '23', '0', '0', '2012-12-21 22:11:38', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('5', 'meng_qian.flv', '21753202', '.flv', '201212/0e83b36f8a804ab3ca21a2dc7711ad58.flv', '0', '0', '0', '0', '2012-12-21 22:11:47', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('6', 'button.png', '270', '.png', '201212/1a846daea89fa152170c716a520f90ea.png', '72', '23', '0', '0', '2012-12-21 22:24:59', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('7', 'meng_qian.flv', '21753202', '.flv', '201212/a25dd9a77b6c1edfa74ed6278ebef246.flv', '0', '0', '0', '0', '2012-12-21 22:25:10', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('8', 'XPButtonUploadText_61x22.png', '1855', '.png', '201212/d8ba7c8a47559448a89ab2300b3d822f.png', '61', '88', '0', '0', '2012-12-21 22:29:31', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('9', 'meng_qian.flv', '21753202', '.flv', '201212/a64c8f87d27e51a06b81a878f6a45080.flv', '0', '0', '0', '0', '2012-12-21 22:29:37', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('10', 'XPButtonUploadText_61x22.png', '1855', '.png', '201212/23850620b6d122049b13df857c979576.png', '61', '88', '0', '0', '2012-12-21 22:36:44', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('11', 'meng_qian.flv', '21753202', '.flv', '201212/7c31dfef3e71adea5ed78b66fb7b60ff.flv', '0', '0', '0', '0', '2012-12-21 22:36:50', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('12', 'IMG_11012013_154543.png', '108394', '.png', '201302/1e6c8305c953a81ec2a79f18de7c147a.png', '784', '837', '0', '0', '2013-02-21 14:32:08', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('13', 'meng_qian.flv', '21753202', '.flv', '201302/2d24579fa64a09b9652a30951b8ccd4f.flv', '0', '0', '0', '0', '2013-02-21 14:32:15', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('14', 'IMG_18012013_115542.png', '26791', '.png', '201302/9fe344aefbf4898936d735cf4b14d3b7.png', '435', '468', '0', '0', '2013-02-21 14:39:10', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('15', 'meng_qian.flv', '21753202', '.flv', '201302/2285c3938ec7dc3af0496153f05db9c8.flv', '0', '0', '0', '0', '2013-02-21 14:39:41', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('16', 'IMG_18012013_114240.png', '20778', '.png', '201302/21ab13fa5c55c8b95588c99cfb94c3b7.png', '481', '393', '0', '0', '2013-02-21 14:46:45', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('17', 'meng_qian.flv', '21753202', '.flv', '201302/3acf4def22979cb56895993da9fed6b0.flv', '0', '0', '0', '0', '2013-02-21 14:46:48', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('18', 'IMG_11012013_154543.png', '108394', '.png', '201303/3176a6a0f13c842615ca3b1cd93d72f8.png', '784', '837', '0', '0', '2013-03-21 13:57:38', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('19', 'flight_cal01.jpg', '24418', '.jpg', '201303/8868115aa2c272c9b519c94fe117d259.jpg', '640', '480', '0', '0', '2013-03-21 14:36:53', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('20', 'IMG_04032013_1743.PNG', '21704', '.png', '201303/8d65c1905b8b46ab0a180d11d946dc78.png', '462', '217', '0', '0', '2013-03-21 14:38:52', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('21', 'IMG_18012013_114240.png', '20778', '.png', '201303/a6c30d154c01d76dc72eda0b7ed2d037.png', '481', '393', '0', '0', '2013-03-21 15:20:22', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('22', 'IMG_11012013_154600.png', '65152', '.png', '201303/52bb0e62c55b7dea61c23f0abd42749f.png', '809', '880', '0', '0', '2013-03-21 15:20:25', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('23', 'IMG_04032013_174342.PNG', '21349', '.png', '201303/506892c5bfda684f3b3693dba7eefbba.png', '462', '217', '0', '0', '2013-03-21 15:21:14', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('24', 'IMG_11012013_154525.png', '72599', '.png', '201303/1bb39dfe6a78b0ae6e98cd22e621d4c5.png', '799', '660', '0', '0', '2013-03-21 15:21:18', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('25', 'contact_miss.png', '55751', '.png', '201303/8fc037addfb68b97e52f55c1ea9875cf.png', '788', '595', '0', '0', '2013-03-21 17:59:17', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('26', 'meng_qian.flv', '21753202', '.flv', '201303/112b6dccd2764e47f2df870041e31002.flv', '0', '0', '0', '0', '2013-03-21 17:59:24', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('27', '旅游首页BANNER-648x240.jpg', '192633', '.jpg', '201304/9611ffa0bef32da01ec237a7f1e4bd3f.jpg', '648', '240', '0', '0', '2013-04-08 09:34:02', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('28', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/fe7c24f2ee16042dc7f7b060d98698a0.pdf', '960', '540', '0', '0', '2013-04-08 09:34:47', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('29', '2-SDW-Laboratorio1-2005.pdf', '180285', '.pdf', '201304/c66390b686d5864d1af6dc912521b2b2.pdf', '960', '540', '0', '0', '2013-04-08 09:34:49', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('30', '20130328-1738-hksite.PNG', '396888', '.png', '201304/2368204d4aea719f1be4a1b9d9598bdb.png', '1119', '742', '0', '0', '2013-04-08 09:36:12', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('31', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/f8ff4a1da48c9e2349efab176eb67e80.pdf', '960', '540', '0', '0', '2013-04-08 09:36:26', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('32', '2-SDW-Laboratorio1-2005.pdf', '180285', '.pdf', '201304/1860b8b3f2ee79024f697ed7b54a3af9.pdf', '960', '540', '0', '0', '2013-04-08 09:36:26', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('33', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/31d910cf0d5073e3b9d78d449b18cb7b.pdf', '960', '540', '0', '0', '2013-04-08 09:43:32', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('34', '2-SDW-Laboratorio1-2005.pdf', '180285', '.pdf', '201304/d558b0e21c024d40eb5d49b1a2ae0a80.pdf', '960', '540', '0', '0', '2013-04-08 09:43:32', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('35', '机票订单相关.docx', '90750', '.docx', '201304/dcb2c864b359ced46775be90f8485849.docx', '960', '540', '0', '0', '2013-04-08 09:43:33', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('36', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/8d709855d1e9e48ca7d7a69ed8f10eb6.pdf', '960', '540', '0', '0', '2013-04-08 10:05:05', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('37', '2-SDW-Laboratorio1-2005.pdf', '180285', '.pdf', '201304/d69be4dd80b12eb1dca61bae0be677dd.pdf', '960', '540', '0', '0', '2013-04-08 10:05:05', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('38', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/0736d34d2532e5b8e5ba76a6dc0ea300.pdf', '960', '540', '0', '0', '2013-04-08 10:42:31', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('39', '2-SDW-Laboratorio1-2005.pdf', '180285', '.pdf', '201304/9d5b8de17ed35aca22d9c8b832188a1b.pdf', '960', '540', '0', '0', '2013-04-08 10:42:31', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('40', '20130328-1738-hksite.PNG', '396888', '.png', '201304/d4a951aa7a6625159aab9b9f6ca616c9.png', '1119', '742', '0', '0', '2013-04-08 10:48:50', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('41', '旅游首页BANNER-648x240.jpg', '192633', '.jpg', '201304/c4886665a2d4815f52f46961f3de2222.jpg', '648', '240', '0', '0', '2013-04-08 10:48:50', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('42', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/1820032d1c84e2bfbe9f43f1790624ca.pdf', '960', '540', '0', '0', '2013-04-08 10:54:13', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('43', '2-SDW-Laboratorio1-2005.pdf', '180285', '.pdf', '201304/5bb7d3987498853adb7e977a338d0c65.pdf', '960', '540', '0', '0', '2013-04-08 10:54:13', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('44', '机票订单相关.docx', '90750', '.docx', '201304/0f3e65056cd6ebaea8434dd35ad58bd6.docx', '960', '540', '0', '0', '2013-04-08 10:54:13', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('45', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/e858736f527939107506af210a21234e.pdf', '960', '540', '0', '0', '2013-04-08 11:07:34', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('46', '2-SDW-Laboratorio1-2005.pdf', '180285', '.pdf', '201304/0e2143bd4b43b544729cf900e781a734.pdf', '960', '540', '0', '0', '2013-04-08 11:07:35', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('47', '机票订单相关.docx', '90750', '.docx', '201304/832b55d8cc66590bd4e1f0285fcb6fab.docx', '960', '540', '0', '0', '2013-04-08 11:07:35', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('48', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/4c5a53a40dd59f1d4ea21d824cf2a892.pdf', '960', '540', '0', '0', '2013-04-08 11:09:00', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('49', '2-SDW-Laboratorio1-2005.pdf', '180285', '.pdf', '201304/5ff527abe33277919ac8cb4b6eaf153c.pdf', '960', '540', '0', '0', '2013-04-08 11:09:00', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('50', '机票订单相关.docx', '90750', '.docx', '201304/a81dba0e6190682dcd5e528c1a301842.docx', '960', '540', '0', '0', '2013-04-08 11:09:00', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('51', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/ee8cc13b4e55ead7d12ffa15b45bea5d.pdf', '960', '540', '0', '0', '2013-04-08 11:11:00', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('52', '2-SDW-Laboratorio1-2005.pdf', '180285', '.pdf', '201304/5f13b7e0dd1a49608584f7b0c7643d81.pdf', '960', '540', '0', '0', '2013-04-08 11:11:00', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('53', '机票订单相关.docx', '90750', '.docx', '201304/8ee9bb49c1e1306ed39f3217a8c6577d.docx', '960', '540', '0', '0', '2013-04-08 11:11:00', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('54', 'GOO_careers副本.jpg', '259145', '.jpg', '201304/3d8c732f9aff8187fddd9789a2599ba5.jpg', '1200', '2000', '0', '0', '2013-04-08 15:32:38', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('55', 'GOO_contact副本.jpg', '288085', '.jpg', '201304/f6e3d18150d984cef8ac5a604dcc3aa0.jpg', '1200', '2000', '0', '0', '2013-04-08 15:32:38', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('56', 'GOO_homepage_A_FA副本.jpg', '385185', '.jpg', '201304/016c82294f5ae574228671e7fa97e6f8.jpg', '1200', '2000', '0', '0', '2013-04-08 15:32:39', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('57', 'GOO_portfolio_work_2副本.jpg', '152357', '.jpg', '201304/64484971ba8407962813642998b272b8.jpg', '1200', '2000', '0', '0', '2013-04-08 15:32:39', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('58', 'GOO_portfolio_work副本.jpg', '193343', '.jpg', '201304/60153f6666da0b675df2cb6181e9cc8a.jpg', '1200', '2000', '0', '0', '2013-04-08 15:32:39', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('59', '旅游首页BANNER-648x240.jpg', '192633', '.jpg', '201304/43db6807a453b121062afc101101520e.jpg', '648', '240', '0', '0', '2013-04-08 16:55:56', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('60', 'YV20130304182359.mp4', '2096420', '.mp4', '201304/ae85cb3a2d6f98e9e0b555b7aa80f6d2.mp4', '960', '540', '0', '0', '2013-04-08 16:56:03', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('61', 'IMG_02042013_153038.png', '65343', '.png', '201304/9c1d180d71a436316e09e4fb7bca954b.png', '1600', '900', '0', '0', '2013-04-08 17:25:53', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('62', 'PHP.jpg', '55656', '.jpg', '201304/c4a81b601c0a69f3c6b0d0d06787b6c6.jpg', '710', '770', '0', '0', '2013-04-08 17:25:53', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('63', 'IMG_29032013_110609.png', '26725', '.png', '201304/7678ec5a2c0a4d4cfb2a22f6e17a5aaf.png', '1416', '302', '0', '0', '2013-04-08 17:25:53', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('64', '20130328-1738-hksite.PNG', '396888', '.png', '201304/31462dbfad0100515154005fe201e0ea.png', '1119', '742', '0', '0', '2013-04-08 17:25:53', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('65', '图片2.jpg', '43923', '.jpg', '201304/c78328521c4374a0233bbf38c4ac99eb.jpg', '703', '829', '0', '0', '2013-04-08 17:25:53', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('66', '旅游首页BANNER-648x240.jpg', '192633', '.jpg', '201304/b9a806462de48a8a23765c84d0b2b13d.jpg', '648', '240', '0', '0', '2013-04-08 17:25:54', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('67', 'holidaiy.png', '2027', '.png', '201304/6e4b3eed1f2a87b354a3212d00b1a787.png', '29', '364', '0', '0', '2013-04-08 17:25:54', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('68', '9787302301516shidu.pdf', '6792528', '.pdf', '201304/0b7187b132392496a8437019f6757870.pdf', '960', '540', '0', '0', '2013-04-10 10:03:18', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('69', '我的mdx.pdf', '186774', '.pdf', '201304/42f6834086a64f51c387c5e0e03f81b4.pdf', '960', '540', '0', '0', '2013-04-10 10:57:20', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('70', 'holidaiy.png', '2027', '.png', '201304/07d841aeba47d29f1720d85683912163.png', '29', '364', '0', '0', '2013-04-10 10:58:28', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('71', '我的mdx.pdf', '186774', '.pdf', '201304/76e44ee18662e2c659bdbed49d9b64c1.pdf', '960', '540', '0', '0', '2013-04-10 11:01:59', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('72', '我的mdx哈哈哈你的.pdf', '186774', '.pdf', '201304/ddf9f71a00bedccda1cb5fd8f6396e56.pdf', '960', '540', '0', '0', '2013-04-10 11:04:05', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('73', '我的mdx我靠哈你的.pdf', '186774', '.pdf', '201304/b76e7a1531196a76482fd0b8ba151797.pdf', '960', '540', '0', '0', '2013-04-10 11:07:54', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('74', '图片哈来吧.jpg', '43923', '.jpg', '201304/b6d27fc3d61a4ab95a5b954f11bea3f1.jpg', '703', '829', '0', '0', '2013-04-10 11:11:18', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('75', '干掉你没商量.pdf', '186774', '.pdf', '201304/ae4aa49a41f066e5045b36f0611c3c25.pdf', '960', '540', '0', '0', '2013-04-10 11:14:20', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('76', '干掉hash你没商量滴.pdf', '186774', '.pdf', '201304/0870af2310e5974918555e9746bb9235.pdf', '960', '540', '0', '0', '2013-04-10 11:16:38', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('77', '旅游has首页BANNER-648x240.jpg', '192633', '.jpg', '201304/54680f5a5ec3b4dc1a43c84d9b1b9a0f.jpg', '648', '240', '0', '0', '2013-04-10 11:22:22', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('78', 'mdx学习.pdf', '186774', '.pdf', '201304/e7f88a2c3dd6b877d4121333394b9a12.pdf', '960', '540', '0', '0', '2013-04-10 11:23:00', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('79', 'Schema Design_p2.pdf', '437472', '.pdf', '201304/39fdacd37ccd2c205242fb82b135a9a6.pdf', '960', '540', '0', '0', '2013-04-10 11:30:07', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('80', 'mdx学习再学习.pdf', '186774', '.pdf', '201304/1d0214cedb6754c4b21a13348cb58c15.pdf', '960', '540', '0', '0', '2013-04-10 11:30:14', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('81', 'mdx学习再学习.pdf', '186774', '.pdf', '201304/dff6195e25e4d612d1bab2284fe814df.pdf', '960', '540', '0', '0', '2013-04-10 11:31:05', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('82', 'mdx学习再学习.pdf', '186774', '.pdf', '201304/c3d201dd5220ec3c6d0677a8369f4776.pdf', '960', '540', '0', '0', '2013-04-10 11:31:44', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('83', 'mdx学习再学习.pdf', '186774', '.pdf', '201304/419f29df8398f3038d63f27bc239ca55.pdf', '960', '540', '0', '0', '2013-04-10 11:35:18', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('84', 'mdx学习再学习1.pdf', '186774', '.pdf', '201304/0236b5d7f5031764a112f6997bbab2cd.pdf', '960', '540', '0', '0', '2013-04-10 12:40:24', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('85', 'as首页BANNER-648x240.jpg', '192633', '.jpg', '201304/e7dde1708a1395b6e46b14da19ab1936.jpg', '648', '240', '0', '0', '2013-04-10 12:44:31', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('86', 'mdx学习啊再学习1.pdf', '186774', '.pdf', '201304/4101e6a514a8702b269589f6de6e3651.pdf', '960', '540', '0', '0', '2013-04-10 12:45:05', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('87', 'FAQ 老年人乘机  20130410.docx', '17662', '.docx', '201305/1c470ddf937891b367d2c7b944701f14.docx', '960', '540', '0', '0', '2013-05-02 16:35:57', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('88', 'BK_elderly travel.doc', '43520', '.doc', '201305/d072203a653271275b75edf93dd96b67.doc', '960', '540', '0', '0', '2013-05-02 16:35:57', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('89', 'IMG_24042013_104250.png', '138747', '.png', '201305/943d13d98d81fae1fa9fc129ffde4197.png', '1600', '900', '0', '0', '2013-05-02 16:36:17', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('90', 'printreceipt.png', '129475', '.png', '201305/725e31d3c1e84dae745f96ed8edbc7c4.png', '960', '897', '0', '0', '2013-05-02 16:36:17', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('91', 'bookingZenPoints.png', '216813', '.png', '201305/e72c23dcacdf34cff308a2f3aa478487.png', '1180', '900', '0', '0', '2013-05-02 16:36:17', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('92', 'IMG_29032013_110609.png', '26725', '.png', '201305/43f6506fb3fcb80c40e57bd3fbe3bbf5.png', '1416', '302', '0', '0', '2013-05-02 16:36:17', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('93', 'T1hqx9XBBbXXXXXXXX_!!103933171-0-pix.jpg', '64452', '.jpg', '201305/be1da5fd1882530138d45feca358b162.jpg', '560', '337', '0', '0', '2013-05-02 16:37:10', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('94', 'T1LdN9XyVbXXXXXXXX_!!103933171-0-pix.jpg', '68223', '.jpg', '201305/95dd2d1ec6ced685ea8cda5e22730a1f.jpg', '560', '371', '0', '0', '2013-05-02 16:37:11', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('95', 'T19808XrBdXXXXXXXX_!!103933171-0-pix.jpg', '51601', '.jpg', '201305/aae445d51476fa0ffea2873d397b60dc.jpg', '370', '560', '0', '0', '2013-05-02 16:37:11', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('96', '1-tour1.jpg', '105033', '.jpg', '201305/3aa1e6d9813782c2c6bb864e283d777e.jpg', '648', '240', '0', '0', '2013-05-02 17:55:34', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('97', '测试movie.flv', '21753202', '.flv', '201305/1f52ae46671bec7b5cb2df2f42b1f13d.flv', '960', '540', '0', '0', '2013-05-02 17:55:54', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('98', '6598141790494387864.jpg', '247139', '.jpg', '201305/537ebfc17b9fa355edf93f898a31727a.jpg', '750', '727', '0', '0', '2013-05-02 17:57:24', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('99', '测试1movie.flv', '21753202', '.flv', '201305/20899fb8c004c7e1cee353ab61dab647.flv', '960', '540', '0', '0', '2013-05-02 17:57:39', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('100', 'T1hqx9XBBbXXXXXXXX_!!103933171-0-pix.jpg', '64452', '.jpg', '201305/8ffe8cf174da156546d4be1d4c6b306e.jpg', '560', '337', '0', '0', '2013-05-03 14:08:02', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('101', 'T1LdN9XyVbXXXXXXXX_!!103933171-0-pix.jpg', '68223', '.jpg', '201305/1bbd910f1bd994f8b2e6f39cdf1dc3c4.jpg', '560', '371', '0', '0', '2013-05-03 14:08:02', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('102', 'T19808XrBdXXXXXXXX_!!103933171-0-pix.jpg', '51601', '.jpg', '201305/0dc681b6f41fa6b4ce249e69b371603c.jpg', '370', '560', '0', '0', '2013-05-03 14:08:02', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('103', '核对信息.jpg', '121910', '.jpg', '201305/4dda57da359a80ee8d6616aafdd6ef77.jpg', '1423', '940', '0', '0', '2013-05-03 14:16:21', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('104', '会员登录.jpg', '394380', '.jpg', '201305/3f68a8be43133b4b827604f719224fdb.jpg', '1220', '1088', '0', '0', '2013-05-03 14:16:21', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('105', '预订行程-非会员.jpg', '133408', '.jpg', '201305/742946a2671042357602494a3765ec05.jpg', '1423', '940', '0', '0', '2013-05-03 14:16:21', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('106', '预订行程-会员.jpg', '122097', '.jpg', '201305/fca9c0d30519f58be29f3f8443818053.jpg', '1423', '940', '0', '0', '2013-05-03 14:16:21', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('107', 's2.png', '1204', '.png', '201309/23bb0d51d01e33ff6ede6cbb57d942e8.png', '249', '82', '0', '0', '2013-09-25 13:25:42', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('108', 'Tab1.jpg', '300872', '.jpg', '201311/55b5160674089d1282f66d67736b61c1.jpg', '1028', '464', '0', '0', '2013-11-13 16:59:38', '0000-00-00 00:00:00');
INSERT INTO `attachment` VALUES ('109', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/796a906edb4dc7461127868c4dcc4319.jpg', '628', '2482', '0', '0', '2014-02-17 18:41:03', '2014-02-17 18:41:03');
INSERT INTO `attachment` VALUES ('110', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/5f3eab8374123bb247caf21f546a23a8.jpg', '1200', '800', '0', '0', '2014-02-17 18:42:43', '2014-02-17 18:42:43');
INSERT INTO `attachment` VALUES ('111', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/8e54d406363793d90ab23120775312ae.jpg', '1200', '800', '0', '0', '2014-02-17 18:45:11', '2014-02-17 18:45:11');
INSERT INTO `attachment` VALUES ('112', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/86e8c5d0317b27d2422b2c02359e4c94.jpg', '628', '2482', '0', '0', '2014-02-17 18:45:11', '2014-02-17 18:45:11');
INSERT INTO `attachment` VALUES ('113', '13875291359649937.jpg', '33597', '.jpg', '201402/9d14d217b4eaf07161e32835589185ff.jpg', '600', '328', '0', '0', '2014-02-17 18:45:12', '2014-02-17 18:45:12');
INSERT INTO `attachment` VALUES ('114', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/d13adbe9601d1ec1ce5f0f0174decf35.jpg', '1200', '800', '0', '0', '2014-02-17 18:45:29', '2014-02-17 18:45:29');
INSERT INTO `attachment` VALUES ('115', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/c514cb0779c2204c887d08e2a1b0fd76.jpg', '628', '2482', '0', '0', '2014-02-17 18:45:29', '2014-02-17 18:45:29');
INSERT INTO `attachment` VALUES ('116', '13875291359649937.jpg', '33597', '.jpg', '201402/251f61a2136cd44f580f82c4219a3bfa.jpg', '600', '328', '0', '0', '2014-02-17 18:45:30', '2014-02-17 18:45:30');
INSERT INTO `attachment` VALUES ('117', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/b78af83858701acc5f820f41076affa3.jpg', '628', '2482', '0', '0', '2014-02-17 18:46:44', '2014-02-17 18:46:44');
INSERT INTO `attachment` VALUES ('118', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/273437775d162dda7b212d93997e86bd.jpg', '1200', '800', '0', '0', '2014-02-17 18:49:29', '2014-02-17 18:49:29');
INSERT INTO `attachment` VALUES ('119', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/1c308ad0119a8231d94487628e550006.jpg', '628', '2482', '0', '0', '2014-02-17 18:49:30', '2014-02-17 18:49:30');
INSERT INTO `attachment` VALUES ('120', '13875291359649937.jpg', '33597', '.jpg', '201402/e2b6545da4b1db848a46f3f69f60a096.jpg', '600', '328', '0', '0', '2014-02-17 18:49:30', '2014-02-17 18:49:30');
INSERT INTO `attachment` VALUES ('121', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/635fa76e1116033a15936d9af55c7c19.jpg', '1200', '800', '0', '0', '2014-02-17 18:58:44', '2014-02-17 18:58:44');
INSERT INTO `attachment` VALUES ('122', '13875291359649937.jpg', '33597', '.jpg', '201402/54ee32adff3d671812ee12c66c25c4ad.jpg', '600', '328', '0', '0', '2014-02-17 18:58:44', '2014-02-17 18:58:44');
INSERT INTO `attachment` VALUES ('123', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/fd35c4ceda02f45bbaadc49d5d13cf64.jpg', '1200', '800', '0', '0', '2014-02-17 19:15:57', '2014-02-17 19:15:57');
INSERT INTO `attachment` VALUES ('124', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/4e8d9957db4831cf618a6d0dc64ec184.jpg', '628', '2482', '0', '0', '2014-02-17 19:15:57', '2014-02-17 19:15:57');
INSERT INTO `attachment` VALUES ('125', '13875291359649937.jpg', '33597', '.jpg', '201402/c64778e9c6582e4d7c1f9d3626cd22e7.jpg', '600', '328', '0', '0', '2014-02-17 19:15:58', '2014-02-17 19:15:58');
INSERT INTO `attachment` VALUES ('126', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/1f42c1184964244cb010a7cc89fbb8df.jpg', '1200', '800', '0', '0', '2014-02-18 09:57:15', '2014-02-18 09:57:15');
INSERT INTO `attachment` VALUES ('127', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/37059a58d15373f8762dac45e3aca51f.jpg', '628', '2482', '0', '0', '2014-02-18 09:57:16', '2014-02-18 09:57:16');
INSERT INTO `attachment` VALUES ('128', '13875291359649937.jpg', '33597', '.jpg', '201402/e83ec8af89c20baf89559486c8752102.jpg', '600', '328', '0', '0', '2014-02-18 09:57:16', '2014-02-18 09:57:16');
INSERT INTO `attachment` VALUES ('129', '13875291359649937.jpg', '33597', '.jpg', '201402/f58154dd437fb8b126b9fdded53a9445.jpg', '600', '328', '0', '0', '2014-02-18 10:52:18', '2014-02-18 10:52:18');
INSERT INTO `attachment` VALUES ('130', '13875291359649937.jpg', '33597', '.jpg', '201402/b67b5ec7ce67d328501a7bdd5e1cc275.jpg', '600', '328', '0', '0', '2014-02-18 10:53:28', '2014-02-18 10:53:28');
INSERT INTO `attachment` VALUES ('131', '13875291359649937.jpg', '33597', '.jpg', '201402/66a2aca2ce781102650960eab2e2807a.jpg', '600', '328', '0', '0', '2014-02-18 10:54:12', '2014-02-18 10:54:12');
INSERT INTO `attachment` VALUES ('132', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/94a0208a779d4453287c77120fe20dd7.jpg', '1200', '800', '0', '0', '2014-02-18 11:46:16', '2014-02-18 11:46:16');
INSERT INTO `attachment` VALUES ('133', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/76687ce2412d21496ea6cd5df72f69f8.jpg', '628', '2482', '0', '0', '2014-02-18 11:46:17', '2014-02-18 11:46:17');
INSERT INTO `attachment` VALUES ('134', '13875291359649937.jpg', '33597', '.jpg', '201402/84f991d45c9dc3b9ec8b44428a033e99.jpg', '600', '328', '0', '0', '2014-02-18 11:46:17', '2014-02-18 11:46:17');
INSERT INTO `attachment` VALUES ('135', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/4498bf14e1d6c54824e08031d636862d.jpg', '1200', '800', '0', '0', '2014-02-18 15:14:28', '2014-02-18 15:14:28');
INSERT INTO `attachment` VALUES ('136', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/1d0c09b7eb3cea493337420423e4e324.jpg', '628', '2482', '0', '0', '2014-02-18 15:14:28', '2014-02-18 15:14:28');
INSERT INTO `attachment` VALUES ('137', '13875291359649937.jpg', '33597', '.jpg', '201402/f9c18ff2144d7053985f3669fa56cfbe.jpg', '600', '328', '0', '0', '2014-02-18 15:14:29', '2014-02-18 15:14:29');
INSERT INTO `attachment` VALUES ('138', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/67e22213b67f927d83980639536ca738.jpg', '1200', '800', '0', '0', '2014-02-18 15:16:41', '2014-02-18 15:16:41');
INSERT INTO `attachment` VALUES ('139', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/ded296d915b1807cfda9dfcb839027f8.jpg', '628', '2482', '0', '0', '2014-02-18 15:16:42', '2014-02-18 15:16:42');
INSERT INTO `attachment` VALUES ('140', '13875291359649937.jpg', '33597', '.jpg', '201402/551045977689283616e88d6f5178473d.jpg', '600', '328', '0', '0', '2014-02-18 15:16:42', '2014-02-18 15:16:42');
INSERT INTO `attachment` VALUES ('141', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/ebefdebc0f40179e78fd79e4ec7b12ce.jpg', '1200', '800', '0', '0', '2014-02-18 15:17:44', '2014-02-18 15:17:44');
INSERT INTO `attachment` VALUES ('142', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/cce4b307cc1a8a5b30e52f1cfcf30e01.jpg', '628', '2482', '0', '0', '2014-02-18 15:17:45', '2014-02-18 15:17:45');
INSERT INTO `attachment` VALUES ('143', '13875291359649937.jpg', '33597', '.jpg', '201402/5f045dbbae207b62daea2567850ac10e.jpg', '600', '328', '0', '0', '2014-02-18 15:17:45', '2014-02-18 15:17:45');
INSERT INTO `attachment` VALUES ('144', '13875291359649937.jpg', '33597', '.jpg', '201402/2c7b9ae425461db22d905a48532fdc0c.jpg', '600', '328', '0', '0', '2014-02-18 15:19:36', '2014-02-18 15:19:36');
INSERT INTO `attachment` VALUES ('145', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/c840d6354cb62a66c2e5f3b33a444a98.jpg', '1200', '800', '0', '0', '2014-02-18 15:26:23', '2014-02-18 15:26:23');
INSERT INTO `attachment` VALUES ('146', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/c9c33f3ee7afce1e3b5c2288c31a89b6.jpg', '628', '2482', '0', '0', '2014-02-18 15:26:24', '2014-02-18 15:26:24');
INSERT INTO `attachment` VALUES ('147', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/f9741d426c79b1b6b49a32c533648e02.jpg', '1200', '800', '0', '0', '2014-02-18 15:37:37', '2014-02-18 15:37:37');
INSERT INTO `attachment` VALUES ('148', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/4d7992e3b9a48ad44156c4100f7a147e.jpg', '1200', '800', '0', '0', '2014-02-18 18:02:08', '2014-02-18 18:02:08');
INSERT INTO `attachment` VALUES ('149', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/b950800316dcc09b766ba86693650c02.jpg', '1200', '800', '0', '0', '2014-02-18 18:14:32', '2014-02-18 18:14:32');
INSERT INTO `attachment` VALUES ('150', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/3a48d0aab61d29b6b4d96c658cab9073.jpg', '628', '2482', '0', '0', '2014-02-18 18:14:54', '2014-02-18 18:14:54');
INSERT INTO `attachment` VALUES ('151', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/9c6e1c5beaf9e3294f54d6bc1e87183f.jpg', '1200', '800', '0', '0', '2014-02-18 18:15:57', '2014-02-18 18:15:57');
INSERT INTO `attachment` VALUES ('152', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/8db653ee077b478b560dede83f1a8283.jpg', '628', '2482', '0', '0', '2014-02-18 18:16:22', '2014-02-18 18:16:22');
INSERT INTO `attachment` VALUES ('153', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/3f2bff986907f16d0e36011804788d1f.jpg', '628', '2482', '0', '0', '2014-02-18 18:16:34', '2014-02-18 18:16:34');
INSERT INTO `attachment` VALUES ('154', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/1325dd0ca7db21b0a79cbedacf0feeb1.jpg', '628', '2482', '0', '0', '2014-02-18 18:17:51', '2014-02-18 18:17:51');
INSERT INTO `attachment` VALUES ('155', '13875291359649937.jpg', '33597', '.jpg', '201402/51b4af9cbaf322549190044ff5251534.jpg', '600', '328', '0', '0', '2014-02-18 18:18:10', '2014-02-18 18:18:10');
INSERT INTO `attachment` VALUES ('156', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/80eb1015a3a6cf20f62471dc937dc42d.jpg', '628', '2482', '0', '0', '2014-02-18 18:29:45', '2014-02-18 18:29:45');
INSERT INTO `attachment` VALUES ('157', '13875291359649937.jpg', '33597', '.jpg', '201402/04882e4d405f489edf9da9579a633d7d.jpg', '600', '328', '0', '0', '2014-02-18 18:31:02', '2014-02-18 18:31:02');
INSERT INTO `attachment` VALUES ('158', '13875291359649937.jpg', '33597', '.jpg', '201402/8e60da160d829fad39d53226444583f7.jpg', '600', '328', '0', '0', '2014-02-18 18:38:33', '2014-02-18 18:38:33');
INSERT INTO `attachment` VALUES ('159', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/224f5cee77201e33be152d639d71068e.jpg', '628', '2482', '0', '0', '2014-02-18 18:39:39', '2014-02-18 18:39:39');
INSERT INTO `attachment` VALUES ('160', '13875291359649937.jpg', '33597', '.jpg', '201402/541b871d6fcff103cc3e5dda78686c6b.jpg', '600', '328', '0', '0', '2014-02-18 18:39:50', '2014-02-18 18:39:50');
INSERT INTO `attachment` VALUES ('161', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/1c54783b2526fd1f3b4bb70b1ccb07e4.jpg', '1200', '800', '0', '0', '2014-02-18 18:40:07', '2014-02-18 18:40:07');
INSERT INTO `attachment` VALUES ('162', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/9ee8ecc5481e89f1b590861e860bf27a.jpg', '628', '2482', '0', '0', '2014-02-18 18:40:07', '2014-02-18 18:40:07');
INSERT INTO `attachment` VALUES ('163', '13875291359649937.jpg', '33597', '.jpg', '201402/2a800d6f56e687a404a9053d2f4198d0.jpg', '600', '328', '0', '0', '2014-02-18 18:40:08', '2014-02-18 18:40:08');
INSERT INTO `attachment` VALUES ('164', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/eb57589dd266ad3d0a8ffa2dcbb3841c.jpg', '1200', '800', '0', '0', '2014-02-18 18:41:40', '2014-02-18 18:41:40');
INSERT INTO `attachment` VALUES ('165', 'QQ图片20140210144701.jpg', '236877', '.jpg', '201402/cc39cd555af7e18c7885dfa86a702a1e.jpg', '628', '2482', '0', '0', '2014-02-18 18:41:40', '2014-02-18 18:41:40');
INSERT INTO `attachment` VALUES ('166', '13875291359649937.jpg', '33597', '.jpg', '201402/15c6554f98150051397b936ebc919e70.jpg', '600', '328', '0', '0', '2014-02-18 18:41:40', '2014-02-18 18:41:40');
INSERT INTO `attachment` VALUES ('167', '13875291359649937.jpg', '33597', '.jpg', '201402/81cd781003275667e20099d8072f6cfc.jpg', '600', '328', '0', '0', '2014-02-18 19:07:02', '2014-02-18 19:07:02');
INSERT INTO `attachment` VALUES ('168', '苏州家乐福.jpg', '204678', '.jpg', '201402/ea4726794c7ad24f1ac54b207864953c.jpg', '425', '316', '0', '0', '2014-02-26 14:39:09', '2014-02-26 14:39:09');
INSERT INTO `attachment` VALUES ('169', '9L6R8B9T00AN0001.jpg', '211756', '.jpg', '201402/5ced49d5a668ce7a209b5f0d8eaf509e.jpg', '1200', '800', '0', '0', '2014-02-26 15:38:38', '2014-02-26 15:38:38');
INSERT INTO `attachment` VALUES ('170', '苏州家乐福.jpg', '204678', '.jpg', '201402/b9c8dfe2268ffd7972900d1d7899fd43.jpg', '425', '316', '0', '0', '2014-02-26 17:53:57', '2014-02-26 17:53:57');
INSERT INTO `attachment` VALUES ('171', '13875291359649937.jpg', '33597', '.jpg', '201402/f08b563e2f687e63fb096cc5d30193ab.jpg', '600', '328', '0', '0', '2014-02-26 17:53:57', '2014-02-26 17:53:57');
INSERT INTO `attachment` VALUES ('172', '苏州家乐福.jpg', '204678', '.jpg', '201402/596c72d35ef5e85122aae082862fc193.jpg', '425', '316', '0', '0', '2014-02-26 18:05:50', '2014-02-26 18:05:50');
INSERT INTO `attachment` VALUES ('173', '13875291359649937.jpg', '33597', '.jpg', '201402/e7ce9ffc0f13dfa71028409bd149e69c.jpg', '600', '328', '0', '0', '2014-02-26 18:05:50', '2014-02-26 18:05:50');
INSERT INTO `attachment` VALUES ('174', '13875291359649937.jpg', '33597', '.jpg', '201402/3dc636227bd827ba938d7b16df0d2358.jpg', '600', '328', '0', '0', '2014-02-26 18:17:25', '2014-02-26 18:17:25');
INSERT INTO `attachment` VALUES ('175', '苏州家乐福.jpg', '204678', '.jpg', '201402/78caecb6a56e4e7110a99dc797b000f0.jpg', '425', '316', '0', '0', '2014-02-26 18:17:34', '2014-02-26 18:17:34');
INSERT INTO `attachment` VALUES ('176', '苏州家乐福.jpg', '204678', '.jpg', '201402/6de7f2d91bafa07d7e1b00b39c2a2ad6.jpg', '425', '316', '0', '0', '2014-02-26 18:46:37', '2014-02-26 18:46:37');
INSERT INTO `attachment` VALUES ('177', '首页轮换图.jpg', '143362', '.jpg', '201402/09bd4e798b997b4bf2268c4686209581.jpg', '1200', '800', '0', '0', '2014-02-27 09:59:01', '2014-02-27 09:59:01');
INSERT INTO `attachment` VALUES ('178', '苏州家乐福.jpg', '204678', '.jpg', '201402/8ed86c92c1c3183afa5aff679027ccef.jpg', '425', '316', '0', '0', '2014-02-27 10:04:04', '2014-02-27 10:04:04');
INSERT INTO `attachment` VALUES ('179', '首页轮换图.jpg', '143362', '.jpg', '201402/6aa615242ed964ac642be7857a298444.jpg', '1200', '800', '0', '0', '2014-02-27 10:04:23', '2014-02-27 10:04:23');
INSERT INTO `attachment` VALUES ('180', '苏州家乐福.jpg', '204678', '.jpg', '201402/718a0d4aa7cdfcc7f45e53e7348c60b3.jpg', '425', '316', '0', '0', '2014-02-27 10:04:23', '2014-02-27 10:04:23');
INSERT INTO `attachment` VALUES ('181', '苏州家乐福.jpg', '204678', '.jpg', '201402/ff1266ebedb91a5c282e96dca3ef65e8.jpg', '425', '316', '0', '0', '2014-02-27 10:11:12', '2014-02-27 10:11:12');
INSERT INTO `attachment` VALUES ('182', '苏州家乐福.jpg', '204678', '.jpg', '201402/2f7945f2342f3077b3655bdf6cabb932.jpg', '425', '316', '0', '0', '2014-02-27 10:54:05', '2014-02-27 10:54:05');
INSERT INTO `attachment` VALUES ('183', 'banner1.jpg', '145611', '.jpg', '201402/619eefabc6d5c7115177834ec5e99e1e.jpg', '1200', '800', '0', '0', '2014-02-27 11:11:00', '2014-02-27 11:11:00');
INSERT INTO `attachment` VALUES ('184', 'banner2.jpg', '107428', '.jpg', '201402/82c6047436fd63b6301404b8e51bcca9.jpg', '1200', '800', '0', '0', '2014-02-27 11:11:00', '2014-02-27 11:11:00');
INSERT INTO `ci_sessions` VALUES ('361e5681b1cdda28802a93d7ce7a1d64', '192.168.152.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36', '1393477099', '');
INSERT INTO `ci_sessions` VALUES ('baa6ce2b20c8e6f9a38ff0228fd4e123', '192.168.152.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:26.0) Gecko/20100101 Firefox/26.0', '1392717023', 'a:2:{s:9:\"user_data\";s:0:\"\";s:7:\"profile\";a:7:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:8:\"nickname\";s:5:\"Admin\";s:8:\"password\";s:88:\"l7pNZTSNHw+i/BgHTzpwl07DB5xUGtVG4AzCanJVS2UxFEt9Z39k/SyggtIwXc0NcRPDRMNYq4eR4qONShWU0Q==\";s:10:\"createtime\";s:19:\"2012-12-15 12:17:00\";s:10:\"updatetime\";s:19:\"0000-00-00 00:00:00\";s:6:\"enable\";s:1:\"1\";}}');
INSERT INTO `ci_sessions` VALUES ('9c270337d75bed90852ad61bddfa73ef', '192.168.152.1', 'Shockwave Flash', '1392633911', '');
INSERT INTO `ci_sessions` VALUES ('326a624920a5407b19dfcecdecc70d5c', '192.168.152.1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', '1392634696', 'a:2:{s:9:\"user_data\";s:0:\"\";s:7:\"profile\";a:7:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:8:\"nickname\";s:5:\"Admin\";s:8:\"password\";s:88:\"oCykA+3feqpF1gOh4Mc+e0xfZZised5LIHxZLpodJNDPYN3dJlhgM2lzKObPmIcdecXz5vuZX57f0hRr6qqlcg==\";s:10:\"createtime\";s:19:\"2012-12-15 12:17:00\";s:10:\"updatetime\";s:19:\"0000-00-00 00:00:00\";s:6:\"enable\";s:1:\"1\";}}');
INSERT INTO `ci_sessions` VALUES ('573b45a806343020d6118457484a8e65', '192.168.152.1', 'Shockwave Flash', '1392634724', '');
INSERT INTO `ci_sessions` VALUES ('3813d1905f18b16b075515731e407543', '192.168.152.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0', '1393476927', 'a:1:{s:7:\"profile\";a:8:{s:2:\"id\";s:1:\"1\";s:7:\"account\";s:5:\"admin\";s:8:\"nickname\";s:5:\"Admin\";s:8:\"password\";s:88:\"kYtf6KaePA+uEEBXFhAOLSJAMxv+Uvuxo5cllT4A9txCvfC4Vqew38Mztrgtd2XWY5NmSGpVHXOGbG/k8Jb0Zg==\";s:10:\"createtime\";s:19:\"2012-12-15 12:17:00\";s:10:\"updatetime\";s:19:\"2014-02-27 12:47:41\";s:6:\"enable\";s:1:\"1\";s:11:\"remember-me\";b:1;}}');
INSERT INTO `ci_sessions` VALUES ('9cf5357908243271fad0d7d2497c2ccf', '192.168.152.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0', '1392789215', '');
INSERT INTO `ci_sessions` VALUES ('9c560633e976fe7ddfd0e3e2503676a7', '192.168.152.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0', '1392789215', '');
INSERT INTO `ci_sessions` VALUES ('a2410dd8adc1d6d618156cdaab37cf1b', '192.168.152.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64; rv:27.0) Gecko/20100101 Firefox/27.0', '1392789215', '');
INSERT INTO `ci_sessions` VALUES ('ccd85c25b3eb36c0d80d06927d8a4ac4', '192.168.152.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/31.0.1650.57 Safari/537.36', '1392957188', '');
INSERT INTO `ci_sessions` VALUES ('b46aeb0f51954a26fdc97ec8010f0a41', '192.168.152.1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', '1392965735', '');
INSERT INTO `ci_sessions` VALUES ('e7ef7f3cc3671c4a9318d5e4c8f04802', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30', '1392973205', '');
INSERT INTO `ci_sessions` VALUES ('029936b5aa377e88b7e7f913c5778b80', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .N', '1392973367', '');
INSERT INTO `ci_sessions` VALUES ('fc1277d13c3e4a38267237a5f7fd916c', '192.168.152.1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', '1392976888', '');
INSERT INTO `ci_sessions` VALUES ('49600bfba02451cb226b18bb5b2ab928', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30', '1392979346', '');
INSERT INTO `ci_sessions` VALUES ('83d70ce9d0897fb37a23048bbe4f0f32', '192.168.152.1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', '1393223475', '');
INSERT INTO `ci_sessions` VALUES ('891f76a12e373f379ff12fb7248d6ecb', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30', '1393223479', '');
INSERT INTO `ci_sessions` VALUES ('04266cf00907aa38b0f8a27e40b339b6', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .N', '1393223526', '');
INSERT INTO `ci_sessions` VALUES ('8d4c2d12a7d283a0986ea15d2a920f81', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30', '1393223937', '');
INSERT INTO `ci_sessions` VALUES ('500a39c6dd5520817c4ec0981a3a67d0', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .N', '1393239223', '');
INSERT INTO `ci_sessions` VALUES ('5cf9ad5709a8e20a576d0396ea73189e', '192.168.152.1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', '1393305091', '');
INSERT INTO `ci_sessions` VALUES ('5668f10c32ed46a3c2a87c3838143fb2', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30', '1393305095', '');
INSERT INTO `ci_sessions` VALUES ('337c8b08a3ada9ab993462e5413a0f2d', '192.168.152.1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', '1393323006', '');
INSERT INTO `ci_sessions` VALUES ('72031d4cf00b7d8ee439e48bd03e361c', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30', '1393323012', '');
INSERT INTO `ci_sessions` VALUES ('4b9817e403e00347f98f6beeba4ca80d', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .N', '1393325038', '');
INSERT INTO `ci_sessions` VALUES ('5164c4f692d2e89cdf61041b5adbc882', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30', '1393325043', '');
INSERT INTO `ci_sessions` VALUES ('5c16a056ca8aa13115c85c0f15d92a89', '192.168.152.1', 'Mozilla/5.0 (compatible; MSIE 9.0; Windows NT 6.1; WOW64; Trident/5.0)', '1393403645', '');
INSERT INTO `ci_sessions` VALUES ('3df4aea65e30ff573c702a3a9043517d', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 7.0; Windows NT 6.1; WOW64; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .NET CLR 3.0.30', '1393406155', '');
INSERT INTO `ci_sessions` VALUES ('fd3c7c367ab50dcdb095bcb89ba64834', '192.168.152.1', 'Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1; WOW64; Trident/4.0; SLCC2; .NET CLR 2.0.50727; .NET CLR 3.5.30729; .N', '1393406160', '');
INSERT INTO `image` VALUES ('1', '首页', '2014-02-26 18:26:58', '2014-02-27 11:12:26', '[{\"aid\":\"183\",\"path\":\"201402\\/619eefabc6d5c7115177834ec5e99e1e.jpg\"},{\"aid\":\"184\",\"path\":\"201402\\/82c6047436fd63b6301404b8e51bcca9.jpg\"}]', '[{\"aid\":\"183\",\"path\":\"201402\\/619eefabc6d5c7115177834ec5e99e1e.jpg\"},{\"aid\":\"184\",\"path\":\"201402\\/82c6047436fd63b6301404b8e51bcca9.jpg\"}]');
INSERT INTO `news` VALUES ('1', '测试店铺名称1', '', '', '', '新增', '正常', '2014-02-17 17:16:31', '2014-02-17 17:16:31');
INSERT INTO `news` VALUES ('2', '测试店铺名称2', '', '', '', '新增', '正常', '2014-02-17 17:16:31', '2014-02-17 17:16:31');
INSERT INTO `news` VALUES ('3', '测试店铺名称3', '', '', '', '新增', '正常', '2014-02-17 17:17:18', '2014-02-17 17:17:18');
INSERT INTO `news` VALUES ('4', '测试店铺名称4', '', '', '', '新增', '正常', '2014-02-17 17:19:39', '2014-02-17 17:19:39');
INSERT INTO `news` VALUES ('5', '测试1 ', '', '', '121323213213', '取消发布', '正常', '2014-02-18 11:46:29', '2014-02-18 17:16:55');
INSERT INTO `news` VALUES ('6', '测试2 没有图片', '', '', '', '已发布', '正常', '2014-02-18 11:51:00', '2014-02-18 16:05:08');
INSERT INTO `news` VALUES ('7', 'ahsdhhsad', '', '', 'erfghdfhfghgfh', '取消发布', '删除', '2014-02-18 16:18:30', '2014-02-18 17:10:01');
INSERT INTO `news` VALUES ('8', 'jasjdjasdjasdasd', '', '', '<ol>\n	<li>\n		asdasjdjasd\n	</li>\n	<li>\n		jasjdasd\n	</li>\n	<li>\n		1212\n	</li>\n</ol>\n<p>\n	<img src=\"/img/Files/201402/81cd781003275667e20099d8072f6cfc.jpg\" alt=\"\" /> \n</p>\n<p>\n	<br />\n</p>\n<p>\n	asdjjasd\n</p>\n<p>\n	<br />\n</p>\n<p>\n	添加的 内容\n</p>', '新增', '正常', '2014-02-18 19:07:07', '2014-02-18 19:09:20');
INSERT INTO `news` VALUES ('9', 'asjdjasdjsadasd', '', '', 'sadfasdsadfasdf', '新增', '正常', '2014-02-18 19:07:52', '2014-02-18 19:07:52');
INSERT INTO `news` VALUES ('10', '我的主要白头', '次哟标题', '', '<p>\n	jajsasjajskasdasd\n</p>\n<p>\n	has\n</p>\n<p>\n	<br />\n</p>\n<p>\n	hahsahsas\n</p>\n<p>\n	hhdfhasdas\n</p>\n<p>\n	<br />\n</p>\n<p>\n	asd\n</p>\n<p>\n	<br />\n</p>\n<p>\n	<img src=\"/img/Files/201402/ea4726794c7ad24f1ac54b207864953c.jpg\" alt=\"\" /> \n</p>', '已发布', '正常', '2014-02-26 14:40:28', '2014-02-26 15:05:36');
INSERT INTO `news` VALUES ('11', '3123213sdfsdf  爱上大声地', '哈杀死啊是哈斯的', '201402/5ced49d5a668ce7a209b5f0d8eaf509e.jpg', '<p>\n	huuasjdjasdasd\n</p>\n<p>\n	jajsdjasdsad\n</p>\n<p>\n	<img src=\"/img/Files/201402/5ced49d5a668ce7a209b5f0d8eaf509e.jpg\" alt=\"\" /> \n</p>', '已发布', '正常', '2014-02-26 15:44:29', '2014-02-26 15:47:05');
INSERT INTO `news` VALUES ('12', 'hasdhhsadasdjjhh2121', '', '', '<table class=\"result\" id=\"1\" style=\"border:0px;width:33.7em;color:#333333;font-family:arial;background-color:#FFFFFF;\">\n	<tbody>\n		<tr>\n			<td class=\"c-default\" style=\"font-family:arial;font-size:13px;\">\n				<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\n					<a href=\"http://www.baidu.com/link?url=glZpqQsTaPGn2c0xZF3-BiTuzc0SNn04EA-JGahkwoM1DyLclkFJ2VYvpcPbP87w5lmDPLCu2c4VwB1UfAybkK&amp;wd=html5%20hgroup&amp;rsv_bp=0&amp;tn=baidu&amp;rsv_spt=3&amp;ie=utf-8&amp;rsv_sug3=12&amp;rsv_sug4=172&amp;rsv_sug1=14&amp;oq=html5%20hg&amp;rsv_sug2=0&amp;f=3&amp;rsp=0&amp;inputT=0\" target=\"_blank\"><span style=\"color:#CC0000;\">HTML 5</span>&nbsp;&lt;<span style=\"color:#CC0000;\">hgroup</span>&gt; 标签</a>\n				</h3>\n				<div class=\"c-abstract\">\n					<span style=\"color:#CC0000;\">HTML 5</span>&nbsp;&lt;<span style=\"color:#CC0000;\">hgroup</span>&gt; 标签定义和用法 &lt;<span style=\"color:#CC0000;\">hgroup</span>&gt; 标签用于对网页或区段(section)的标题进行组合。实例 使用&lt;<span style=\"color:#CC0000;\">hgroup</span>&gt; 标签对网页或区段(section)的标题进行组合: &lt;h...\n				</div>\n				<div class=\"f13\">\n					<span class=\"g\" style=\"color:#008000;\">www.w3school.com.cn/<b>html5</b>/t...<b>hgroup</b>...&nbsp;2014-02-10&nbsp;</span>\n					<div class=\"c-tools\" id=\"tools_8051902884698703301\">\n						<span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span>\n					</div>\n<span class=\"c-icons-outer\" style=\"vertical-align:bottom;\"><span class=\"c-icons-inner\"><span class=\"liketip\" id=\"like_8051902884698703301\"></span></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9d78d513d99907f006fa950e0a01d7174301c03e7b95c4523f8a9c12d52219564615fea662675513d3b2396640fe1301b7ae217240527de88cc8ff1b81a6c86e70d62029364fd35615a743fa8b1b628337902dbaee5b&amp;p=9e3b8416d9c111a05beb902453578b&amp;newp=8633c54ad5c545f04eacc52d02148a231610db2151d2d01720c2d219&amp;user=baidu&amp;fm=sc&amp;query=html5+hgroup&amp;qid=&amp;p1=1\" target=\"_blank\" class=\"m\">百度快照</a>\n				</div>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<table class=\"result\" id=\"2\" style=\"border:0px;width:33.7em;color:#333333;font-family:arial;background-color:#FFFFFF;\">\n	<tbody>\n		<tr>\n			<td class=\"c-default\" style=\"font-family:arial;font-size:13px;\">\n				<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\n					<a href=\"http://www.baidu.com/link?url=EYWa-rWbraNus1CDkKzFcWL2LaaW40Ur4MYZRUiZk9OfXr7gNkozG8V2GqG-yZZa\" target=\"_blank\"><span style=\"color:#CC0000;\">HTML5</span>&nbsp;标签&nbsp;<span style=\"color:#CC0000;\">hgroup</span>&nbsp;已经被废除</a>\n				</h3>\n				<div class=\"c-abstract\">\n					<span style=\"color:#CC0000;\">HTML5</span>&nbsp;增加了很多语义化的标签,<span style=\"color:#CC0000;\">hgroup</span>&nbsp;就是其中一个,它用来表明标题的集合。如果有主标题、副标题,可以使用这个来包裹一下,一般比较常见的就是网站的标题和网站...\n				</div>\n				<div class=\"f13\">\n					<span class=\"g\" style=\"color:#008000;\">www.douban.com/note/2716965...&nbsp;2013-04-15&nbsp;</span>\n					<div class=\"c-tools\" id=\"tools_6877793067730017931\">\n						<span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span>\n					</div>\n<span class=\"c-icons-outer\" style=\"vertical-align:bottom;\"><span class=\"c-icons-inner\"><span class=\"liketip\" id=\"like_6877793067730017931\"></span></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed4fece763105392230e54f7356190804623c3933fc239045c1b3ba5ec3a221507d7ce78600bab5448afad7624385966e8c5df893adaac925975dd6769375e&amp;p=9e338416d9c111a05bec94121c47c4&amp;newp=85769a478e934eac59edd5296154bb231610db2151d4d04d&amp;user=baidu&amp;fm=sc&amp;query=html5+hgroup&amp;qid=&amp;p1=2\" target=\"_blank\" class=\"m\">百度快照</a>\n				</div>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<table class=\"result\" id=\"3\" style=\"border:0px;width:33.7em;color:#333333;font-family:arial;background-color:#FFFFFF;\">\n	<tbody>\n		<tr>\n			<td class=\"c-default\" style=\"font-family:arial;font-size:13px;\">\n				<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\n					<a href=\"http://www.baidu.com/link?url=-d9I6QZZjqXGDoRVl_JyjdpEfd4LH-E6GzjO33IoIPnbDAzgbsYSuYs8Lh9b0hQtV3EMQOJKjQH7GpxlyC-zCa\" target=\"_blank\"><span style=\"color:#CC0000;\">HTML5</span>&nbsp;<span style=\"color:#CC0000;\">hgroup</span>&nbsp;的作用及其他写法_百度知道</a>\n				</h3>\n				<p class=\"f13 m\" style=\"color:#666666;\">\n					1个回答 - 提问时间: 2013年02月12日\n				</p>\n				<div class=\"c-abstract\">\n					<span class=\"m\" style=\"color:#666666;\">最佳答案:&nbsp;</span>①<span style=\"color:#CC0000;\">HTML5</span>出现了很多代表新的语义的标签,就想你说的<span style=\"color:#CC0000;\">hgroup</span>、section、aside、figure等等。 ②如果你了解布局方式从以前的“table表格布局”到现在注重语义化...\n				</div>\n				<div class=\"f13\">\n					<span class=\"g\" style=\"color:#008000;\">zhidao.baidu.com/link?url=-d9I6QZZjqXGDoR...&nbsp;2013-02-12&nbsp;</span>\n					<div class=\"c-tools\" id=\"tools_680773902194112094\">\n						<span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span>\n					</div>\n<span class=\"c-icons-outer\" style=\"vertical-align:bottom;\"><span class=\"c-icons-inner\"><span class=\"liketip\" id=\"like_680773902194112094\"></span></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed4fece763105e8d3d4f07dd743ca080462482d45f93130a1c187ba0fc7063565f8e99616001a9495eeef73477200357eddd97d65e98e6d27e20d2616b2e0b873115c419de9113659c67d2&amp;p=976fd615d9c047ac46be9b7c4c088e&amp;newp=8a759a46d0c00af502be9b7c56418223161cda386a848d0a3b8fd1259367101b1d&amp;user=baidu&amp;fm=sc&amp;query=html5+hgroup&amp;qid=&amp;p1=3\" target=\"_blank\" class=\"m\">百度快照</a>\n				</div>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<table class=\"result\" id=\"4\" style=\"border:0px;width:33.7em;color:#333333;font-family:arial;background-color:#FFFFFF;\">\n	<tbody>\n		<tr>\n			<td class=\"c-default\" style=\"font-family:arial;font-size:13px;\">\n				<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\n					<span class=\"c-icon c-icon-doc c-gap-icon-right-small\" style=\"vertical-align:text-bottom;\"></span><a href=\"http://www.baidu.com/link?url=YsF0UH-NqG4DGqgk6qZGcfVD8mMZRJHBpeejOTfNifXwWLXxp0I2k1rzRydE_crgVmcCvKt97FHf_dfGGDqw9yqMNOLwU8Y_v2deDNy48kO\" target=\"_blank\"><span style=\"color:#CC0000;\">HTML5</span>_百度文库</a>\n				</h3>\n				<div class=\"c-abstract\">\n					(3):新元素之&nbsp;<span style=\"color:#CC0000;\">hgroup</span>,header,footer,address,nav&nbsp;<span style=\"color:#CC0000;\">HTML5</span>&nbsp;学习笔记简明版(4):新元素之 video,audio,meter,datalist,keygen,output&nbsp;<span style=\"color:#CC0000;\">HTML5</span>&nbsp;学习笔记简明版(5):input...\n				</div>\n				<div class=\"f13\">\n					<span class=\"g\" style=\"color:#008000;\">wenku.baidu.com/link?url=YsF0UH-NqG4DGqgk...&nbsp;2013-08-09&nbsp;</span>\n					<div class=\"c-tools\" id=\"tools_9191257507754460386\">\n						<span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span>\n					</div>\n<span class=\"c-icons-outer\" style=\"vertical-align:bottom;\"><span class=\"c-icons-inner\"><span class=\"liketip\" id=\"like_9191257507754460386\"></span></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed4fece7631053803a401397634b87834e29938448e435061e5a22b8ec623f4305d0c17d3157ac1a5fbbf56521350170b09b9bd91ad7ed852858d2616b2e08c31c528516f58d197bd621e05dfeaf68bdefb06fd4ec&amp;p=9e338416d9c111a05bec91121c47c4&amp;newp=85769a478e934eac59e8d5296154bb231611d73f6590cf512496fe49cb&amp;user=baidu&amp;fm=sc&amp;query=html5+hgroup&amp;qid=&amp;p1=4\" target=\"_blank\" class=\"m\">百度快照</a>\n				</div>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<table class=\"result\" id=\"5\" style=\"border:0px;width:33.7em;color:#333333;font-family:arial;background-color:#FFFFFF;\">\n	<tbody>\n		<tr>\n			<td class=\"c-default\" style=\"font-family:arial;font-size:13px;\">\n				<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\n					<a href=\"http://www.baidu.com/link?url=1kCuGwcI8ZrsaoAIn9Fin3C0y-_SNw1juktd8qBdlf0jUUUrKOMGlCFjnQm4PO4BNf5ooXTqh5Kn8FsJavnxEK\" target=\"_blank\"><span style=\"color:#CC0000;\">HTML 5</span>&nbsp;<span style=\"color:#CC0000;\">hgroup</span>_百度百科</a>\n				</h3>\n				<div>\n					<p>\n						正文定义和用法&lt;<span style=\"color:#CC0000;\">hgroup</span>&gt; 标签用于对网页或区段（section）的标题进行组合。 实例使用 &lt;<span style=\"color:#CC0000;\">hgroup</span>&gt; 标签对网页或区段（section）的标题进行组合： &amp;lt...\n					</p>\n					<div>\n						<a href=\"http://baike.baidu.com/view/8540895.htm#1\" target=\"_blank\">正文</a>&nbsp;-&nbsp;<a href=\"http://baike.baidu.com/view/8540895.htm#2\" target=\"_blank\">差异</a>&nbsp;-&nbsp;<a href=\"http://baike.baidu.com/view/8540895.htm#3\" target=\"_blank\">提示和注释</a>&nbsp;-&nbsp;<a href=\"http://baike.baidu.com/view/8540895.htm#4\" target=\"_blank\">全局属性</a>&nbsp;-&nbsp;<a href=\"http://baike.baidu.com/view/8540895.htm#5\" target=\"_blank\">事件属性</a>\n					</div>\n					<div class=\"f13\">\n						<span class=\"g\" style=\"color:#008000;\">baike.baidu.com/&nbsp;2012-05-09&nbsp;\n						<div class=\"c-tools\" id=\"tools_2369467988704614593\">\n							<a class=\"c-tip-icon\"><span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span></a>\n						</div>\n</span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed4fece7631046843d400397634b87834e29938448e435061e5a22b8ec623f1a03d5c7766c06b8492bb0b66966725e60e19492ce1583ac9358289f27452a49c61c5591&amp;p=ce73860c85cc43ff57ee957f54489f&amp;newp=882a9644d79514fc57ef8f65165c91231610db2151dcd1432a&amp;user=baidu&amp;fm=sc&amp;query=html5+hgroup&amp;qid=&amp;p1=5\" target=\"_blank\" class=\"m\">百度快照</a>\n					</div>\n				</div>\n			</td>\n		</tr>\n	</tbody>\n</table>\n<table class=\"result\" id=\"6\" style=\"border:0px;width:33.7em;color:#333333;font-family:arial;background-color:#FFFFFF;\">\n	<tbody>\n		<tr>\n			<td class=\"c-default\" style=\"font-family:arial;font-size:13px;\">\n				<h3 class=\"t\" style=\"font-weight:normal;font-size:medium;\">\n					<a href=\"http://www.baidu.com/link?url=fFCy7D0W39zXTcX8RASDvmk4Ew0Yrnr_iKYYZ9UVDsz6_efPdwVR2_rvEM2y2YPmDLG_37dh1Vk-uGKymVatmq\" target=\"_blank\"><span style=\"color:#CC0000;\">HTML5</span>网页设计:<span style=\"color:#CC0000;\">hgroup</span>元素使用</a>\n				</h3>\n				<div class=\"c-abstract\">\n					<span class=\"m\" style=\"color:#666666;\">2011年8月21日&nbsp;-&nbsp;</span>网页制作Webjx文章简介:<span style=\"color:#CC0000;\">HTML5</span>&nbsp;<span style=\"color:#CC0000;\">hgroup</span>&nbsp;元素使用概述.<span style=\"color:#CC0000;\">hgroup</span>&nbsp;是<span style=\"color:#CC0000;\">HTML5</span>中新定义的元素,用来将标题和副标题群组。在我们已经有header标签的情况下,为什么我们...\n				</div>\n				<div class=\"f13\">\n					<span class=\"g\" style=\"color:#008000;\">www.poluoluo.com/jzxy/201108/1404...&nbsp;2011-08-21&nbsp;</span>\n					<div class=\"c-tools\" id=\"tools_4626683450322985353\">\n						<span class=\"c-icon c-icon-triangle-down-g\" style=\"vertical-align:text-bottom;\"></span>\n					</div>\n<span class=\"c-icons-outer\" style=\"vertical-align:bottom;\"><span class=\"c-icons-inner\"><span class=\"liketip\" id=\"like_4626683450322985353\"></span></span></span>&nbsp;-&nbsp;<a href=\"http://cache.baiducontent.com/c?m=9f65cb4a8c8507ed4fece763105392230e54f721618997482193ce5f93130a1c187bbbf36d690d04d1c67f650bb24a5ae8f63070200357eddd97d65e98e6d27e20d2616b2e0b873115c419de9113659c67d2&amp;p=9866c64ad4934eac59eb8e6f1e0580&amp;newp=9366c64ad48102e411bd9b7d0c10cf231610db2151d2da1f3d97d801&amp;user=baidu&amp;fm=sc&amp;query=html5+hgroup&amp;qid=&amp;p1=6\" target=\"_blank\" class=\"m\">百度快照</a>\n				</div>\n				<div>\n					<br />\n				</div>\n			</td>\n		</tr>\n	</tbody>\n</table>', '已发布', '正常', '2014-02-26 16:05:28', '2014-02-26 16:05:59');
INSERT INTO `shop` VALUES ('1', '测试店铺名称1', '1212312312', '', null, '', '新增', '正常', '2014-02-17 17:16:31', '2014-02-17 17:16:31', '');
INSERT INTO `shop` VALUES ('2', '测试店铺名称2', '1212312312', '', null, '', '新增', '正常', '2014-02-17 17:16:31', '2014-02-17 17:16:31', '');
INSERT INTO `shop` VALUES ('3', '测试店铺名称3', '1212312312', '', null, '', '未发布', '正常', '2014-02-17 17:17:18', '2014-02-18 17:19:24', '');
INSERT INTO `shop` VALUES ('4', '测试店铺名称4', '1212312312', '', null, '', '新增', '正常', '2014-02-17 17:19:39', '2014-02-17 17:19:39', '');
INSERT INTO `shop` VALUES ('5', '测试1 ', 'hahsdsad', '12', 'fsddsf', '1212', '已发布', '正常', '2014-02-18 11:46:29', '2014-02-18 17:11:32', '[]');
INSERT INTO `shop` VALUES ('6', '测试2 没有图片', 'hahsdsad1111', 'hahsdsad1111', 'a12131233131', '', '已发布', '正常', '2014-02-18 11:51:00', '2014-02-18 17:11:29', '{\"1\":{\"aid\":\"146\",\"path\":\"201402\\/c9c33f3ee7afce1e3b5c2288c31a89b6.jpg\"},\"2\":{\"aid\":\"145\",\"path\":\"201402\\/c840d6354cb62a66c2e5f3b33a444a98.jpg\"}}');
INSERT INTO `shop` VALUES ('7', 'ahsdhhsad', 'aksdjkasd', '13124', '123123', '', '已发布', '正常', '2014-02-18 16:18:30', '2014-02-18 17:11:26', '[]');
INSERT INTO `shop` VALUES ('8', 'asdasdjjjsadfasdf', 'asdag', '', '', '', '新增', '正常', '2014-02-18 18:18:21', '2014-02-18 18:18:21', '[{\"aid\":\"155\",\"path\":\"201402\\/51b4af9cbaf322549190044ff5251534.jpg\"}]');
INSERT INTO `user` VALUES ('1', 'admin', 'Admin', 'b68fc30d305bbe3f9f1fe701fa3333b0', '2012-12-15 12:17:00', '2014-02-27 12:47:41', '1');
INSERT INTO `user` VALUES ('2', 'testclient', 'Test Client', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 14:33:20', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('3', 'client2', 'Client2', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 15:30:00', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('4', 'client3', 'Client3', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 15:30:00', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('11', 'bella', 'bella', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 21:12:15', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('12', 'cathy', 'cathy', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 21:16:13', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('13', 'testuser1', 'testuser', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 21:31:15', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('14', 'testuser2', 'testuser2', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 21:31:27', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('15', 'testuser3', 'testuser3', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 21:31:48', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('16', 'testuser4', 'testuser4', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 21:32:07', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('17', 'testuser5', 'testuser5', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 21:32:25', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('18', 'testuser6', 'testuser6', 'fa1db6785a329876ade6dd338c909e61', '2012-12-16 21:32:44', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('19', 'testname', 'testname', 'fa1db6785a329876ade6dd338c909e61', '2012-12-19 21:03:05', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('20', 'testname1', 'testname1', 'fa1db6785a329876ade6dd338c909e61', '2012-12-19 22:30:34', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('21', 'bym', 'my name is \'as', 'fa1db6785a329876ade6dd338c909e61', '2013-04-10 11:13:47', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('22', 'test_client1', 'test_client1', 'fa1db6785a329876ade6dd338c909e61', '2013-05-02 15:08:48', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('23', 'test_normal1', 'test_normal1', 'fa1db6785a329876ade6dd338c909e61', '2013-05-02 15:10:47', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('24', 'test_normal2', 'test_normal2', 'fa1db6785a329876ade6dd338c909e61', '2013-05-02 15:13:02', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('25', 'test_normal3', 'test_normal3', 'fa1db6785a329876ade6dd338c909e61', '2013-05-02 15:15:54', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('26', 'test_normal4', 'test_normal4', 'fa1db6785a329876ade6dd338c909e61', '2013-05-02 15:17:42', '2014-02-27 12:37:18', '1');
INSERT INTO `user` VALUES ('27', 'test_normal5', 'test_normal5', 'fa1db6785a329876ade6dd338c909e61', '2013-05-03 09:28:38', '2014-02-27 12:37:18', '1');

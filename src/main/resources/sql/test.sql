/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50611
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50611
File Encoding         : 65001

Date: 2016-12-15 14:12:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin');
INSERT INTO `user` VALUES ('2', 'root', 'root');
INSERT INTO `user` VALUES ('15', 'MarK', '123456');
INSERT INTO `user` VALUES ('16', 'Fawofolo', '123456');
INSERT INTO `user` VALUES ('17', 'MarK', '123456');
INSERT INTO `user` VALUES ('18', 'Fawofolo', '123456');
INSERT INTO `user` VALUES ('19', 'MarK', '123456');
INSERT INTO `user` VALUES ('20', 'Fawofolo', '123456');
INSERT INTO `user` VALUES ('21', null, null);
INSERT INTO `user` VALUES ('22', null, null);
INSERT INTO `user` VALUES ('23', null, null);
INSERT INTO `user` VALUES ('24', null, null);
INSERT INTO `user` VALUES ('25', null, null);
INSERT INTO `user` VALUES ('26', null, null);
INSERT INTO `user` VALUES ('27', null, null);
INSERT INTO `user` VALUES ('28', null, null);
INSERT INTO `user` VALUES ('29', null, null);
INSERT INTO `user` VALUES ('30', null, null);
INSERT INTO `user` VALUES ('31', null, null);
INSERT INTO `user` VALUES ('32', null, null);
INSERT INTO `user` VALUES ('33', 'admin', 'admin');
INSERT INTO `user` VALUES ('34', 'admin', 'admin');
INSERT INTO `user` VALUES ('35', 'admin', 'admin');
INSERT INTO `user` VALUES ('36', null, null);
INSERT INTO `user` VALUES ('37', 'admin', 'admin');
INSERT INTO `user` VALUES ('38', 'admin', 'admin');
INSERT INTO `user` VALUES ('39', 'admin', 'admin');
INSERT INTO `user` VALUES ('40', 'admin', 'admin');
INSERT INTO `user` VALUES ('41', 'admin', 'admin');

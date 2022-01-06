/*
Navicat MySQL Data Transfer

Source Server         : 阿里云数据库
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : bookstore

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2020-03-29 18:09:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'int文章的唯一ID',
  `author` varchar(50) NOT NULL COMMENT '作者',
  `title` varchar(100) NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '文章的内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------


-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(30) NOT NULL,
  `pub` varchar(30) NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `date` datetime NOT NULL,
  `count` int(11) NOT NULL,
  `kind` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES ('1', '霸道总裁爱上我', '总裁出版社', '58', '2020-03-23 20:01:27', '20', '养生类');
INSERT INTO `book` VALUES ('2', '霸道总裁迷上我', '总裁出版社', '58', '2020-03-23 06:01:27', '10', '养生类');
INSERT INTO `book` VALUES ('5', '西游记', '西游出版社', '66', '2020-02-02 06:00:00', '40', '计算机类');
INSERT INTO `book` VALUES ('6', '三国演义', '三国出版社', '68', '2019-12-31 16:00:00', '45', '计算机类');
INSERT INTO `book` VALUES ('7', '红楼梦', '红楼出版社', '58', '2020-01-01 06:00:00', '23', '养生类');
INSERT INTO `book` VALUES ('8', '水浒传', '水壶出版社', '76', '2024-08-03 06:00:00', '50', '计算机类');
INSERT INTO `book` VALUES ('9', '人生', '神秘出版社', '66', '2020-02-22 16:00:00', '50', '计算机类');
INSERT INTO `book` VALUES ('10', '猫生', '神秘出版社', '38', '2020-02-01 16:00:00', '10', '计算机类');



-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `sex` char(5) DEFAULT NULL,
  `perm` varchar(20) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'kk', '123123', '13531174771', '2319680237@qq.com', 'm', 'A-C-U-R-D', 'super-administrator');
INSERT INTO `user` VALUES ('2', 'zz', '123456', '13531174771', '2319680237@qq.com', 'f', 'C-R-U', 'adminstrator');
INSERT INTO `user` VALUES ('3', 'jj', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');


/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 50727
 Source Host           : localhost:3306
 Source Schema         : bookstore

 Target Server Type    : MySQL
 Target Server Version : 50727
 File Encoding         : 65001

 Date: 06/01/2022 13:12:08
*/
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bookstore` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `bookstore`;

SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE IF EXISTS `article`;
CREATE TABLE `article`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'int文章的唯一ID',
  `author` varchar(50)  NOT NULL COMMENT '作者',
  `title` varchar(100)  NOT NULL COMMENT '标题',
  `content` longtext NOT NULL COMMENT '文章的内容',
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article
-- ----------------------------
INSERT INTO `article` VALUES (1, 'yu', 'test', '# This is a test for java web.\r\n## Hello, welcome to my bookstore!\r\n### just a test.\r\n[![龙猫](https://pic.qqtn.com/up/2016-7/2016071115340721509.gif \"龙猫\")](https://pic.qqtn.com/up/2016-7/2016071115340721509.gif \"龙猫\")');

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bookname` varchar(30)  NOT NULL,
  `pub` varchar(30)  NOT NULL,
  `price` decimal(10, 0) NOT NULL,
  `date` datetime(0) NOT NULL,
  `count` int(11) NOT NULL,
  `kind` varchar(20)  NOT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 'Java从入门到放弃', 'Sun出版社', 58, '2021-03-25 00:01:27', 20, '计算机类');
INSERT INTO `book` VALUES (2, 'Mysql从删库到跑路', '甲骨文出版社', 60, '2021-03-25 00:01:27', 10, '计算机类');
INSERT INTO `book` VALUES (3, 'Python爬虫从入门到入狱', '黑马出版社', 66, '2021-02-04 20:00:00', 40, '计算机类');
INSERT INTO `book` VALUES (4, '十天精通C++', '硅谷出版社', 99, '2021-01-01 06:00:00', 45, '计算机类');
INSERT INTO `book` VALUES (5, '脊椎病康复指南', '医学出版社', 38, '2021-01-02 10:00:00', 20, '养生类');
INSERT INTO `book` VALUES (6, '黑眼圈的秘密', '眼宝宝出版社', 76, '2021-08-04 10:00:00', 50, '养生类');
INSERT INTO `book` VALUES (7, '秃头的悲哀', '老中医出版社', 66, '2020-02-23 06:00:00', 50, '养生类');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20)  DEFAULT NULL,
  `phone` varchar(11)   DEFAULT NULL,
  `email` varchar(50)   DEFAULT NULL,
  `sex` char(5)  DEFAULT NULL,
  `perm` varchar(20)  DEFAULT NULL,
  `role` varchar(20)  DEFAULT NULL,
  PRIMARY KEY (`id`) 
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'yu', '123456', '13531174771', 'jackyu@gmail.com', 'm', 'A-C-U-R-D', 'super-administrator');
INSERT INTO `user` VALUES (2, 'zz', '123456', '13531174771', '2319680237@qq.com', 'f', 'C-R-U', 'adminstrator');
INSERT INTO `user` VALUES (3, 'jj', '123456', '13531174771', '2319680237@qq.com', 'm', 'R', 'guest');


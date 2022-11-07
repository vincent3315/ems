/*
Navicat MySQL Data Transfer

Source Server         : SOPX
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : ems

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-11-06 21:13:49
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admins
-- ----------------------------
DROP TABLE IF EXISTS `admins`;
CREATE TABLE `admins` (
  `name` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admins
-- ----------------------------
INSERT INTO `admins` VALUES ('admin', '123456');

-- ----------------------------
-- Table structure for departments
-- ----------------------------
DROP TABLE IF EXISTS `departments`;
CREATE TABLE `departments` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of departments
-- ----------------------------
INSERT INTO `departments` VALUES ('101', '教學部');
INSERT INTO `departments` VALUES ('102', '市場部');
INSERT INTO `departments` VALUES ('103', '研究部');
INSERT INTO `departments` VALUES ('104', '營運部');
INSERT INTO `departments` VALUES ('105', '後勤部');

-- ----------------------------
-- Table structure for employees
-- ----------------------------
DROP TABLE IF EXISTS `employees`;
CREATE TABLE `employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `gender` int(11) NOT NULL,
  `birthday` datetime NOT NULL,
  `department` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of employees
-- ----------------------------
INSERT INTO `employees` VALUES ('1', '張三', 'lion123@gmail.com', '1', '2003-06-07 00:00:00', '101');
INSERT INTO `employees` VALUES ('2', '李四', 'joyce456@gmail.com', '0', '2001-05-03 00:00:00', '102');
INSERT INTO `employees` VALUES ('3', '王五', 'whale67@gmail.com', '1', '2002-02-16 00:00:00', '103');
INSERT INTO `employees` VALUES ('4', '林和', 'hill34@gmail.com', '0', '2004-07-06 00:00:00', '104');
INSERT INTO `employees` VALUES ('5', '錢久', 'snow23@gmail.com', '0', '2003-04-08 00:00:00', '105');
INSERT INTO `employees` VALUES ('6', 'woodchuck', 'woodchuck@gmail.com', '1', '2002-01-11 00:00:00', '101');

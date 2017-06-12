/*
Navicat MySQL Data Transfer

Source Server         : base
Source Server Version : 50635
Source Host           : localhost:3306
Source Database       : user

Target Server Type    : MYSQL
Target Server Version : 50635
File Encoding         : 65001

Date: 2017-06-06 22:44:53
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(10)  AUTO_INCREMENT,
  `c_name` varchar(20) DEFAULT NULL,
  `c_score` float(10,0) DEFAULT NULL,
  `c_Tname` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '数学', '6', null);
INSERT INTO `course` VALUES ('2', '英语', '5', null);
INSERT INTO `course` VALUES ('3', '语文', '2', null);
INSERT INTO `course` VALUES ('4', '历史', '3', null);

-- ----------------------------
-- Table structure for `s_course`
-- ----------------------------
DROP TABLE IF EXISTS `s_course`;
CREATE TABLE `s_course` (
  `S_no` int(20) NOT NULL DEFAULT '0',
  `S_name` varchar(20) DEFAULT NULL,
  `c_list` varchar(20) DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`S_no`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of s_course
-- ----------------------------
INSERT INTO `s_course` VALUES ('1', '小红', '1,2,3', null);
INSERT INTO `s_course` VALUES ('2', '小明', '2,3,4', null);

-- ----------------------------
-- Table structure for `stu_info`
-- ----------------------------
DROP TABLE IF EXISTS `stu_info`;
CREATE TABLE `stu_info` (
  `id` int(10) PRIMARY KEY AUTO_INCREMENT,
  `stu_number` int(20) NOT NULL DEFAULT '0',
  `stu_name` varchar(10) DEFAULT NULL,
  `stu_age` int(10) DEFAULT NULL,
  `stu_sex` varchar(10) DEFAULT NULL,
  `stu_class` varchar(10) DEFAULT NULL,
  `stu_grape` varchar(10) DEFAULT NULL,
  `stu_score` float(10,0) DEFAULT NULL

) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of stu_info
-- ----------------------------

-- ----------------------------
-- Table structure for `t_course`
-- ----------------------------
DROP TABLE IF EXISTS `t_course`;
CREATE TABLE `t_course` (
  `T_no` int(20) NOT NULL,
  `T_name` varchar(20) DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_course
-- ----------------------------

-- ----------------------------
-- Table structure for `tea_info`
-- ----------------------------
DROP TABLE IF EXISTS `tea_info`;
CREATE TABLE `tea_info` (
  `id` int(10) PRIMARY KEY AUTO_INCREMENT,
  `tea_number` int(20) DEFAULT NULL,
  `tea_name` varchar(20) DEFAULT NULL,
  `tea_sex` varchar(10) DEFAULT NULL,
  `tea_age` int(10) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tea_info
-- ----------------------------

-- ----------------------------
-- Table structure for `userinfo`
-- ----------------------------
DROP TABLE IF EXISTS `userinfo`;
CREATE TABLE `admin_info` (
  `id` INT PRIMARY KEY AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `pw` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of userinfo
-- ----------------------------
INSERT INTO `userinfo` VALUES ('123', '123', '学生');

/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2023-06-26 14:14:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment` (
  `id` int NOT NULL,
  `article_id` int DEFAULT NULL,
  `created` varchar(200) DEFAULT NULL,
  `ip` varchar(200) DEFAULT NULL,
  `content` text,
  `status` varchar(200) DEFAULT NULL,
  `author` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_comment
-- ----------------------------

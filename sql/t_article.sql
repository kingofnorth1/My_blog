/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2023-06-26 14:13:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article` (
  `id` int DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` longtext,
  `created` date DEFAULT NULL,
  `modified` date DEFAULT NULL,
  `categories` varchar(200) DEFAULT NULL,
  `tags` varchar(200) DEFAULT NULL,
  `allow_comment` tinyint(1) DEFAULT NULL,
  `thumbnail` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_article
-- ----------------------------

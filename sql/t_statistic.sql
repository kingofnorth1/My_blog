/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2023-06-26 14:14:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_statistic
-- ----------------------------
DROP TABLE IF EXISTS `t_statistic`;
CREATE TABLE `t_statistic` (
  `id` int NOT NULL,
  `article_id` int DEFAULT NULL,
  `hits` int DEFAULT NULL,
  `comments_num` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_statistic
-- ----------------------------

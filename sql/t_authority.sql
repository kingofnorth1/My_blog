/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80026
Source Host           : localhost:3306
Source Database       : blog

Target Server Type    : MYSQL
Target Server Version : 80026
File Encoding         : 65001

Date: 2023-06-26 14:14:04
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_authority
-- ----------------------------
DROP TABLE IF EXISTS `t_authority`;
CREATE TABLE `t_authority` (
  `id` int NOT NULL,
  `authority` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- ----------------------------
-- Records of t_authority
-- ----------------------------
INSERT INTO `t_authority` VALUES ('1', 'ROLE_common');
INSERT INTO `t_authority` VALUES ('2', 'ROLE_vip');

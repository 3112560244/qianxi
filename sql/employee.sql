/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80026
 Source Host           : localhost:3306
 Source Schema         : company

 Target Server Type    : MySQL
 Target Server Version : 80026
 File Encoding         : 65001

 Date: 21/05/2022 17:17:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `paswd` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`, `name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES (1, 'admin', 'admin');
INSERT INTO `account` VALUES (2, 'qianxi', 'qianxi');

-- ----------------------------
-- Table structure for dept
-- ----------------------------
DROP TABLE IF EXISTS `dept`;
CREATE TABLE `dept`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '部门编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '部门名称',
  `status` tinyint(0) NOT NULL COMMENT '数据状态1有效 0无效',
  `create_date` datetime(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '创建日期',
  `update_data` datetime(0) NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dept
-- ----------------------------
INSERT INTO `dept` VALUES (1, '软件开发', 1, '2022-05-19 18:01:21', '2022-05-19 18:01:21');
INSERT INTO `dept` VALUES (2, '策划', 1, '2022-05-19 18:01:23', '2022-05-19 18:01:23');
INSERT INTO `dept` VALUES (3, '手游开发', 1, '2022-05-19 18:07:03', '2022-05-19 18:07:03');
INSERT INTO `dept` VALUES (4, '小程序开发', 1, '2022-05-19 18:07:07', '2022-05-19 18:07:07');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工姓名',
  `gender` tinyint(0) NOT NULL COMMENT '0女生 1男生',
  `hire_date` datetime(0) NOT NULL COMMENT '入职日期',
  `salary` int(0) NOT NULL COMMENT '员工工资',
  `dept_id` int(0) NOT NULL COMMENT '员工所在部门id',
  `status` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '数据状态 0 无效 1有效',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) COMMENT '创建时间',
  `update_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `d_id`(`dept_id`) USING BTREE,
  CONSTRAINT `d_eid` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (1, '1', 1, '2022-05-26 17:13:28', 2, 1, 1, '2022-05-21 17:13:32', '2022-05-21 17:13:40');
INSERT INTO `employee` VALUES (2, '3', 1, '2022-05-21 00:00:00', 3, 3, 0, '2022-05-21 17:15:12', '2022-05-21 17:16:51');
INSERT INTO `employee` VALUES (3, '3', 0, '2022-03-03 00:00:00', 3, 3, 1, '2022-05-21 17:16:32', '2022-05-21 17:16:43');

-- ----------------------------
-- Table structure for employee_copy1
-- ----------------------------
DROP TABLE IF EXISTS `employee_copy1`;
CREATE TABLE `employee_copy1`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '员工编号',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工姓名',
  `gender` tinyint(0) NOT NULL COMMENT '0女生 1男生',
  `hire_date` datetime(0) NOT NULL COMMENT '入职日期',
  `salary` int(0) NOT NULL COMMENT '员工工资',
  `dept_id` int(0) NOT NULL COMMENT '员工所在部门id',
  `status` tinyint(0) UNSIGNED NOT NULL DEFAULT 1 COMMENT '数据状态 0 无效 1有效',
  `create_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '新增时间',
  `update_date` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP(0) ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `d_id`(`dept_id`) USING BTREE,
  CONSTRAINT `employee_copy1_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_copy1
-- ----------------------------
INSERT INTO `employee_copy1` VALUES (1, '2', 0, '2022-05-21 00:00:00', 233, 1, 1, '2022-05-21 15:15:56', '2022-05-21 15:15:56');
INSERT INTO `employee_copy1` VALUES (2, '23', 0, '2022-05-19 00:00:00', 1, 1, 1, '2022-05-21 15:15:58', '2022-05-21 15:15:58');
INSERT INTO `employee_copy1` VALUES (3, '23', 1, '2022-05-19 00:00:00', 1, 1, 1, '2022-05-21 09:34:51', '2022-05-21 09:34:51');
INSERT INTO `employee_copy1` VALUES (4, '4', 1, '2022-06-05 00:00:00', 4, 4, 1, '2022-05-21 15:38:47', '2022-05-21 15:38:47');
INSERT INTO `employee_copy1` VALUES (5, '23', 1, '2022-05-21 00:00:00', 333, 1, 0, '2022-05-21 14:43:02', '2022-05-21 14:43:02');
INSERT INTO `employee_copy1` VALUES (6, '23', 1, '2022-05-21 00:00:00', 333, 1, 0, '2022-05-21 14:43:01', '2022-05-21 14:43:01');
INSERT INTO `employee_copy1` VALUES (7, '2333', 1, '2022-05-21 00:00:00', 33333, 1, 0, '2022-05-21 14:40:40', '2022-05-21 14:40:40');
INSERT INTO `employee_copy1` VALUES (8, '1232222222', 1, '2022-06-03 00:00:00', 123, 3, 0, '2022-05-21 14:42:59', '2022-05-21 14:42:59');
INSERT INTO `employee_copy1` VALUES (9, '333333123123', 0, '2022-05-27 00:00:00', 123333, 2, 0, '2022-05-21 14:40:37', '2022-05-21 14:40:37');
INSERT INTO `employee_copy1` VALUES (10, '4444444444444', 0, '2022-05-27 00:00:00', 123333, 2, 0, '2022-05-21 14:40:34', '2022-05-21 14:40:34');
INSERT INTO `employee_copy1` VALUES (11, '666666666', 0, '2022-05-26 00:00:00', 3333333, 1, 0, '2022-05-21 14:39:26', '2022-05-21 14:39:26');
INSERT INTO `employee_copy1` VALUES (12, '12', 1, '2022-05-12 00:00:00', 12, 1, 1, '2022-05-21 16:37:26', '2022-05-21 16:37:26');

SET FOREIGN_KEY_CHECKS = 1;

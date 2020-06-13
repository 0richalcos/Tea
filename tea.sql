/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : tea

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 13/06/2020 17:50:28
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for indent
-- ----------------------------
DROP TABLE IF EXISTS `indent`;
CREATE TABLE `indent`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `size` enum('小杯','中杯','大杯') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `sugar` enum('糖','半糖','少糖','无糖') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `oC` enum('加冰','常温','热') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `dosings` set('红豆','牛奶','抹茶','葡萄干','珍珠') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `finish` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of indent
-- ----------------------------
INSERT INTO `indent` VALUES (1, '红茶', '中杯', '半糖', '常温', '红豆,牛奶,抹茶', 1);
INSERT INTO `indent` VALUES (2, '柠檬茶', '小杯', '糖', '加冰', '珍珠', 1);
INSERT INTO `indent` VALUES (3, '绿茶', '大杯', '少糖', '热', '葡萄干', 1);
INSERT INTO `indent` VALUES (4, '黄茶', '大杯', '少糖', '热', '红豆,牛奶', 1);
INSERT INTO `indent` VALUES (5, '黄茶', '大杯', '少糖', '热', '红豆,牛奶', 1);
INSERT INTO `indent` VALUES (6, '绿茶', '大杯', '少糖', '热', '珍珠', 1);
INSERT INTO `indent` VALUES (7, '柚子茶', '大杯', '少糖', '常温', '牛奶,葡萄干', 1);
INSERT INTO `indent` VALUES (8, '柚子茶', '大杯', '少糖', '常温', '牛奶,葡萄干', 1);
INSERT INTO `indent` VALUES (9, '茉莉花茶', '大杯', '少糖', '常温', '牛奶,葡萄干', 1);
INSERT INTO `indent` VALUES (10, '茉莉花茶', '大杯', '少糖', '常温', '牛奶,葡萄干', 1);
INSERT INTO `indent` VALUES (11, '苦丁茶', '中杯', '少糖', '常温', '牛奶,珍珠', 1);
INSERT INTO `indent` VALUES (23, '黄茶', '中杯', '少糖', '常温', '红豆,牛奶,葡萄干', 0);
INSERT INTO `indent` VALUES (24, '柚子茶', '中杯', '糖', '加冰', '红豆,牛奶,抹茶', 1);
INSERT INTO `indent` VALUES (25, '茉莉花茶', '大杯', '半糖', '常温', '牛奶,葡萄干', 0);
INSERT INTO `indent` VALUES (26, '柠檬茶', '大杯', '无糖', '常温', '牛奶', 1);
INSERT INTO `indent` VALUES (27, '红茶', '中杯', '无糖', '加冰', '珍珠', 0);
INSERT INTO `indent` VALUES (28, '红茶', '大杯', '半糖', '常温', '红豆,珍珠', 0);

SET FOREIGN_KEY_CHECKS = 1;

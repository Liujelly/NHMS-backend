/*
 Navicat Premium Data Transfer

 Source Server         : 阿里云
 Source Server Type    : MySQL
 Source Server Version : 80025
 Source Host           : rm-bp1j1dc1265we9h52ho.mysql.rds.aliyuncs.com:3306
 Source Schema         : nhms

 Target Server Type    : MySQL
 Target Server Version : 80025
 File Encoding         : 65001

 Date: 10/03/2023 11:31:19
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for   ldimission
-- ----------------------------
DROP TABLE IF EXISTS `  ldimission`;
CREATE TABLE `  ldimission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工工号',
  `employee_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工姓名',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `birth` date NULL DEFAULT NULL COMMENT '出生日期',
  `identity_id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号',
  `marital_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '婚姻状态',
  `nation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '民族',
  `politics_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `email` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `educational_background` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '教育背景',
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  `school` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `entry_time` date NULL DEFAULT NULL COMMENT '入职时间',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '在职状态',
  `leave_time` date NULL DEFAULT NULL COMMENT '离职时间',
  `leave_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '离职原因',
  PRIMARY KEY (`id`, `employee_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of   ldimission
-- ----------------------------
INSERT INTO `  ldimission` VALUES (1, '1', '刘一帆', '女', 20, '2002-09-16', '321322200209161427', '0', '汉', '2', '3312907604@qq.com', '15161266920', '江苏翻斗花园', '本科', '前台', '淮阴工学院', '2023-01-12', '1', NULL, NULL);
INSERT INTO `  ldimission` VALUES (14, '3', '刘美丽', '女', 20, '2002-09-16', '321322200209161427', '1', '汉', '3', '3312536524@qq.com', '13651696542', '江苏', '硕士', '会计', '南大', '2023-01-30', '1', '2023-01-04', '出国留学');
INSERT INTO `  ldimission` VALUES (15, '4', '胡图图', NULL, NULL, NULL, NULL, '未婚', NULL, '中共预备党员', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-01-11', '想走');
INSERT INTO `  ldimission` VALUES (16, '14', '发的发广播', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-01-18', NULL);
INSERT INTO `  ldimission` VALUES (17, '13', '发的', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-01-19', NULL);
INSERT INTO `  ldimission` VALUES (18, '211', '成都市', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-01-15', NULL);
INSERT INTO `  ldimission` VALUES (19, '13', '张员', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-01-02', NULL);

-- ----------------------------
-- Table structure for advance
-- ----------------------------
DROP TABLE IF EXISTS `advance`;
CREATE TABLE `advance`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of advance
-- ----------------------------
INSERT INTO `advance` VALUES (2, '张三', '800', 800, '8800', '2020-01-01');
INSERT INTO `advance` VALUES (3, '王五', '10000', 2200, '12200', '2021-11-15');
INSERT INTO `advance` VALUES (4, '刘栋盛', '20000', 1000, '21000', '2020-11-16');
INSERT INTO `advance` VALUES (5, '许宇鹏', '10000', 6000, '16000', '2021-11-16');
INSERT INTO `advance` VALUES (6, '王者', '12000', 3000, '15000', '2021-11-16');
INSERT INTO `advance` VALUES (7, '李响', '15000', 500, '15500', '2022-11-16');
INSERT INTO `advance` VALUES (9, '李丽', '30000', 10000, '40000', '2019-11-16');
INSERT INTO `advance` VALUES (10, '赵胜', '10000', 10000, '20000', '2021-11-16');
INSERT INTO `advance` VALUES (11, '许盛', '许思哲', 5000, '13641522411', '2022-11-16');
INSERT INTO `advance` VALUES (13, '刘许宇', '捶背按摩', 25, '休闲', '2022-12-28');

-- ----------------------------
-- Table structure for apply
-- ----------------------------
DROP TABLE IF EXISTS `apply`;
CREATE TABLE `apply`  (
  `Aid` int(0) NOT NULL AUTO_INCREMENT COMMENT '申请编号',
  `Aname` char(8) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '申请人',
  `Aage` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `Asex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `Aphone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话号码',
  `Aemail` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `Aaddress` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '地址',
  `Anumber` int(0) NULL DEFAULT NULL COMMENT '人数',
  `Applytime` date NULL DEFAULT NULL COMMENT '申请时间',
  `Acometime` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '到访时间',
  `Aactive` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '活动',
  `AactiveTime` double NULL DEFAULT NULL COMMENT '时长',
  `Aheath` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康状况',
  `Astate` char(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `Apname` char(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '审核人',
  PRIMARY KEY (`Aid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 251 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of apply
-- ----------------------------
INSERT INTO `apply` VALUES (230, '张飞', 15, '男', '15186985785', '1569876655@qq.com', '和谐小区', 5, '2022-11-11', '2022-11-15', '献爱心', 1.5, '健康', '通过', NULL);
INSERT INTO `apply` VALUES (231, '李童', 15, '男', '13768546968', '1569875245@qq.com', '和谐小区', 5, '2022-11-11', '2022-11-15', '打扫卫生', 2, '健康', '不通过', NULL);
INSERT INTO `apply` VALUES (232, '张兰', 18, '男', '15896653698', '1587855@qq.com', '富春山', 3, '2022-11-11', '2022-11-16', '献爱心', 3, '健康', '通过', NULL);
INSERT INTO `apply` VALUES (233, '孙嘉', 36, '女', '15528956364', '15856525@qq.com', '小区', 3, '2022-11-11', '2022-11-16', '献爱心', 3, '健康', '不通过', NULL);
INSERT INTO `apply` VALUES (234, '柴铭志', 18, '男', '15986526548', '15586556@qq.com', '山西晋中', 1, '2022-11-11', '2022-11-17', '献爱心', 1, '健康', '通过', NULL);
INSERT INTO `apply` VALUES (235, '梁杰', 15, '男', '15865856987', '15842252@qq.com', '山西平遥', 1, '2022-11-11', '2022-11-17', '献爱心', 1.5, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (236, '张溥', 25, '女', '15896588455', '3665225255@qq.com', '月季花园', 5, '2022-11-11', '2022-11-17', '打扫卫生', 1, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (237, '李能', 19, '女', '18596542554', '36955445254@qq.com', '月季花园', 3, '2022-11-11', '2022-11-17', '探望老人', 2, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (238, '刘影', 25, '男', '13164668848', '558452565@qq.com', '和谐小区', 2, '2022-11-11', '2022-11-18', '献爱心', 1, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (239, '宋江', 18, '男', '13798755869', '1523697793@qq.com', '佳佳小区', 3, '2022-11-11', '2022-11-12', '献爱心', 2, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (240, '李逵', 19, '男', '15185698587', '1523697893@qq.com', '月季花园', 2, '2022-11-12', '2022-11-13', '打扫卫生', 1.5, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (241, '白条', 19, '男', '15236985225', '1589654@qq.com', '山西', 5, '2022-11-13', '2022-11-16', '献爱心', 1.5, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (242, '老赖', 15, '女', '16878965245', '1589655665@qq.com', '和谐小区', 5, '2022-11-16', '2022-11-18', '打扫卫生', 1.5, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (243, '武松', 19, '女', '15185675896', '1589655665@qq.com', '和谐小区', 5, '2022-11-15', '2022-11-15', '献爱心', 1.5, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (244, '八戒', 19, '男', '15186598758', '451546@qq.com', '佳佳小区', 5, '2022-11-15', '2022-11-16', '献爱心', 1.5, '健康', NULL, NULL);
INSERT INTO `apply` VALUES (245, '1', 1, '男', '1', '1', '1', 1, '1970-01-01', '1', '1', 1, '1', NULL, NULL);
INSERT INTO `apply` VALUES (246, '1', 1, '男', '1', '1', '1', 1, '1970-01-01', '1', '1', 1, '1', NULL, NULL);
INSERT INTO `apply` VALUES (247, '1', 1, '男', '1', '1', '1', 1, '1970-01-01', '1', '1', 1, '1', NULL, NULL);
INSERT INTO `apply` VALUES (248, '1', 1, '男', '1', '1', '1', 1, '1970-01-01', '1', '1', 1, '1', NULL, NULL);
INSERT INTO `apply` VALUES (249, '1', 1, '男', '1', '1', '1', 1, '1970-01-01', '1', '1', 1, '1', NULL, NULL);
INSERT INTO `apply` VALUES (250, '很难', 20, '男', '15161266920', '1', '1', 1, '1970-01-01', '1', '1', 1, '1', NULL, NULL);

-- ----------------------------
-- Table structure for attendance
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `employee_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工工号',
  `position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  `work_time` date NULL DEFAULT NULL COMMENT '工作日期',
  `on_time` datetime(0) NULL DEFAULT NULL COMMENT '上班时间',
  `off_time` datetime(0) NULL DEFAULT NULL COMMENT '下班时间',
  `on_state` int(0) NULL DEFAULT NULL COMMENT '上班打卡状态',
  `off_state` int(0) NULL DEFAULT NULL COMMENT '下班打卡状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 72 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of attendance
-- ----------------------------
INSERT INTO `attendance` VALUES (63, '刘一帆', '2022110127', '前台', '2023-02-15', '2023-02-15 11:07:06', '2023-02-15 11:16:59', 1, 2);
INSERT INTO `attendance` VALUES (64, '刘一帆', '2022110127', '前台', '2023-02-15', '2023-02-15 11:39:02', '2023-02-15 11:39:57', 0, 2);
INSERT INTO `attendance` VALUES (66, '刘一帆', '2022110127', '前台', '2023-02-15', '2023-02-15 11:41:36', '2023-02-15 11:41:37', 0, 2);
INSERT INTO `attendance` VALUES (67, '刘一帆', '2022110127', '前台', '2023-02-15', '2023-02-15 11:41:40', '2023-02-15 11:41:41', 0, 2);
INSERT INTO `attendance` VALUES (68, '刘一帆', '2022110127', '前台', '2023-02-15', '2023-02-15 13:48:45', '2023-02-15 13:48:51', 0, 2);
INSERT INTO `attendance` VALUES (70, '刘盛栋', '112004150129', '会计', '2023-02-15', '2023-02-15 14:08:06', '2023-02-15 14:08:08', 0, 2);
INSERT INTO `attendance` VALUES (71, '刘盛栋', '112004150129', '会计', '2023-03-01', '2023-03-01 13:49:50', '2023-03-01 13:49:53', 0, 2);

-- ----------------------------
-- Table structure for back1
-- ----------------------------
DROP TABLE IF EXISTS `back1`;
CREATE TABLE `back1`  (
  `id` int(0) NULL DEFAULT NULL,
  `name` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `backtime` date NULL DEFAULT NULL,
  `state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of back1
-- ----------------------------
INSERT INTO `back1` VALUES (35, '隋思', '137756256245', '2022-11-14', '请假中');
INSERT INTO `back1` VALUES (36, '隋琦', '13771262851', '2022-11-14', '请假中');
INSERT INTO `back1` VALUES (37, '琪琪', '13812566589', '2022-11-14', '请假中');
INSERT INTO `back1` VALUES (38, '韩立诚', '13812688524', '2022-12-19', '请假中');

-- ----------------------------
-- Table structure for building
-- ----------------------------
DROP TABLE IF EXISTS `building`;
CREATE TABLE `building`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `head_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `building_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `builder` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `completion_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `area` double(255, 0) NOT NULL,
  `structure` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `floors_number` int(0) NOT NULL,
  `rooms_number` int(0) NOT NULL,
  `repair_time` int(0) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of building
-- ----------------------------
INSERT INTO `building` VALUES (1, '123456', '1号楼', '万达', '2022-01-14', 120, '混合结构', 3, 20, 0);
INSERT INTO `building` VALUES (2, '123456', '2号宿舍楼', '恒大', '2022-11-17', 150, '混合结构', 2, 12, 0);
INSERT INTO `building` VALUES (3, '112200', '3号楼', '万达', '2022-11-01', 100, '混凝土', 5, 20, 0);
INSERT INTO `building` VALUES (4, '112233', '4号楼', '恒大', '2022-11-08', 100, '混合结构', 3, 15, 0);
INSERT INTO `building` VALUES (5, '111235', '5号楼', '万达', '2022-11-08', 50, '混合结构', 5, 20, 0);
INSERT INTO `building` VALUES (6, '112200', '6号楼', '万达', '2022-11-01', 50, '钢筋混凝土结构', 5, 20, 0);
INSERT INTO `building` VALUES (7, '112233', '7号楼', '万达', '2022-11-18', 50, '钢筋混凝土结构', 5, 20, 0);
INSERT INTO `building` VALUES (8, '112200', '8号楼', '恒大', '2022-11-04', 50, '钢筋混凝土结构', 5, 20, 0);

-- ----------------------------
-- Table structure for business_check
-- ----------------------------
DROP TABLE IF EXISTS `business_check`;
CREATE TABLE `business_check`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `check_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '考核编号',
  `check_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '考核名称',
  `check_content` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '考核内容',
  `check_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '考核类型',
  `check_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '考核时间',
  `check_result` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '考核结果',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `ename` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '员工姓名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of business_check
-- ----------------------------
INSERT INTO `business_check` VALUES (1, '12', '护理一级考试', '护理', '业务技能考核', '2023', '通过', '无', '刘盛栋');

-- ----------------------------
-- Table structure for changing_standard
-- ----------------------------
DROP TABLE IF EXISTS `changing_standard`;
CREATE TABLE `changing_standard`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `room_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `care_level` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `service_fee` double(255, 0) NOT NULL,
  `bed_fee` double(255, 0) NOT NULL,
  `food_fee` double(255, 0) NOT NULL,
  `ac_fee` double(255, 0) NOT NULL,
  `amount` double(255, 0) NOT NULL,
  `discount` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `prepaid` double(225, 0) NOT NULL,
  `gmt_created` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gmt_modified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 17 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of changing_standard
-- ----------------------------
INSERT INTO `changing_standard` VALUES (1, '单人间', '自理', 0, 11000, 100, 100, 100, '90%', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (2, '单人间', '半护理', 789, 10000, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (3, '单人间', '全护理', 456, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (4, '单人间', '特护理', 500, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (5, '双人间', '自理', 500, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (6, '双人间', '半护理', 500, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (7, '双人间', '全护理', 500, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (8, '双人间', '特护理', 100, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (9, '三/四人间', '自理', 500, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (10, '三/四人间', '半自理', 100, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (11, '三/四人间', '全护理', 100, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (12, '三/四人间', '特护理', 100, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (13, '五人间', '自理', 100, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (14, '五人间', '半自理', 100, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (15, '五人间', '全护理', 100, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');
INSERT INTO `changing_standard` VALUES (16, '五人间', '特护理', 100, 100, 100, 100, 100, '无', 100, '2022-10-15 19:03:55', '2023-02-02 22:43:31');

-- ----------------------------
-- Table structure for checkin
-- ----------------------------
DROP TABLE IF EXISTS `checkin`;
CREATE TABLE `checkin`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `idcard` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `education` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of checkin
-- ----------------------------
INSERT INTO `checkin` VALUES (45, '姚四', 80, '男', '13016578526', '江苏省', '320258966562355622', '汉族', '大学');
INSERT INTO `checkin` VALUES (46, '姚义务', 80, '男', '13015785265', '江苏省', '320284522625622755', '汉族', '大学');
INSERT INTO `checkin` VALUES (47, '要退三', 80, '男', '13016570298', '江苏省', '320284522658566277', '汉族', '大学');
INSERT INTO `checkin` VALUES (48, '缘散', 80, '男', '15950120666', '江苏省', '320281255625855622', '汉族', '大学');
INSERT INTO `checkin` VALUES (49, '袁子', 80, '男', '15852452356', '江苏省', '320284599756211522', '汉族', '大学');
INSERT INTO `checkin` VALUES (50, '袁康', 80, '男', '13016575256', '江苏省', '320598555625755622', '汉族', '大学');
INSERT INTO `checkin` VALUES (51, '姚嘉铖', 43, '男', '13016570297', '江苏省', '320281200201066277', '汉族', '大学');

-- ----------------------------
-- Table structure for dimission
-- ----------------------------
DROP TABLE IF EXISTS `dimission`;
CREATE TABLE `dimission`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工工号',
  `employee_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `birth` date NULL DEFAULT NULL COMMENT '出生日期',
  `identity_id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号',
  `marital_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '婚姻状态（0未婚，1已婚）',
  `nation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '民族',
  `politics_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `educational_background` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '教育背景',
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  `school` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `entry_time` date NULL DEFAULT NULL COMMENT '入职时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '在岗状态',
  `leave_time` date NULL DEFAULT NULL COMMENT '离职时间',
  `leave_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '离职原因',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dimission
-- ----------------------------
INSERT INTO `dimission` VALUES (38, '1', '小刘', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `dimission` VALUES (39, '12', '改变', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-02-22', NULL);
INSERT INTO `dimission` VALUES (40, '12', '张晓', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1', '2023-02-02', NULL);

-- ----------------------------
-- Table structure for disease_warning
-- ----------------------------
DROP TABLE IF EXISTS `disease_warning`;
CREATE TABLE `disease_warning`  (
  `disease_warning_id` int(0) NOT NULL AUTO_INCREMENT,
  `order_id` int(0) NULL DEFAULT NULL,
  `order_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `warning_disease` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `disease_suggest` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  INDEX `disease_warning_id`(`disease_warning_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of disease_warning
-- ----------------------------
INSERT INTO `disease_warning` VALUES (1, 20, '金果', '脑供血不足，嗜睡，抑郁，糖尿病，脂肪肝，肝硬化，胆石症，胰腺炎，', '偏瘦，建议增强营养，加强锻炼，建议清淡饮食为主，限制盐分摄入，多运动，建议清淡饮食，建少不饱和脂肪酸的摄入，');
INSERT INTO `disease_warning` VALUES (2, 21, '唐旭尧', '脑供血不足，嗜睡，抑郁，糖尿病，肝功能下降，内分泌失调，', '偏瘦，建议增强营养，加强锻炼，建议清淡饮食为主，限制盐分摄入，多运动，多吃一些脂肪类和胆固醇类食物，多运动，');
INSERT INTO `disease_warning` VALUES (3, 22, '丁越彬', '健康状态良好', 'BMI正常，');
INSERT INTO `disease_warning` VALUES (4, 23, '傅风华', '脑供血不足，嗜睡，抑郁，糖尿病，', '偏瘦，建议增强营养，加强锻炼，建议清淡饮食为主，限制盐分摄入，多运动，');
INSERT INTO `disease_warning` VALUES (5, 24, '韦晓啸', '心力衰竭，脑出血，脑血栓，糖尿病，脂肪肝，肝硬化，胆石症，胰腺炎，', '偏瘦，建议减少钠盐的摄入，按时服用降压药，建议清淡饮食为主，限制盐分摄入，多运动，建议清淡饮食，建少不饱和脂肪酸的摄入，');
INSERT INTO `disease_warning` VALUES (6, 25, '谭明', '心律不齐，脑供血不足，嗜睡，抑郁，糖尿病，脂肪肝，肝硬化，胆石症，胰腺炎，', 'BMI正常，注意呼吸系统疾病和慢性心血管疾病的预防，建议增强营养，加强锻炼，建议清淡饮食为主，限制盐分摄入，多运动，建议清淡饮食，建少不饱和脂肪酸的摄入，');
INSERT INTO `disease_warning` VALUES (7, 26, '郑浩', '肥胖症，', '肥胖，');
INSERT INTO `disease_warning` VALUES (8, 27, '邹子骞', '心力衰竭，脑出血，脑血栓，糖尿病，脂肪肝，肝硬化，胆石症，胰腺炎，', '偏胖，建议减少钠盐的摄入，按时服用降压药，建议清淡饮食为主，限制盐分摄入，多运动，建议清淡饮食，建少不饱和脂肪酸的摄入，');
INSERT INTO `disease_warning` VALUES (9, 28, '马昊焱', NULL, NULL);
INSERT INTO `disease_warning` VALUES (10, 29, '陈浩轩', '健康状态良好', 'BMI正常，');

-- ----------------------------
-- Table structure for dish
-- ----------------------------
DROP TABLE IF EXISTS `dish`;
CREATE TABLE `dish`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cuisine` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `ingredients` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `taste` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `taboo_crowds` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `gmt_created` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gmt_modified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dish
-- ----------------------------
INSERT INTO `dish` VALUES (1, '糖醋排骨', '淮扬菜', '排骨', '甜', '糖尿病', '正宗的糖醋排骨选用仔排、肋排。排骨需先去除血水，沥干腌制入味，然后裹上粉下油炸至表面金黄酥脆捞出备用，冰糖炒出糖色后放排骨入锅翻炒，最后淋上米醋调成糖醋味。', '2022-10-17 20:54:00', '2022-10-17 23:56:09');
INSERT INTO `dish` VALUES (2, '鱼香肉丝', '川菜', '猪肉', '油腻', '三高', '适量的淀粉和料酒抓匀， 青椒去除中间的筋和籽，切成细丝，胡萝卜同样切成细丝，再切点木耳丝。当肉的颜色稍微变化时，放入豆瓣辣酱，接着放入适量的酱油和盐，然后将豆瓣酱和肉丝混合均匀，再将之前准备好的胡萝卜和青椒放入，混合后，根据自己的习惯放入调料', '2022-10-17 21:03:40', '2022-10-17 21:03:40');
INSERT INTO `dish` VALUES (3, '东坡肘子', '川菜', '肘子', '油腻', '三高', '先将肘子洗净后焯水(加白酒1大勺、姜半块、葱1根)，取出用流水冲洗干净备用。', '2022-10-17 21:04:33', '2022-10-17 23:06:00');
INSERT INTO `dish` VALUES (4, '扬州炒饭', '淮扬菜', '火腿', '甜', '糖尿病', '将锅置火上，舀入熟猪油烧热，放人虾仁滑熟，捞出，放人海参丁、鸡丁、火腿丁、干贝、冬菇丁、笋丁、鸭肫丁、猪肉丁煸炒，加入绍酒、盐、鸡清汤，烧沸，盛入碗中作什锦浇头。', '2022-10-17 21:17:48', '2022-10-17 21:17:48');
INSERT INTO `dish` VALUES (5, '松鼠桂鱼', '浙菜', '桂鱼', '甜', '糖尿病', '将鱼身撒上食盐、胡椒粉、料酒、湿淀粉（少许）涂匀；将松子放在温热的油锅中，待油热后再炸半分钟后捞出，放小碗中备用；', '2022-10-17 23:05:34', '2022-10-17 23:05:50');
INSERT INTO `dish` VALUES (6, '松仁玉米', '淮扬菜', '玉米', '甜', '糖尿病', '松仁用水洗净，放在油锅里炸到颜色稍微变深备用。', '2022-10-17 23:05:34', '2022-10-17 23:05:50');
INSERT INTO `dish` VALUES (7, '糖醋鲤鱼', '鲁菜', '鲤鱼', '甜', '糖尿病', '锅油炸前要捏住鱼头鱼尾，过热油炸成弯曲的形态。在油锅内炸至金黄，葱姜蒜爆香后，淋上红色的糖醋浓汁，', '2022-10-17 23:05:34', '2022-10-17 23:05:34');
INSERT INTO `dish` VALUES (8, '三杯鸡', '粤菜', '鸡肉', '甜、油腻', '三高', '鸡翅切半，加少许酱油、料酒腌制，平底锅加少许油将鸡翅炸至金黄色备用，从新起锅，加葱姜蒜炒出香味，然后把炸好的鸡翅放入锅里炒，在放入酱油、老抽、冰糖，在放黄酒与鸡翅持平，不用加水，大火烧开调制小火炖，直到完全收汁即可！', '2022-10-17 23:05:34', '2022-10-17 23:05:34');
INSERT INTO `dish` VALUES (9, '蒸香菇盒', '徽菜', '香菇', '油腻', '免疫力低', '将猪瘦肉剁成泥，放碗中，加火腿末、葱花、1/2汤匙酱油、盐、白糖、味精、适量生粉和熟猪油，打入鸡蛋，拌匀成肉馅；', '2022-10-17 21:17:48', '2022-10-17 21:17:48');
INSERT INTO `dish` VALUES (10, '锅贴鱼', '湘菜', '青鱼', '油炸', '三高', '把青鱼肉和肥膘肉片成同样大小(鱼肉厚0.6厘米、猪肉厚0.3厘米)的4大片；\r\n（2）用盐、味精、香油、鸡蛋(多半)、料酒、葱末、姜末等分别煨好；', '2022-10-17 21:03:40', '2022-10-17 21:03:40');

-- ----------------------------
-- Table structure for donate
-- ----------------------------
DROP TABLE IF EXISTS `donate`;
CREATE TABLE `donate`  (
  `d_name` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_sex` char(2) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_id` int(0) NOT NULL AUTO_INCREMENT,
  `d_age` int(0) NOT NULL,
  `d_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_goodsname` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_goodsnumber` int(0) NOT NULL,
  `d_source` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_time` date NULL DEFAULT NULL,
  `d_goodsclass` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `d_state` char(16) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`d_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of donate
-- ----------------------------
INSERT INTO `donate` VALUES ('赵云', '男', 4, 15, '17205228667', '口罩', 100, '江苏南京', '2022-11-14', '医疗', NULL);
INSERT INTO `donate` VALUES ('关羽', '男', 6, 18, '15845555525', '洗手液', 15, '山西晋中', '2022-11-14', '生活用品', NULL);
INSERT INTO `donate` VALUES ('刘备', '男', 7, 19, '15885545656', '棉被', 20, '四川乐山', '2022-11-14', '日用品', NULL);
INSERT INTO `donate` VALUES ('曹操', '男', 8, 20, '15895445477', '棉签', 500, '四川成都', '2022-11-14', '日用品', NULL);
INSERT INTO `donate` VALUES ('庞德', '男', 9, 14, '15877445885', '口罩', 200, '四川眉山', '2022-11-14', '医疗', NULL);
INSERT INTO `donate` VALUES ('孙尚香', '女', 10, 22, '18568845553', '衣物', 15, '四川乐山', '2022-11-14', '生活用品', NULL);
INSERT INTO `donate` VALUES ('貂蝉', '女', 11, 18, '18555665566', '口罩', 54, '广东潮汕', '2022-11-14', '医疗', NULL);
INSERT INTO `donate` VALUES ('吕布', '男', 12, 22, '18845582654', '洗脸盆', 20, '西藏拉萨', '2022-11-14', '日用品', NULL);
INSERT INTO `donate` VALUES ('诸葛亮', '男', 13, 19, '15899789554', '水果', 5, '四川乐山', '2022-11-14', '食品', NULL);
INSERT INTO `donate` VALUES ('王华', '男', 24, 21, '15268554785', '口罩', 100, '江苏淮安', '2022-11-15', '医用', NULL);

-- ----------------------------
-- Table structure for dorm
-- ----------------------------
DROP TABLE IF EXISTS `dorm`;
CREATE TABLE `dorm`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `building_id` int(0) NOT NULL,
  `dorm_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `dorm_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bed_status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `bed_available` int(0) NOT NULL,
  `elderly_ids` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dorm
-- ----------------------------
INSERT INTO `dorm` VALUES (4, 2, '2-101', '4人间', '已满员', 0, '20、21、22、23');
INSERT INTO `dorm` VALUES (6, 2, '2-102', '3人间', '已满员', 0, '25、29、30');
INSERT INTO `dorm` VALUES (18, 2, '2-103', '4人间', '未满员', 3, '、27');
INSERT INTO `dorm` VALUES (19, 2, '2-104', '4人间', '未满员', 3, '、28');
INSERT INTO `dorm` VALUES (20, 2, '2-105', '4人间', '未满员', 4, NULL);
INSERT INTO `dorm` VALUES (21, 2, '2-106', '4人间', '未满员', 4, NULL);
INSERT INTO `dorm` VALUES (22, 2, '2-107', '4人间', '未满员', 4, NULL);
INSERT INTO `dorm` VALUES (23, 2, '2-108', '4人间', '未满员', 4, NULL);
INSERT INTO `dorm` VALUES (24, 2, '2-109', '4人间', '未满员', 4, NULL);
INSERT INTO `dorm` VALUES (25, 2, '2-201', '单人间', '未满员', 1, NULL);
INSERT INTO `dorm` VALUES (26, 2, '2-202', '单人间', '未满员', 1, NULL);
INSERT INTO `dorm` VALUES (27, 2, '2-203', '单人间', '未满员', 1, NULL);
INSERT INTO `dorm` VALUES (28, 2, '2-204', '双人间', '未满员', 2, NULL);
INSERT INTO `dorm` VALUES (29, 2, '2-205', '双人间', '未满员', 2, NULL);
INSERT INTO `dorm` VALUES (30, 2, '2-206', '单人间', '未满员', 1, NULL);
INSERT INTO `dorm` VALUES (31, 2, '2-207', '三人间', '未满员', 3, NULL);
INSERT INTO `dorm` VALUES (32, 2, '2-208', '三人间', '未满员', 3, NULL);
INSERT INTO `dorm` VALUES (33, 2, '2-209', '三人间', '未满员', 2, NULL);
INSERT INTO `dorm` VALUES (34, 2, '2-210', '双人间', '未满员', 2, NULL);

-- ----------------------------
-- Table structure for elderly
-- ----------------------------
DROP TABLE IF EXISTS `elderly`;
CREATE TABLE `elderly`  (
  `id` int(0) NOT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `idcard` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `education` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `buildingid` int(0) NULL DEFAULT NULL,
  `dormitoryid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '入住中',
  `dstate` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '未分配',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of elderly
-- ----------------------------
INSERT INTO `elderly` VALUES (20, '金果', 89, '男', '13016595265', '江苏省', '142431196106120526', '汉族', '大学', 2, '2-101', '入住中', '已分配');
INSERT INTO `elderly` VALUES (21, '唐旭尧', 70, '男', '13052685625', '江苏省', '142431196006120548', '汉族', '大学', 2, '2-101', '入住中', '未分配');
INSERT INTO `elderly` VALUES (22, '丁越彬', 70, '女', '15956328565', '江苏省', '142431196206120619', '汉族', '大学', 2, '2-101', '入住中', '未分配');
INSERT INTO `elderly` VALUES (25, '谭明', 70, '男', '15956325332', '江苏省', '142431196506120619', '汉族', '大学', 2, '2-102', '请假中', '已分配');
INSERT INTO `elderly` VALUES (27, '邹子骞', 70, '男', '15950132002', '江苏省', '142431196706120569', '汉族', '大学', 2, '2-103', '入住中', '已分配');
INSERT INTO `elderly` VALUES (28, '马昊焱', 70, '男', '15950132555', '江苏省', '142431196806120249', '汉族', '大学', 2, '2-104', '入住中', '已分配');
INSERT INTO `elderly` VALUES (29, '陈浩轩', 70, '女', '15956235235', '江苏省', '142431195606120619', '汉族', '大学', 2, '2-102', '入住中', '已分配');
INSERT INTO `elderly` VALUES (30, '覃炎彬', 70, '女', '15956235235', '江苏省', '142431195406120679', '汉族', '大学', 2, '2-102', '入住中', '已分配');
INSERT INTO `elderly` VALUES (31, '秦鑫鹏', 70, '女', '15963562333', '江苏省', '142431195506120535', '汉族', '大学', NULL, NULL, '请假中', '未分配');
INSERT INTO `elderly` VALUES (32, '薛梓晨', 80, '女', '15956245325', '江苏省', '142431196006120542', '汉族', '大学', NULL, NULL, '入住中', '未分配');
INSERT INTO `elderly` VALUES (33, '马文轩', 80, '女', '13016585625', '江苏省', '142431194506120629', '汉族', '大学', NULL, NULL, '入住中', '未分配');
INSERT INTO `elderly` VALUES (34, '曾思远', 80, '女', '13015745625', '江苏省', '142431194906120969', '汉族', '大学', NULL, NULL, '入住中', '未分配');
INSERT INTO `elderly` VALUES (35, '秦弘文', 80, '女', '137756256245', '江苏省', '142431195206120759', '汉族', '大学', NULL, NULL, '请假中', '未分配');
INSERT INTO `elderly` VALUES (36, '赖弘文', 80, '女', '13771262851', '江苏省', '142431195606120649', '汉族', '大学', NULL, NULL, '请假中', '未分配');
INSERT INTO `elderly` VALUES (37, '邹伟泽', 80, '女', '13812566589', '江苏省', '142431195806120549', '汉族', '大学', NULL, NULL, '请假中', '未分配');
INSERT INTO `elderly` VALUES (38, '韩立诚', 80, '女', '13812688524', '江苏省', '142431196806120453', '汉族', '大学', NULL, NULL, '请假中', '未分配');
INSERT INTO `elderly` VALUES (39, '韩雪松', 80, '女', '138126554233', '江苏省', '142431196206120546', '汉族', '大学', NULL, NULL, '入住中', '未分配');
INSERT INTO `elderly` VALUES (40, '章三', 87, '女', '15956120356', '江苏省', '142431196206120465', '汉族', '大学', NULL, NULL, '入住中', '未分配');
INSERT INTO `elderly` VALUES (42, '奇峰', 80, '男', '15950126585', '江苏省', '320284522652688966', '汉族', '大学', NULL, NULL, '入住中', '未分配');
INSERT INTO `elderly` VALUES (44, '姚级', 80, '男', '13016895245', '江苏省', '320284522656322566', '汉族', '大学', NULL, NULL, '入住中', '未分配');

-- ----------------------------
-- Table structure for employee
-- ----------------------------
DROP TABLE IF EXISTS `employee`;
CREATE TABLE `employee`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工工号',
  `employee_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别',
  `age` int(0) NULL DEFAULT NULL COMMENT '年龄',
  `birth` date NULL DEFAULT NULL COMMENT '出生日期',
  `identity_id` varchar(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '身份证号',
  `marital_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '婚姻状态（0未婚，1已婚）',
  `nation` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '民族',
  `politics_status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `educational_background` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '教育背景',
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  `school` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `entry_time` date NULL DEFAULT NULL COMMENT '入职时间',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '在岗状态',
  `is_delete` tinyint(1) NULL DEFAULT 0 COMMENT '删除标识',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `role_id` int(0) NULL DEFAULT NULL COMMENT '角色id',
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '角色名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 46 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee
-- ----------------------------
INSERT INTO `employee` VALUES (2, '112004150129', '刘盛栋', '男', 21, '2001-10-30', '320481200110305413', '已婚', '汉', '共青团员', '1762788495@qq.com', '15151906230', '江苏', '本科', '会计', '淮阴工学院', '2023-01-06', '1', 0, '123456', 1, '超级管理员');
INSERT INTO `employee` VALUES (42, '2022110127', '刘一帆', '女', 20, '2002-09-16', '321322200209161427', '未婚', '汉', '中共预备党员', '3312907604@qq.com', '15161266920', '江苏', '本科', '前台', '淮工', '2023-02-15', '1', 0, '123456', 1, '超级管理员');

-- ----------------------------
-- Table structure for employee_leave
-- ----------------------------
DROP TABLE IF EXISTS `employee_leave`;
CREATE TABLE `employee_leave`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `employee_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工工号',
  `dept` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '部门',
  `position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  `leave_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请假类型',
  `leave_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '请假原因',
  `start_time` datetime(0) NULL DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime(0) NULL DEFAULT NULL COMMENT '结束时间',
  `reply` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核回复',
  `state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审核状态',
  `submit_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP COMMENT '提交时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 40 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of employee_leave
-- ----------------------------
INSERT INTO `employee_leave` VALUES (11, '刘一帆', '2022110127', NULL, '前台', '0', '回家', '2023-02-07 16:00:00', '2023-02-15 03:00:00', NULL, '拒绝', '2023-02-12 15:54:05');
INSERT INTO `employee_leave` VALUES (14, '刘盛栋', '112004150129', NULL, '会计', '0', '结婚', '2023-02-07 00:00:00', '2023-02-09 00:00:00', '可以', '通过', NULL);
INSERT INTO `employee_leave` VALUES (15, '刘盛栋', '112004150129', NULL, '会计', '0', NULL, '2023-02-08 00:00:00', '2023-02-14 00:00:00', '及他', '通过', NULL);
INSERT INTO `employee_leave` VALUES (34, '刘一帆', '2022110127', NULL, '前台', NULL, NULL, '2023-02-12 20:37:53', NULL, NULL, '通过', '2023-02-12 20:37:44');
INSERT INTO `employee_leave` VALUES (35, '刘一帆', '2022110127', NULL, '前台', NULL, NULL, '2023-02-07 00:00:00', NULL, NULL, '拒绝', '2023-02-12 23:17:17');
INSERT INTO `employee_leave` VALUES (36, '刘一帆', '2022110127', NULL, '前台', NULL, NULL, '2023-02-20 04:02:00', '2023-02-23 00:00:00', NULL, '拒绝', '2023-02-12 23:17:35');
INSERT INTO `employee_leave` VALUES (37, '刘盛栋', '112004150129', NULL, '会计', '0', '想睡觉', '2023-02-07 07:00:00', '2023-02-23 00:00:00', NULL, '通过', '2023-02-12 23:23:03');
INSERT INTO `employee_leave` VALUES (38, '刘盛栋', '112004150129', NULL, '会计', '0', NULL, '2023-02-16 00:00:00', '2023-02-23 00:00:00', NULL, '待审核', '2023-02-13 13:49:21');

-- ----------------------------
-- Table structure for employee_state
-- ----------------------------
DROP TABLE IF EXISTS `employee_state`;
CREATE TABLE `employee_state`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工工号',
  `state` int(0) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for health_index
-- ----------------------------
DROP TABLE IF EXISTS `health_index`;
CREATE TABLE `health_index`  (
  `health_index_id` int(0) NOT NULL AUTO_INCREMENT,
  `order_id` int(0) NULL DEFAULT NULL,
  `order_name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bmi` double NULL DEFAULT NULL,
  `heart_rate_index` int(0) NULL DEFAULT NULL,
  `blood_oxygen_index` int(0) NULL DEFAULT NULL,
  `blood_pressure_index` int(0) NULL DEFAULT NULL,
  `blood_glucose_index` int(0) NULL DEFAULT NULL,
  `blood_fat_index` int(0) NULL DEFAULT NULL,
  `temperature_index` double NULL DEFAULT NULL,
  `health_index_num` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`health_index_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_index
-- ----------------------------
INSERT INTO `health_index` VALUES (1, 20, '金果', 16.53, 15, 20, 10, 10, 10, 36.4, 65);
INSERT INTO `health_index` VALUES (2, 21, '唐旭尧', 17.8, 15, 20, 10, 10, 10, 35, 65);
INSERT INTO `health_index` VALUES (3, 22, '丁越彬', 23.15, 15, 20, 20, 20, 20, 36, 95);
INSERT INTO `health_index` VALUES (4, 23, '傅风华', 16.67, 15, 20, 10, 10, 20, 36, 75);
INSERT INTO `health_index` VALUES (5, 24, '韦晓啸', 17.28, 10, 20, 10, 10, 10, 36, 60);
INSERT INTO `health_index` VALUES (6, 25, '谭明', 22.89, 10, 5, 10, 10, 10, 36, 45);
INSERT INTO `health_index` VALUES (7, 26, '郑浩', 31.11, 15, 15, 20, 20, 20, 36, 90);
INSERT INTO `health_index` VALUES (8, 27, '邹子骞', 28.89, 10, 20, 10, 10, 10, 36, 60);
INSERT INTO `health_index` VALUES (9, 28, '马昊焱', 29.3, 15, 20, 20, 20, 10, 36, 85);
INSERT INTO `health_index` VALUES (10, 29, '陈浩轩', 23.15, 15, 20, 20, 20, 20, 36.6, 95);

-- ----------------------------
-- Table structure for health_index_standard
-- ----------------------------
DROP TABLE IF EXISTS `health_index_standard`;
CREATE TABLE `health_index_standard`  (
  `standard_id` int(0) NULL DEFAULT NULL,
  `text_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `heart_rate_good_high` int(0) NULL DEFAULT NULL,
  `heart_rate_good_low` int(0) NULL DEFAULT NULL,
  `heart_rate_mid_high` int(0) NULL DEFAULT NULL,
  `heart_rate_mid_low` int(0) NULL DEFAULT NULL,
  `heart_rate_bad_high` int(0) NULL DEFAULT NULL,
  `heart_rate_bad_low` int(0) NULL DEFAULT NULL,
  `blood_oxygen_good` int(0) NULL DEFAULT NULL,
  `blood_oxygen_mid` int(0) NULL DEFAULT NULL,
  `blood_pressure_high_good` int(0) NULL DEFAULT NULL,
  `blood_pressure_mid_good` int(0) NULL DEFAULT NULL,
  `blood_pressure_low_good` int(0) NULL DEFAULT NULL,
  `blood_glucose_high` double NULL DEFAULT NULL,
  `blood_glucose_low` double NULL DEFAULT NULL,
  `blood_fat_high` double NULL DEFAULT NULL,
  `blood_fat_low` double NULL DEFAULT NULL,
  `temperature_good_high` double NULL DEFAULT NULL,
  `temperature_good_low` double NULL DEFAULT NULL,
  `temperature_bad_high` double NULL DEFAULT NULL,
  `temperature_bad_higher` double NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_index_standard
-- ----------------------------
INSERT INTO `health_index_standard` VALUES (1, '标准值', 70, 55, 100, 60, 160, 40, 90, 80, 140, 90, 60, 6.1, 3.9, 5.2, 2.8, 37.3, 36.3, 39, 41);

-- ----------------------------
-- Table structure for health_level
-- ----------------------------
DROP TABLE IF EXISTS `health_level`;
CREATE TABLE `health_level`  (
  `health_level_id` int(0) NOT NULL AUTO_INCREMENT,
  `order_id` int(0) NULL DEFAULT NULL,
  `order_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `health_index_num` int(0) NULL DEFAULT NULL,
  `health_level_num` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `suggest` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  PRIMARY KEY (`health_level_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of health_level
-- ----------------------------
INSERT INTO `health_level` VALUES (1, 20, '金果', 65, 'B', 'BMI过低，心率正常，血氧饱和度优，血压偏低，血糖偏高，血脂偏高，');
INSERT INTO `health_level` VALUES (2, 21, '唐旭尧', 65, 'B', 'BMI过低，心率正常，血氧饱和度优，血压偏低，血糖偏高，血脂偏低，');
INSERT INTO `health_level` VALUES (3, 22, '丁越彬', 95, 'SS', 'BMI正常，心率正常，血氧饱和度优，血压正常，血糖正常，血脂正常，');
INSERT INTO `health_level` VALUES (4, 23, '傅风华', 75, 'A', 'BMI过低，心率正常，血氧饱和度优，血压偏低，血糖偏高，血脂正常，');
INSERT INTO `health_level` VALUES (5, 24, '韦晓啸', 60, 'C', 'BMI过低，心率一般，血氧饱和度优，血压偏高，血糖偏高，血脂偏高，');
INSERT INTO `health_level` VALUES (6, 25, '谭明', 45, 'D', 'BMI正常，心率一般，血氧饱和度较低，血压偏低，血糖偏高，血脂偏高，');
INSERT INTO `health_level` VALUES (7, 26, '郑浩', 90, 'S', 'BMI过高，心率正常，血氧饱和度良好，血压正常，血糖正常，血脂正常，');
INSERT INTO `health_level` VALUES (8, 27, '邹子骞', 60, 'C', 'BMI偏高，心率一般，血氧饱和度优，血压偏高，血糖偏高，血脂正常，');
INSERT INTO `health_level` VALUES (9, 28, '马昊焱', 85, NULL, NULL);
INSERT INTO `health_level` VALUES (10, 29, '陈浩轩', 95, NULL, NULL);

-- ----------------------------
-- Table structure for inarchive
-- ----------------------------
DROP TABLE IF EXISTS `inarchive`;
CREATE TABLE `inarchive`  (
  `id` int(0) NULL DEFAULT NULL,
  `name` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `sex` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `iatime` date NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 54 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inarchive
-- ----------------------------
INSERT INTO `inarchive` VALUES (1, '王的附', 70, '男', '15950120356', '北京市', '2022-11-14');
INSERT INTO `inarchive` VALUES (2, '喜德坤', 80, '男', '15950120399', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (3, '德芙', 60, '女', '13016570288', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (4, '王困得', 60, '男', '15950112556', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (5, '喜得发', 70, '男', '13016507256', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (6, '罗习', 70, '男', '13016953652', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (7, '单存', 70, '男', '15950135666', '浙江省', '2022-11-14');
INSERT INTO `inarchive` VALUES (8, '络绎三', 70, '女', '15950180356', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (9, '罗三三', 60, '男', '18050120333', '浙江省', '2022-11-14');
INSERT INTO `inarchive` VALUES (10, '吉斯尔', 87, '女', '15980120656', '浙江省', '2022-11-14');
INSERT INTO `inarchive` VALUES (11, '罗尔基', 52, '女', '15260120666', '浙江省', '2022-11-14');
INSERT INTO `inarchive` VALUES (12, '李萨尔', 78, '女', '15980156256', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (13, '李四儿', 87, '男', '15954135222', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (14, '李旺德', 89, '男', '15950146333', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (15, '李村的', 75, '男', '15850120565', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (16, '张四儿', 87, '男', '15850120363', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (17, '张村的', 51, '女', '15850123356', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (18, '要存', 87, '男', '13016576289', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (19, '姚村', 56, '男', '13016576259', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (20, '金果', 89, '男', '13016595265', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (21, '唐旭尧', 70, '男', '13052685625', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (22, '丁越彬', 70, '女', '15956328565', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (23, '傅风华', 70, '男', '15926542666', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (24, '韦晓啸', 70, '女', '15963485262', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (25, '谭明', 70, '男', '15956325332', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (26, '郑浩', 70, '女', '15956254332', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (27, '邹子骞', 70, '男', '15950132002', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (28, '马昊焱', 70, '男', '15950132555', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (29, '陈浩轩', 70, '女', '15956235235', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (30, '覃炎彬', 70, '女', '15956235235', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (31, '秦鑫鹏', 70, '女', '15963562333', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (32, '薛梓晨', 80, '女', '15956245325', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (33, '马文轩', 80, '女', '13016585625', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (34, '曾思远', 80, '女', '13015745625', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (35, '秦弘文', 80, '女', '13015745625', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (36, '赖弘文', 80, '女', '13771262851', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (37, '邹伟泽', 80, '女', '13812566589', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (38, '韩立诚', 80, '女', '13812688524', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (39, '韩雪松', 80, '女', '138126554233', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (40, '章三', 87, '女', '15956120356', '江苏省', '2022-11-14');
INSERT INTO `inarchive` VALUES (41, '洛三', 80, '男', '15950120333', '江苏省', '2022-11-15');
INSERT INTO `inarchive` VALUES (42, '奇峰', 80, '男', '15950126585', '江苏省', '2022-11-15');
INSERT INTO `inarchive` VALUES (44, '姚级', 80, '男', '13016895245', '江苏省', '2023-01-28');

-- ----------------------------
-- Table structure for infrastructure
-- ----------------------------
DROP TABLE IF EXISTS `infrastructure`;
CREATE TABLE `infrastructure`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `building_id` int(0) NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `facility_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `facility_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shelf_life` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `repair_number` int(0) NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `repair_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of infrastructure
-- ----------------------------
INSERT INTO `infrastructure` VALUES (2, 1, '1号楼一层', '办公设施', '办公桌', '2022-11-04', '10年', 0, '正常', '15151906231');
INSERT INTO `infrastructure` VALUES (3, 1, '1号楼二层', '办公设施', '办公椅', '2022-11-10', '10年', 0, '正常', '15565445250');
INSERT INTO `infrastructure` VALUES (4, 1, '1号楼三层', '办公设施', '办公桌', '2022-11-11', '10年', 0, '正常', '13544485250');
INSERT INTO `infrastructure` VALUES (5, 2, '2号楼一层', '办公设施', '办公桌', '2022-11-11', '10年', 0, '正常', '13544568585');
INSERT INTO `infrastructure` VALUES (6, 2, '2号楼三层', '消防设施', '消防栓', '2022-11-12', '2年', 0, '异常', '15355546525');
INSERT INTO `infrastructure` VALUES (7, 2, '2号楼一层', '消防设施', '消防栓', '2022-11-13', '10年', 0, '正常', '15535445525');
INSERT INTO `infrastructure` VALUES (8, 3, '3号楼一层', '消防设施', '消防栓', '2022-11-12', '10年', 0, '正常', '14556525456');
INSERT INTO `infrastructure` VALUES (9, 3, '3号楼二层', '办公设施', '办公电脑', '2022-11-13', '5年', 0, '正常', '15648524658');
INSERT INTO `infrastructure` VALUES (10, 3, '3号楼三层', '办公设施', '办公桌', '2022-11-13', '5年', 0, '正常', '15546525252');
INSERT INTO `infrastructure` VALUES (11, 3, '3号楼四层', '办公设施', '办公椅', '2022-11-13', '2年', 0, '正常', '15535448520');
INSERT INTO `infrastructure` VALUES (12, 4, '4号楼一层', '消防设施', '消防栓', '2022-11-11', '3年', 0, '正常', '15544567452');
INSERT INTO `infrastructure` VALUES (13, 4, '4号楼二层', '消防设施', '消防栓', '2022-11-12', '3年', 0, '正常', '15535448520');
INSERT INTO `infrastructure` VALUES (14, 4, '4号楼三层', '办公设施', '办公桌', '2022-11-13', '3年', 0, '正常', '15535448526');

-- ----------------------------
-- Table structure for inrecord
-- ----------------------------
DROP TABLE IF EXISTS `inrecord`;
CREATE TABLE `inrecord`  (
  `inbound_number` int(0) NOT NULL AUTO_INCREMENT,
  `material_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `material_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warehousing_quantity` float NOT NULL,
  `warehousing_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `production_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `m_supplier` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shelf_life` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `in_operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '张强',
  PRIMARY KEY (`inbound_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000019 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of inrecord
-- ----------------------------
INSERT INTO `inrecord` VALUES (10000001, '1', '1', 20, '1', '1', '1', '1', '1');
INSERT INTO `inrecord` VALUES (10000004, 'M0000002', '床', 20, '2022-11-13  11:37:10', '2022', '淮安器械有限公司', '2023', '张强');
INSERT INTO `inrecord` VALUES (10000005, 'M0000003', '口罩', 25, '2022-11-13  11:56:25', '2022', '淮安医疗器械有限公司', '2023', '张强');
INSERT INTO `inrecord` VALUES (10000006, 'M0000002', '床', 100, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '张强');
INSERT INTO `inrecord` VALUES (10000007, 'M0000002', '床', 100, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '张强');
INSERT INTO `inrecord` VALUES (10000008, 'M0000005', '血压计', 100, '2022-11-13  19:44:57', '2022', '淮安器械有限公司', '2025', '张强');
INSERT INTO `inrecord` VALUES (10000010, 'M0000005', '血压计', 3, '2022-11-13  21:02:05', '2022', '待归还', '2025', '李同');
INSERT INTO `inrecord` VALUES (10000011, 'M0000005', '血压计', 3, '2022-11-13  21:04:03', '2022', '待归还', '2025', '李同');
INSERT INTO `inrecord` VALUES (10000012, 'M0000002', '床', 100, '2022-11-15  10:58:28', '2020', '淮安器械有限公司', '2080', '张强');
INSERT INTO `inrecord` VALUES (10000013, 'M0000006', '洗手液', 0, '2022-11-15  22:26:01', '2022', '淮安生活用品有限公司', '2024', '张强');
INSERT INTO `inrecord` VALUES (10000014, 'M0000003', '轮椅', 85, '2022-11-16  08:44:32', '2022', '淮安器械有限公司', '2024', '张强');
INSERT INTO `inrecord` VALUES (10000015, 'M0000009', '新冠抗原', 0, '2022-12-29  18:14:33', '2022-03-23', '淮安药业', '2024-01-01', '张强');
INSERT INTO `inrecord` VALUES (10000016, 'M0000009', '新冠抗原', 10, '2022-12-29  18:18:14', '2022-04-06', '淮安药业', '2024-05-08', '张强');
INSERT INTO `inrecord` VALUES (10000017, 'M0000005', '血压计', 2, '2022-12-29  22:22:42', '2022', '待归还', '2025', '李桐');
INSERT INTO `inrecord` VALUES (10000018, 'M0000001', '口罩', 0, '2023-01-26  16:29:38', '', '淮安医疗器械有限公司', '', '张强');

-- ----------------------------
-- Table structure for leave1
-- ----------------------------
DROP TABLE IF EXISTS `leave1`;
CREATE TABLE `leave1`  (
  `id` int(0) NULL DEFAULT NULL,
  `name` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ltime` date NULL DEFAULT NULL,
  `duration` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leave1
-- ----------------------------
INSERT INTO `leave1` VALUES (21, '唐旭尧', '13052685625', '2022-12-19', '2小时');
INSERT INTO `leave1` VALUES (22, '丁越彬', '15956328565', '2022-12-19', '3小时');

-- ----------------------------
-- Table structure for leavearchive
-- ----------------------------
DROP TABLE IF EXISTS `leavearchive`;
CREATE TABLE `leavearchive`  (
  `id` int(0) NULL DEFAULT NULL,
  `name` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ltime` date NULL DEFAULT NULL,
  `backtime` date NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of leavearchive
-- ----------------------------
INSERT INTO `leavearchive` VALUES (20, '即而', '13016595265', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (21, '罗三方', '13052685625', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (22, '王的附', '15956328565', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (23, '齐德三', '15926542666', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (24, '齐德武', '15963485262', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (24, '齐德武', '15963485262', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (25, '齐德鸥', '15956325332', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (26, '齐德龙', '15956254332', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (26, '齐德龙', '15956254332', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (27, '齐德平', '15950132002', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (28, '齐德车', '15950132555', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (29, '罗伞', '15956235235', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (33, '隋可', '13016585625', '2022-11-14', '2022-11-14');
INSERT INTO `leavearchive` VALUES (35, '隋思', '137756256245', '2022-11-14', NULL);
INSERT INTO `leavearchive` VALUES (36, '隋琦', '13771262851', '2022-11-14', NULL);
INSERT INTO `leavearchive` VALUES (37, '琪琪', '13812566589', '2022-11-14', NULL);
INSERT INTO `leavearchive` VALUES (38, '罗类', '13812688524', '2022-11-14', NULL);
INSERT INTO `leavearchive` VALUES (31, '渝欧', '15963562333', '2022-11-14', NULL);
INSERT INTO `leavearchive` VALUES (25, '谭明', '15956325332', '2023-01-30', NULL);

-- ----------------------------
-- Table structure for log
-- ----------------------------
DROP TABLE IF EXISTS `log`;
CREATE TABLE `log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `model` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `operation_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7523 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of log
-- ----------------------------
INSERT INTO `log` VALUES (5579, NULL, '192.168.31.27', '登录', '登录系统', '登录模块', '2022-12-14 15:44:12');
INSERT INTO `log` VALUES (5580, NULL, '192.168.31.27', '登录', '登录系统', '登录模块', '2022-12-14 15:44:12');
INSERT INTO `log` VALUES (5581, 'admin', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-14 15:44:12');
INSERT INTO `log` VALUES (5582, 'admin', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-14 15:44:12');
INSERT INTO `log` VALUES (5583, 'admin', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-14 15:44:30');
INSERT INTO `log` VALUES (5584, 'admin', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-14 15:44:33');
INSERT INTO `log` VALUES (5585, 'admin', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-14 15:44:33');
INSERT INTO `log` VALUES (5586, NULL, '192.168.43.21', '登录', '登录系统', '登录模块', '2022-12-15 11:17:15');
INSERT INTO `log` VALUES (5587, 'admin', '192.168.43.21', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-15 11:17:15');
INSERT INTO `log` VALUES (5588, 'admin', '192.168.43.21', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-15 11:17:16');
INSERT INTO `log` VALUES (5589, 'admin', '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-15 11:17:35');
INSERT INTO `log` VALUES (5590, 'admin', '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-15 11:17:38');
INSERT INTO `log` VALUES (5591, 'admin', '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-15 11:17:54');
INSERT INTO `log` VALUES (5592, 'admin', '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-15 11:17:56');
INSERT INTO `log` VALUES (5593, 'admin', '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-15 11:18:05');
INSERT INTO `log` VALUES (5594, 'admin', '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-15 11:18:06');
INSERT INTO `log` VALUES (5595, 'admin', '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-15 11:18:10');
INSERT INTO `log` VALUES (5596, 'admin', '192.168.43.21', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2022-12-15 11:18:18');
INSERT INTO `log` VALUES (5597, 'admin', '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-15 11:18:25');
INSERT INTO `log` VALUES (5598, 'admin', '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-15 11:18:30');
INSERT INTO `log` VALUES (5599, 'admin', '192.168.43.21', '查询', '查询所有用户', '资料管理-食谱管理', '2022-12-15 11:18:40');
INSERT INTO `log` VALUES (5600, 'admin', '192.168.43.21', '查询', '查询所有用户', '资料管理-食谱管理', '2022-12-15 11:18:50');
INSERT INTO `log` VALUES (5601, 'admin', '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-15 11:18:52');
INSERT INTO `log` VALUES (5602, 'admin', '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-15 11:19:00');
INSERT INTO `log` VALUES (5603, NULL, '192.168.0.105', '登录', '登录系统', '登录模块', '2022-12-17 15:00:54');
INSERT INTO `log` VALUES (5604, '2022110127', '192.168.0.105', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-17 15:00:55');
INSERT INTO `log` VALUES (5605, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-17 15:00:55');
INSERT INTO `log` VALUES (5606, NULL, '192.168.0.105', '登录', '登录系统', '登录模块', '2022-12-17 15:01:17');
INSERT INTO `log` VALUES (5607, '2022110127', '192.168.0.105', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-17 15:01:17');
INSERT INTO `log` VALUES (5608, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-17 15:01:17');
INSERT INTO `log` VALUES (5609, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-17 15:01:55');
INSERT INTO `log` VALUES (5610, '2022110127', '192.168.0.105', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-17 15:02:01');
INSERT INTO `log` VALUES (5611, NULL, '192.168.0.101', '登录', '登录系统', '登录模块', '2022-12-17 19:28:54');
INSERT INTO `log` VALUES (5612, 'admin', '192.168.0.101', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-17 19:28:55');
INSERT INTO `log` VALUES (5613, 'admin', '192.168.0.101', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-17 19:28:55');
INSERT INTO `log` VALUES (5614, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-17 19:29:04');
INSERT INTO `log` VALUES (5615, NULL, '192.168.0.101', '登录', '登录系统', '登录模块', '2022-12-17 19:39:49');
INSERT INTO `log` VALUES (5616, 'admin', '192.168.0.101', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-17 19:39:50');
INSERT INTO `log` VALUES (5617, 'admin', '192.168.0.101', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-17 19:39:50');
INSERT INTO `log` VALUES (5618, 'admin', '192.168.0.101', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-17 19:39:58');
INSERT INTO `log` VALUES (5619, 'admin', '192.168.0.101', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-17 19:40:00');
INSERT INTO `log` VALUES (5620, 'admin', '192.168.0.101', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-17 19:40:03');
INSERT INTO `log` VALUES (5621, 'admin', '192.168.0.101', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-17 19:40:03');
INSERT INTO `log` VALUES (5622, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-17 19:40:55');
INSERT INTO `log` VALUES (5623, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-17 20:31:16');
INSERT INTO `log` VALUES (5624, 'admin', '192.168.0.101', '查询', '查询退住数据', '退住批准', '2022-12-17 20:31:16');
INSERT INTO `log` VALUES (5625, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-17 20:31:17');
INSERT INTO `log` VALUES (5626, 'admin', '192.168.0.101', '查询', '查询退住数据', '退住批准', '2022-12-17 20:33:41');
INSERT INTO `log` VALUES (5627, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-17 20:33:43');
INSERT INTO `log` VALUES (5628, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-17 20:33:44');
INSERT INTO `log` VALUES (5629, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-17 20:33:45');
INSERT INTO `log` VALUES (5630, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-17 20:33:46');
INSERT INTO `log` VALUES (5631, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-17 20:42:28');
INSERT INTO `log` VALUES (5632, 'admin', '192.168.0.101', '查询', '查询退住数据', '退住批准', '2022-12-17 20:47:19');
INSERT INTO `log` VALUES (5633, 'admin', '192.168.0.101', '查询', '查询退住数据', '退住批准', '2022-12-17 21:52:27');
INSERT INTO `log` VALUES (5634, 'admin', '192.168.0.101', '查询', '查询请假数据', '请假批准', '2022-12-17 21:52:31');
INSERT INTO `log` VALUES (5635, 'admin', '192.168.0.101', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-17 21:52:43');
INSERT INTO `log` VALUES (5636, 'admin', '192.168.0.101', '查询', '查询请假数据', '请假批准', '2022-12-17 21:52:44');
INSERT INTO `log` VALUES (5637, 'admin', '192.168.0.101', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-17 22:14:46');
INSERT INTO `log` VALUES (5638, 'admin', '192.168.0.101', '查询', '查询请假数据', '请假批准', '2022-12-17 22:14:47');
INSERT INTO `log` VALUES (5639, 'admin', '192.168.0.101', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-17 22:25:03');
INSERT INTO `log` VALUES (5640, 'admin', '192.168.0.101', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2022-12-17 22:30:23');
INSERT INTO `log` VALUES (5641, 'admin', '192.168.0.101', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-17 22:37:11');
INSERT INTO `log` VALUES (5642, 'admin', '192.168.0.101', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-17 22:37:22');
INSERT INTO `log` VALUES (5643, 'admin', '192.168.0.101', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-17 22:37:22');
INSERT INTO `log` VALUES (5644, 'admin', '192.168.0.101', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-17 22:37:23');
INSERT INTO `log` VALUES (5645, 'admin', '192.168.0.101', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-17 22:37:23');
INSERT INTO `log` VALUES (5646, 'admin', '192.168.0.101', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-17 22:37:24');
INSERT INTO `log` VALUES (5647, 'admin', '192.168.0.101', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-17 22:37:25');
INSERT INTO `log` VALUES (5648, 'admin', '192.168.0.101', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-17 22:49:58');
INSERT INTO `log` VALUES (5649, 'admin', '192.168.0.101', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-17 22:57:13');
INSERT INTO `log` VALUES (5650, 'admin', '192.168.0.101', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-17 22:57:15');
INSERT INTO `log` VALUES (5651, 'admin', '192.168.0.101', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-17 22:57:16');
INSERT INTO `log` VALUES (5652, 'admin', '192.168.0.101', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-17 22:57:16');
INSERT INTO `log` VALUES (5653, 'admin', '192.168.0.101', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-17 22:57:17');
INSERT INTO `log` VALUES (5654, 'admin', '192.168.0.101', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-17 22:57:17');
INSERT INTO `log` VALUES (5655, 'admin', '192.168.0.101', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-17 22:57:18');
INSERT INTO `log` VALUES (5656, NULL, '192.168.0.101', '登录', '登录系统', '登录模块', '2022-12-19 10:36:17');
INSERT INTO `log` VALUES (5657, 'admin', '192.168.0.101', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-19 10:36:17');
INSERT INTO `log` VALUES (5658, 'admin', '192.168.0.101', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-19 10:36:17');
INSERT INTO `log` VALUES (5659, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-19 10:36:29');
INSERT INTO `log` VALUES (5660, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-19 10:37:47');
INSERT INTO `log` VALUES (5661, 'admin', '192.168.0.101', '更新', '更新老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-19 13:15:37');
INSERT INTO `log` VALUES (5662, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-19 13:15:37');
INSERT INTO `log` VALUES (5663, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-19 16:28:23');
INSERT INTO `log` VALUES (5664, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-19 16:43:42');
INSERT INTO `log` VALUES (5665, 'admin', '192.168.0.101', '删除', '驳回老人入住', '老人管理-入住管理-入住批准', '2022-12-19 16:44:05');
INSERT INTO `log` VALUES (5666, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-19 16:44:05');
INSERT INTO `log` VALUES (5667, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 16:58:14');
INSERT INTO `log` VALUES (5668, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 17:47:03');
INSERT INTO `log` VALUES (5669, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 17:47:12');
INSERT INTO `log` VALUES (5670, 'admin', '192.168.0.101', '增加', '增加退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 17:47:17');
INSERT INTO `log` VALUES (5671, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 17:47:17');
INSERT INTO `log` VALUES (5672, 'admin', '192.168.0.101', '删除', '删除退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 17:47:26');
INSERT INTO `log` VALUES (5673, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 17:47:26');
INSERT INTO `log` VALUES (5674, 'admin', '192.168.0.101', '增加', '增加退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 17:47:29');
INSERT INTO `log` VALUES (5675, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 17:47:29');
INSERT INTO `log` VALUES (5676, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-19 17:55:58');
INSERT INTO `log` VALUES (5677, 'admin', '192.168.0.101', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-19 17:56:03');
INSERT INTO `log` VALUES (5678, 'admin', '192.168.0.101', '查询', '查询退住数据', '退住批准', '2022-12-19 17:56:03');
INSERT INTO `log` VALUES (5679, 'admin', '192.168.43.232', '查询', '查询退住数据', '退住批准', '2022-12-19 19:08:15');
INSERT INTO `log` VALUES (5680, 'admin', '192.168.43.232', '批准', '批准老人退住', '老人管理-退住管理-退住批准', '2022-12-19 19:08:22');
INSERT INTO `log` VALUES (5681, 'admin', '192.168.43.232', '查询', '查询退住数据', '退住批准', '2022-12-19 19:08:22');
INSERT INTO `log` VALUES (5682, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 19:13:59');
INSERT INTO `log` VALUES (5683, 'admin', '192.168.43.232', '添加', '添加请假数据', '请假批准', '2022-12-19 19:36:07');
INSERT INTO `log` VALUES (5684, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 19:36:07');
INSERT INTO `log` VALUES (5685, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 19:37:20');
INSERT INTO `log` VALUES (5686, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 19:37:34');
INSERT INTO `log` VALUES (5687, 'admin', '192.168.43.232', '添加', '添加请假数据', '请假批准', '2022-12-19 19:37:51');
INSERT INTO `log` VALUES (5688, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 19:37:51');
INSERT INTO `log` VALUES (5689, 'admin', '192.168.43.232', '添加', '添加请假数据', '请假批准', '2022-12-19 19:38:12');
INSERT INTO `log` VALUES (5690, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 19:38:12');
INSERT INTO `log` VALUES (5691, 'admin', '192.168.43.232', '批准', '批准请假', '老人管理-请假管理-请假批准', '2022-12-19 19:50:58');
INSERT INTO `log` VALUES (5692, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 19:50:58');
INSERT INTO `log` VALUES (5693, 'admin', '192.168.0.101', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-19 20:08:16');
INSERT INTO `log` VALUES (5694, 'admin', '192.168.0.101', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-19 20:08:16');
INSERT INTO `log` VALUES (5695, 'admin', '192.168.0.101', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-19 20:08:17');
INSERT INTO `log` VALUES (5696, 'admin', '192.168.0.101', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-19 20:08:17');
INSERT INTO `log` VALUES (5697, 'admin', '192.168.0.101', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-19 20:08:19');
INSERT INTO `log` VALUES (5698, 'admin', '192.168.0.101', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-19 20:08:19');
INSERT INTO `log` VALUES (5699, 'admin', '192.168.0.101', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-19 20:08:20');
INSERT INTO `log` VALUES (5700, 'admin', '192.168.0.101', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-19 20:08:20');
INSERT INTO `log` VALUES (5701, 'admin', '192.168.0.101', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-19 20:08:21');
INSERT INTO `log` VALUES (5702, 'admin', '192.168.0.101', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-19 20:08:22');
INSERT INTO `log` VALUES (5703, 'admin', '192.168.0.101', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-19 20:08:23');
INSERT INTO `log` VALUES (5704, 'admin', '192.168.0.101', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-19 20:08:25');
INSERT INTO `log` VALUES (5705, 'admin', '192.168.0.101', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-19 20:08:25');
INSERT INTO `log` VALUES (5706, 'admin', '192.168.0.101', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-19 20:08:31');
INSERT INTO `log` VALUES (5707, 'admin', '192.168.0.101', '查询', '查询退住数据', '退住批准', '2022-12-19 20:08:33');
INSERT INTO `log` VALUES (5708, 'admin', '192.168.0.101', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-19 20:08:36');
INSERT INTO `log` VALUES (5709, 'admin', '192.168.0.101', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-19 20:12:24');
INSERT INTO `log` VALUES (5710, 'admin', '192.168.0.101', '查询', '查询退住数据', '退住批准', '2022-12-19 20:13:08');
INSERT INTO `log` VALUES (5711, 'admin', '192.168.0.101', '查询', '查询请假数据', '请假批准', '2022-12-19 20:13:12');
INSERT INTO `log` VALUES (5712, 'admin', '192.168.0.101', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-19 20:13:13');
INSERT INTO `log` VALUES (5713, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 20:13:20');
INSERT INTO `log` VALUES (5714, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 20:13:32');
INSERT INTO `log` VALUES (5715, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 20:13:32');
INSERT INTO `log` VALUES (5716, 'admin', '192.168.43.232', '查询', '查询请假数据', '请假批准', '2022-12-19 20:13:32');
INSERT INTO `log` VALUES (5717, 'admin', '192.168.43.232', '查询', '查询退住数据', '退住批准', '2022-12-19 20:13:46');
INSERT INTO `log` VALUES (5718, 'admin', '192.168.43.232', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-19 20:13:48');
INSERT INTO `log` VALUES (5719, 'admin', '192.168.43.232', '增加', '增加回院数据', '老人管理-请假管理-回院批准', '2022-12-19 20:13:57');
INSERT INTO `log` VALUES (5720, 'admin', '192.168.43.232', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-19 20:13:58');
INSERT INTO `log` VALUES (5721, 'admin', '192.168.43.232', '批准', '批准老人回院', '老人管理-请假管理-回院批准', '2022-12-19 20:28:54');
INSERT INTO `log` VALUES (5722, 'admin', '192.168.43.232', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-19 20:28:54');
INSERT INTO `log` VALUES (5723, 'admin', '192.168.43.232', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2022-12-19 20:31:06');
INSERT INTO `log` VALUES (5724, 'admin', '192.168.43.232', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2022-12-19 20:55:13');
INSERT INTO `log` VALUES (5725, 'admin', '192.168.43.232', '分配', '分配宿舍', '老人管理-宿舍管理-入住分配', '2022-12-19 20:58:01');
INSERT INTO `log` VALUES (5726, 'admin', '192.168.43.232', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2022-12-19 20:58:02');
INSERT INTO `log` VALUES (5727, 'admin', '192.168.43.232', '分配', '分配宿舍', '老人管理-宿舍管理-入住分配', '2022-12-19 20:58:30');
INSERT INTO `log` VALUES (5728, 'admin', '192.168.43.232', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2022-12-19 20:58:30');
INSERT INTO `log` VALUES (5729, 'admin', '192.168.43.232', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-19 21:28:32');
INSERT INTO `log` VALUES (5730, NULL, '192.168.43.232', '导出', '导出老人信息', '老人管理-档案管理-老人档案', '2022-12-19 22:07:47');
INSERT INTO `log` VALUES (5731, 'admin', '192.168.43.232', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-19 22:11:23');
INSERT INTO `log` VALUES (5732, 'admin', '192.168.43.232', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-19 22:17:09');
INSERT INTO `log` VALUES (5733, 'admin', '192.168.43.232', '回溯', '回溯入住记录', '老人管理-档案管理-入住档案', '2022-12-19 22:22:28');
INSERT INTO `log` VALUES (5734, 'admin', '192.168.43.232', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-19 22:22:28');
INSERT INTO `log` VALUES (5735, 'admin', '192.168.43.232', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-19 22:24:53');
INSERT INTO `log` VALUES (5736, 'admin', '192.168.43.232', '回溯', '回溯退住记录', '老人管理-档案管理-退住档案', '2022-12-19 22:32:57');
INSERT INTO `log` VALUES (5737, 'admin', '192.168.43.232', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-19 22:32:57');
INSERT INTO `log` VALUES (5738, 'admin', '192.168.43.232', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-19 22:33:41');
INSERT INTO `log` VALUES (5739, 'admin', '192.168.43.232', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-19 22:33:41');
INSERT INTO `log` VALUES (5740, 'admin', '192.168.43.232', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-19 22:33:42');
INSERT INTO `log` VALUES (5741, NULL, '192.168.31.215', '登录', '登录系统', '登录模块', '2022-12-25 18:52:28');
INSERT INTO `log` VALUES (5742, 'admin', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-25 18:52:28');
INSERT INTO `log` VALUES (5743, 'admin', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-25 18:52:28');
INSERT INTO `log` VALUES (5744, 'admin', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-25 19:13:02');
INSERT INTO `log` VALUES (5745, NULL, '192.168.31.215', '登录', '登录系统', '登录模块', '2022-12-26 08:53:21');
INSERT INTO `log` VALUES (5746, 'admin', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 08:53:22');
INSERT INTO `log` VALUES (5747, 'admin', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 08:53:22');
INSERT INTO `log` VALUES (5748, 'admin', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 08:53:26');
INSERT INTO `log` VALUES (5749, 'admin', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-26 10:43:32');
INSERT INTO `log` VALUES (5750, 'admin', '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-26 10:43:32');
INSERT INTO `log` VALUES (5751, 'admin', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-26 10:43:33');
INSERT INTO `log` VALUES (5752, 'admin', '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-26 10:49:42');
INSERT INTO `log` VALUES (5753, 'admin', '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-26 10:49:43');
INSERT INTO `log` VALUES (5754, 'admin', '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-26 11:11:43');
INSERT INTO `log` VALUES (5755, 'admin', '192.168.31.215', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-26 11:17:35');
INSERT INTO `log` VALUES (5756, 'admin', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-26 11:21:10');
INSERT INTO `log` VALUES (5757, 'admin', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 11:21:10');
INSERT INTO `log` VALUES (5758, 'admin', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:04:13');
INSERT INTO `log` VALUES (5759, 'admin', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:04:13');
INSERT INTO `log` VALUES (5760, 'admin', '192.168.31.215', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-26 16:04:27');
INSERT INTO `log` VALUES (5761, 'admin', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:04:28');
INSERT INTO `log` VALUES (5762, 'admin', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:04:28');
INSERT INTO `log` VALUES (5763, 'admin', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 16:07:37');
INSERT INTO `log` VALUES (5764, 'admin', '192.168.31.215', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-26 16:10:55');
INSERT INTO `log` VALUES (5765, NULL, '192.168.31.215', '登录', '登录系统', '登录模块', '2022-12-26 16:11:09');
INSERT INTO `log` VALUES (5766, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:11:09');
INSERT INTO `log` VALUES (5767, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:11:09');
INSERT INTO `log` VALUES (5768, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:11:15');
INSERT INTO `log` VALUES (5769, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:11:16');
INSERT INTO `log` VALUES (5770, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:11:19');
INSERT INTO `log` VALUES (5771, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:11:19');
INSERT INTO `log` VALUES (5772, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:11:37');
INSERT INTO `log` VALUES (5773, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:11:37');
INSERT INTO `log` VALUES (5774, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:11:41');
INSERT INTO `log` VALUES (5775, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:11:41');
INSERT INTO `log` VALUES (5776, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:11:46');
INSERT INTO `log` VALUES (5777, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:11:46');
INSERT INTO `log` VALUES (5778, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:11:53');
INSERT INTO `log` VALUES (5779, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:11:53');
INSERT INTO `log` VALUES (5780, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:11:57');
INSERT INTO `log` VALUES (5781, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:11:57');
INSERT INTO `log` VALUES (5782, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:12:56');
INSERT INTO `log` VALUES (5783, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:12:56');
INSERT INTO `log` VALUES (5784, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 16:27:55');
INSERT INTO `log` VALUES (5785, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 16:29:54');
INSERT INTO `log` VALUES (5786, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 16:29:54');
INSERT INTO `log` VALUES (5787, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 16:30:22');
INSERT INTO `log` VALUES (5788, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 19:51:24');
INSERT INTO `log` VALUES (5789, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 19:51:37');
INSERT INTO `log` VALUES (5790, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-26 19:53:38');
INSERT INTO `log` VALUES (5791, 'admin3', '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-26 19:53:38');
INSERT INTO `log` VALUES (5792, 'admin3', '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-26 19:53:39');
INSERT INTO `log` VALUES (5793, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-26 19:53:46');
INSERT INTO `log` VALUES (5794, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 19:53:47');
INSERT INTO `log` VALUES (5795, 'admin3', '192.168.31.215', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-26 19:53:50');
INSERT INTO `log` VALUES (5796, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 19:54:03');
INSERT INTO `log` VALUES (5797, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 19:59:23');
INSERT INTO `log` VALUES (5798, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 20:04:17');
INSERT INTO `log` VALUES (5799, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 22:51:58');
INSERT INTO `log` VALUES (5800, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 22:54:30');
INSERT INTO `log` VALUES (5801, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 22:54:33');
INSERT INTO `log` VALUES (5802, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 22:54:38');
INSERT INTO `log` VALUES (5803, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 22:54:46');
INSERT INTO `log` VALUES (5804, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 22:54:54');
INSERT INTO `log` VALUES (5805, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 22:54:58');
INSERT INTO `log` VALUES (5806, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 22:55:02');
INSERT INTO `log` VALUES (5807, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 22:57:30');
INSERT INTO `log` VALUES (5808, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:00:09');
INSERT INTO `log` VALUES (5809, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:04:12');
INSERT INTO `log` VALUES (5810, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:15:14');
INSERT INTO `log` VALUES (5811, 'admin3', '192.168.31.215', '添加', '添加体检信息', '健康管理-体检信息', '2022-12-26 23:20:47');
INSERT INTO `log` VALUES (5812, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:20:47');
INSERT INTO `log` VALUES (5813, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:24:21');
INSERT INTO `log` VALUES (5814, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:24:22');
INSERT INTO `log` VALUES (5815, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:33:22');
INSERT INTO `log` VALUES (5816, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:33:43');
INSERT INTO `log` VALUES (5817, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:39:47');
INSERT INTO `log` VALUES (5818, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:40:07');
INSERT INTO `log` VALUES (5819, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:40:12');
INSERT INTO `log` VALUES (5820, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:40:15');
INSERT INTO `log` VALUES (5821, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:41:51');
INSERT INTO `log` VALUES (5822, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:45:43');
INSERT INTO `log` VALUES (5823, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:45:52');
INSERT INTO `log` VALUES (5824, 'admin3', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:45:57');
INSERT INTO `log` VALUES (5825, 'admin3', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:46:00');
INSERT INTO `log` VALUES (5826, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:46:04');
INSERT INTO `log` VALUES (5827, 'admin3', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:46:08');
INSERT INTO `log` VALUES (5828, 'admin3', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:46:23');
INSERT INTO `log` VALUES (5829, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:46:28');
INSERT INTO `log` VALUES (5830, 'admin3', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:46:30');
INSERT INTO `log` VALUES (5831, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:46:45');
INSERT INTO `log` VALUES (5832, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:46:47');
INSERT INTO `log` VALUES (5833, 'admin3', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:46:48');
INSERT INTO `log` VALUES (5834, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:48:03');
INSERT INTO `log` VALUES (5835, 'admin3', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:48:04');
INSERT INTO `log` VALUES (5836, 'admin3', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:48:09');
INSERT INTO `log` VALUES (5837, 'admin3', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:49:46');
INSERT INTO `log` VALUES (5838, 'admin3', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:49:48');
INSERT INTO `log` VALUES (5839, NULL, '192.168.31.215', '登录', '登录系统', '登录模块', '2022-12-26 23:49:55');
INSERT INTO `log` VALUES (5840, 'admin', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-26 23:49:55');
INSERT INTO `log` VALUES (5841, 'admin', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-26 23:49:55');
INSERT INTO `log` VALUES (5842, 'admin', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:50:03');
INSERT INTO `log` VALUES (5843, 'admin', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:50:04');
INSERT INTO `log` VALUES (5844, 'admin', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:50:06');
INSERT INTO `log` VALUES (5845, 'admin', '192.168.31.215', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-26 23:50:10');
INSERT INTO `log` VALUES (5846, 'admin', '192.168.31.215', '修改', '修改体检信息', '健康管理-体检信息', '2022-12-26 23:50:11');
INSERT INTO `log` VALUES (5847, 'admin', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:54:58');
INSERT INTO `log` VALUES (5848, 'admin', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-26 23:55:43');
INSERT INTO `log` VALUES (5849, 'admin', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:55:48');
INSERT INTO `log` VALUES (5850, 'admin', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:55:51');
INSERT INTO `log` VALUES (5851, 'admin', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-26 23:55:53');
INSERT INTO `log` VALUES (5852, NULL, '192.168.31.215', '登录', '登录系统', '登录模块', '2022-12-27 08:20:40');
INSERT INTO `log` VALUES (5853, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-27 08:20:41');
INSERT INTO `log` VALUES (5854, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-27 08:20:41');
INSERT INTO `log` VALUES (5855, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-27 08:20:45');
INSERT INTO `log` VALUES (5856, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-27 08:21:25');
INSERT INTO `log` VALUES (5857, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-27 08:21:27');
INSERT INTO `log` VALUES (5858, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-27 08:21:28');
INSERT INTO `log` VALUES (5859, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-27 08:21:29');
INSERT INTO `log` VALUES (5860, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-27 09:53:05');
INSERT INTO `log` VALUES (5861, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-27 09:58:00');
INSERT INTO `log` VALUES (5862, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-27 09:59:29');
INSERT INTO `log` VALUES (5863, 'admin3', '192.168.31.215', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-27 09:59:33');
INSERT INTO `log` VALUES (5864, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-27 10:02:05');
INSERT INTO `log` VALUES (5865, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-27 10:49:36');
INSERT INTO `log` VALUES (5866, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-27 10:49:38');
INSERT INTO `log` VALUES (5867, 'admin3', '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-27 10:50:04');
INSERT INTO `log` VALUES (5868, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-27 11:06:38');
INSERT INTO `log` VALUES (5869, 'admin3', '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-27 11:06:40');
INSERT INTO `log` VALUES (5870, 'admin3', '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-27 11:06:50');
INSERT INTO `log` VALUES (5871, 'admin3', '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-27 11:06:52');
INSERT INTO `log` VALUES (5872, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-27 11:06:53');
INSERT INTO `log` VALUES (5873, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-27 11:07:45');
INSERT INTO `log` VALUES (5874, 'admin3', '192.168.31.215', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-27 11:07:49');
INSERT INTO `log` VALUES (5875, 'admin3', '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-27 11:11:39');
INSERT INTO `log` VALUES (5876, 'admin3', '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-27 12:56:23');
INSERT INTO `log` VALUES (5877, NULL, '192.168.31.215', '修改', '修改健康指数标准', '健康管理-健康指数标准', '2022-12-27 21:16:38');
INSERT INTO `log` VALUES (5878, NULL, '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-27 21:16:38');
INSERT INTO `log` VALUES (5879, NULL, '192.168.31.215', '修改', '修改健康指数标准', '健康管理-健康指数标准', '2022-12-27 21:47:58');
INSERT INTO `log` VALUES (5880, NULL, '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-27 21:47:58');
INSERT INTO `log` VALUES (5881, NULL, '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-27 21:53:35');
INSERT INTO `log` VALUES (5882, NULL, '192.168.31.215', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-27 21:53:35');
INSERT INTO `log` VALUES (5883, NULL, '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-27 21:53:36');
INSERT INTO `log` VALUES (5884, NULL, '192.168.31.215', '增加', '增加健康等级', '健康管理-健康等级', '2022-12-27 22:48:30');
INSERT INTO `log` VALUES (5885, NULL, '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-27 22:48:30');
INSERT INTO `log` VALUES (5886, NULL, '192.168.31.215', '修改', '修改健康等级', '健康管理-健康等级', '2022-12-27 22:54:54');
INSERT INTO `log` VALUES (5887, NULL, '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-27 22:54:54');
INSERT INTO `log` VALUES (5888, NULL, '192.168.31.215', '增加', '增加健康等级', '健康管理-健康等级', '2022-12-27 22:56:02');
INSERT INTO `log` VALUES (5889, NULL, '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-27 22:56:02');
INSERT INTO `log` VALUES (5890, NULL, '192.168.31.215', '修改', '修改健康等级', '健康管理-健康等级', '2022-12-27 22:56:18');
INSERT INTO `log` VALUES (5891, NULL, '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-27 22:56:18');
INSERT INTO `log` VALUES (5892, NULL, '192.168.31.215', '修改', '修改健康等级', '健康管理-健康等级', '2022-12-27 22:56:35');
INSERT INTO `log` VALUES (5893, NULL, '192.168.31.215', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-27 22:56:36');
INSERT INTO `log` VALUES (5894, NULL, '192.168.31.215', '新增', '新增疾病预警信息', '健康管理-疾病预警', '2022-12-27 23:02:39');
INSERT INTO `log` VALUES (5895, NULL, '192.168.31.215', '新增', '新增疾病预警信息', '健康管理-疾病预警', '2022-12-27 23:17:41');
INSERT INTO `log` VALUES (5896, NULL, '192.168.31.215', '修改', '修改疾病预警建议', '健康管理-疾病预警', '2022-12-27 23:24:23');
INSERT INTO `log` VALUES (5897, NULL, '192.168.31.215', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-27 23:27:54');
INSERT INTO `log` VALUES (5898, NULL, '192.168.31.215', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-27 23:28:56');
INSERT INTO `log` VALUES (5899, NULL, '192.168.31.215', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-27 23:28:58');
INSERT INTO `log` VALUES (5900, NULL, '192.168.31.215', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-27 23:28:58');
INSERT INTO `log` VALUES (5901, NULL, '192.168.31.215', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-27 23:29:00');
INSERT INTO `log` VALUES (5902, NULL, '192.168.31.215', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-27 23:29:07');
INSERT INTO `log` VALUES (5903, NULL, '192.168.31.215', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-27 23:30:10');
INSERT INTO `log` VALUES (5904, NULL, '192.168.0.105', '登录', '登录系统', '登录模块', '2022-12-27 23:55:26');
INSERT INTO `log` VALUES (5905, '2022110127', '192.168.0.105', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-27 23:55:27');
INSERT INTO `log` VALUES (5906, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-27 23:55:27');
INSERT INTO `log` VALUES (5907, '2022110127', '192.168.0.105', '查询', '查询角色', '资料管理-权限管理', '2022-12-27 23:56:43');
INSERT INTO `log` VALUES (5908, '2022110127', '192.168.0.105', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-27 23:56:46');
INSERT INTO `log` VALUES (5909, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-27 23:56:46');
INSERT INTO `log` VALUES (5910, '2022110127', '192.168.0.105', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-27 23:56:51');
INSERT INTO `log` VALUES (5911, '2022110127', '192.168.0.105', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-27 23:56:53');
INSERT INTO `log` VALUES (5912, '2022110127', '192.168.0.105', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2022-12-27 23:56:57');
INSERT INTO `log` VALUES (5913, '2022110127', '192.168.0.105', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2022-12-27 23:57:07');
INSERT INTO `log` VALUES (5914, NULL, '192.168.31.215', '登录', '登录系统', '登录模块', '2022-12-28 11:14:30');
INSERT INTO `log` VALUES (5915, 'admin3', '192.168.31.215', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 11:14:30');
INSERT INTO `log` VALUES (5916, 'admin3', '192.168.31.215', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 11:14:30');
INSERT INTO `log` VALUES (5917, 'admin3', '192.168.31.215', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-28 11:14:39');
INSERT INTO `log` VALUES (5918, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-28 12:40:22');
INSERT INTO `log` VALUES (5919, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 12:40:22');
INSERT INTO `log` VALUES (5920, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 12:40:22');
INSERT INTO `log` VALUES (5921, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 12:42:17');
INSERT INTO `log` VALUES (5922, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 12:42:17');
INSERT INTO `log` VALUES (5923, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 12:42:21');
INSERT INTO `log` VALUES (5924, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 12:42:21');
INSERT INTO `log` VALUES (5925, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 12:42:38');
INSERT INTO `log` VALUES (5926, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 12:42:38');
INSERT INTO `log` VALUES (5927, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 12:42:48');
INSERT INTO `log` VALUES (5928, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 12:42:48');
INSERT INTO `log` VALUES (5929, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 12:59:56');
INSERT INTO `log` VALUES (5930, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 12:59:59');
INSERT INTO `log` VALUES (5931, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:00:00');
INSERT INTO `log` VALUES (5932, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:00:07');
INSERT INTO `log` VALUES (5933, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:00:10');
INSERT INTO `log` VALUES (5934, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:00:12');
INSERT INTO `log` VALUES (5935, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:00:20');
INSERT INTO `log` VALUES (5936, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:00:22');
INSERT INTO `log` VALUES (5937, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:00:23');
INSERT INTO `log` VALUES (5938, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-28 13:04:08');
INSERT INTO `log` VALUES (5939, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 13:04:09');
INSERT INTO `log` VALUES (5940, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:04:09');
INSERT INTO `log` VALUES (5941, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 13:12:16');
INSERT INTO `log` VALUES (5942, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:12:16');
INSERT INTO `log` VALUES (5943, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 13:12:20');
INSERT INTO `log` VALUES (5944, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 13:12:20');
INSERT INTO `log` VALUES (5945, 'admin', '192.168.43.164', '查询', '查询收费标准', '资料管理-收费标准设置', '2022-12-28 13:27:20');
INSERT INTO `log` VALUES (5946, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 14:32:55');
INSERT INTO `log` VALUES (5947, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 14:32:55');
INSERT INTO `log` VALUES (5948, 'admin', '192.168.43.164', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2022-12-28 14:32:58');
INSERT INTO `log` VALUES (5949, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 14:32:58');
INSERT INTO `log` VALUES (5950, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 14:32:58');
INSERT INTO `log` VALUES (5951, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 14:40:58');
INSERT INTO `log` VALUES (5952, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 14:40:58');
INSERT INTO `log` VALUES (5953, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 14:41:47');
INSERT INTO `log` VALUES (5954, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 14:41:47');
INSERT INTO `log` VALUES (5955, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 14:43:41');
INSERT INTO `log` VALUES (5956, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 14:43:41');
INSERT INTO `log` VALUES (5957, 'admin', '192.168.43.164', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2022-12-28 15:08:19');
INSERT INTO `log` VALUES (5958, 'admin', '192.168.43.164', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2022-12-28 15:08:24');
INSERT INTO `log` VALUES (5959, 'admin', '192.168.43.164', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2022-12-28 15:08:27');
INSERT INTO `log` VALUES (5960, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 15:09:53');
INSERT INTO `log` VALUES (5961, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 15:09:53');
INSERT INTO `log` VALUES (5962, 'admin', '192.168.43.164', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2022-12-28 15:09:54');
INSERT INTO `log` VALUES (5963, 'admin', '192.168.43.164', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2022-12-28 15:09:57');
INSERT INTO `log` VALUES (5964, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 15:17:48');
INSERT INTO `log` VALUES (5965, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 15:17:48');
INSERT INTO `log` VALUES (5966, 'admin', '192.168.43.164', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2022-12-28 15:17:50');
INSERT INTO `log` VALUES (5967, 'admin', '192.168.43.164', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2022-12-28 15:20:39');
INSERT INTO `log` VALUES (5968, 'admin', '192.168.43.164', '查询', '复合菜品信息', '资料管理-食谱管理', '2022-12-28 15:35:42');
INSERT INTO `log` VALUES (5969, 'admin', '192.168.43.164', '查询', '复合菜品信息', '资料管理-食谱管理', '2022-12-28 15:36:01');
INSERT INTO `log` VALUES (5970, 'admin', '192.168.43.164', '查询', '复合菜品信息', '资料管理-食谱管理', '2022-12-28 15:36:15');
INSERT INTO `log` VALUES (5971, 'admin', '192.168.43.164', '查询', '复合菜品信息', '资料管理-食谱管理', '2022-12-28 15:36:25');
INSERT INTO `log` VALUES (5972, 'admin', '192.168.43.164', '查询', '复合菜品信息', '资料管理-食谱管理', '2022-12-28 15:36:54');
INSERT INTO `log` VALUES (5973, 'admin', '192.168.43.164', '查询', '复合菜品信息', '资料管理-食谱管理', '2022-12-28 15:37:08');
INSERT INTO `log` VALUES (5974, 'admin', '192.168.43.164', '查询', '复合菜品信息', '资料管理-食谱管理', '2022-12-28 15:37:23');
INSERT INTO `log` VALUES (5975, NULL, '192.168.1.9', '登录', '登录系统', '登录模块', '2022-12-28 16:08:01');
INSERT INTO `log` VALUES (5976, 'admin', '192.168.1.9', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 16:08:01');
INSERT INTO `log` VALUES (5977, 'admin', '192.168.1.9', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 16:08:01');
INSERT INTO `log` VALUES (5978, 'admin', '192.168.1.9', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 16:08:27');
INSERT INTO `log` VALUES (5979, 'admin', '192.168.1.9', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 16:08:27');
INSERT INTO `log` VALUES (5980, 'admin', '192.168.1.9', '查询', '查询角色', '资料管理-权限管理', '2022-12-28 16:08:44');
INSERT INTO `log` VALUES (5981, 'admin', '192.168.1.9', '查询', '查询角色', '资料管理-权限管理', '2022-12-28 16:10:34');
INSERT INTO `log` VALUES (5982, 'admin', '192.168.1.9', '查询', '查询角色', '资料管理-权限管理', '2022-12-28 16:10:39');
INSERT INTO `log` VALUES (5983, 'admin', '192.168.1.9', '查询', '查询角色', '资料管理-权限管理', '2022-12-28 16:17:33');
INSERT INTO `log` VALUES (5984, NULL, '192.168.1.9', '登录', '登录系统', '登录模块', '2022-12-28 16:18:40');
INSERT INTO `log` VALUES (5985, 'admin', '192.168.1.9', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 16:18:41');
INSERT INTO `log` VALUES (5986, 'admin', '192.168.1.9', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 16:18:41');
INSERT INTO `log` VALUES (5987, 'admin', '192.168.1.9', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 16:18:46');
INSERT INTO `log` VALUES (5988, 'admin', '192.168.1.9', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 16:18:46');
INSERT INTO `log` VALUES (5989, NULL, '192.168.1.9', '登录', '登录系统', '登录模块', '2022-12-28 16:24:56');
INSERT INTO `log` VALUES (5990, 'admin', '192.168.1.9', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 16:24:56');
INSERT INTO `log` VALUES (5991, 'admin', '192.168.1.9', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 16:24:56');
INSERT INTO `log` VALUES (5992, 'admin', '192.168.1.9', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 16:24:59');
INSERT INTO `log` VALUES (5993, 'admin', '192.168.1.9', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 16:25:00');
INSERT INTO `log` VALUES (5994, 'admin', '192.168.1.9', '查询', '查询收费标准', '资料管理-收费标准设置', '2022-12-28 16:26:04');
INSERT INTO `log` VALUES (5995, 'admin', '192.168.1.9', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 16:26:05');
INSERT INTO `log` VALUES (5996, 'admin', '192.168.1.9', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 16:26:05');
INSERT INTO `log` VALUES (5997, 'admin', '192.168.1.9', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-28 16:26:10');
INSERT INTO `log` VALUES (5998, 'admin', '192.168.1.9', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2022-12-28 16:26:15');
INSERT INTO `log` VALUES (5999, 'admin', '192.168.1.9', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-28 16:26:21');
INSERT INTO `log` VALUES (6000, 'admin', '192.168.1.9', '查询', '查询角色', '资料管理-权限管理', '2022-12-28 16:27:10');
INSERT INTO `log` VALUES (6001, 'admin', '192.168.1.9', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-28 16:27:14');
INSERT INTO `log` VALUES (6002, 'admin', '192.168.43.164', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-28 17:34:10');
INSERT INTO `log` VALUES (6003, 'admin', '192.168.43.164', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-28 17:35:29');
INSERT INTO `log` VALUES (6004, 'admin', '192.168.43.164', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 17:36:52');
INSERT INTO `log` VALUES (6005, 'admin', '192.168.43.164', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-28 17:36:52');
INSERT INTO `log` VALUES (6006, 'admin', '192.168.43.164', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-28 17:36:54');
INSERT INTO `log` VALUES (6007, 'admin', '192.168.43.164', '查询', '复合查询楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-28 18:11:41');
INSERT INTO `log` VALUES (6008, 'admin', '192.168.43.164', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 18:19:26');
INSERT INTO `log` VALUES (6009, 'admin', '192.168.43.164', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-28 18:19:28');
INSERT INTO `log` VALUES (6010, 'admin', '192.168.43.164', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 18:20:58');
INSERT INTO `log` VALUES (6011, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-28 18:22:43');
INSERT INTO `log` VALUES (6012, 'admin', '192.168.43.164', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-28 18:23:27');
INSERT INTO `log` VALUES (6013, 'admin', '192.168.43.164', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 18:23:28');
INSERT INTO `log` VALUES (6014, 'admin', '192.168.43.164', '查询', '复合查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 18:47:14');
INSERT INTO `log` VALUES (6015, 'admin', '192.168.43.164', '查询', '复合查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 18:47:22');
INSERT INTO `log` VALUES (6016, 'admin', '192.168.43.164', '查询', '复合查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 18:47:28');
INSERT INTO `log` VALUES (6017, 'admin', '192.168.43.164', '查询', '复合查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 18:47:31');
INSERT INTO `log` VALUES (6018, 'admin', '192.168.43.164', '查询', '复合查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 18:47:36');
INSERT INTO `log` VALUES (6019, 'admin', '192.168.43.164', '查询', '复合查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2022-12-28 18:47:45');
INSERT INTO `log` VALUES (6020, 'admin', '192.168.43.164', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2022-12-28 20:10:50');
INSERT INTO `log` VALUES (6021, 'admin', '192.168.43.164', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2022-12-28 21:00:24');
INSERT INTO `log` VALUES (6022, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-28 21:01:59');
INSERT INTO `log` VALUES (6023, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-28 21:02:06');
INSERT INTO `log` VALUES (6024, 'admin', '192.168.43.164', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-28 21:02:31');
INSERT INTO `log` VALUES (6025, NULL, '192.168.137.1', '登录', '登录系统', '登录模块', '2022-12-28 22:45:23');
INSERT INTO `log` VALUES (6026, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 22:45:23');
INSERT INTO `log` VALUES (6027, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 22:45:23');
INSERT INTO `log` VALUES (6028, NULL, '192.168.137.1', '登录', '登录系统', '登录模块', '2022-12-28 22:47:17');
INSERT INTO `log` VALUES (6029, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 22:47:17');
INSERT INTO `log` VALUES (6030, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 22:47:17');
INSERT INTO `log` VALUES (6031, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-28 22:50:44');
INSERT INTO `log` VALUES (6032, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-28 22:50:44');
INSERT INTO `log` VALUES (6033, NULL, '192.168.43.21', '登录', '登录系统', '登录模块', '2022-12-29 11:05:50');
INSERT INTO `log` VALUES (6034, 'admin', '192.168.43.21', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 11:05:50');
INSERT INTO `log` VALUES (6035, 'admin', '192.168.43.21', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 11:05:50');
INSERT INTO `log` VALUES (6036, 'admin', '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-29 11:05:58');
INSERT INTO `log` VALUES (6037, 'admin', '192.168.43.21', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2022-12-29 11:05:59');
INSERT INTO `log` VALUES (6038, 'admin', '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-29 11:52:05');
INSERT INTO `log` VALUES (6039, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 13:19:35');
INSERT INTO `log` VALUES (6040, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 13:19:35');
INSERT INTO `log` VALUES (6041, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 13:19:35');
INSERT INTO `log` VALUES (6042, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 13:20:02');
INSERT INTO `log` VALUES (6043, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 13:20:03');
INSERT INTO `log` VALUES (6044, 'admin', '192.168.43.164', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2022-12-29 13:20:05');
INSERT INTO `log` VALUES (6045, 'admin', '192.168.43.164', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-29 13:31:47');
INSERT INTO `log` VALUES (6046, 'admin', '192.168.43.164', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2022-12-29 13:31:56');
INSERT INTO `log` VALUES (6047, 'admin', '192.168.43.164', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2022-12-29 13:36:33');
INSERT INTO `log` VALUES (6048, 'admin', '192.168.43.164', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2022-12-29 13:36:34');
INSERT INTO `log` VALUES (6049, 'admin', '192.168.43.164', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2022-12-29 13:37:22');
INSERT INTO `log` VALUES (6050, 'admin', '192.168.43.164', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2022-12-29 14:29:39');
INSERT INTO `log` VALUES (6051, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-29 14:45:43');
INSERT INTO `log` VALUES (6052, NULL, '192.168.137.1', '登录', '登录系统', '登录模块', '2022-12-29 15:06:24');
INSERT INTO `log` VALUES (6053, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 15:06:25');
INSERT INTO `log` VALUES (6054, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 15:06:25');
INSERT INTO `log` VALUES (6055, 'admin', '192.168.43.164', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2022-12-29 15:08:35');
INSERT INTO `log` VALUES (6056, NULL, '192.168.0.105', '登录', '登录系统', '登录模块', '2022-12-29 15:37:27');
INSERT INTO `log` VALUES (6057, '2022110127', '192.168.0.105', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 15:37:28');
INSERT INTO `log` VALUES (6058, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 15:37:28');
INSERT INTO `log` VALUES (6059, NULL, '192.168.137.1', '登录', '登录系统', '登录模块', '2022-12-29 15:38:34');
INSERT INTO `log` VALUES (6060, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 15:38:34');
INSERT INTO `log` VALUES (6061, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 15:38:34');
INSERT INTO `log` VALUES (6062, NULL, '192.168.137.1', '登录', '登录系统', '登录模块', '2022-12-29 15:39:58');
INSERT INTO `log` VALUES (6063, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 15:39:58');
INSERT INTO `log` VALUES (6064, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 15:39:59');
INSERT INTO `log` VALUES (6065, '2022110127', '192.168.0.105', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2022-12-29 15:43:27');
INSERT INTO `log` VALUES (6066, '2022110127', '192.168.0.105', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-29 15:43:33');
INSERT INTO `log` VALUES (6067, '2022110127', '192.168.0.105', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-29 15:43:36');
INSERT INTO `log` VALUES (6068, '2022110127', '192.168.0.105', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-29 15:44:39');
INSERT INTO `log` VALUES (6069, '2022110127', '192.168.0.105', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-29 15:44:47');
INSERT INTO `log` VALUES (6070, '2022110127', '192.168.0.105', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2022-12-29 15:44:52');
INSERT INTO `log` VALUES (6071, '2022110127', '192.168.0.105', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-29 15:45:14');
INSERT INTO `log` VALUES (6072, '2022110127', '192.168.0.105', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-29 15:45:18');
INSERT INTO `log` VALUES (6073, '2022110127', '192.168.0.105', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-29 15:45:24');
INSERT INTO `log` VALUES (6074, '2022110127', '192.168.0.105', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-29 15:45:27');
INSERT INTO `log` VALUES (6075, '2022110127', '192.168.0.105', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-29 15:45:33');
INSERT INTO `log` VALUES (6076, '2022110127', '192.168.0.105', '查询', '查询请假数据', '请假批准', '2022-12-29 15:45:43');
INSERT INTO `log` VALUES (6077, '2022110127', '192.168.0.105', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-29 15:46:00');
INSERT INTO `log` VALUES (6078, '2022110127', '192.168.0.105', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-29 15:46:15');
INSERT INTO `log` VALUES (6079, '2022110127', '192.168.0.105', '查询', '查询体检信息', '健康管理-体检信息', '2022-12-29 15:46:25');
INSERT INTO `log` VALUES (6080, '2022110127', '192.168.0.105', '查询', '查询健康指数信息', '健康管理-健康指数', '2022-12-29 15:46:31');
INSERT INTO `log` VALUES (6081, '2022110127', '192.168.0.105', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2022-12-29 15:46:44');
INSERT INTO `log` VALUES (6082, '2022110127', '192.168.0.105', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-29 15:46:54');
INSERT INTO `log` VALUES (6083, '2022110127', '192.168.0.105', '增加', '增加健康等级', '健康管理-健康等级', '2022-12-29 15:47:14');
INSERT INTO `log` VALUES (6084, '2022110127', '192.168.0.105', '查询', '查询健康等级', '健康管理-健康等级', '2022-12-29 15:47:14');
INSERT INTO `log` VALUES (6085, '2022110127', '192.168.0.105', '新增', '新增疾病预警信息', '健康管理-疾病预警', '2022-12-29 15:47:25');
INSERT INTO `log` VALUES (6086, '2022110127', '192.168.0.105', '新增', '新增疾病预警信息', '健康管理-疾病预警', '2022-12-29 15:47:30');
INSERT INTO `log` VALUES (6087, '2022110127', '192.168.0.105', '新增', '新增疾病预警信息', '健康管理-疾病预警', '2022-12-29 15:47:36');
INSERT INTO `log` VALUES (6088, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 15:49:08');
INSERT INTO `log` VALUES (6089, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 15:49:09');
INSERT INTO `log` VALUES (6090, NULL, '192.168.137.1', '登录', '登录系统', '登录模块', '2022-12-29 16:00:02');
INSERT INTO `log` VALUES (6091, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:00:02');
INSERT INTO `log` VALUES (6092, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:00:02');
INSERT INTO `log` VALUES (6093, NULL, '192.168.137.1', '登录', '登录系统', '登录模块', '2022-12-29 16:02:48');
INSERT INTO `log` VALUES (6094, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:02:48');
INSERT INTO `log` VALUES (6095, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:02:48');
INSERT INTO `log` VALUES (6096, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:13:16');
INSERT INTO `log` VALUES (6097, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:22:25');
INSERT INTO `log` VALUES (6098, 'admin', '192.168.43.164', '删除', '删除角色', '资料管理-权限管理', '2022-12-29 16:22:25');
INSERT INTO `log` VALUES (6099, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:22:36');
INSERT INTO `log` VALUES (6100, 'admin', '192.168.43.164', '添加', '添加角色', '资料管理-权限管理', '2022-12-29 16:22:54');
INSERT INTO `log` VALUES (6101, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:22:54');
INSERT INTO `log` VALUES (6102, 'admin', '192.168.43.164', '添加', '添加角色', '资料管理-权限管理', '2022-12-29 16:23:17');
INSERT INTO `log` VALUES (6103, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:23:17');
INSERT INTO `log` VALUES (6104, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:23:20');
INSERT INTO `log` VALUES (6105, 'admin', '192.168.43.164', '删除', '删除角色', '资料管理-权限管理', '2022-12-29 16:23:20');
INSERT INTO `log` VALUES (6106, 'admin', '192.168.43.164', '更新', '更新角色权限菜单', '资料管理-权限管理', '2022-12-29 16:23:32');
INSERT INTO `log` VALUES (6107, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 16:23:37');
INSERT INTO `log` VALUES (6108, 'youke', '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 16:23:49');
INSERT INTO `log` VALUES (6109, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:23:50');
INSERT INTO `log` VALUES (6110, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:23:50');
INSERT INTO `log` VALUES (6111, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:23:57');
INSERT INTO `log` VALUES (6112, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:24:07');
INSERT INTO `log` VALUES (6113, 'admin', '192.168.43.164', '更新', '更新用户角色', '资料管理-用户管理', '2022-12-29 16:24:07');
INSERT INTO `log` VALUES (6114, 'admin', '192.168.43.164', '更新', '更新用户角色', '资料管理-用户管理', '2022-12-29 16:24:56');
INSERT INTO `log` VALUES (6115, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:24:56');
INSERT INTO `log` VALUES (6116, 'admin', '192.168.43.164', '更新', '更新用户角色', '资料管理-用户管理', '2022-12-29 16:25:17');
INSERT INTO `log` VALUES (6117, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:25:17');
INSERT INTO `log` VALUES (6118, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:25:20');
INSERT INTO `log` VALUES (6119, 'admin', '192.168.43.164', '更新', '更新用户角色', '资料管理-用户管理', '2022-12-29 16:27:23');
INSERT INTO `log` VALUES (6120, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:27:23');
INSERT INTO `log` VALUES (6121, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:27:25');
INSERT INTO `log` VALUES (6122, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:27:37');
INSERT INTO `log` VALUES (6123, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:32:31');
INSERT INTO `log` VALUES (6124, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:32:37');
INSERT INTO `log` VALUES (6125, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:33:11');
INSERT INTO `log` VALUES (6126, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:34:49');
INSERT INTO `log` VALUES (6127, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 16:34:54');
INSERT INTO `log` VALUES (6128, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 16:35:27');
INSERT INTO `log` VALUES (6129, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:35:27');
INSERT INTO `log` VALUES (6130, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:35:27');
INSERT INTO `log` VALUES (6131, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:35:34');
INSERT INTO `log` VALUES (6132, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 16:36:11');
INSERT INTO `log` VALUES (6133, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 16:36:21');
INSERT INTO `log` VALUES (6134, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:36:21');
INSERT INTO `log` VALUES (6135, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:36:21');
INSERT INTO `log` VALUES (6136, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:36:25');
INSERT INTO `log` VALUES (6137, 'admin', '192.168.43.164', '更新', '更新角色权限菜单', '资料管理-权限管理', '2022-12-29 16:36:54');
INSERT INTO `log` VALUES (6138, 'admin', '192.168.43.164', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:36:59');
INSERT INTO `log` VALUES (6139, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:36:59');
INSERT INTO `log` VALUES (6140, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:37:39');
INSERT INTO `log` VALUES (6141, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:37:59');
INSERT INTO `log` VALUES (6142, NULL, '192.168.31.27', '登录', '登录系统', '登录模块', '2022-12-29 16:38:04');
INSERT INTO `log` VALUES (6143, 'admin', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:38:04');
INSERT INTO `log` VALUES (6144, 'admin', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:38:04');
INSERT INTO `log` VALUES (6145, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:38:03');
INSERT INTO `log` VALUES (6146, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:38:10');
INSERT INTO `log` VALUES (6147, NULL, '192.168.31.27', '登录', '登录系统', '登录模块', '2022-12-29 16:38:16');
INSERT INTO `log` VALUES (6148, 'admin', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:38:16');
INSERT INTO `log` VALUES (6149, 'admin', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:38:16');
INSERT INTO `log` VALUES (6150, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:38:17');
INSERT INTO `log` VALUES (6151, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:38:36');
INSERT INTO `log` VALUES (6152, NULL, '192.168.0.105', '登录', '登录系统', '登录模块', '2022-12-29 16:40:42');
INSERT INTO `log` VALUES (6153, '2022110127', '192.168.0.105', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:40:42');
INSERT INTO `log` VALUES (6154, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:40:42');
INSERT INTO `log` VALUES (6155, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:40:58');
INSERT INTO `log` VALUES (6156, NULL, '192.168.0.105', '登录', '登录系统', '登录模块', '2022-12-29 16:41:22');
INSERT INTO `log` VALUES (6157, 'admin', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:41:31');
INSERT INTO `log` VALUES (6158, 'admin', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:41:31');
INSERT INTO `log` VALUES (6159, NULL, '192.168.0.105', '登录', '登录系统', '登录模块', '2022-12-29 16:41:32');
INSERT INTO `log` VALUES (6160, '2022110127', '192.168.0.105', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:41:32');
INSERT INTO `log` VALUES (6161, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:41:32');
INSERT INTO `log` VALUES (6162, 'admin', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:41:43');
INSERT INTO `log` VALUES (6163, 'admin', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:41:43');
INSERT INTO `log` VALUES (6164, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:43:08');
INSERT INTO `log` VALUES (6165, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 16:43:12');
INSERT INTO `log` VALUES (6166, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:43:13');
INSERT INTO `log` VALUES (6167, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 16:43:15');
INSERT INTO `log` VALUES (6168, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:43:15');
INSERT INTO `log` VALUES (6169, 'admin', '192.168.31.27', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-29 16:46:12');
INSERT INTO `log` VALUES (6170, 'admin', '192.168.31.27', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-29 16:46:14');
INSERT INTO `log` VALUES (6171, 'admin', '192.168.31.27', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-29 16:46:15');
INSERT INTO `log` VALUES (6172, 'admin', '192.168.31.27', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-29 16:46:16');
INSERT INTO `log` VALUES (6173, 'admin', '192.168.31.27', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-29 16:46:17');
INSERT INTO `log` VALUES (6174, 'admin', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-29 16:46:22');
INSERT INTO `log` VALUES (6175, 'admin', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-29 16:46:25');
INSERT INTO `log` VALUES (6176, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:47:05');
INSERT INTO `log` VALUES (6177, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:47:08');
INSERT INTO `log` VALUES (6178, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:47:51');
INSERT INTO `log` VALUES (6179, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:47:54');
INSERT INTO `log` VALUES (6180, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:48:10');
INSERT INTO `log` VALUES (6181, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:48:13');
INSERT INTO `log` VALUES (6182, 'admin', '192.168.31.27', '查询', '查询收费标准', '资料管理-收费标准设置', '2022-12-29 16:48:19');
INSERT INTO `log` VALUES (6183, 'admin', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:48:20');
INSERT INTO `log` VALUES (6184, 'admin', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:48:20');
INSERT INTO `log` VALUES (6185, 'admin', '192.168.43.164', '更新', '更新角色权限菜单', '资料管理-权限管理', '2022-12-29 16:48:19');
INSERT INTO `log` VALUES (6186, 'admin', '192.168.31.27', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-29 16:48:22');
INSERT INTO `log` VALUES (6187, 'admin', '192.168.31.27', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2022-12-29 16:48:23');
INSERT INTO `log` VALUES (6188, 'admin', '192.168.31.27', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2022-12-29 16:48:23');
INSERT INTO `log` VALUES (6189, 'admin', '192.168.31.27', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 16:48:30');
INSERT INTO `log` VALUES (6190, 'admin', '192.168.31.27', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:48:30');
INSERT INTO `log` VALUES (6191, 'admin', '192.168.31.27', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 16:48:31');
INSERT INTO `log` VALUES (6192, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:48:46');
INSERT INTO `log` VALUES (6193, 'admin', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-29 16:49:02');
INSERT INTO `log` VALUES (6194, 'admin', '192.168.31.27', '查询', '查询退住数据', '退住批准', '2022-12-29 16:49:09');
INSERT INTO `log` VALUES (6195, 'admin', '192.168.31.27', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-29 16:49:10');
INSERT INTO `log` VALUES (6196, 'admin', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-29 16:49:12');
INSERT INTO `log` VALUES (6197, 'admin', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-29 16:49:12');
INSERT INTO `log` VALUES (6198, 'admin', '192.168.31.27', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-29 16:49:20');
INSERT INTO `log` VALUES (6199, 'admin', '192.168.31.27', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-29 16:49:23');
INSERT INTO `log` VALUES (6200, 'admin', '192.168.31.27', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-29 16:49:25');
INSERT INTO `log` VALUES (6201, 'admin', '192.168.31.27', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-29 16:49:26');
INSERT INTO `log` VALUES (6202, 'admin', '192.168.31.27', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-29 16:49:27');
INSERT INTO `log` VALUES (6203, 'admin', '192.168.31.27', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-29 16:49:30');
INSERT INTO `log` VALUES (6204, 'admin', '192.168.31.27', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-29 16:49:35');
INSERT INTO `log` VALUES (6205, 'admin', '192.168.31.27', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-29 16:49:36');
INSERT INTO `log` VALUES (6206, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:50:19');
INSERT INTO `log` VALUES (6207, NULL, '192.168.137.1', '登录', '登录系统', '登录模块', '2022-12-29 16:54:10');
INSERT INTO `log` VALUES (6208, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 16:54:11');
INSERT INTO `log` VALUES (6209, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 16:54:11');
INSERT INTO `log` VALUES (6210, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:55:56');
INSERT INTO `log` VALUES (6211, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:56:23');
INSERT INTO `log` VALUES (6212, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:56:47');
INSERT INTO `log` VALUES (6213, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:58:40');
INSERT INTO `log` VALUES (6214, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:58:51');
INSERT INTO `log` VALUES (6215, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 16:59:17');
INSERT INTO `log` VALUES (6216, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:00:50');
INSERT INTO `log` VALUES (6217, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:00:54');
INSERT INTO `log` VALUES (6218, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:01:16');
INSERT INTO `log` VALUES (6219, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:01:18');
INSERT INTO `log` VALUES (6220, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:01:49');
INSERT INTO `log` VALUES (6221, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:01:52');
INSERT INTO `log` VALUES (6222, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:02:22');
INSERT INTO `log` VALUES (6223, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:02:26');
INSERT INTO `log` VALUES (6224, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:05:29');
INSERT INTO `log` VALUES (6225, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:05:31');
INSERT INTO `log` VALUES (6226, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:07:20');
INSERT INTO `log` VALUES (6227, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:07:24');
INSERT INTO `log` VALUES (6228, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:08:27');
INSERT INTO `log` VALUES (6229, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:08:29');
INSERT INTO `log` VALUES (6230, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:08:37');
INSERT INTO `log` VALUES (6231, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 17:14:17');
INSERT INTO `log` VALUES (6232, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 17:14:22');
INSERT INTO `log` VALUES (6233, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 17:14:25');
INSERT INTO `log` VALUES (6234, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 17:14:33');
INSERT INTO `log` VALUES (6235, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 17:14:40');
INSERT INTO `log` VALUES (6236, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 17:14:42');
INSERT INTO `log` VALUES (6237, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 17:17:23');
INSERT INTO `log` VALUES (6238, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 17:17:32');
INSERT INTO `log` VALUES (6239, 'admin', '192.168.43.164', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 17:17:36');
INSERT INTO `log` VALUES (6240, 'admin', '192.168.43.164', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 17:17:36');
INSERT INTO `log` VALUES (6241, NULL, '192.168.31.27', '登录', '登录系统', '登录模块', '2022-12-29 17:42:22');
INSERT INTO `log` VALUES (6242, 'admin', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 17:42:22');
INSERT INTO `log` VALUES (6243, 'admin', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 17:42:22');
INSERT INTO `log` VALUES (6244, NULL, '192.168.31.27', '登录', '登录系统', '登录模块', '2022-12-29 17:46:11');
INSERT INTO `log` VALUES (6245, 'admin', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 17:46:11');
INSERT INTO `log` VALUES (6246, 'admin', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 17:46:11');
INSERT INTO `log` VALUES (6247, '2022110127', '192.168.0.105', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 17:50:20');
INSERT INTO `log` VALUES (6248, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 17:50:20');
INSERT INTO `log` VALUES (6249, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 18:10:33');
INSERT INTO `log` VALUES (6250, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 18:10:33');
INSERT INTO `log` VALUES (6251, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 18:10:33');
INSERT INTO `log` VALUES (6252, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 18:13:27');
INSERT INTO `log` VALUES (6253, 'admin4', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 18:13:27');
INSERT INTO `log` VALUES (6254, 'admin4', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 18:13:27');
INSERT INTO `log` VALUES (6255, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 18:14:14');
INSERT INTO `log` VALUES (6256, 'admin4', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 18:14:14');
INSERT INTO `log` VALUES (6257, 'admin4', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 18:14:14');
INSERT INTO `log` VALUES (6258, 'admin4', '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 18:15:22');
INSERT INTO `log` VALUES (6259, 'admin4', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 18:15:22');
INSERT INTO `log` VALUES (6260, 'admin4', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 18:15:22');
INSERT INTO `log` VALUES (6261, NULL, '192.168.43.164', '登录', '登录系统', '登录模块', '2022-12-29 18:17:09');
INSERT INTO `log` VALUES (6262, 'admin', '192.168.43.164', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 18:17:10');
INSERT INTO `log` VALUES (6263, 'admin', '192.168.43.164', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 18:17:10');
INSERT INTO `log` VALUES (6264, NULL, '192.168.31.27', '登录', '登录系统', '登录模块', '2022-12-29 18:26:31');
INSERT INTO `log` VALUES (6265, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 18:26:31');
INSERT INTO `log` VALUES (6266, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 18:26:31');
INSERT INTO `log` VALUES (6267, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 18:28:09');
INSERT INTO `log` VALUES (6268, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 18:28:09');
INSERT INTO `log` VALUES (6269, '2022110127', '192.168.0.105', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 19:17:59');
INSERT INTO `log` VALUES (6270, '2022110127', '192.168.0.105', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 19:18:04');
INSERT INTO `log` VALUES (6271, 'admin', '192.168.137.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-29 19:39:45');
INSERT INTO `log` VALUES (6272, 'admin', '192.168.137.1', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-29 19:39:45');
INSERT INTO `log` VALUES (6273, 'admin', '192.168.137.1', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-29 19:39:46');
INSERT INTO `log` VALUES (6274, 'admin', '192.168.137.1', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-29 19:39:47');
INSERT INTO `log` VALUES (6275, 'admin', '192.168.137.1', '查询', '查询请假数据', '请假批准', '2022-12-29 19:39:54');
INSERT INTO `log` VALUES (6276, 'admin', '192.168.137.1', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-29 19:39:57');
INSERT INTO `log` VALUES (6277, 'admin', '192.168.137.1', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2022-12-29 19:40:03');
INSERT INTO `log` VALUES (6278, 'admin', '192.168.137.1', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-29 19:43:12');
INSERT INTO `log` VALUES (6279, 'admin', '192.168.137.1', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-29 19:43:13');
INSERT INTO `log` VALUES (6280, 'admin', '192.168.137.1', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2022-12-29 19:43:17');
INSERT INTO `log` VALUES (6281, NULL, '192.168.137.1', '登录', '登录系统', '登录模块', '2022-12-29 19:49:19');
INSERT INTO `log` VALUES (6282, 'admin', '192.168.137.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 19:49:19');
INSERT INTO `log` VALUES (6283, 'admin', '192.168.137.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 19:49:19');
INSERT INTO `log` VALUES (6284, 'admin4', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-29 21:04:42');
INSERT INTO `log` VALUES (6285, 'admin4', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2022-12-29 21:04:42');
INSERT INTO `log` VALUES (6286, 'admin4', '192.168.31.27', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-29 21:04:45');
INSERT INTO `log` VALUES (6287, 'admin4', '192.168.31.27', '查询', '查询退住数据', '退住批准', '2022-12-29 21:04:46');
INSERT INTO `log` VALUES (6288, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 21:11:07');
INSERT INTO `log` VALUES (6289, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 21:11:07');
INSERT INTO `log` VALUES (6290, 'admin4', '192.168.31.27', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 21:11:09');
INSERT INTO `log` VALUES (6291, 'admin4', '192.168.31.27', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2022-12-29 21:11:12');
INSERT INTO `log` VALUES (6292, 'admin4', '192.168.31.27', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2022-12-29 21:11:13');
INSERT INTO `log` VALUES (6293, 'admin4', '192.168.31.27', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2022-12-29 21:11:15');
INSERT INTO `log` VALUES (6294, 'admin4', '192.168.31.27', '查询', '查询所有用户', '资料管理-用户管理', '2022-12-29 21:11:18');
INSERT INTO `log` VALUES (6295, 'admin4', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-29 21:43:37');
INSERT INTO `log` VALUES (6296, 'admin4', '192.168.31.27', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2022-12-29 21:44:39');
INSERT INTO `log` VALUES (6297, NULL, '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-29 22:03:57');
INSERT INTO `log` VALUES (6298, NULL, '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-29 22:04:06');
INSERT INTO `log` VALUES (6299, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-29 22:59:27');
INSERT INTO `log` VALUES (6300, NULL, '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-29 22:59:27');
INSERT INTO `log` VALUES (6301, 'admin4', '192.168.31.27', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-29 23:05:06');
INSERT INTO `log` VALUES (6302, 'admin4', '192.168.31.27', '删除', '删除老人信息', '老人管理-档案管理-老人档案', '2022-12-29 23:05:08');
INSERT INTO `log` VALUES (6303, 'admin4', '192.168.31.27', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2022-12-29 23:05:08');
INSERT INTO `log` VALUES (6304, 'admin4', '192.168.31.27', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2022-12-29 23:05:10');
INSERT INTO `log` VALUES (6305, 'admin4', '192.168.31.27', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2022-12-29 23:05:12');
INSERT INTO `log` VALUES (6306, 'admin4', '192.168.31.27', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2022-12-29 23:05:13');
INSERT INTO `log` VALUES (6307, 'admin4', '192.168.31.27', '查询', '查询健康档案信息', '健康管理-老人健康', '2022-12-29 23:05:15');
INSERT INTO `log` VALUES (6308, 'admin4', '192.168.31.27', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2022-12-29 23:05:19');
INSERT INTO `log` VALUES (6309, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:05:47');
INSERT INTO `log` VALUES (6310, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:05:47');
INSERT INTO `log` VALUES (6311, 'admin4', '192.168.31.27', '删除', '删除食谱', '资料管理-食谱管理', '2022-12-29 23:05:54');
INSERT INTO `log` VALUES (6312, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:05:55');
INSERT INTO `log` VALUES (6313, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:05:55');
INSERT INTO `log` VALUES (6314, 'admin4', '192.168.31.27', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 23:06:01');
INSERT INTO `log` VALUES (6315, 'admin4', '192.168.31.27', '查询', '查询收费标准', '资料管理-收费标准设置', '2022-12-29 23:06:06');
INSERT INTO `log` VALUES (6316, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:06:08');
INSERT INTO `log` VALUES (6317, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:06:08');
INSERT INTO `log` VALUES (6318, 'admin4', '192.168.31.27', '查询', '查询操作日志', '资料管理-操作日志', '2022-12-29 23:06:11');
INSERT INTO `log` VALUES (6319, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:06:19');
INSERT INTO `log` VALUES (6320, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:06:19');
INSERT INTO `log` VALUES (6321, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:06:24');
INSERT INTO `log` VALUES (6322, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:06:24');
INSERT INTO `log` VALUES (6323, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:06:25');
INSERT INTO `log` VALUES (6324, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:07:16');
INSERT INTO `log` VALUES (6325, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:07:16');
INSERT INTO `log` VALUES (6326, 'admin4', '192.168.31.27', '查询', '查询老人信息', '健康管理-老人信息', '2022-12-29 23:07:41');
INSERT INTO `log` VALUES (6327, 'admin4', '192.168.31.27', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2022-12-29 23:07:42');
INSERT INTO `log` VALUES (6328, 'admin4', '192.168.31.27', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2022-12-29 23:07:44');
INSERT INTO `log` VALUES (6329, 'admin4', '192.168.31.27', '查询', '查询请假数据', '请假批准', '2022-12-29 23:07:45');
INSERT INTO `log` VALUES (6330, 'admin4', '192.168.31.27', '查询', '查询角色', '资料管理-权限管理', '2022-12-29 23:09:16');
INSERT INTO `log` VALUES (6331, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:09:18');
INSERT INTO `log` VALUES (6332, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:09:18');
INSERT INTO `log` VALUES (6333, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:12:33');
INSERT INTO `log` VALUES (6334, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:12:33');
INSERT INTO `log` VALUES (6335, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:12:33');
INSERT INTO `log` VALUES (6336, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:13:43');
INSERT INTO `log` VALUES (6337, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:13:43');
INSERT INTO `log` VALUES (6338, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:13:43');
INSERT INTO `log` VALUES (6339, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-29 23:13:48');
INSERT INTO `log` VALUES (6340, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-29 23:13:48');
INSERT INTO `log` VALUES (6341, NULL, '192.168.43.21', '查询', '查询所有用户', '资料管理-食谱管理', '2022-12-29 23:46:34');
INSERT INTO `log` VALUES (6342, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:03:05');
INSERT INTO `log` VALUES (6343, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:03:21');
INSERT INTO `log` VALUES (6344, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:03:30');
INSERT INTO `log` VALUES (6345, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:03:46');
INSERT INTO `log` VALUES (6346, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:04:04');
INSERT INTO `log` VALUES (6347, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:04:19');
INSERT INTO `log` VALUES (6348, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:04:53');
INSERT INTO `log` VALUES (6349, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:05:07');
INSERT INTO `log` VALUES (6350, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:05:18');
INSERT INTO `log` VALUES (6351, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:05:37');
INSERT INTO `log` VALUES (6352, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:05:49');
INSERT INTO `log` VALUES (6353, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:06:04');
INSERT INTO `log` VALUES (6354, NULL, '192.168.43.21', '新增', '新增申请信息', '接待管理-申请信息管理', '2022-12-30 00:06:19');
INSERT INTO `log` VALUES (6355, NULL, '192.168.31.27', '登录', '登录系统', '登录模块', '2022-12-30 00:20:01');
INSERT INTO `log` VALUES (6356, 'admin4', '192.168.31.27', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-30 00:20:01');
INSERT INTO `log` VALUES (6357, 'admin4', '192.168.31.27', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-30 00:20:01');
INSERT INTO `log` VALUES (6358, NULL, '192.168.43.21', '登录', '登录系统', '登录模块', '2022-12-30 00:21:00');
INSERT INTO `log` VALUES (6359, 'admin', '192.168.43.21', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2022-12-30 00:21:01');
INSERT INTO `log` VALUES (6360, 'admin', '192.168.43.21', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2022-12-30 00:21:01');
INSERT INTO `log` VALUES (6361, NULL, '192.168.43.21', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2022-12-30 02:01:12');
INSERT INTO `log` VALUES (6362, NULL, '192.168.43.21', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2022-12-30 02:01:18');
INSERT INTO `log` VALUES (6363, NULL, '192.168.43.21', '新增', '新增巡查信息', '接待管理-巡查信息管理', '2022-12-30 02:02:16');
INSERT INTO `log` VALUES (6364, NULL, '192.168.43.21', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2022-12-30 02:02:17');
INSERT INTO `log` VALUES (6365, NULL, '192.168.43.21', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2022-12-30 02:27:28');
INSERT INTO `log` VALUES (6366, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 02:59:18');
INSERT INTO `log` VALUES (6367, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 02:59:22');
INSERT INTO `log` VALUES (6368, NULL, '192.168.43.21', '新增', '新增探访信息', '接待管理-探访信息管理', '2022-12-30 03:00:20');
INSERT INTO `log` VALUES (6369, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 03:00:21');
INSERT INTO `log` VALUES (6370, NULL, '192.168.43.21', '新增', '新增探访信息', '接待管理-探访信息管理', '2022-12-30 03:00:52');
INSERT INTO `log` VALUES (6371, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 03:00:52');
INSERT INTO `log` VALUES (6372, NULL, '192.168.43.21', '新增', '新增探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:04');
INSERT INTO `log` VALUES (6373, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:04');
INSERT INTO `log` VALUES (6374, NULL, '192.168.43.21', '新增', '新增探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:09');
INSERT INTO `log` VALUES (6375, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:09');
INSERT INTO `log` VALUES (6376, NULL, '192.168.43.21', '新增', '新增探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:19');
INSERT INTO `log` VALUES (6377, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:19');
INSERT INTO `log` VALUES (6378, NULL, '192.168.43.21', '新增', '新增探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:34');
INSERT INTO `log` VALUES (6379, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:35');
INSERT INTO `log` VALUES (6380, NULL, '192.168.43.21', '新增', '新增探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:42');
INSERT INTO `log` VALUES (6381, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 03:01:43');
INSERT INTO `log` VALUES (6382, NULL, '192.168.43.21', '新增', '新增探访信息', '接待管理-探访信息管理', '2022-12-30 03:02:14');
INSERT INTO `log` VALUES (6383, NULL, '192.168.43.21', '修改', '修改探访信息', '接待管理-探访信息管理', '2022-12-30 03:02:14');
INSERT INTO `log` VALUES (6384, NULL, '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-30 03:27:50');
INSERT INTO `log` VALUES (6385, NULL, '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-30 03:27:54');
INSERT INTO `log` VALUES (6386, NULL, '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-30 03:28:11');
INSERT INTO `log` VALUES (6387, NULL, '192.168.43.21', '新增', '新增捐赠信息', '接待管理-捐赠信息管理', '2022-12-30 03:29:10');
INSERT INTO `log` VALUES (6388, NULL, '192.168.43.21', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2022-12-30 03:29:10');
INSERT INTO `log` VALUES (6389, NULL, '192.168.43.21', '查询', '查询所有用户', '资料管理-食谱管理', '2022-12-30 03:52:31');
INSERT INTO `log` VALUES (6390, NULL, '192.168.43.21', '查询', '查询所有用户', '资料管理-食谱管理', '2022-12-30 03:52:38');
INSERT INTO `log` VALUES (6391, NULL, '192.168.43.21', '查询', '复合查询用户', '资料管理-食谱管理', '2022-12-30 04:05:10');
INSERT INTO `log` VALUES (6392, NULL, '192.168.43.21', '查询', '查询所有用户', '资料管理-食谱管理', '2022-12-30 04:08:05');
INSERT INTO `log` VALUES (6393, NULL, '192.168.43.21', '更新', '更新用户状态', '资料管理-食谱管理', '2022-12-30 04:11:48');
INSERT INTO `log` VALUES (6394, NULL, '192.168.43.21', '更新', '更新用户状态', '资料管理-食谱管理', '2022-12-30 04:11:51');
INSERT INTO `log` VALUES (6395, NULL, '192.168.43.21', '更新', '更新用户状态', '资料管理-食谱管理', '2022-12-30 04:12:00');
INSERT INTO `log` VALUES (6396, NULL, '192.168.43.21', '更新', '更新用户状态', '资料管理-食谱管理', '2022-12-30 04:17:33');
INSERT INTO `log` VALUES (6397, NULL, '192.168.43.21', '更新', '更新用户状态', '资料管理-食谱管理', '2022-12-30 04:18:58');
INSERT INTO `log` VALUES (6398, NULL, '192.168.1.35', '登录', '登录系统', '登录模块', '2023-01-17 13:59:25');
INSERT INTO `log` VALUES (6399, 'admin', '192.168.1.35', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 13:59:25');
INSERT INTO `log` VALUES (6400, 'admin', '192.168.1.35', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 13:59:25');
INSERT INTO `log` VALUES (6401, 'admin', '192.168.1.35', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-17 13:59:33');
INSERT INTO `log` VALUES (6402, 'admin', '192.168.1.35', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 13:59:47');
INSERT INTO `log` VALUES (6403, 'admin', '192.168.1.35', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 13:59:47');
INSERT INTO `log` VALUES (6404, 'admin', '192.168.1.35', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 13:59:56');
INSERT INTO `log` VALUES (6405, 'admin', '192.168.1.35', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 13:59:56');
INSERT INTO `log` VALUES (6406, NULL, '192.168.1.35', '登录', '登录系统', '登录模块', '2023-01-17 14:03:48');
INSERT INTO `log` VALUES (6407, 'admin', '192.168.1.35', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 14:03:48');
INSERT INTO `log` VALUES (6408, 'admin', '192.168.1.35', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 14:03:48');
INSERT INTO `log` VALUES (6409, 'admin', '192.168.1.35', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 14:03:56');
INSERT INTO `log` VALUES (6410, 'admin', '192.168.1.35', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 14:03:56');
INSERT INTO `log` VALUES (6411, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-17 20:24:56');
INSERT INTO `log` VALUES (6412, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-17 20:25:03');
INSERT INTO `log` VALUES (6413, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-17 21:28:37');
INSERT INTO `log` VALUES (6414, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 21:28:38');
INSERT INTO `log` VALUES (6415, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:28:38');
INSERT INTO `log` VALUES (6416, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 21:29:11');
INSERT INTO `log` VALUES (6417, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:29:11');
INSERT INTO `log` VALUES (6418, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 21:33:45');
INSERT INTO `log` VALUES (6419, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:33:45');
INSERT INTO `log` VALUES (6420, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-17 21:34:03');
INSERT INTO `log` VALUES (6421, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 21:34:03');
INSERT INTO `log` VALUES (6422, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:34:03');
INSERT INTO `log` VALUES (6423, 'admin', '127.0.1.1', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-17 21:34:10');
INSERT INTO `log` VALUES (6424, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 21:34:12');
INSERT INTO `log` VALUES (6425, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:34:12');
INSERT INTO `log` VALUES (6426, NULL, '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:37:37');
INSERT INTO `log` VALUES (6427, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 21:42:18');
INSERT INTO `log` VALUES (6428, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:42:18');
INSERT INTO `log` VALUES (6429, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 21:42:25');
INSERT INTO `log` VALUES (6430, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:42:25');
INSERT INTO `log` VALUES (6431, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 21:42:27');
INSERT INTO `log` VALUES (6432, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:42:27');
INSERT INTO `log` VALUES (6433, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-17 21:42:36');
INSERT INTO `log` VALUES (6434, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-17 21:42:36');
INSERT INTO `log` VALUES (6435, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-17 21:42:36');
INSERT INTO `log` VALUES (6436, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-18 10:19:34');
INSERT INTO `log` VALUES (6437, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-18 10:19:34');
INSERT INTO `log` VALUES (6438, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-18 10:19:34');
INSERT INTO `log` VALUES (6439, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-18 10:19:55');
INSERT INTO `log` VALUES (6440, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-18 10:19:55');
INSERT INTO `log` VALUES (6441, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-18 10:40:10');
INSERT INTO `log` VALUES (6442, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-18 10:40:15');
INSERT INTO `log` VALUES (6443, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-18 10:40:16');
INSERT INTO `log` VALUES (6444, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-18 10:40:16');
INSERT INTO `log` VALUES (6445, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-18 10:40:35');
INSERT INTO `log` VALUES (6446, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-18 10:40:36');
INSERT INTO `log` VALUES (6447, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-18 10:40:36');
INSERT INTO `log` VALUES (6448, 'admin', '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-01-18 10:40:44');
INSERT INTO `log` VALUES (6449, 'admin', '127.0.1.1', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-18 10:40:47');
INSERT INTO `log` VALUES (6450, NULL, '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-01-18 10:45:38');
INSERT INTO `log` VALUES (6451, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-18 10:46:19');
INSERT INTO `log` VALUES (6452, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-18 10:46:19');
INSERT INTO `log` VALUES (6453, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-18 10:46:19');
INSERT INTO `log` VALUES (6454, 'admin', '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-18 10:46:24');
INSERT INTO `log` VALUES (6455, 'admin', '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-18 10:46:34');
INSERT INTO `log` VALUES (6456, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-18 10:46:36');
INSERT INTO `log` VALUES (6457, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-18 10:46:51');
INSERT INTO `log` VALUES (6458, NULL, '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-18 10:48:53');
INSERT INTO `log` VALUES (6459, NULL, '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-18 10:50:40');
INSERT INTO `log` VALUES (6460, NULL, '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-18 10:51:58');
INSERT INTO `log` VALUES (6461, NULL, '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-18 21:31:14');
INSERT INTO `log` VALUES (6462, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-22 01:25:16');
INSERT INTO `log` VALUES (6463, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-22 01:25:16');
INSERT INTO `log` VALUES (6464, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-22 01:25:16');
INSERT INTO `log` VALUES (6465, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-22 01:25:24');
INSERT INTO `log` VALUES (6466, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-22 01:25:24');
INSERT INTO `log` VALUES (6467, NULL, '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-22 01:28:14');
INSERT INTO `log` VALUES (6468, NULL, '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-22 01:32:55');
INSERT INTO `log` VALUES (6469, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-25 11:08:38');
INSERT INTO `log` VALUES (6470, '2022110127', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:08:38');
INSERT INTO `log` VALUES (6471, '2022110127', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:08:38');
INSERT INTO `log` VALUES (6472, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-25 11:09:13');
INSERT INTO `log` VALUES (6473, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:09:14');
INSERT INTO `log` VALUES (6474, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:09:14');
INSERT INTO `log` VALUES (6475, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:09:32');
INSERT INTO `log` VALUES (6476, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:09:32');
INSERT INTO `log` VALUES (6477, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:09:44');
INSERT INTO `log` VALUES (6478, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:09:44');
INSERT INTO `log` VALUES (6479, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-25 11:10:42');
INSERT INTO `log` VALUES (6480, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:10:43');
INSERT INTO `log` VALUES (6481, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:10:43');
INSERT INTO `log` VALUES (6482, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:10:51');
INSERT INTO `log` VALUES (6483, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:10:51');
INSERT INTO `log` VALUES (6484, 'admin', '127.0.1.1', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-25 11:12:16');
INSERT INTO `log` VALUES (6485, 'admin', '127.0.1.1', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-25 11:12:17');
INSERT INTO `log` VALUES (6486, 'admin', '127.0.1.1', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-25 11:12:22');
INSERT INTO `log` VALUES (6487, 'admin', '127.0.1.1', '增加', '增加健康等级', '健康管理-健康等级', '2023-01-25 11:12:28');
INSERT INTO `log` VALUES (6488, 'admin', '127.0.1.1', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-25 11:12:28');
INSERT INTO `log` VALUES (6489, 'admin', '127.0.1.1', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-25 11:12:35');
INSERT INTO `log` VALUES (6490, 'admin', '127.0.1.1', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-25 11:12:43');
INSERT INTO `log` VALUES (6491, 'admin', '127.0.1.1', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-25 11:12:47');
INSERT INTO `log` VALUES (6492, 'admin', '127.0.1.1', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-25 11:12:50');
INSERT INTO `log` VALUES (6493, 'admin', '127.0.1.1', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-25 11:13:15');
INSERT INTO `log` VALUES (6494, 'admin', '127.0.1.1', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-25 11:13:18');
INSERT INTO `log` VALUES (6495, 'admin', '127.0.1.1', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-25 11:13:19');
INSERT INTO `log` VALUES (6496, 'admin', '127.0.1.1', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-25 11:13:26');
INSERT INTO `log` VALUES (6497, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:13:44');
INSERT INTO `log` VALUES (6498, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:13:44');
INSERT INTO `log` VALUES (6499, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-25 11:13:52');
INSERT INTO `log` VALUES (6500, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:14:00');
INSERT INTO `log` VALUES (6501, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:14:00');
INSERT INTO `log` VALUES (6502, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-25 11:14:03');
INSERT INTO `log` VALUES (6503, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 11:14:14');
INSERT INTO `log` VALUES (6504, 'admin', '127.0.1.1', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-25 11:14:41');
INSERT INTO `log` VALUES (6505, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 11:15:04');
INSERT INTO `log` VALUES (6506, 'admin', '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-25 11:15:06');
INSERT INTO `log` VALUES (6507, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 11:16:38');
INSERT INTO `log` VALUES (6508, 'admin', '127.0.1.1', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-25 11:16:41');
INSERT INTO `log` VALUES (6509, NULL, '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-25 11:17:45');
INSERT INTO `log` VALUES (6510, 'admin', '127.0.1.1', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-01-25 11:17:49');
INSERT INTO `log` VALUES (6511, 'admin', '127.0.1.1', '修改', '修改探访信息', '接待管理-探访信息管理', '2023-01-25 11:17:54');
INSERT INTO `log` VALUES (6512, 'admin', '127.0.1.1', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-01-25 11:18:06');
INSERT INTO `log` VALUES (6513, NULL, '127.0.1.1', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-25 11:18:32');
INSERT INTO `log` VALUES (6514, NULL, '127.0.1.1', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-25 11:18:32');
INSERT INTO `log` VALUES (6515, NULL, '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-25 11:18:54');
INSERT INTO `log` VALUES (6516, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-25 11:18:56');
INSERT INTO `log` VALUES (6517, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-25 11:19:09');
INSERT INTO `log` VALUES (6518, 'admin', '127.0.1.1', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-01-25 11:19:21');
INSERT INTO `log` VALUES (6519, 'admin', '127.0.1.1', '查询', '查询退住数据', '退住批准', '2023-01-25 11:19:33');
INSERT INTO `log` VALUES (6520, 'admin', '127.0.1.1', '删除', '驳回老人退住', '老人管理-退住管理-退住批准', '2023-01-25 11:21:24');
INSERT INTO `log` VALUES (6521, 'admin', '127.0.1.1', '查询', '查询退住数据', '退住批准', '2023-01-25 11:21:25');
INSERT INTO `log` VALUES (6522, NULL, '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 11:22:01');
INSERT INTO `log` VALUES (6523, NULL, '127.0.1.1', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-25 11:22:17');
INSERT INTO `log` VALUES (6524, NULL, '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:23:19');
INSERT INTO `log` VALUES (6525, NULL, '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:23:23');
INSERT INTO `log` VALUES (6526, NULL, '127.0.1.1', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-01-25 11:24:01');
INSERT INTO `log` VALUES (6527, NULL, '127.0.1.1', '修改', '修改探访信息', '接待管理-探访信息管理', '2023-01-25 11:25:00');
INSERT INTO `log` VALUES (6528, NULL, '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-25 11:25:04');
INSERT INTO `log` VALUES (6529, NULL, '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-25 11:26:59');
INSERT INTO `log` VALUES (6530, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:29:12');
INSERT INTO `log` VALUES (6531, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:29:16');
INSERT INTO `log` VALUES (6532, 'admin', '127.0.1.1', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-25 11:29:17');
INSERT INTO `log` VALUES (6533, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 11:29:20');
INSERT INTO `log` VALUES (6534, 'admin', '127.0.1.1', '更新', '更新收费标准', '资料管理-收费标准设置', '2023-01-25 11:29:28');
INSERT INTO `log` VALUES (6535, 'admin', '127.0.1.1', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-25 11:29:29');
INSERT INTO `log` VALUES (6536, 'admin', '127.0.1.1', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-25 11:29:29');
INSERT INTO `log` VALUES (6537, 'admin', '127.0.1.1', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-25 11:29:29');
INSERT INTO `log` VALUES (6538, 'admin', '127.0.1.1', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-25 11:29:29');
INSERT INTO `log` VALUES (6539, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:29:32');
INSERT INTO `log` VALUES (6540, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:29:32');
INSERT INTO `log` VALUES (6541, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 11:29:32');
INSERT INTO `log` VALUES (6542, NULL, '127.0.1.1', '查询', '查询退住数据', '退住批准', '2023-01-25 11:30:12');
INSERT INTO `log` VALUES (6543, 'admin', '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-25 11:31:46');
INSERT INTO `log` VALUES (6544, 'admin', '127.0.1.1', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-25 11:31:48');
INSERT INTO `log` VALUES (6545, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-25 11:32:38');
INSERT INTO `log` VALUES (6546, NULL, '127.0.1.1', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-01-25 11:32:43');
INSERT INTO `log` VALUES (6547, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-25 11:32:55');
INSERT INTO `log` VALUES (6548, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-25 11:33:00');
INSERT INTO `log` VALUES (6549, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-25 11:33:10');
INSERT INTO `log` VALUES (6550, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-25 11:33:57');
INSERT INTO `log` VALUES (6551, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-25 11:34:06');
INSERT INTO `log` VALUES (6552, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-25 11:34:09');
INSERT INTO `log` VALUES (6553, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-25 11:34:16');
INSERT INTO `log` VALUES (6554, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-25 11:34:17');
INSERT INTO `log` VALUES (6555, 'admin', '127.0.1.1', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-25 11:34:24');
INSERT INTO `log` VALUES (6556, NULL, '127.0.1.1', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-25 11:35:06');
INSERT INTO `log` VALUES (6557, 'admin', '127.0.1.1', '查询', '查询请假数据', '请假批准', '2023-01-25 11:35:21');
INSERT INTO `log` VALUES (6558, 'admin', '127.0.1.1', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2023-01-25 11:35:29');
INSERT INTO `log` VALUES (6559, 'admin', '127.0.1.1', '查询', '查询请假数据', '请假批准', '2023-01-25 11:35:37');
INSERT INTO `log` VALUES (6560, 'admin', '127.0.1.1', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2023-01-25 11:35:52');
INSERT INTO `log` VALUES (6561, 'admin', '127.0.1.1', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-25 11:36:07');
INSERT INTO `log` VALUES (6562, 'admin', '127.0.1.1', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-25 11:36:24');
INSERT INTO `log` VALUES (6563, 'admin', '127.0.1.1', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-01-25 11:37:08');
INSERT INTO `log` VALUES (6564, 'admin', '127.0.1.1', '修改', '修改探访信息', '接待管理-探访信息管理', '2023-01-25 11:37:22');
INSERT INTO `log` VALUES (6565, 'admin', '127.0.1.1', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-01-25 11:37:25');
INSERT INTO `log` VALUES (6566, 'admin', '127.0.1.1', '修改', '修改探访信息', '接待管理-探访信息管理', '2023-01-25 11:37:27');
INSERT INTO `log` VALUES (6567, 'admin', '127.0.1.1', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-01-25 11:37:32');
INSERT INTO `log` VALUES (6568, 'admin', '127.0.1.1', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-01-25 11:37:51');
INSERT INTO `log` VALUES (6569, 'admin', '127.0.1.1', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-01-25 11:37:52');
INSERT INTO `log` VALUES (6570, NULL, '127.0.1.1', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-01-25 11:39:38');
INSERT INTO `log` VALUES (6571, NULL, '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-25 11:40:33');
INSERT INTO `log` VALUES (6572, NULL, '127.0.1.1', '查询', '查询请假数据', '请假批准', '2023-01-25 11:40:51');
INSERT INTO `log` VALUES (6573, NULL, '127.0.1.1', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2023-01-25 11:41:40');
INSERT INTO `log` VALUES (6574, NULL, '127.0.1.1', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-25 11:48:02');
INSERT INTO `log` VALUES (6575, NULL, '127.0.1.1', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2023-01-25 11:56:40');
INSERT INTO `log` VALUES (6576, 'admin', '127.0.1.1', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-01-25 11:57:23');
INSERT INTO `log` VALUES (6577, 'admin', '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-25 12:02:48');
INSERT INTO `log` VALUES (6578, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-25 14:09:12');
INSERT INTO `log` VALUES (6579, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-25 14:09:17');
INSERT INTO `log` VALUES (6580, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-25 14:09:25');
INSERT INTO `log` VALUES (6581, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 14:09:26');
INSERT INTO `log` VALUES (6582, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 14:09:26');
INSERT INTO `log` VALUES (6583, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 14:09:35');
INSERT INTO `log` VALUES (6584, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 14:09:35');
INSERT INTO `log` VALUES (6585, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-25 14:35:04');
INSERT INTO `log` VALUES (6586, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 14:35:04');
INSERT INTO `log` VALUES (6587, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 14:35:04');
INSERT INTO `log` VALUES (6588, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 14:37:10');
INSERT INTO `log` VALUES (6589, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 14:37:10');
INSERT INTO `log` VALUES (6590, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 15:21:18');
INSERT INTO `log` VALUES (6591, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 15:21:18');
INSERT INTO `log` VALUES (6592, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 15:25:39');
INSERT INTO `log` VALUES (6593, 'admin', '127.0.1.1', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-25 15:35:27');
INSERT INTO `log` VALUES (6594, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 15:35:30');
INSERT INTO `log` VALUES (6595, 'admin', '127.0.1.1', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-25 15:35:31');
INSERT INTO `log` VALUES (6596, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 15:35:39');
INSERT INTO `log` VALUES (6597, 'admin', '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-25 15:35:40');
INSERT INTO `log` VALUES (6598, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 15:35:42');
INSERT INTO `log` VALUES (6599, 'admin', '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-25 15:35:45');
INSERT INTO `log` VALUES (6600, 'admin', '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-25 15:36:11');
INSERT INTO `log` VALUES (6601, 'admin', '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-25 15:36:13');
INSERT INTO `log` VALUES (6602, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 15:36:32');
INSERT INTO `log` VALUES (6603, NULL, '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-25 15:40:23');
INSERT INTO `log` VALUES (6604, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 15:44:26');
INSERT INTO `log` VALUES (6605, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 15:44:26');
INSERT INTO `log` VALUES (6606, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 15:44:45');
INSERT INTO `log` VALUES (6607, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 15:44:45');
INSERT INTO `log` VALUES (6608, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 15:44:55');
INSERT INTO `log` VALUES (6609, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 16:05:51');
INSERT INTO `log` VALUES (6610, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 16:08:22');
INSERT INTO `log` VALUES (6611, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-25 16:08:56');
INSERT INTO `log` VALUES (6612, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 16:08:56');
INSERT INTO `log` VALUES (6613, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 16:08:57');
INSERT INTO `log` VALUES (6614, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 16:08:59');
INSERT INTO `log` VALUES (6615, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 16:08:59');
INSERT INTO `log` VALUES (6616, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 16:09:07');
INSERT INTO `log` VALUES (6617, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 16:09:07');
INSERT INTO `log` VALUES (6618, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 16:09:16');
INSERT INTO `log` VALUES (6619, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 16:09:16');
INSERT INTO `log` VALUES (6620, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-25 16:11:17');
INSERT INTO `log` VALUES (6621, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-25 16:11:17');
INSERT INTO `log` VALUES (6622, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-25 16:11:17');
INSERT INTO `log` VALUES (6623, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 16:11:20');
INSERT INTO `log` VALUES (6624, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-25 16:11:26');
INSERT INTO `log` VALUES (6625, 'admin', '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-25 16:22:54');
INSERT INTO `log` VALUES (6626, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-26 12:20:32');
INSERT INTO `log` VALUES (6627, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 12:20:33');
INSERT INTO `log` VALUES (6628, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 12:20:33');
INSERT INTO `log` VALUES (6629, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 12:20:36');
INSERT INTO `log` VALUES (6630, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 12:20:36');
INSERT INTO `log` VALUES (6631, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-26 12:22:03');
INSERT INTO `log` VALUES (6632, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 12:22:04');
INSERT INTO `log` VALUES (6633, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 12:22:04');
INSERT INTO `log` VALUES (6634, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 12:22:13');
INSERT INTO `log` VALUES (6635, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 12:22:13');
INSERT INTO `log` VALUES (6636, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 12:22:22');
INSERT INTO `log` VALUES (6637, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 12:22:22');
INSERT INTO `log` VALUES (6638, 'admin', '192.168.0.106', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 12:23:05');
INSERT INTO `log` VALUES (6639, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 12:23:24');
INSERT INTO `log` VALUES (6640, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 12:23:24');
INSERT INTO `log` VALUES (6641, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 12:23:34');
INSERT INTO `log` VALUES (6642, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 12:23:42');
INSERT INTO `log` VALUES (6643, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 12:23:43');
INSERT INTO `log` VALUES (6644, NULL, '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 12:26:59');
INSERT INTO `log` VALUES (6645, NULL, '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 12:32:52');
INSERT INTO `log` VALUES (6646, NULL, '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 12:33:17');
INSERT INTO `log` VALUES (6647, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 12:57:21');
INSERT INTO `log` VALUES (6648, NULL, '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 13:07:00');
INSERT INTO `log` VALUES (6649, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-26 13:10:13');
INSERT INTO `log` VALUES (6650, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 13:10:21');
INSERT INTO `log` VALUES (6651, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 13:10:21');
INSERT INTO `log` VALUES (6652, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 13:11:28');
INSERT INTO `log` VALUES (6653, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 13:39:19');
INSERT INTO `log` VALUES (6654, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 13:39:25');
INSERT INTO `log` VALUES (6655, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 13:39:26');
INSERT INTO `log` VALUES (6656, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-26 13:39:53');
INSERT INTO `log` VALUES (6657, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-26 13:40:20');
INSERT INTO `log` VALUES (6658, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-26 13:40:28');
INSERT INTO `log` VALUES (6659, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-26 13:40:53');
INSERT INTO `log` VALUES (6660, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-26 13:47:57');
INSERT INTO `log` VALUES (6661, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-26 14:21:56');
INSERT INTO `log` VALUES (6662, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 14:32:59');
INSERT INTO `log` VALUES (6663, 'admin', '192.168.0.106', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-26 14:38:22');
INSERT INTO `log` VALUES (6664, 'admin', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-26 14:41:25');
INSERT INTO `log` VALUES (6665, 'admin', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-26 14:41:41');
INSERT INTO `log` VALUES (6666, 'admin', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-26 14:43:00');
INSERT INTO `log` VALUES (6667, 'admin', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-26 14:43:01');
INSERT INTO `log` VALUES (6668, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-26 15:01:37');
INSERT INTO `log` VALUES (6669, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-26 15:03:41');
INSERT INTO `log` VALUES (6670, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 15:03:41');
INSERT INTO `log` VALUES (6671, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 15:03:41');
INSERT INTO `log` VALUES (6672, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 15:03:43');
INSERT INTO `log` VALUES (6673, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 15:03:43');
INSERT INTO `log` VALUES (6674, 'admin', '192.168.0.106', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-26 15:05:40');
INSERT INTO `log` VALUES (6675, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 15:06:03');
INSERT INTO `log` VALUES (6676, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 15:06:03');
INSERT INTO `log` VALUES (6677, 'admin', '192.168.0.106', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-26 16:22:47');
INSERT INTO `log` VALUES (6678, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 16:22:54');
INSERT INTO `log` VALUES (6679, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 16:28:31');
INSERT INTO `log` VALUES (6680, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 16:29:00');
INSERT INTO `log` VALUES (6681, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 22:37:43');
INSERT INTO `log` VALUES (6682, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 22:38:49');
INSERT INTO `log` VALUES (6683, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 22:40:06');
INSERT INTO `log` VALUES (6684, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 22:40:14');
INSERT INTO `log` VALUES (6685, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 22:40:14');
INSERT INTO `log` VALUES (6686, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-26 22:40:21');
INSERT INTO `log` VALUES (6687, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-01-26 22:40:29');
INSERT INTO `log` VALUES (6688, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-26 22:42:55');
INSERT INTO `log` VALUES (6689, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-01-26 22:43:01');
INSERT INTO `log` VALUES (6690, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 22:47:56');
INSERT INTO `log` VALUES (6691, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 22:54:17');
INSERT INTO `log` VALUES (6692, 'admin', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-26 22:54:38');
INSERT INTO `log` VALUES (6693, 'admin', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-26 22:54:52');
INSERT INTO `log` VALUES (6694, 'admin', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-26 22:55:01');
INSERT INTO `log` VALUES (6695, 'admin', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-26 23:03:35');
INSERT INTO `log` VALUES (6696, 'admin', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-26 23:03:44');
INSERT INTO `log` VALUES (6697, 'admin', '192.168.0.106', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2023-01-26 23:05:02');
INSERT INTO `log` VALUES (6698, 'admin', '192.168.0.106', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2023-01-26 23:05:40');
INSERT INTO `log` VALUES (6699, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 23:06:13');
INSERT INTO `log` VALUES (6700, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-26 23:06:19');
INSERT INTO `log` VALUES (6701, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-26 23:06:19');
INSERT INTO `log` VALUES (6702, 'admin', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-26 23:06:46');
INSERT INTO `log` VALUES (6703, 'admin', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-26 23:06:50');
INSERT INTO `log` VALUES (6704, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 23:09:29');
INSERT INTO `log` VALUES (6705, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-26 23:09:31');
INSERT INTO `log` VALUES (6706, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-26 23:09:38');
INSERT INTO `log` VALUES (6707, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-26 23:09:49');
INSERT INTO `log` VALUES (6708, 'admin', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-26 23:10:20');
INSERT INTO `log` VALUES (6709, 'admin', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-26 23:10:26');
INSERT INTO `log` VALUES (6710, 'admin', '192.168.0.106', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2023-01-26 23:10:48');
INSERT INTO `log` VALUES (6711, 'admin', '192.168.0.106', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-01-26 23:11:42');
INSERT INTO `log` VALUES (6712, 'admin', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-26 23:43:38');
INSERT INTO `log` VALUES (6713, 'admin', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-26 23:43:57');
INSERT INTO `log` VALUES (6714, 'admin', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-26 23:44:03');
INSERT INTO `log` VALUES (6715, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-27 10:36:49');
INSERT INTO `log` VALUES (6716, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 10:36:50');
INSERT INTO `log` VALUES (6717, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 10:36:50');
INSERT INTO `log` VALUES (6718, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 10:36:52');
INSERT INTO `log` VALUES (6719, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 10:36:52');
INSERT INTO `log` VALUES (6720, 'admin', '192.168.0.106', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-01-27 10:39:44');
INSERT INTO `log` VALUES (6721, 'admin', '192.168.0.106', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-01-27 10:40:02');
INSERT INTO `log` VALUES (6722, 'admin', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-27 10:42:55');
INSERT INTO `log` VALUES (6723, 'admin', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-27 10:43:09');
INSERT INTO `log` VALUES (6724, 'admin', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-27 10:43:13');
INSERT INTO `log` VALUES (6725, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-27 11:01:03');
INSERT INTO `log` VALUES (6726, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 11:01:03');
INSERT INTO `log` VALUES (6727, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 11:01:03');
INSERT INTO `log` VALUES (6728, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 11:01:05');
INSERT INTO `log` VALUES (6729, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 11:01:05');
INSERT INTO `log` VALUES (6730, NULL, '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 11:08:02');
INSERT INTO `log` VALUES (6731, NULL, '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 11:08:35');
INSERT INTO `log` VALUES (6732, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-27 11:35:20');
INSERT INTO `log` VALUES (6733, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 11:35:21');
INSERT INTO `log` VALUES (6734, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 11:35:21');
INSERT INTO `log` VALUES (6735, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 11:35:23');
INSERT INTO `log` VALUES (6736, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 11:35:23');
INSERT INTO `log` VALUES (6737, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-27 11:39:43');
INSERT INTO `log` VALUES (6738, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 11:39:43');
INSERT INTO `log` VALUES (6739, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 11:39:43');
INSERT INTO `log` VALUES (6740, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 11:39:45');
INSERT INTO `log` VALUES (6741, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 11:39:45');
INSERT INTO `log` VALUES (6742, 'admin', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-27 11:41:46');
INSERT INTO `log` VALUES (6743, 'admin', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-27 12:04:16');
INSERT INTO `log` VALUES (6744, 'admin', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-27 12:04:19');
INSERT INTO `log` VALUES (6745, 'admin', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-27 12:04:22');
INSERT INTO `log` VALUES (6746, 'admin', '192.168.0.106', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-27 12:04:25');
INSERT INTO `log` VALUES (6747, 'admin', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-27 12:04:28');
INSERT INTO `log` VALUES (6748, 'admin', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-27 12:06:00');
INSERT INTO `log` VALUES (6749, 'admin', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-27 12:17:01');
INSERT INTO `log` VALUES (6750, 'admin', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-27 18:48:42');
INSERT INTO `log` VALUES (6751, 'admin', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-27 18:48:50');
INSERT INTO `log` VALUES (6752, 'admin', '192.168.0.106', '回溯', '回溯入住记录', '老人管理-档案管理-入住档案', '2023-01-27 18:48:57');
INSERT INTO `log` VALUES (6753, 'admin', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-27 18:48:57');
INSERT INTO `log` VALUES (6754, 'admin', '192.168.0.106', '回溯', '回溯入住记录', '老人管理-档案管理-入住档案', '2023-01-27 18:49:05');
INSERT INTO `log` VALUES (6755, 'admin', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-27 18:49:05');
INSERT INTO `log` VALUES (6756, 'admin', '192.168.0.106', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-01-27 18:49:43');
INSERT INTO `log` VALUES (6757, 'admin', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-27 18:49:50');
INSERT INTO `log` VALUES (6758, 'admin', '192.168.0.106', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-27 18:50:05');
INSERT INTO `log` VALUES (6759, 'admin', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-27 18:50:12');
INSERT INTO `log` VALUES (6760, 'admin', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-27 18:51:17');
INSERT INTO `log` VALUES (6761, 'admin', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-01-27 18:51:49');
INSERT INTO `log` VALUES (6762, 'admin', '192.168.0.106', '删除', '删除退住数据', '老人管理-退住管理-退住信息管理', '2023-01-27 18:51:52');
INSERT INTO `log` VALUES (6763, 'admin', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-01-27 18:51:52');
INSERT INTO `log` VALUES (6764, 'admin', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-01-27 18:52:02');
INSERT INTO `log` VALUES (6765, 'admin', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-27 18:52:07');
INSERT INTO `log` VALUES (6766, 'admin', '192.168.0.106', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2023-01-27 18:52:12');
INSERT INTO `log` VALUES (6767, 'admin', '192.168.0.106', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2023-01-27 18:53:46');
INSERT INTO `log` VALUES (6768, 'admin', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-27 18:53:56');
INSERT INTO `log` VALUES (6769, 'admin', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-27 18:54:11');
INSERT INTO `log` VALUES (6770, 'admin', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-27 18:54:22');
INSERT INTO `log` VALUES (6771, 'admin', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-27 18:54:28');
INSERT INTO `log` VALUES (6772, 'admin', '192.168.0.106', '新增', '新增申请信息', '接待管理-申请信息管理', '2023-01-27 18:57:03');
INSERT INTO `log` VALUES (6773, 'admin', '192.168.0.106', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-01-27 18:57:57');
INSERT INTO `log` VALUES (6774, 'admin', '192.168.0.106', '修改', '修改探访信息', '接待管理-探访信息管理', '2023-01-27 18:58:07');
INSERT INTO `log` VALUES (6775, 'admin', '192.168.0.106', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-01-27 18:58:09');
INSERT INTO `log` VALUES (6776, 'admin', '192.168.0.106', '修改', '修改探访信息', '接待管理-探访信息管理', '2023-01-27 18:58:20');
INSERT INTO `log` VALUES (6777, 'admin', '192.168.0.106', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-01-27 18:58:36');
INSERT INTO `log` VALUES (6778, 'admin', '192.168.0.106', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-27 19:01:45');
INSERT INTO `log` VALUES (6779, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 19:01:48');
INSERT INTO `log` VALUES (6780, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 19:01:48');
INSERT INTO `log` VALUES (6781, 'admin', '192.168.0.106', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-27 19:01:57');
INSERT INTO `log` VALUES (6782, 'admin', '192.168.0.106', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-27 19:02:25');
INSERT INTO `log` VALUES (6783, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-27 19:02:27');
INSERT INTO `log` VALUES (6784, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-27 19:02:27');
INSERT INTO `log` VALUES (6785, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-27 19:02:29');
INSERT INTO `log` VALUES (6786, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-01-27 19:02:41');
INSERT INTO `log` VALUES (6787, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-01-27 19:03:04');
INSERT INTO `log` VALUES (6788, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-27 19:03:36');
INSERT INTO `log` VALUES (6789, 'admin', '192.168.0.106', '更新', '更新用户状态', '资料管理-用户管理', '2023-01-27 19:03:39');
INSERT INTO `log` VALUES (6790, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-27 19:03:56');
INSERT INTO `log` VALUES (6791, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:03:59');
INSERT INTO `log` VALUES (6792, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:08');
INSERT INTO `log` VALUES (6793, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:13');
INSERT INTO `log` VALUES (6794, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:19');
INSERT INTO `log` VALUES (6795, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:22');
INSERT INTO `log` VALUES (6796, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:26');
INSERT INTO `log` VALUES (6797, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:27');
INSERT INTO `log` VALUES (6798, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:28');
INSERT INTO `log` VALUES (6799, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:29');
INSERT INTO `log` VALUES (6800, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:29');
INSERT INTO `log` VALUES (6801, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:33');
INSERT INTO `log` VALUES (6802, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:33');
INSERT INTO `log` VALUES (6803, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-27 19:04:34');
INSERT INTO `log` VALUES (6804, NULL, '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-27 23:58:02');
INSERT INTO `log` VALUES (6805, NULL, '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-27 23:58:18');
INSERT INTO `log` VALUES (6806, NULL, '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-27 23:58:22');
INSERT INTO `log` VALUES (6807, NULL, '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-27 23:58:24');
INSERT INTO `log` VALUES (6808, NULL, '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-27 23:58:27');
INSERT INTO `log` VALUES (6809, NULL, '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-27 23:58:31');
INSERT INTO `log` VALUES (6810, NULL, '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-27 23:58:45');
INSERT INTO `log` VALUES (6811, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-28 10:42:51');
INSERT INTO `log` VALUES (6812, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-28 10:43:05');
INSERT INTO `log` VALUES (6813, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-28 10:43:05');
INSERT INTO `log` VALUES (6814, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-28 10:43:05');
INSERT INTO `log` VALUES (6815, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-28 10:43:10');
INSERT INTO `log` VALUES (6816, '2022110127', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-28 10:43:22');
INSERT INTO `log` VALUES (6817, '2022110127', '192.168.0.106', '更新', '更新用户状态', '资料管理-用户管理', '2023-01-28 10:43:24');
INSERT INTO `log` VALUES (6818, '2022110127', '192.168.0.106', '更新', '更新用户状态', '资料管理-用户管理', '2023-01-28 10:43:28');
INSERT INTO `log` VALUES (6819, '2022110127', '192.168.0.106', '更新', '更新用户状态', '资料管理-用户管理', '2023-01-28 10:43:29');
INSERT INTO `log` VALUES (6820, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-28 12:05:48');
INSERT INTO `log` VALUES (6821, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-28 12:05:59');
INSERT INTO `log` VALUES (6822, '2022110127', '192.168.0.106', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-01-28 12:06:01');
INSERT INTO `log` VALUES (6823, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-28 12:06:02');
INSERT INTO `log` VALUES (6824, '2022110127', '192.168.0.106', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-28 12:06:03');
INSERT INTO `log` VALUES (6825, '2022110127', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-28 12:06:07');
INSERT INTO `log` VALUES (6826, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-28 13:58:19');
INSERT INTO `log` VALUES (6827, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-28 13:58:19');
INSERT INTO `log` VALUES (6828, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-28 13:58:20');
INSERT INTO `log` VALUES (6829, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-28 13:58:33');
INSERT INTO `log` VALUES (6830, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-28 13:58:33');
INSERT INTO `log` VALUES (6831, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-28 18:23:02');
INSERT INTO `log` VALUES (6832, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-28 18:29:14');
INSERT INTO `log` VALUES (6833, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-28 18:29:16');
INSERT INTO `log` VALUES (6834, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-28 18:31:15');
INSERT INTO `log` VALUES (6835, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-28 18:31:18');
INSERT INTO `log` VALUES (6836, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-28 18:31:21');
INSERT INTO `log` VALUES (6837, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-28 18:31:45');
INSERT INTO `log` VALUES (6838, '2022110127', '192.168.0.106', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-01-28 18:31:54');
INSERT INTO `log` VALUES (6839, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-28 18:31:59');
INSERT INTO `log` VALUES (6840, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-28 18:32:03');
INSERT INTO `log` VALUES (6841, '2022110127', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-28 18:32:12');
INSERT INTO `log` VALUES (6842, '2022110127', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-28 18:32:47');
INSERT INTO `log` VALUES (6843, '2022110127', '192.168.0.106', '批准', '批准老人入住', '老人管理-入住管理-入住批准', '2023-01-28 18:32:53');
INSERT INTO `log` VALUES (6844, '2022110127', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-28 18:32:53');
INSERT INTO `log` VALUES (6845, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-28 18:32:56');
INSERT INTO `log` VALUES (6846, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-28 18:32:59');
INSERT INTO `log` VALUES (6847, '2022110127', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-28 18:52:37');
INSERT INTO `log` VALUES (6848, '2022110127', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-28 18:52:45');
INSERT INTO `log` VALUES (6849, '2022110127', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-01-28 18:52:49');
INSERT INTO `log` VALUES (6850, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-28 18:56:34');
INSERT INTO `log` VALUES (6851, '2022110127', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-01-28 18:56:40');
INSERT INTO `log` VALUES (6852, '2022110127', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-01-28 18:56:54');
INSERT INTO `log` VALUES (6853, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-28 18:57:02');
INSERT INTO `log` VALUES (6854, '2022110127', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-01-28 18:59:23');
INSERT INTO `log` VALUES (6855, '2022110127', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-01-28 18:59:25');
INSERT INTO `log` VALUES (6856, '2022110127', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-01-28 18:59:29');
INSERT INTO `log` VALUES (6857, '2022110127', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-01-28 18:59:31');
INSERT INTO `log` VALUES (6858, '2022110127', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-01-28 18:59:34');
INSERT INTO `log` VALUES (6859, '2022110127', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-01-28 19:01:08');
INSERT INTO `log` VALUES (6860, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-28 19:02:07');
INSERT INTO `log` VALUES (6861, '2022110127', '192.168.0.106', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2023-01-28 19:02:11');
INSERT INTO `log` VALUES (6862, '2022110127', '192.168.0.106', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2023-01-28 19:02:29');
INSERT INTO `log` VALUES (6863, '2022110127', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-01-28 19:03:33');
INSERT INTO `log` VALUES (6864, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-28 19:11:19');
INSERT INTO `log` VALUES (6865, '2022110127', '192.168.0.106', '回溯', '回溯入住记录', '老人管理-档案管理-入住档案', '2023-01-28 19:11:28');
INSERT INTO `log` VALUES (6866, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-28 19:11:28');
INSERT INTO `log` VALUES (6867, '2022110127', '192.168.0.106', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-01-28 19:11:41');
INSERT INTO `log` VALUES (6868, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-28 19:11:42');
INSERT INTO `log` VALUES (6869, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-28 19:11:53');
INSERT INTO `log` VALUES (6870, '2022110127', '192.168.0.106', '批准', '批准请假', '老人管理-请假管理-请假批准', '2023-01-28 19:11:58');
INSERT INTO `log` VALUES (6871, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-28 19:11:58');
INSERT INTO `log` VALUES (6872, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-28 19:12:13');
INSERT INTO `log` VALUES (6873, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-28 19:12:16');
INSERT INTO `log` VALUES (6874, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-28 19:17:50');
INSERT INTO `log` VALUES (6875, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-28 19:19:30');
INSERT INTO `log` VALUES (6876, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-28 19:19:51');
INSERT INTO `log` VALUES (6877, '2022110127', '192.168.0.106', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-28 20:12:03');
INSERT INTO `log` VALUES (6878, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-28 20:12:05');
INSERT INTO `log` VALUES (6879, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-28 20:12:05');
INSERT INTO `log` VALUES (6880, '2022110127', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-28 20:12:08');
INSERT INTO `log` VALUES (6881, '2022110127', '192.168.0.106', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-01-28 20:12:11');
INSERT INTO `log` VALUES (6882, '2022110127', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-28 20:12:14');
INSERT INTO `log` VALUES (6883, '2022110127', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-01-28 20:12:32');
INSERT INTO `log` VALUES (6884, '2022110127', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-01-28 20:12:36');
INSERT INTO `log` VALUES (6885, '2022110127', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-28 20:12:48');
INSERT INTO `log` VALUES (6886, '2022110127', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-01-28 20:12:49');
INSERT INTO `log` VALUES (6887, '2022110127', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-01-28 20:12:50');
INSERT INTO `log` VALUES (6888, '2022110127', '192.168.0.106', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-01-28 20:12:54');
INSERT INTO `log` VALUES (6889, '2022110127', '192.168.0.106', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-28 20:13:38');
INSERT INTO `log` VALUES (6890, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-28 20:14:03');
INSERT INTO `log` VALUES (6891, '2022110127', '192.168.0.106', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-28 20:14:24');
INSERT INTO `log` VALUES (6892, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-28 20:15:14');
INSERT INTO `log` VALUES (6893, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-28 20:15:18');
INSERT INTO `log` VALUES (6894, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-28 20:15:27');
INSERT INTO `log` VALUES (6895, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-28 20:15:35');
INSERT INTO `log` VALUES (6896, '2022110127', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-28 20:15:38');
INSERT INTO `log` VALUES (6897, '2022110127', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-28 20:15:40');
INSERT INTO `log` VALUES (6898, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-28 20:15:50');
INSERT INTO `log` VALUES (6899, '2022110127', '192.168.0.106', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-28 20:25:36');
INSERT INTO `log` VALUES (6900, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-28 20:26:00');
INSERT INTO `log` VALUES (6901, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-28 20:26:02');
INSERT INTO `log` VALUES (6902, '2022110127', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-28 20:26:07');
INSERT INTO `log` VALUES (6903, '2022110127', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-28 20:26:12');
INSERT INTO `log` VALUES (6904, '2022110127', '192.168.0.106', '增加', '增加健康等级', '健康管理-健康等级', '2023-01-28 20:26:13');
INSERT INTO `log` VALUES (6905, '2022110127', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-28 20:26:14');
INSERT INTO `log` VALUES (6906, '2022110127', '192.168.0.106', '新增', '新增疾病预警信息', '健康管理-疾病预警', '2023-01-28 20:26:25');
INSERT INTO `log` VALUES (6907, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-28 20:26:41');
INSERT INTO `log` VALUES (6908, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-28 20:27:36');
INSERT INTO `log` VALUES (6909, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-28 20:27:36');
INSERT INTO `log` VALUES (6910, '2022110127', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-28 20:28:10');
INSERT INTO `log` VALUES (6911, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-28 20:31:54');
INSERT INTO `log` VALUES (6912, '2022110127', '192.168.0.106', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-01-28 20:31:57');
INSERT INTO `log` VALUES (6913, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-28 20:31:58');
INSERT INTO `log` VALUES (6914, '2022110127', '192.168.0.106', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-28 20:31:59');
INSERT INTO `log` VALUES (6915, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-30 10:09:19');
INSERT INTO `log` VALUES (6916, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-30 10:09:20');
INSERT INTO `log` VALUES (6917, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-30 10:09:20');
INSERT INTO `log` VALUES (6918, '2022110127', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-01-30 11:09:45');
INSERT INTO `log` VALUES (6919, '2022110127', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-01-30 11:09:49');
INSERT INTO `log` VALUES (6920, '2022110127', '192.168.0.106', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-01-30 11:09:55');
INSERT INTO `log` VALUES (6921, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-30 11:09:57');
INSERT INTO `log` VALUES (6922, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-30 11:09:59');
INSERT INTO `log` VALUES (6923, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-30 11:10:01');
INSERT INTO `log` VALUES (6924, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-30 11:10:03');
INSERT INTO `log` VALUES (6925, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-30 11:10:08');
INSERT INTO `log` VALUES (6926, '2022110127', '192.168.0.106', '删除', '删除请假数据', '老人管理-请假管理-请假批准', '2023-01-30 11:10:40');
INSERT INTO `log` VALUES (6927, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-30 11:10:40');
INSERT INTO `log` VALUES (6928, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-30 11:17:21');
INSERT INTO `log` VALUES (6929, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-30 11:17:26');
INSERT INTO `log` VALUES (6930, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-30 11:17:39');
INSERT INTO `log` VALUES (6931, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-30 15:35:46');
INSERT INTO `log` VALUES (6932, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-30 15:47:13');
INSERT INTO `log` VALUES (6933, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-30 15:47:14');
INSERT INTO `log` VALUES (6934, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-30 15:51:57');
INSERT INTO `log` VALUES (6935, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:32:32');
INSERT INTO `log` VALUES (6936, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-30 16:32:32');
INSERT INTO `log` VALUES (6937, '2022110127', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-30 16:32:41');
INSERT INTO `log` VALUES (6938, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:32:53');
INSERT INTO `log` VALUES (6939, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-30 16:32:55');
INSERT INTO `log` VALUES (6940, '2022110127', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-30 16:32:57');
INSERT INTO `log` VALUES (6941, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:33:00');
INSERT INTO `log` VALUES (6942, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:33:11');
INSERT INTO `log` VALUES (6943, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:33:34');
INSERT INTO `log` VALUES (6944, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-30 16:33:42');
INSERT INTO `log` VALUES (6945, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-30 16:33:49');
INSERT INTO `log` VALUES (6946, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-30 16:33:53');
INSERT INTO `log` VALUES (6947, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:34:04');
INSERT INTO `log` VALUES (6948, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-30 16:34:06');
INSERT INTO `log` VALUES (6949, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:34:07');
INSERT INTO `log` VALUES (6950, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-30 16:34:16');
INSERT INTO `log` VALUES (6951, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-30 16:34:34');
INSERT INTO `log` VALUES (6952, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-30 16:34:38');
INSERT INTO `log` VALUES (6953, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:34:51');
INSERT INTO `log` VALUES (6954, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-30 16:34:52');
INSERT INTO `log` VALUES (6955, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-30 16:34:58');
INSERT INTO `log` VALUES (6956, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:35:05');
INSERT INTO `log` VALUES (6957, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-01-30 16:35:07');
INSERT INTO `log` VALUES (6958, '2022110127', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-30 16:35:30');
INSERT INTO `log` VALUES (6959, '2022110127', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-30 16:35:35');
INSERT INTO `log` VALUES (6960, '2022110127', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-30 16:35:41');
INSERT INTO `log` VALUES (6961, '2022110127', '192.168.0.106', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-30 16:36:02');
INSERT INTO `log` VALUES (6962, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:37:30');
INSERT INTO `log` VALUES (6963, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:37:33');
INSERT INTO `log` VALUES (6964, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-30 16:37:37');
INSERT INTO `log` VALUES (6965, '2022110127', '192.168.0.106', '查询', '查询健康档案信息', '健康管理-老人健康', '2023-01-30 16:50:14');
INSERT INTO `log` VALUES (6966, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-30 18:30:58');
INSERT INTO `log` VALUES (6967, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-30 18:31:12');
INSERT INTO `log` VALUES (6968, '2022110127', '192.168.0.106', '添加', '添加请假数据', '请假批准', '2023-01-30 18:31:23');
INSERT INTO `log` VALUES (6969, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-30 18:31:23');
INSERT INTO `log` VALUES (6970, '2022110127', '192.168.0.106', '添加', '添加请假数据', '请假批准', '2023-01-30 18:31:39');
INSERT INTO `log` VALUES (6971, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-30 18:31:39');
INSERT INTO `log` VALUES (6972, '2022110127', '192.168.0.106', '批准', '批准请假', '老人管理-请假管理-请假批准', '2023-01-30 18:31:47');
INSERT INTO `log` VALUES (6973, '2022110127', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-01-30 18:31:47');
INSERT INTO `log` VALUES (6974, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-30 18:31:51');
INSERT INTO `log` VALUES (6975, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-30 18:31:54');
INSERT INTO `log` VALUES (6976, '2022110127', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-01-30 18:42:43');
INSERT INTO `log` VALUES (6977, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-01-30 20:13:34');
INSERT INTO `log` VALUES (6978, '2022110127', '192.168.0.106', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-01-30 20:13:40');
INSERT INTO `log` VALUES (6979, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-30 20:13:51');
INSERT INTO `log` VALUES (6980, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-30 20:13:51');
INSERT INTO `log` VALUES (6981, '2022110127', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-30 20:13:53');
INSERT INTO `log` VALUES (6982, '2022110127', '192.168.0.106', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-01-30 20:14:03');
INSERT INTO `log` VALUES (6983, '2022110127', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-01-30 20:31:26');
INSERT INTO `log` VALUES (6984, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-31 09:59:55');
INSERT INTO `log` VALUES (6985, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 09:59:56');
INSERT INTO `log` VALUES (6986, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 09:59:56');
INSERT INTO `log` VALUES (6987, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-31 12:37:16');
INSERT INTO `log` VALUES (6988, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 12:37:16');
INSERT INTO `log` VALUES (6989, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 12:37:16');
INSERT INTO `log` VALUES (6990, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-01-31 15:22:10');
INSERT INTO `log` VALUES (6991, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 15:22:10');
INSERT INTO `log` VALUES (6992, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 15:22:10');
INSERT INTO `log` VALUES (6993, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-31 15:29:08');
INSERT INTO `log` VALUES (6994, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 15:29:08');
INSERT INTO `log` VALUES (6995, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 15:29:08');
INSERT INTO `log` VALUES (6996, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 15:29:15');
INSERT INTO `log` VALUES (6997, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 15:29:15');
INSERT INTO `log` VALUES (6998, NULL, '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 15:37:32');
INSERT INTO `log` VALUES (6999, NULL, '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 15:38:32');
INSERT INTO `log` VALUES (7000, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-31 15:58:20');
INSERT INTO `log` VALUES (7001, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 15:58:20');
INSERT INTO `log` VALUES (7002, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 15:58:20');
INSERT INTO `log` VALUES (7003, 'admin', '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-31 15:58:47');
INSERT INTO `log` VALUES (7004, 'admin', '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-01-31 15:58:50');
INSERT INTO `log` VALUES (7005, 'admin', '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-31 15:58:51');
INSERT INTO `log` VALUES (7006, 'admin', '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-01-31 15:58:52');
INSERT INTO `log` VALUES (7007, 'admin', '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-31 15:58:54');
INSERT INTO `log` VALUES (7008, 'admin', '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-31 15:59:00');
INSERT INTO `log` VALUES (7009, 'admin', '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-31 15:59:04');
INSERT INTO `log` VALUES (7010, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 15:59:31');
INSERT INTO `log` VALUES (7011, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 15:59:31');
INSERT INTO `log` VALUES (7012, 'admin', '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-31 15:59:33');
INSERT INTO `log` VALUES (7013, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 15:59:36');
INSERT INTO `log` VALUES (7014, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 15:59:36');
INSERT INTO `log` VALUES (7015, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-31 15:59:43');
INSERT INTO `log` VALUES (7016, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 15:59:44');
INSERT INTO `log` VALUES (7017, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 15:59:44');
INSERT INTO `log` VALUES (7018, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-31 15:59:45');
INSERT INTO `log` VALUES (7019, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-31 15:59:47');
INSERT INTO `log` VALUES (7020, 'admin', '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-31 15:59:48');
INSERT INTO `log` VALUES (7021, NULL, '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-31 16:00:12');
INSERT INTO `log` VALUES (7022, NULL, '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-01-31 16:01:32');
INSERT INTO `log` VALUES (7023, NULL, '127.0.1.1', '查询', '查询所有菜品信息', '资料管理-食谱管理', '2023-01-31 16:07:00');
INSERT INTO `log` VALUES (7024, NULL, '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-01-31 16:07:54');
INSERT INTO `log` VALUES (7025, NULL, '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-01-31 16:09:00');
INSERT INTO `log` VALUES (7026, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 16:12:19');
INSERT INTO `log` VALUES (7027, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 16:12:19');
INSERT INTO `log` VALUES (7028, '2022110127', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-01-31 16:12:21');
INSERT INTO `log` VALUES (7029, '2022110127', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-01-31 16:12:25');
INSERT INTO `log` VALUES (7030, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-31 17:14:23');
INSERT INTO `log` VALUES (7031, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-01-31 17:14:23');
INSERT INTO `log` VALUES (7032, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 17:14:23');
INSERT INTO `log` VALUES (7033, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 17:14:34');
INSERT INTO `log` VALUES (7034, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 17:14:36');
INSERT INTO `log` VALUES (7035, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-01-31 17:14:37');
INSERT INTO `log` VALUES (7036, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-01-31 20:09:37');
INSERT INTO `log` VALUES (7037, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-31 20:37:25');
INSERT INTO `log` VALUES (7038, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-31 20:37:30');
INSERT INTO `log` VALUES (7039, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-01-31 20:37:31');
INSERT INTO `log` VALUES (7040, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-01-31 20:37:39');
INSERT INTO `log` VALUES (7041, '2022110127', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-01-31 20:37:47');
INSERT INTO `log` VALUES (7042, '2022110127', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-01-31 20:37:48');
INSERT INTO `log` VALUES (7043, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-01 00:02:04');
INSERT INTO `log` VALUES (7044, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-01 00:02:05');
INSERT INTO `log` VALUES (7045, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-01 00:02:05');
INSERT INTO `log` VALUES (7046, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-01 00:25:06');
INSERT INTO `log` VALUES (7047, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-01 00:25:06');
INSERT INTO `log` VALUES (7048, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-01 00:25:06');
INSERT INTO `log` VALUES (7049, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-01 09:58:13');
INSERT INTO `log` VALUES (7050, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-01 09:58:14');
INSERT INTO `log` VALUES (7051, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-01 09:58:14');
INSERT INTO `log` VALUES (7052, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-02-01 15:09:05');
INSERT INTO `log` VALUES (7053, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-01 15:09:05');
INSERT INTO `log` VALUES (7054, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-01 15:09:05');
INSERT INTO `log` VALUES (7055, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-01 15:09:08');
INSERT INTO `log` VALUES (7056, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-01 15:09:08');
INSERT INTO `log` VALUES (7057, NULL, '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-01 15:17:38');
INSERT INTO `log` VALUES (7058, NULL, '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-01 15:18:33');
INSERT INTO `log` VALUES (7059, 'admin', '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-01 15:25:29');
INSERT INTO `log` VALUES (7060, 'admin', '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-01 15:25:35');
INSERT INTO `log` VALUES (7061, 'admin', '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-01 15:25:37');
INSERT INTO `log` VALUES (7062, 'admin', '127.0.1.1', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-02-01 15:25:42');
INSERT INTO `log` VALUES (7063, 'admin', '127.0.1.1', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-02-01 15:25:45');
INSERT INTO `log` VALUES (7064, NULL, '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-01 15:31:13');
INSERT INTO `log` VALUES (7065, NULL, '127.0.1.1', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-02-01 15:35:07');
INSERT INTO `log` VALUES (7066, NULL, '127.0.1.1', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-02-01 15:37:09');
INSERT INTO `log` VALUES (7067, 'admin', '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-01 21:39:18');
INSERT INTO `log` VALUES (7068, 'admin', '127.0.1.1', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-02-01 21:39:26');
INSERT INTO `log` VALUES (7069, 'admin', '127.0.1.1', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-02-01 21:39:40');
INSERT INTO `log` VALUES (7070, 'admin', '127.0.1.1', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-02-01 21:39:43');
INSERT INTO `log` VALUES (7071, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-02-01 21:39:48');
INSERT INTO `log` VALUES (7072, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-02-01 21:39:49');
INSERT INTO `log` VALUES (7073, 'admin', '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-02-01 21:39:59');
INSERT INTO `log` VALUES (7074, 'admin', '127.0.1.1', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-02-01 21:40:20');
INSERT INTO `log` VALUES (7075, 'admin', '127.0.1.1', '查询', '查询退住数据', '退住批准', '2023-02-01 21:40:26');
INSERT INTO `log` VALUES (7076, 'admin', '127.0.1.1', '查询', '查询请假数据', '请假批准', '2023-02-01 21:40:30');
INSERT INTO `log` VALUES (7077, 'admin', '127.0.1.1', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2023-02-01 21:40:32');
INSERT INTO `log` VALUES (7078, 'admin', '127.0.1.1', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2023-02-01 21:40:36');
INSERT INTO `log` VALUES (7079, NULL, '127.0.1.1', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-02-01 21:41:25');
INSERT INTO `log` VALUES (7080, NULL, '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-入住批准', '2023-02-01 21:44:56');
INSERT INTO `log` VALUES (7081, NULL, '127.0.1.1', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-02-01 21:48:52');
INSERT INTO `log` VALUES (7082, NULL, '127.0.1.1', '查询', '查询退住数据', '退住批准', '2023-02-01 21:49:07');
INSERT INTO `log` VALUES (7083, NULL, '127.0.1.1', '查询', '查询请假数据', '请假批准', '2023-02-01 21:50:55');
INSERT INTO `log` VALUES (7084, NULL, '127.0.1.1', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2023-02-01 21:51:04');
INSERT INTO `log` VALUES (7085, NULL, '127.0.1.1', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2023-02-01 21:51:38');
INSERT INTO `log` VALUES (7086, NULL, '127.0.1.1', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2023-02-01 22:06:14');
INSERT INTO `log` VALUES (7087, 'admin', '127.0.1.1', '查询', '查询退住数据', '退住批准', '2023-02-01 22:07:00');
INSERT INTO `log` VALUES (7088, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-01 22:07:33');
INSERT INTO `log` VALUES (7089, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-01 22:07:33');
INSERT INTO `log` VALUES (7090, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-01 22:07:33');
INSERT INTO `log` VALUES (7091, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-01 22:07:35');
INSERT INTO `log` VALUES (7092, NULL, '127.0.1.1', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-02-01 22:07:50');
INSERT INTO `log` VALUES (7093, '2022110127', '192.168.0.106', '修改', '修改探访信息', '接待管理-探访信息管理', '2023-02-01 22:48:27');
INSERT INTO `log` VALUES (7094, '2022110127', '192.168.0.106', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-02-01 22:48:41');
INSERT INTO `log` VALUES (7095, '2022110127', '192.168.0.106', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-02-01 22:49:05');
INSERT INTO `log` VALUES (7096, '2022110127', '192.168.0.106', '修改', '修改探访信息', '接待管理-探访信息管理', '2023-02-01 22:49:06');
INSERT INTO `log` VALUES (7097, '2022110127', '192.168.0.106', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-02-01 22:49:11');
INSERT INTO `log` VALUES (7098, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-02-01 22:50:06');
INSERT INTO `log` VALUES (7099, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-02-01 22:50:12');
INSERT INTO `log` VALUES (7100, '2022110127', '192.168.0.106', '查询', '查询健康指数信息', '健康管理-健康指数', '2023-02-01 22:50:22');
INSERT INTO `log` VALUES (7101, '2022110127', '192.168.0.106', '查询', '查询健康指数标准', '健康管理-健康指数标准', '2023-02-01 22:50:24');
INSERT INTO `log` VALUES (7102, '2022110127', '192.168.0.106', '查询', '查询健康等级', '健康管理-健康等级', '2023-02-01 22:50:26');
INSERT INTO `log` VALUES (7103, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-02-01 22:50:32');
INSERT INTO `log` VALUES (7104, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-02-01 22:50:46');
INSERT INTO `log` VALUES (7105, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-02-01 22:50:54');
INSERT INTO `log` VALUES (7106, 'admin', '127.0.1.1', '查询', '查询退住数据', '退住批准', '2023-02-01 22:56:39');
INSERT INTO `log` VALUES (7107, 'admin', '127.0.1.1', '查询', '查询退住数据', '退住批准', '2023-02-01 22:56:45');
INSERT INTO `log` VALUES (7108, 'admin', '127.0.1.1', '查询', '查询退住数据', '退住批准', '2023-02-01 22:56:56');
INSERT INTO `log` VALUES (7109, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-02 09:42:52');
INSERT INTO `log` VALUES (7110, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 09:42:52');
INSERT INTO `log` VALUES (7111, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 09:42:52');
INSERT INTO `log` VALUES (7112, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 09:42:58');
INSERT INTO `log` VALUES (7113, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 09:42:58');
INSERT INTO `log` VALUES (7114, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-02-02 09:47:02');
INSERT INTO `log` VALUES (7115, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 09:47:02');
INSERT INTO `log` VALUES (7116, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 09:47:02');
INSERT INTO `log` VALUES (7117, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 09:47:04');
INSERT INTO `log` VALUES (7118, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 09:47:04');
INSERT INTO `log` VALUES (7119, NULL, '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 09:47:37');
INSERT INTO `log` VALUES (7120, NULL, '127.0.1.1', '查询', '查询退住记录', '老人管理-档案管理-退住档案', '2023-02-02 11:42:53');
INSERT INTO `log` VALUES (7121, 'admin', '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 19:00:07');
INSERT INTO `log` VALUES (7122, 'admin', '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 19:00:33');
INSERT INTO `log` VALUES (7123, 'admin', '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-02-02 19:00:35');
INSERT INTO `log` VALUES (7124, 'admin', '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 19:00:37');
INSERT INTO `log` VALUES (7125, 'admin', '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 19:00:41');
INSERT INTO `log` VALUES (7126, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 19:00:53');
INSERT INTO `log` VALUES (7127, 'admin', '192.168.0.106', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-02-02 19:00:56');
INSERT INTO `log` VALUES (7128, 'admin', '192.168.0.106', '更新', '更新房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-02-02 19:01:23');
INSERT INTO `log` VALUES (7129, 'admin', '192.168.0.106', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-02-02 19:01:23');
INSERT INTO `log` VALUES (7130, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 19:01:34');
INSERT INTO `log` VALUES (7131, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 19:01:38');
INSERT INTO `log` VALUES (7132, NULL, '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 19:02:06');
INSERT INTO `log` VALUES (7133, NULL, '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-02-02 19:08:00');
INSERT INTO `log` VALUES (7134, NULL, '127.0.1.1', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 19:13:43');
INSERT INTO `log` VALUES (7135, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-02-02 20:18:25');
INSERT INTO `log` VALUES (7136, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 20:18:25');
INSERT INTO `log` VALUES (7137, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 20:18:25');
INSERT INTO `log` VALUES (7138, 'admin', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-02-02 20:18:28');
INSERT INTO `log` VALUES (7139, NULL, '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-02-02 20:23:01');
INSERT INTO `log` VALUES (7140, NULL, '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 20:33:22');
INSERT INTO `log` VALUES (7141, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-02 20:38:57');
INSERT INTO `log` VALUES (7142, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 20:38:57');
INSERT INTO `log` VALUES (7143, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 20:38:57');
INSERT INTO `log` VALUES (7144, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 20:38:59');
INSERT INTO `log` VALUES (7145, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 20:38:59');
INSERT INTO `log` VALUES (7146, 'admin', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-02-02 21:22:35');
INSERT INTO `log` VALUES (7147, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-02-02 21:22:55');
INSERT INTO `log` VALUES (7148, 'admin', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 21:22:56');
INSERT INTO `log` VALUES (7149, 'admin', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 21:22:56');
INSERT INTO `log` VALUES (7150, 'admin', '127.0.1.1', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 21:22:58');
INSERT INTO `log` VALUES (7151, 'admin', '192.168.0.106', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-02-02 22:21:23');
INSERT INTO `log` VALUES (7152, 'admin', '192.168.0.106', '查询', '查询请假档案', '老人管理-档案管理-请假档案', '2023-02-02 22:36:39');
INSERT INTO `log` VALUES (7153, 'admin', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-02-02 22:36:46');
INSERT INTO `log` VALUES (7154, 'admin', '192.168.0.106', '增加', '增加退住数据', '老人管理-退住管理-退住信息管理', '2023-02-02 22:36:54');
INSERT INTO `log` VALUES (7155, 'admin', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-02-02 22:36:54');
INSERT INTO `log` VALUES (7156, 'admin', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-02-02 22:37:03');
INSERT INTO `log` VALUES (7157, 'admin', '192.168.0.106', '查询', '查询宿舍信息', '老人管理-宿舍管理-入住分配', '2023-02-02 22:37:09');
INSERT INTO `log` VALUES (7158, 'admin', '192.168.0.106', '新增', '新增申请信息', '接待管理-申请信息管理', '2023-02-02 22:38:37');
INSERT INTO `log` VALUES (7159, 'admin', '192.168.0.106', '新增', '新增申请信息', '接待管理-申请信息管理', '2023-02-02 22:38:44');
INSERT INTO `log` VALUES (7160, 'admin', '192.168.0.106', '新增', '新增申请信息', '接待管理-申请信息管理', '2023-02-02 22:38:50');
INSERT INTO `log` VALUES (7161, 'admin', '192.168.0.106', '新增', '新增申请信息', '接待管理-申请信息管理', '2023-02-02 22:39:02');
INSERT INTO `log` VALUES (7162, 'admin', '192.168.0.106', '新增', '新增申请信息', '接待管理-申请信息管理', '2023-02-02 22:39:15');
INSERT INTO `log` VALUES (7163, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 22:42:57');
INSERT INTO `log` VALUES (7164, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 22:42:57');
INSERT INTO `log` VALUES (7165, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 22:43:09');
INSERT INTO `log` VALUES (7166, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 22:43:09');
INSERT INTO `log` VALUES (7167, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 22:43:09');
INSERT INTO `log` VALUES (7168, 'admin', '192.168.0.106', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-02-02 22:43:16');
INSERT INTO `log` VALUES (7169, 'admin', '192.168.0.106', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-02-02 22:43:32');
INSERT INTO `log` VALUES (7170, 'admin', '192.168.0.106', '更新', '更新收费标准', '资料管理-收费标准设置', '2023-02-02 22:43:32');
INSERT INTO `log` VALUES (7171, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-02-02 22:44:07');
INSERT INTO `log` VALUES (7172, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-02 22:44:13');
INSERT INTO `log` VALUES (7173, 'admin', '192.168.0.106', '添加', '添加用户', '资料管理-用户管理', '2023-02-02 22:44:26');
INSERT INTO `log` VALUES (7174, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-02 22:44:26');
INSERT INTO `log` VALUES (7175, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 22:45:21');
INSERT INTO `log` VALUES (7176, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 22:45:21');
INSERT INTO `log` VALUES (7177, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:45:26');
INSERT INTO `log` VALUES (7178, 'admin', '192.168.0.106', '添加', '添加楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:45:40');
INSERT INTO `log` VALUES (7179, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:45:41');
INSERT INTO `log` VALUES (7180, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:45:44');
INSERT INTO `log` VALUES (7181, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:45:47');
INSERT INTO `log` VALUES (7182, 'admin', '192.168.0.106', '添加', '添加楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:45:59');
INSERT INTO `log` VALUES (7183, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:46:00');
INSERT INTO `log` VALUES (7184, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:46:03');
INSERT INTO `log` VALUES (7185, 'admin', '192.168.0.106', '更新', '更新楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:46:19');
INSERT INTO `log` VALUES (7186, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:46:20');
INSERT INTO `log` VALUES (7187, 'admin', '192.168.0.106', '更新', '更新楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:46:36');
INSERT INTO `log` VALUES (7188, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:46:37');
INSERT INTO `log` VALUES (7189, 'admin', '192.168.0.106', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-02-02 22:46:56');
INSERT INTO `log` VALUES (7190, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-02-02 22:47:12');
INSERT INTO `log` VALUES (7191, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-02 22:47:18');
INSERT INTO `log` VALUES (7192, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-02-02 22:47:22');
INSERT INTO `log` VALUES (7193, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 22:47:26');
INSERT INTO `log` VALUES (7194, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 22:47:33');
INSERT INTO `log` VALUES (7195, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 22:48:14');
INSERT INTO `log` VALUES (7196, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 22:48:42');
INSERT INTO `log` VALUES (7197, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 22:48:45');
INSERT INTO `log` VALUES (7198, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 22:48:47');
INSERT INTO `log` VALUES (7199, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-02-02 22:49:03');
INSERT INTO `log` VALUES (7200, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-02 23:07:19');
INSERT INTO `log` VALUES (7201, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-02 23:07:19');
INSERT INTO `log` VALUES (7202, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 23:07:22');
INSERT INTO `log` VALUES (7203, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 23:07:26');
INSERT INTO `log` VALUES (7204, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 23:09:51');
INSERT INTO `log` VALUES (7205, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-02-02 23:09:55');
INSERT INTO `log` VALUES (7206, 'admin', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-02 23:10:32');
INSERT INTO `log` VALUES (7207, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 23:20:20');
INSERT INTO `log` VALUES (7208, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-02-02 23:20:22');
INSERT INTO `log` VALUES (7209, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-02 23:20:27');
INSERT INTO `log` VALUES (7210, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 23:20:34');
INSERT INTO `log` VALUES (7211, 'admin', '192.168.0.106', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-02-02 23:21:29');
INSERT INTO `log` VALUES (7212, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-02 23:21:32');
INSERT INTO `log` VALUES (7213, 'admin', '192.168.0.106', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-02-02 23:29:25');
INSERT INTO `log` VALUES (7214, 'admin', '192.168.0.106', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-02-02 23:48:14');
INSERT INTO `log` VALUES (7215, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-03 10:07:14');
INSERT INTO `log` VALUES (7216, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-03 10:07:15');
INSERT INTO `log` VALUES (7217, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-03 10:07:15');
INSERT INTO `log` VALUES (7218, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-03 10:07:18');
INSERT INTO `log` VALUES (7219, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-03 10:08:20');
INSERT INTO `log` VALUES (7220, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-03 10:08:48');
INSERT INTO `log` VALUES (7221, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-02-03 10:14:50');
INSERT INTO `log` VALUES (7222, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-03 10:14:56');
INSERT INTO `log` VALUES (7223, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-03 10:15:11');
INSERT INTO `log` VALUES (7224, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-03 10:15:50');
INSERT INTO `log` VALUES (7225, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-03 10:15:50');
INSERT INTO `log` VALUES (7226, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-03 10:15:53');
INSERT INTO `log` VALUES (7227, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-02-03 10:16:02');
INSERT INTO `log` VALUES (7228, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-02-03 10:16:09');
INSERT INTO `log` VALUES (7229, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-02-03 12:26:13');
INSERT INTO `log` VALUES (7230, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-03 12:26:17');
INSERT INTO `log` VALUES (7231, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-03 12:26:20');
INSERT INTO `log` VALUES (7232, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-03 12:27:18');
INSERT INTO `log` VALUES (7233, 'admin', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-03 13:58:29');
INSERT INTO `log` VALUES (7234, 'admin', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-02-03 13:58:31');
INSERT INTO `log` VALUES (7235, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-03 14:43:13');
INSERT INTO `log` VALUES (7236, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-03 14:43:20');
INSERT INTO `log` VALUES (7237, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-03 14:47:18');
INSERT INTO `log` VALUES (7238, 'admin', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-03 14:47:19');
INSERT INTO `log` VALUES (7239, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-03 14:47:31');
INSERT INTO `log` VALUES (7240, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-02-03 14:47:33');
INSERT INTO `log` VALUES (7241, 'admin', '192.168.0.106', '查询', '查询基础设施', '资料管理-设施管理-基础设施管理', '2023-02-03 14:48:44');
INSERT INTO `log` VALUES (7242, 'admin', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-02-03 14:48:45');
INSERT INTO `log` VALUES (7243, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-04 00:29:11');
INSERT INTO `log` VALUES (7244, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-04 00:29:11');
INSERT INTO `log` VALUES (7245, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-04 00:29:11');
INSERT INTO `log` VALUES (7246, 'admin', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-02-04 00:29:14');
INSERT INTO `log` VALUES (7247, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-06 13:05:18');
INSERT INTO `log` VALUES (7248, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-06 13:05:19');
INSERT INTO `log` VALUES (7249, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-06 13:05:19');
INSERT INTO `log` VALUES (7250, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-06 13:05:49');
INSERT INTO `log` VALUES (7251, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-06 13:05:49');
INSERT INTO `log` VALUES (7252, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 13:40:28');
INSERT INTO `log` VALUES (7253, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 13:40:28');
INSERT INTO `log` VALUES (7254, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 13:40:28');
INSERT INTO `log` VALUES (7255, 'admin', '192.168.0.106', '修改', '修改探访信息', '接待管理-探访信息管理', '2023-02-08 13:42:38');
INSERT INTO `log` VALUES (7256, 'admin', '192.168.0.106', '修改', '修改巡查信息', '接待管理-巡查信息管理', '2023-02-08 13:42:44');
INSERT INTO `log` VALUES (7257, 'admin', '192.168.0.106', '修改', '修改捐赠信息', '接待管理-捐赠信息管理', '2023-02-08 13:42:58');
INSERT INTO `log` VALUES (7258, 'admin', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-02-08 13:43:51');
INSERT INTO `log` VALUES (7259, 'admin', '192.168.0.106', '删除', '删除请假数据', '老人管理-请假管理-请假批准', '2023-02-08 13:44:20');
INSERT INTO `log` VALUES (7260, 'admin', '192.168.0.106', '查询', '查询请假数据', '请假批准', '2023-02-08 13:44:20');
INSERT INTO `log` VALUES (7261, 'admin', '192.168.0.106', '查询', '查询老人回院数据', '老人管理-请假管理-回院批准', '2023-02-08 13:46:33');
INSERT INTO `log` VALUES (7262, 'admin', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-02-08 13:46:40');
INSERT INTO `log` VALUES (7263, 'admin', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-02-08 13:46:46');
INSERT INTO `log` VALUES (7264, 'admin', '192.168.0.106', '删除', '驳回老人退住', '老人管理-退住管理-退住批准', '2023-02-08 13:47:08');
INSERT INTO `log` VALUES (7265, 'admin', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-02-08 13:47:08');
INSERT INTO `log` VALUES (7266, 'admin', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-02-08 13:47:20');
INSERT INTO `log` VALUES (7267, 'admin', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-02-08 13:47:28');
INSERT INTO `log` VALUES (7268, 'admin', '192.168.0.106', '查询', '查询退住数据', '老人管理-退住管理-退住信息管理', '2023-02-08 13:47:43');
INSERT INTO `log` VALUES (7269, 'admin', '192.168.0.106', '查询', '查询退住数据', '退住批准', '2023-02-08 13:47:54');
INSERT INTO `log` VALUES (7270, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-08 13:57:05');
INSERT INTO `log` VALUES (7271, 'admin', '192.168.0.106', '添加', '添加用户', '资料管理-用户管理', '2023-02-08 13:57:40');
INSERT INTO `log` VALUES (7272, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-08 13:57:40');
INSERT INTO `log` VALUES (7273, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-08 14:02:31');
INSERT INTO `log` VALUES (7274, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-08 14:02:39');
INSERT INTO `log` VALUES (7275, 'admin', '192.168.0.106', '查询', '复合查询用户', '资料管理-用户管理', '2023-02-08 14:02:49');
INSERT INTO `log` VALUES (7276, 'admin', '192.168.0.106', '查询', '复合查询用户', '资料管理-用户管理', '2023-02-08 14:02:50');
INSERT INTO `log` VALUES (7277, 'admin', '192.168.0.106', '查询', '复合查询用户', '资料管理-用户管理', '2023-02-08 14:03:01');
INSERT INTO `log` VALUES (7278, 'admin', '192.168.0.106', '查询', '复合查询用户', '资料管理-用户管理', '2023-02-08 14:03:02');
INSERT INTO `log` VALUES (7279, 'admin', '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 15:29:37');
INSERT INTO `log` VALUES (7280, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 15:29:38');
INSERT INTO `log` VALUES (7281, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 15:29:38');
INSERT INTO `log` VALUES (7282, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 15:29:46');
INSERT INTO `log` VALUES (7283, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 15:29:46');
INSERT INTO `log` VALUES (7284, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 15:31:31');
INSERT INTO `log` VALUES (7285, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 15:31:31');
INSERT INTO `log` VALUES (7286, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 15:42:51');
INSERT INTO `log` VALUES (7287, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 15:42:51');
INSERT INTO `log` VALUES (7288, 'admin', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-08 16:21:49');
INSERT INTO `log` VALUES (7289, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 16:25:08');
INSERT INTO `log` VALUES (7290, '2', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 16:25:08');
INSERT INTO `log` VALUES (7291, '2', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 16:25:08');
INSERT INTO `log` VALUES (7292, '2', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 16:25:52');
INSERT INTO `log` VALUES (7293, '2', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 16:25:52');
INSERT INTO `log` VALUES (7294, '2', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 16:52:43');
INSERT INTO `log` VALUES (7295, '2', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 16:52:43');
INSERT INTO `log` VALUES (7296, '2', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 16:52:47');
INSERT INTO `log` VALUES (7297, '2', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 16:52:47');
INSERT INTO `log` VALUES (7298, '2', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 16:57:54');
INSERT INTO `log` VALUES (7299, '2', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 16:57:54');
INSERT INTO `log` VALUES (7300, '2', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:00:51');
INSERT INTO `log` VALUES (7301, '2', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:00:51');
INSERT INTO `log` VALUES (7302, '2', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:01:00');
INSERT INTO `log` VALUES (7303, '2', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:01:00');
INSERT INTO `log` VALUES (7304, '2', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:01:25');
INSERT INTO `log` VALUES (7305, '2', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:01:25');
INSERT INTO `log` VALUES (7306, '2', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-08 20:01:28');
INSERT INTO `log` VALUES (7307, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:23:13');
INSERT INTO `log` VALUES (7308, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:23:13');
INSERT INTO `log` VALUES (7309, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:23:13');
INSERT INTO `log` VALUES (7310, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:25:24');
INSERT INTO `log` VALUES (7311, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:25:24');
INSERT INTO `log` VALUES (7312, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:25:36');
INSERT INTO `log` VALUES (7313, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:25:36');
INSERT INTO `log` VALUES (7314, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:25:57');
INSERT INTO `log` VALUES (7315, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:25:58');
INSERT INTO `log` VALUES (7316, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:26:08');
INSERT INTO `log` VALUES (7317, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:26:56');
INSERT INTO `log` VALUES (7318, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:27:21');
INSERT INTO `log` VALUES (7319, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:27:22');
INSERT INTO `log` VALUES (7320, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:27:22');
INSERT INTO `log` VALUES (7321, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:27:22');
INSERT INTO `log` VALUES (7322, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:27:22');
INSERT INTO `log` VALUES (7323, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:27:26');
INSERT INTO `log` VALUES (7324, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:27:26');
INSERT INTO `log` VALUES (7325, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:27:26');
INSERT INTO `log` VALUES (7326, '2022110127', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-08 20:27:42');
INSERT INTO `log` VALUES (7327, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:30:19');
INSERT INTO `log` VALUES (7328, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:30:20');
INSERT INTO `log` VALUES (7329, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:30:20');
INSERT INTO `log` VALUES (7330, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:31:38');
INSERT INTO `log` VALUES (7331, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:31:38');
INSERT INTO `log` VALUES (7332, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:31:38');
INSERT INTO `log` VALUES (7333, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:32:35');
INSERT INTO `log` VALUES (7334, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:32:35');
INSERT INTO `log` VALUES (7335, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:33:12');
INSERT INTO `log` VALUES (7336, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:33:13');
INSERT INTO `log` VALUES (7337, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:33:31');
INSERT INTO `log` VALUES (7338, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:33:32');
INSERT INTO `log` VALUES (7339, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:34:35');
INSERT INTO `log` VALUES (7340, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:34:36');
INSERT INTO `log` VALUES (7341, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:34:36');
INSERT INTO `log` VALUES (7342, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:34:36');
INSERT INTO `log` VALUES (7343, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:34:36');
INSERT INTO `log` VALUES (7344, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:34:37');
INSERT INTO `log` VALUES (7345, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:34:41');
INSERT INTO `log` VALUES (7346, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:36:51');
INSERT INTO `log` VALUES (7347, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:36:51');
INSERT INTO `log` VALUES (7348, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:36:51');
INSERT INTO `log` VALUES (7349, '2022110127', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-08 20:37:01');
INSERT INTO `log` VALUES (7350, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:37:31');
INSERT INTO `log` VALUES (7351, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:37:31');
INSERT INTO `log` VALUES (7352, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:37:38');
INSERT INTO `log` VALUES (7353, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:37:38');
INSERT INTO `log` VALUES (7354, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:39:41');
INSERT INTO `log` VALUES (7355, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:39:41');
INSERT INTO `log` VALUES (7356, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:39:41');
INSERT INTO `log` VALUES (7357, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:39:52');
INSERT INTO `log` VALUES (7358, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:39:52');
INSERT INTO `log` VALUES (7359, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:39:52');
INSERT INTO `log` VALUES (7360, '2022110127', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-08 20:41:59');
INSERT INTO `log` VALUES (7361, '2022110127', '192.168.0.106', '更新', '更新用户状态', '资料管理-用户管理', '2023-02-08 20:42:14');
INSERT INTO `log` VALUES (7362, '2022110127', '192.168.0.106', '更新', '更新用户状态', '资料管理-用户管理', '2023-02-08 20:42:15');
INSERT INTO `log` VALUES (7363, '2022110127', '192.168.0.106', '更新', '更新用户状态', '资料管理-用户管理', '2023-02-08 20:42:19');
INSERT INTO `log` VALUES (7364, '2022110127', '192.168.0.106', '更新', '更新用户状态', '资料管理-用户管理', '2023-02-08 20:42:19');
INSERT INTO `log` VALUES (7365, '2022110127', '192.168.0.106', '更新', '更新用户状态', '资料管理-用户管理', '2023-02-08 20:42:24');
INSERT INTO `log` VALUES (7366, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:43:03');
INSERT INTO `log` VALUES (7367, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 20:43:03');
INSERT INTO `log` VALUES (7368, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 20:43:03');
INSERT INTO `log` VALUES (7369, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 20:55:25');
INSERT INTO `log` VALUES (7370, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 21:00:29');
INSERT INTO `log` VALUES (7371, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 21:01:02');
INSERT INTO `log` VALUES (7372, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:01:02');
INSERT INTO `log` VALUES (7373, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:01:02');
INSERT INTO `log` VALUES (7374, 'admin', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-02-08 21:01:09');
INSERT INTO `log` VALUES (7375, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 21:09:28');
INSERT INTO `log` VALUES (7376, 'admin', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:09:28');
INSERT INTO `log` VALUES (7377, 'admin', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:09:28');
INSERT INTO `log` VALUES (7378, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 21:09:38');
INSERT INTO `log` VALUES (7379, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 21:11:20');
INSERT INTO `log` VALUES (7380, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:11:20');
INSERT INTO `log` VALUES (7381, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:11:20');
INSERT INTO `log` VALUES (7382, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:11:33');
INSERT INTO `log` VALUES (7383, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:11:33');
INSERT INTO `log` VALUES (7384, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:11:40');
INSERT INTO `log` VALUES (7385, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:11:40');
INSERT INTO `log` VALUES (7386, '2022110127', '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 21:19:51');
INSERT INTO `log` VALUES (7387, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:19:51');
INSERT INTO `log` VALUES (7388, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:19:51');
INSERT INTO `log` VALUES (7389, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:22:16');
INSERT INTO `log` VALUES (7390, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:22:16');
INSERT INTO `log` VALUES (7391, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:22:30');
INSERT INTO `log` VALUES (7392, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:22:30');
INSERT INTO `log` VALUES (7393, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:23:23');
INSERT INTO `log` VALUES (7394, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:23:23');
INSERT INTO `log` VALUES (7395, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:24:59');
INSERT INTO `log` VALUES (7396, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:24:59');
INSERT INTO `log` VALUES (7397, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-08 21:25:26');
INSERT INTO `log` VALUES (7398, '2022110127', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-08 21:26:33');
INSERT INTO `log` VALUES (7399, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 21:30:04');
INSERT INTO `log` VALUES (7400, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 21:30:04');
INSERT INTO `log` VALUES (7401, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 22:30:31');
INSERT INTO `log` VALUES (7402, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 22:30:31');
INSERT INTO `log` VALUES (7403, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 22:30:31');
INSERT INTO `log` VALUES (7404, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 22:33:00');
INSERT INTO `log` VALUES (7405, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 22:33:00');
INSERT INTO `log` VALUES (7406, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 22:33:00');
INSERT INTO `log` VALUES (7407, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 22:34:13');
INSERT INTO `log` VALUES (7408, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 22:34:13');
INSERT INTO `log` VALUES (7409, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 22:34:13');
INSERT INTO `log` VALUES (7410, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 22:36:50');
INSERT INTO `log` VALUES (7411, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 22:36:51');
INSERT INTO `log` VALUES (7412, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 22:36:51');
INSERT INTO `log` VALUES (7413, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 22:39:27');
INSERT INTO `log` VALUES (7414, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 22:39:27');
INSERT INTO `log` VALUES (7415, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 22:39:27');
INSERT INTO `log` VALUES (7416, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 22:42:19');
INSERT INTO `log` VALUES (7417, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 22:42:19');
INSERT INTO `log` VALUES (7418, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 22:42:19');
INSERT INTO `log` VALUES (7419, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-08 22:44:43');
INSERT INTO `log` VALUES (7420, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-08 22:44:43');
INSERT INTO `log` VALUES (7421, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-08 22:44:43');
INSERT INTO `log` VALUES (7422, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-09 11:57:57');
INSERT INTO `log` VALUES (7423, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-09 11:57:57');
INSERT INTO `log` VALUES (7424, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-09 11:57:57');
INSERT INTO `log` VALUES (7425, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-11 10:30:26');
INSERT INTO `log` VALUES (7426, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-11 10:30:28');
INSERT INTO `log` VALUES (7427, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-11 10:30:28');
INSERT INTO `log` VALUES (7428, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-11 11:37:47');
INSERT INTO `log` VALUES (7429, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-11 11:37:47');
INSERT INTO `log` VALUES (7430, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-11 11:37:47');
INSERT INTO `log` VALUES (7431, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-12 11:34:52');
INSERT INTO `log` VALUES (7432, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-12 11:34:53');
INSERT INTO `log` VALUES (7433, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-12 11:34:53');
INSERT INTO `log` VALUES (7434, '2022110127', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-02-12 13:07:49');
INSERT INTO `log` VALUES (7435, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-02-12 13:07:52');
INSERT INTO `log` VALUES (7436, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-02-12 13:08:08');
INSERT INTO `log` VALUES (7437, '2022110127', '192.168.0.106', '查询', '查询体检信息', '健康管理-体检信息', '2023-02-12 13:08:12');
INSERT INTO `log` VALUES (7438, '2022110127', '192.168.0.106', '新增', '新增申请信息', '接待管理-申请信息管理', '2023-02-12 15:05:59');
INSERT INTO `log` VALUES (7439, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-12 15:12:02');
INSERT INTO `log` VALUES (7440, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-12 15:12:02');
INSERT INTO `log` VALUES (7441, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-12 15:12:02');
INSERT INTO `log` VALUES (7442, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-12 15:12:14');
INSERT INTO `log` VALUES (7443, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-12 15:12:14');
INSERT INTO `log` VALUES (7444, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-12 15:12:19');
INSERT INTO `log` VALUES (7445, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-12 15:12:19');
INSERT INTO `log` VALUES (7446, '112004150129', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-12 15:12:21');
INSERT INTO `log` VALUES (7447, '112004150129', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-12 15:33:05');
INSERT INTO `log` VALUES (7448, '112004150129', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-12 15:33:10');
INSERT INTO `log` VALUES (7449, '112004150129', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-02-12 15:33:16');
INSERT INTO `log` VALUES (7450, '112004150129', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-02-12 16:21:22');
INSERT INTO `log` VALUES (7451, '112004150129', '192.168.0.106', '查询', '查询老人信息', '健康管理-老人信息', '2023-02-12 16:21:28');
INSERT INTO `log` VALUES (7452, '112004150129', '192.168.0.106', '添加', '添加体检信息', '健康管理-体检信息', '2023-02-12 16:21:32');
INSERT INTO `log` VALUES (7453, '112004150129', '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-12 17:04:28');
INSERT INTO `log` VALUES (7454, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-12 17:05:09');
INSERT INTO `log` VALUES (7455, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-12 17:05:09');
INSERT INTO `log` VALUES (7456, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-12 17:05:09');
INSERT INTO `log` VALUES (7457, '112004150129', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-12 17:05:11');
INSERT INTO `log` VALUES (7458, '112004150129', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-02-12 17:51:14');
INSERT INTO `log` VALUES (7459, '112004150129', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-02-12 17:51:16');
INSERT INTO `log` VALUES (7460, '112004150129', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-12 17:51:17');
INSERT INTO `log` VALUES (7461, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-12 17:51:21');
INSERT INTO `log` VALUES (7462, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-12 17:51:21');
INSERT INTO `log` VALUES (7463, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-12 18:19:26');
INSERT INTO `log` VALUES (7464, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-12 18:19:27');
INSERT INTO `log` VALUES (7465, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-12 18:19:27');
INSERT INTO `log` VALUES (7466, '2022110127', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-基础设施管理', '2023-02-12 19:12:25');
INSERT INTO `log` VALUES (7467, '2022110127', '192.168.0.106', '查询', '查询所有用户', '资料管理-用户管理', '2023-02-12 19:13:26');
INSERT INTO `log` VALUES (7468, '2022110127', '192.168.0.106', '查询', '查询角色', '资料管理-权限管理', '2023-02-12 19:13:27');
INSERT INTO `log` VALUES (7469, '2022110127', '192.168.0.106', '查询', '查询操作日志', '资料管理-操作日志', '2023-02-12 19:13:28');
INSERT INTO `log` VALUES (7470, '2022110127', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-12 19:13:32');
INSERT INTO `log` VALUES (7471, '2022110127', '192.168.0.106', '查询', '查询所有宿舍', '资料管理-设施管理-宿舍管理', '2023-02-12 19:13:39');
INSERT INTO `log` VALUES (7472, '2022110127', '192.168.0.106', '查询', '查询所有楼宇信息', '资料管理-设施管理-楼房管理', '2023-02-12 19:42:45');
INSERT INTO `log` VALUES (7473, '2022110127', '192.168.0.106', '查询', '查询房间信息', '资料管理-设施管理-楼房管理-房间管理', '2023-02-12 19:42:50');
INSERT INTO `log` VALUES (7474, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-12 23:22:32');
INSERT INTO `log` VALUES (7475, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-12 23:22:32');
INSERT INTO `log` VALUES (7476, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-12 23:22:32');
INSERT INTO `log` VALUES (7477, '112004150129', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-12 23:22:34');
INSERT INTO `log` VALUES (7478, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-13 13:04:28');
INSERT INTO `log` VALUES (7479, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-13 13:04:28');
INSERT INTO `log` VALUES (7480, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-13 13:04:28');
INSERT INTO `log` VALUES (7481, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-13 13:04:43');
INSERT INTO `log` VALUES (7482, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-13 13:04:43');
INSERT INTO `log` VALUES (7483, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-13 13:04:50');
INSERT INTO `log` VALUES (7484, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-13 13:04:50');
INSERT INTO `log` VALUES (7485, '112004150129', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-13 13:04:51');
INSERT INTO `log` VALUES (7486, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-14 13:42:04');
INSERT INTO `log` VALUES (7487, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-14 13:42:04');
INSERT INTO `log` VALUES (7488, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-14 13:42:04');
INSERT INTO `log` VALUES (7489, '112004150129', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-14 13:42:07');
INSERT INTO `log` VALUES (7490, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-15 11:01:24');
INSERT INTO `log` VALUES (7491, '2022110127', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-15 11:01:25');
INSERT INTO `log` VALUES (7492, '2022110127', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-15 11:01:25');
INSERT INTO `log` VALUES (7493, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-15 14:07:56');
INSERT INTO `log` VALUES (7494, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-15 14:07:56');
INSERT INTO `log` VALUES (7495, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-15 14:07:56');
INSERT INTO `log` VALUES (7496, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-15 14:07:59');
INSERT INTO `log` VALUES (7497, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-15 14:07:59');
INSERT INTO `log` VALUES (7498, '112004150129', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-15 14:08:01');
INSERT INTO `log` VALUES (7499, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-16 23:15:05');
INSERT INTO `log` VALUES (7500, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-16 23:15:06');
INSERT INTO `log` VALUES (7501, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-16 23:15:06');
INSERT INTO `log` VALUES (7502, '112004150129', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-16 23:15:09');
INSERT INTO `log` VALUES (7503, NULL, '192.168.0.106', '登录', '登录系统', '登录模块', '2023-02-18 11:00:05');
INSERT INTO `log` VALUES (7504, '112004150129', '192.168.0.106', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-02-18 11:00:06');
INSERT INTO `log` VALUES (7505, '112004150129', '192.168.0.106', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-02-18 11:00:06');
INSERT INTO `log` VALUES (7506, '112004150129', '192.168.0.106', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-02-18 11:00:16');
INSERT INTO `log` VALUES (7507, NULL, '10.50.17.181', '登录', '登录系统', '登录模块', '2023-03-01 13:37:43');
INSERT INTO `log` VALUES (7508, '112004150129', '10.50.17.181', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-01 13:37:44');
INSERT INTO `log` VALUES (7509, '112004150129', '10.50.17.181', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-01 13:37:44');
INSERT INTO `log` VALUES (7510, '112004150129', '10.50.17.181', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-01 13:37:54');
INSERT INTO `log` VALUES (7511, '112004150129', '10.50.17.181', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-01 13:37:54');
INSERT INTO `log` VALUES (7512, '112004150129', '10.50.17.181', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-03-01 13:37:55');
INSERT INTO `log` VALUES (7513, NULL, '10.2.9.113', '登录', '登录系统', '登录模块', '2023-03-09 19:28:48');
INSERT INTO `log` VALUES (7514, '112004150129', '10.2.9.113', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 19:28:49');
INSERT INTO `log` VALUES (7515, '112004150129', '10.2.9.113', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 19:28:49');
INSERT INTO `log` VALUES (7516, '112004150129', '10.2.9.113', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 19:28:56');
INSERT INTO `log` VALUES (7517, '112004150129', '10.2.9.113', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 19:28:56');
INSERT INTO `log` VALUES (7518, '112004150129', '10.2.9.113', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-03-09 19:28:59');
INSERT INTO `log` VALUES (7519, '112004150129', '10.2.9.113', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-03-09 20:43:31');
INSERT INTO `log` VALUES (7520, '112004150129', '10.2.9.113', '查询', '查询入住记录', '老人管理-档案管理-入住档案', '2023-03-09 20:43:34');
INSERT INTO `log` VALUES (7521, '112004150129', '10.2.9.113', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-03-09 20:43:58');
INSERT INTO `log` VALUES (7522, '112004150129', '10.2.9.113', '查询', '查询老人入住信息', '老人管理-入住管理-老人入住信息管理', '2023-03-09 20:44:07');
INSERT INTO `log` VALUES (7523, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:15:13');
INSERT INTO `log` VALUES (7524, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:15:19');
INSERT INTO `log` VALUES (7525, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:15:23');
INSERT INTO `log` VALUES (7526, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:15:30');
INSERT INTO `log` VALUES (7527, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:15:38');
INSERT INTO `log` VALUES (7528, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:17:26');
INSERT INTO `log` VALUES (7529, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:17:30');
INSERT INTO `log` VALUES (7530, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:17:31');
INSERT INTO `log` VALUES (7531, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:17:37');
INSERT INTO `log` VALUES (7532, '112004150129', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 23:17:37');
INSERT INTO `log` VALUES (7533, '112004150129', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:17:37');
INSERT INTO `log` VALUES (7534, '112004150129', '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-03-09 23:17:43');
INSERT INTO `log` VALUES (7535, '112004150129', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:17:46');
INSERT INTO `log` VALUES (7536, '112004150129', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 23:17:46');
INSERT INTO `log` VALUES (7537, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:17:46');
INSERT INTO `log` VALUES (7538, '112004150129', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 23:17:49');
INSERT INTO `log` VALUES (7539, '112004150129', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:17:49');
INSERT INTO `log` VALUES (7540, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:17:50');
INSERT INTO `log` VALUES (7541, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:18:00');
INSERT INTO `log` VALUES (7542, NULL, '127.0.1.1', '登录', '登录系统', '登录模块', '2023-03-09 23:18:04');
INSERT INTO `log` VALUES (7543, '112004150129', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 23:18:48');
INSERT INTO `log` VALUES (7544, '112004150129', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:18:48');
INSERT INTO `log` VALUES (7545, '112004150129', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 23:19:04');
INSERT INTO `log` VALUES (7546, '112004150129', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:19:04');
INSERT INTO `log` VALUES (7547, '112004150129', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 23:19:08');
INSERT INTO `log` VALUES (7548, '112004150129', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:19:08');
INSERT INTO `log` VALUES (7549, '112004150129', '127.0.1.1', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-03-09 23:19:10');
INSERT INTO `log` VALUES (7550, '112004150129', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:19:22');
INSERT INTO `log` VALUES (7551, '112004150129', '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 23:19:22');
INSERT INTO `log` VALUES (7552, '112004150129', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:19:25');
INSERT INTO `log` VALUES (7553, '112004150129', '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:19:27');
INSERT INTO `log` VALUES (7554, '112004150129', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-03-09 23:19:31');
INSERT INTO `log` VALUES (7555, '112004150129', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-03-09 23:19:40');
INSERT INTO `log` VALUES (7556, '112004150129', '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-03-09 23:20:01');
INSERT INTO `log` VALUES (7557, '112004150129', '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-03-09 23:20:09');
INSERT INTO `log` VALUES (7558, NULL, '127.0.1.1', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-03-09 23:47:37');
INSERT INTO `log` VALUES (7559, NULL, '127.0.1.1', '查询', '查询角色', '资料管理-权限管理', '2023-03-09 23:49:07');
INSERT INTO `log` VALUES (7560, NULL, '127.0.1.1', '查询', '查询收费标准', '资料管理-收费标准设置', '2023-03-09 23:49:08');
INSERT INTO `log` VALUES (7561, NULL, '127.0.1.1', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-09 23:51:58');
INSERT INTO `log` VALUES (7562, NULL, '127.0.1.1', '查询', '查询操作日志', '资料管理-操作日志', '2023-03-09 23:52:28');
INSERT INTO `log` VALUES (7563, NULL, '127.0.1.1', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-09 23:52:28');
INSERT INTO `log` VALUES (7564, NULL, '10.2.8.238', '登录', '登录系统', '登录模块', '2023-03-10 10:50:09');
INSERT INTO `log` VALUES (7565, '112004150129', '10.2.8.238', '查询', '查询所有食谱信息', '资料管理-食谱管理', '2023-03-10 10:50:10');
INSERT INTO `log` VALUES (7566, '112004150129', '10.2.8.238', '查询', '查询所有食谱详细信息', '资料管理-食谱管理', '2023-03-10 10:50:10');
INSERT INTO `log` VALUES (7567, '112004150129', '10.2.8.238', '查询', '查询老人信息', '老人管理-档案管理-老人档案', '2023-03-10 10:50:12');

-- ----------------------------
-- Table structure for login_vestige
-- ----------------------------
DROP TABLE IF EXISTS `login_vestige`;
CREATE TABLE `login_vestige`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `mac` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `error` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `num` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of login_vestige
-- ----------------------------
INSERT INTO `login_vestige` VALUES (1, 'admin', '2022-11-23 09:06:22', '192.168.43.164', '70-66-55-6C-33-29', '123密码有误', 1);
INSERT INTO `login_vestige` VALUES (2, 'admin', '2022-11-23 09:10:34', '192.168.43.164', '70-66-55-6C-33-29', '1234密码有误', 2);
INSERT INTO `login_vestige` VALUES (3, 'admin', '2022-11-23 09:16:11', '192.168.43.164', '70-66-55-6c-33-29', '密码有误：12', 3);
INSERT INTO `login_vestige` VALUES (4, 'admin', '2022-11-23 09:33:26', '192.168.43.164', '70-66-55-6c-33-29', '密码有误：123', 4);
INSERT INTO `login_vestige` VALUES (5, 'admin', '2023-01-17 20:24:56', '127.0.1.1', NULL, '密码有误：12346', 5);

-- ----------------------------
-- Table structure for material
-- ----------------------------
DROP TABLE IF EXISTS `material`;
CREATE TABLE `material`  (
  `m_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `m_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `m_specification` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `m_unit` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `m_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `m_Location` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `m_quantity` float NULL DEFAULT NULL,
  `m_suppliers` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `m_highest` float NULL DEFAULT NULL,
  `m_lowest` float NULL DEFAULT NULL,
  PRIMARY KEY (`m_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of material
-- ----------------------------
INSERT INTO `material` VALUES ('M0000001', '口罩', '五十只装', '袋', '消耗品', '仓库1号', 300, '淮安医疗器械有限公司', 10000, 1);
INSERT INTO `material` VALUES ('M0000002', '床', '2.0m*1.6m', '床', '消耗品', '仓库2号', 116, '淮安器械有限公司', 100, 1);
INSERT INTO `material` VALUES ('M0000003', '轮椅', '650mm*400mm', '个', '复用品', '仓库3号', -3, '淮安器械有限公司', 100, 1);
INSERT INTO `material` VALUES ('M0000004', '血压计', '10-280mmHg', '个', '复用品', '仓库1号', 90, '淮安器械有限公司', 100, 1);
INSERT INTO `material` VALUES ('M0000005', '地毯', '1m*0.6m', '张', '消耗品', '仓库4号', 36, '淮安地毯', 122, 0);
INSERT INTO `material` VALUES ('M0000006', '洗手液', '600ml', '瓶', '消耗品', '仓库1号', 200, '淮安生活用品有限公司', 1000, 1);
INSERT INTO `material` VALUES ('M0000007', '酒精', '250ml', '瓶', '日用品', '仓库1号', 200, '淮安有限公司', 1000, 1);
INSERT INTO `material` VALUES ('M0000008', '棉被', '1.8m*1.2m', '床', '日用品', '仓库2号', 120, '淮安有限公司', 1222, 1);
INSERT INTO `material` VALUES ('M0000009', '新冠抗原', '10个', '盒子', '消耗品', '仓库4号', 18, '淮安药业', 100, 0);

-- ----------------------------
-- Table structure for material_detail
-- ----------------------------
DROP TABLE IF EXISTS `material_detail`;
CREATE TABLE `material_detail`  (
  `inbound_number` int(0) NOT NULL AUTO_INCREMENT,
  `material_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `material_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warehousing_quantity` float NULL DEFAULT NULL,
  `warehousing_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `production_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `m_supplier` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shelf_life` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `in_operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '张强',
  PRIMARY KEY (`inbound_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000015 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of material_detail
-- ----------------------------
INSERT INTO `material_detail` VALUES (10000005, 'M0000003', '口罩', 476, '2022-11-13  11:56:25', '2022', '淮安医疗器械有限公司', '2023', '梁杰煜');
INSERT INTO `material_detail` VALUES (10000006, 'M0000002', '床', 80, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '2022111413刘盛栋');
INSERT INTO `material_detail` VALUES (10000007, 'M0000002', '床', 46, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '姚嘉铖');
INSERT INTO `material_detail` VALUES (10000008, 'M0000005', '血压计', 72, '2022-12-29  22:22:42', '2022', '淮安器械有限公司', '2025', '戴乐');
INSERT INTO `material_detail` VALUES (10000009, 'M0000002', '床', 100, '2022-11-15  10:58:28', '2020', '淮安器械有限公司', '2080', '张强');
INSERT INTO `material_detail` VALUES (10000010, 'M0000006', '洗手液', 0, '2022-11-15  22:26:01', '2022', '淮安生活用品有限公司', '2024', '张强');
INSERT INTO `material_detail` VALUES (10000011, 'M0000003', '轮椅', 72, '2022-11-16  08:44:32', '2022', '淮安器械有限公司', '2024', '刘一帆');
INSERT INTO `material_detail` VALUES (10000012, 'M0000009', '新冠抗原', 0, '2022-12-29  18:14:33', '2022-03-23', '淮安药业', '2024-01-01', '张强');
INSERT INTO `material_detail` VALUES (10000013, 'M0000009', '新冠抗原', 8, '2022-12-29  18:18:14', '2022-04-06', '淮安药业', '2024-05-08', '许天');
INSERT INTO `material_detail` VALUES (10000014, 'M0000001', '口罩', 0, '2023-01-26  16:29:38', '', '淮安医疗器械有限公司', '', '张强');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu`  (
  `id` int(0) NOT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name_zh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `icon_cls` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `parent_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES (1, '/index', 'index', '老人管理', 'el-icon-aligrandpa', '', NULL);
INSERT INTO `menu` VALUES (2, '/index', 'index', '健康管理', 'el-icon-alijiankang', '', NULL);
INSERT INTO `menu` VALUES (3, '/index', 'index', '接待管理', 'el-icon-aligongwujiedai', '', NULL);
INSERT INTO `menu` VALUES (4, '/index', 'index', '人事管理', 'el-icon-user-solid', '', NULL);
INSERT INTO `menu` VALUES (5, '/index', 'index', '费用管理', 'el-icon-alicaiwu', '', NULL);
INSERT INTO `menu` VALUES (6, '/index', 'index', '仓库管理', 'el-icon-alicangku', '', NULL);
INSERT INTO `menu` VALUES (7, '/index', 'index', '资料管理', 'el-icon-document', '', NULL);
INSERT INTO `menu` VALUES (8, '/priceSet', 'PriceSet', '收费标准设置', '', 'DM/PriceSet.vue', 7);
INSERT INTO `menu` VALUES (9, '/recipeIndex', 'RecipeIndex', '食谱管理', NULL, NULL, 7);
INSERT INTO `menu` VALUES (10, '/7-3', '7-3', '设施管理', NULL, NULL, 7);
INSERT INTO `menu` VALUES (11, '/buildingIndex', 'BuildingIndex', '楼房管理', NULL, NULL, 10);
INSERT INTO `menu` VALUES (12, '/dorm', 'Dorm', '宿舍管理', NULL, NULL, 10);
INSERT INTO `menu` VALUES (13, '/infrastructure', 'Infrastructure', '基础设施管理', NULL, NULL, 10);
INSERT INTO `menu` VALUES (14, '/user', 'User', '用户管理', NULL, NULL, 7);
INSERT INTO `menu` VALUES (15, '/permissions', 'Permissions', '权限管理', NULL, NULL, 7);
INSERT INTO `menu` VALUES (16, '/log', 'Log', '操作日志', NULL, NULL, 7);
INSERT INTO `menu` VALUES (17, '/1-1', '1-1', '档案管理', NULL, NULL, 1);
INSERT INTO `menu` VALUES (18, '/Elderly', 'Elderly', '老人档案', NULL, NULL, 17);
INSERT INTO `menu` VALUES (19, '/InArchives', 'InArchives', '入院档案', NULL, NULL, 17);
INSERT INTO `menu` VALUES (20, '/OutArchives', 'OutArchives', '退院档案', NULL, NULL, 17);
INSERT INTO `menu` VALUES (21, '/LeaveArchives', 'LeaveArchives', '请假档案', NULL, NULL, 17);
INSERT INTO `menu` VALUES (22, '/1-2', '1-2', '入院管理', NULL, NULL, 1);
INSERT INTO `menu` VALUES (23, '/CheckIn', 'CheckIn', '入院信息管理', NULL, NULL, 22);
INSERT INTO `menu` VALUES (24, '/Approval', 'Approval', '入院批准', NULL, NULL, 22);
INSERT INTO `menu` VALUES (25, '/1-3', '1-3', '退院管理', NULL, NULL, 1);
INSERT INTO `menu` VALUES (26, '/Retreat', 'Retreat', '退院信息管理', NULL, NULL, 25);
INSERT INTO `menu` VALUES (27, '/RApproval', 'RApproval', '退院批准', NULL, NULL, 25);
INSERT INTO `menu` VALUES (28, '/1-4', '1-4', '请假管理', NULL, NULL, 1);
INSERT INTO `menu` VALUES (29, '/LeaveApproval', 'LeaveApproval', '请假批准', NULL, NULL, 28);
INSERT INTO `menu` VALUES (30, '/BackApproval', 'BackApproval', '回院批准', NULL, NULL, 28);
INSERT INTO `menu` VALUES (31, '/Dormitory', 'Dormitory', '宿舍分配', NULL, NULL, 1);
INSERT INTO `menu` VALUES (32, '/healthInput', 'HealthInput', '体检数据管理', NULL, NULL, 2);
INSERT INTO `menu` VALUES (33, '/healthIndex', 'HealthIndex', '健康指数分析', NULL, NULL, 2);
INSERT INTO `menu` VALUES (34, '/healthIndexStandard', 'HealthIndexStandard', '老人健康标准', NULL, NULL, 2);
INSERT INTO `menu` VALUES (35, '/heathLevel', 'HeathLevel', '健康等级评估', NULL, NULL, 2);
INSERT INTO `menu` VALUES (36, '/diseaseWarning', 'DiseaseWarning', '疾病预警', NULL, NULL, 2);
INSERT INTO `menu` VALUES (37, '/employeeMenu', 'EmployeeMenu', '员工管理', NULL, NULL, 4);
INSERT INTO `menu` VALUES (38, '/train', 'Train', '培训管理', NULL, NULL, 4);
INSERT INTO `menu` VALUES (39, '/position', 'Position', '职位管理', NULL, NULL, 4);
INSERT INTO `menu` VALUES (40, '/RewardsAndPunishment', 'RewardsAndPunishment', '奖惩管理', NULL, NULL, 4);
INSERT INTO `menu` VALUES (41, '/checkMenu', 'CheckMenu', '考核管理', NULL, NULL, 4);
INSERT INTO `menu` VALUES (42, '/4-1', '4-1', '我的 ', NULL, NULL, 4);
INSERT INTO `menu` VALUES (43, '/myInfo', 'MyInfo', '个人信息', NULL, NULL, 42);
INSERT INTO `menu` VALUES (44, '/gg', 'gg', '申请信息管理', NULL, NULL, 3);
INSERT INTO `menu` VALUES (45, '/applytable', 'applytable', '申请表', NULL, NULL, 3);
INSERT INTO `menu` VALUES (46, '/donate', 'donate', '捐赠物资信息管理', NULL, NULL, 3);
INSERT INTO `menu` VALUES (47, '/visit', 'visit', '探望信息管理', NULL, NULL, 3);
INSERT INTO `menu` VALUES (48, '/patrol', 'patrol', '巡查管理', NULL, NULL, 3);
INSERT INTO `menu` VALUES (49, '/IWarehouse', 'IWarehouse', '入库管理', NULL, NULL, 6);
INSERT INTO `menu` VALUES (50, '/OWarehouse', 'OWarehouse', '出库管理', NULL, NULL, 6);
INSERT INTO `menu` VALUES (51, '/Vonder', 'Vonder', '供应商管理', NULL, NULL, 6);
INSERT INTO `menu` VALUES (52, '/6-1', '6-1', '出入库记录', NULL, NULL, 6);
INSERT INTO `menu` VALUES (53, '/InRecord', 'InRecord', '入库记录', NULL, NULL, 52);
INSERT INTO `menu` VALUES (54, '/OutRecord', 'OutRecord', '出库记录', NULL, NULL, 52);
INSERT INTO `menu` VALUES (55, '/6-2', '6-2', '领用归还管理', NULL, NULL, 6);
INSERT INTO `menu` VALUES (56, '/Claim', 'Claim', '领用管理', NULL, NULL, 55);
INSERT INTO `menu` VALUES (57, '/Return', 'Return', '归还管理', NULL, NULL, 55);
INSERT INTO `menu` VALUES (58, '/6-3', '6-3', '库存管理', NULL, NULL, 6);
INSERT INTO `menu` VALUES (59, '/Warehouse', 'Warehouse', '库存信息管理', NULL, NULL, 58);
INSERT INTO `menu` VALUES (60, '/InventoryAlerts', 'InventoryAlerts', '库存预警', NULL, NULL, 58);
INSERT INTO `menu` VALUES (61, '/Advance', 'Advance', '预交金管理', NULL, NULL, 5);
INSERT INTO `menu` VALUES (62, '/ElderlyPrice', 'ElderlyPrice', '老人日常消费管理', NULL, NULL, 5);
INSERT INTO `menu` VALUES (63, '/Reserve', 'Reserve', '备用金管理', NULL, NULL, 5);
INSERT INTO `menu` VALUES (64, '/HealthArchives', 'HealthArchives', '健康档案', NULL, NULL, 17);
INSERT INTO `menu` VALUES (65, '/5-5', '', '费用结算', NULL, NULL, 5);
INSERT INTO `menu` VALUES (66, '/5-6', '', '费用统计', NULL, NULL, 5);
INSERT INTO `menu` VALUES (67, '/5-7', '', '统计', NULL, NULL, 5);
INSERT INTO `menu` VALUES (68, '/4-2', '4-2', '请假管理', NULL, NULL, 4);
INSERT INTO `menu` VALUES (69, 'leave', 'Leave', '请假申请', NULL, NULL, 68);
INSERT INTO `menu` VALUES (70, 'audit', 'Audit', '审核申请', NULL, NULL, 68);
INSERT INTO `menu` VALUES (71, '/4-3', '4-3', '考勤管理', NULL, NULL, 4);
INSERT INTO `menu` VALUES (72, 'punchCard', 'PunchCard', '考勤打卡', NULL, NULL, 71);
INSERT INTO `menu` VALUES (73, 'attendanceRecords', 'AttendanceRecords', '全部考勤', NULL, NULL, 71);
INSERT INTO `menu` VALUES (74, '/salaryMenu', 'SalaryMenu', '薪资管理', NULL, NULL, 4);

-- ----------------------------
-- Table structure for menu_role
-- ----------------------------
DROP TABLE IF EXISTS `menu_role`;
CREATE TABLE `menu_role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `menu_id` int(0) NULL DEFAULT NULL,
  `role_id` int(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2008 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of menu_role
-- ----------------------------
INSERT INTO `menu_role` VALUES (1013, 18, 17);
INSERT INTO `menu_role` VALUES (1014, 19, 17);
INSERT INTO `menu_role` VALUES (1015, 20, 17);
INSERT INTO `menu_role` VALUES (1016, 21, 17);
INSERT INTO `menu_role` VALUES (1017, 23, 17);
INSERT INTO `menu_role` VALUES (1018, 24, 17);
INSERT INTO `menu_role` VALUES (1019, 26, 17);
INSERT INTO `menu_role` VALUES (1020, 27, 17);
INSERT INTO `menu_role` VALUES (1021, 29, 17);
INSERT INTO `menu_role` VALUES (1022, 30, 17);
INSERT INTO `menu_role` VALUES (1023, 31, 17);
INSERT INTO `menu_role` VALUES (1024, 44, 17);
INSERT INTO `menu_role` VALUES (1025, 45, 17);
INSERT INTO `menu_role` VALUES (1026, 46, 17);
INSERT INTO `menu_role` VALUES (1027, 47, 17);
INSERT INTO `menu_role` VALUES (1028, 48, 17);
INSERT INTO `menu_role` VALUES (1029, 37, 17);
INSERT INTO `menu_role` VALUES (1030, 38, 17);
INSERT INTO `menu_role` VALUES (1031, 39, 17);
INSERT INTO `menu_role` VALUES (1032, 40, 17);
INSERT INTO `menu_role` VALUES (1033, 41, 17);
INSERT INTO `menu_role` VALUES (1034, 42, 17);
INSERT INTO `menu_role` VALUES (1035, 43, 17);
INSERT INTO `menu_role` VALUES (1036, 61, 17);
INSERT INTO `menu_role` VALUES (1037, 62, 17);
INSERT INTO `menu_role` VALUES (1038, 63, 17);
INSERT INTO `menu_role` VALUES (1039, 49, 17);
INSERT INTO `menu_role` VALUES (1040, 50, 17);
INSERT INTO `menu_role` VALUES (1041, 51, 17);
INSERT INTO `menu_role` VALUES (1042, 53, 17);
INSERT INTO `menu_role` VALUES (1043, 54, 17);
INSERT INTO `menu_role` VALUES (1044, 56, 17);
INSERT INTO `menu_role` VALUES (1045, 57, 17);
INSERT INTO `menu_role` VALUES (1046, 59, 17);
INSERT INTO `menu_role` VALUES (1047, 60, 17);
INSERT INTO `menu_role` VALUES (1048, 8, 17);
INSERT INTO `menu_role` VALUES (1049, 11, 17);
INSERT INTO `menu_role` VALUES (1050, 12, 17);
INSERT INTO `menu_role` VALUES (1051, 13, 17);
INSERT INTO `menu_role` VALUES (1052, 14, 17);
INSERT INTO `menu_role` VALUES (1547, 18, 16);
INSERT INTO `menu_role` VALUES (1548, 19, 16);
INSERT INTO `menu_role` VALUES (1549, 20, 16);
INSERT INTO `menu_role` VALUES (1550, 21, 16);
INSERT INTO `menu_role` VALUES (1551, 23, 16);
INSERT INTO `menu_role` VALUES (1552, 24, 16);
INSERT INTO `menu_role` VALUES (1553, 26, 16);
INSERT INTO `menu_role` VALUES (1554, 27, 16);
INSERT INTO `menu_role` VALUES (1555, 29, 16);
INSERT INTO `menu_role` VALUES (1556, 30, 16);
INSERT INTO `menu_role` VALUES (1557, 31, 16);
INSERT INTO `menu_role` VALUES (1558, 32, 16);
INSERT INTO `menu_role` VALUES (1559, 33, 16);
INSERT INTO `menu_role` VALUES (1560, 34, 16);
INSERT INTO `menu_role` VALUES (1561, 35, 16);
INSERT INTO `menu_role` VALUES (1562, 36, 16);
INSERT INTO `menu_role` VALUES (1923, 18, 1);
INSERT INTO `menu_role` VALUES (1924, 19, 1);
INSERT INTO `menu_role` VALUES (1925, 20, 1);
INSERT INTO `menu_role` VALUES (1926, 21, 1);
INSERT INTO `menu_role` VALUES (1927, 64, 1);
INSERT INTO `menu_role` VALUES (1928, 23, 1);
INSERT INTO `menu_role` VALUES (1929, 24, 1);
INSERT INTO `menu_role` VALUES (1930, 26, 1);
INSERT INTO `menu_role` VALUES (1931, 27, 1);
INSERT INTO `menu_role` VALUES (1932, 29, 1);
INSERT INTO `menu_role` VALUES (1933, 30, 1);
INSERT INTO `menu_role` VALUES (1934, 31, 1);
INSERT INTO `menu_role` VALUES (1935, 32, 1);
INSERT INTO `menu_role` VALUES (1936, 33, 1);
INSERT INTO `menu_role` VALUES (1937, 34, 1);
INSERT INTO `menu_role` VALUES (1938, 35, 1);
INSERT INTO `menu_role` VALUES (1939, 36, 1);
INSERT INTO `menu_role` VALUES (1940, 44, 1);
INSERT INTO `menu_role` VALUES (1941, 45, 1);
INSERT INTO `menu_role` VALUES (1942, 46, 1);
INSERT INTO `menu_role` VALUES (1943, 47, 1);
INSERT INTO `menu_role` VALUES (1944, 48, 1);
INSERT INTO `menu_role` VALUES (1945, 37, 1);
INSERT INTO `menu_role` VALUES (1946, 38, 1);
INSERT INTO `menu_role` VALUES (1947, 39, 1);
INSERT INTO `menu_role` VALUES (1948, 40, 1);
INSERT INTO `menu_role` VALUES (1949, 41, 1);
INSERT INTO `menu_role` VALUES (1950, 42, 1);
INSERT INTO `menu_role` VALUES (1951, 43, 1);
INSERT INTO `menu_role` VALUES (1952, 61, 1);
INSERT INTO `menu_role` VALUES (1953, 62, 1);
INSERT INTO `menu_role` VALUES (1954, 63, 1);
INSERT INTO `menu_role` VALUES (1955, 49, 1);
INSERT INTO `menu_role` VALUES (1956, 50, 1);
INSERT INTO `menu_role` VALUES (1957, 51, 1);
INSERT INTO `menu_role` VALUES (1958, 53, 1);
INSERT INTO `menu_role` VALUES (1959, 54, 1);
INSERT INTO `menu_role` VALUES (1960, 56, 1);
INSERT INTO `menu_role` VALUES (1961, 57, 1);
INSERT INTO `menu_role` VALUES (1962, 59, 1);
INSERT INTO `menu_role` VALUES (1963, 60, 1);
INSERT INTO `menu_role` VALUES (1964, 8, 1);
INSERT INTO `menu_role` VALUES (1965, 9, 1);
INSERT INTO `menu_role` VALUES (1966, 11, 1);
INSERT INTO `menu_role` VALUES (1967, 12, 1);
INSERT INTO `menu_role` VALUES (1968, 13, 1);
INSERT INTO `menu_role` VALUES (1969, 14, 1);
INSERT INTO `menu_role` VALUES (1970, 15, 1);
INSERT INTO `menu_role` VALUES (1971, 16, 1);
INSERT INTO `menu_role` VALUES (1972, 18, 12);
INSERT INTO `menu_role` VALUES (1973, 19, 12);
INSERT INTO `menu_role` VALUES (1974, 20, 12);
INSERT INTO `menu_role` VALUES (1975, 21, 12);
INSERT INTO `menu_role` VALUES (1976, 23, 12);
INSERT INTO `menu_role` VALUES (1977, 24, 12);
INSERT INTO `menu_role` VALUES (1978, 26, 12);
INSERT INTO `menu_role` VALUES (1979, 27, 12);
INSERT INTO `menu_role` VALUES (1980, 29, 12);
INSERT INTO `menu_role` VALUES (1981, 30, 12);
INSERT INTO `menu_role` VALUES (1982, 31, 12);
INSERT INTO `menu_role` VALUES (1983, 32, 12);
INSERT INTO `menu_role` VALUES (1984, 33, 12);
INSERT INTO `menu_role` VALUES (1985, 34, 12);
INSERT INTO `menu_role` VALUES (1986, 35, 12);
INSERT INTO `menu_role` VALUES (1987, 36, 12);
INSERT INTO `menu_role` VALUES (1988, 44, 12);
INSERT INTO `menu_role` VALUES (1989, 45, 12);
INSERT INTO `menu_role` VALUES (1990, 46, 12);
INSERT INTO `menu_role` VALUES (1991, 47, 12);
INSERT INTO `menu_role` VALUES (1992, 48, 12);
INSERT INTO `menu_role` VALUES (1993, 61, 12);
INSERT INTO `menu_role` VALUES (1994, 62, 12);
INSERT INTO `menu_role` VALUES (1995, 63, 12);
INSERT INTO `menu_role` VALUES (1996, 8, 12);
INSERT INTO `menu_role` VALUES (1998, 45, 21);
INSERT INTO `menu_role` VALUES (1999, 65, 1);
INSERT INTO `menu_role` VALUES (2000, 66, 1);
INSERT INTO `menu_role` VALUES (2001, 68, 1);
INSERT INTO `menu_role` VALUES (2002, 69, 1);
INSERT INTO `menu_role` VALUES (2003, 70, 1);
INSERT INTO `menu_role` VALUES (2004, 71, 1);
INSERT INTO `menu_role` VALUES (2005, 72, 1);
INSERT INTO `menu_role` VALUES (2006, 73, 1);
INSERT INTO `menu_role` VALUES (2007, 74, 1);

-- ----------------------------
-- Table structure for order_man
-- ----------------------------
DROP TABLE IF EXISTS `order_man`;
CREATE TABLE `order_man`  (
  `order_id` int(0) NOT NULL,
  `order_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_id_card` char(18) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `order_state` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '未录入',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of order_man
-- ----------------------------
INSERT INTO `order_man` VALUES (20, '金果', '142431196106120526', '已录入');
INSERT INTO `order_man` VALUES (21, '唐旭尧', '142431196006120548', '已录入');
INSERT INTO `order_man` VALUES (22, '丁越彬', '142431196206120619', '已录入');
INSERT INTO `order_man` VALUES (23, '傅风华', '142431196306120617', '已录入');
INSERT INTO `order_man` VALUES (24, '韦晓啸', '142431196406120636', '已录入');
INSERT INTO `order_man` VALUES (25, '谭明', '142431196506120619', '已录入');
INSERT INTO `order_man` VALUES (26, '郑浩', '142431196606120649', '已录入');
INSERT INTO `order_man` VALUES (27, '邹子骞', '142431196706120569', '已录入');
INSERT INTO `order_man` VALUES (28, '马昊焱', '142431196806120249', '已录入');
INSERT INTO `order_man` VALUES (29, '陈浩轩', '142431195606120619', '已录入');
INSERT INTO `order_man` VALUES (30, '覃炎彬', '142431195406120679', '未录入');
INSERT INTO `order_man` VALUES (31, '秦鑫鹏', '142431195506120535', '未录入');
INSERT INTO `order_man` VALUES (32, '薛梓晨', '142431196006120542', '未录入');
INSERT INTO `order_man` VALUES (33, '马文轩', '142431194506120629', '未录入');
INSERT INTO `order_man` VALUES (34, '曾思远', '142431194906120969', '未录入');
INSERT INTO `order_man` VALUES (35, '秦弘文', '142431195206120759', '未录入');
INSERT INTO `order_man` VALUES (36, '赖弘文', '142431195606120649', '未录入');
INSERT INTO `order_man` VALUES (37, '邹伟泽', '142431195806120549', '未录入');
INSERT INTO `order_man` VALUES (38, '韩立诚', '142431196806120453', '未录入');
INSERT INTO `order_man` VALUES (39, '韩雪松', '142431196206120546', '未录入');
INSERT INTO `order_man` VALUES (40, '章三', '142431196206120465', '未录入');
INSERT INTO `order_man` VALUES (41, '汪昊焱', '142431196206120628', '未录入');
INSERT INTO `order_man` VALUES (42, '万博涛', '142431195606120638', '未录入');
INSERT INTO `order_man` VALUES (43, '钱伟祺', '142431195606120582', '已录入');
INSERT INTO `order_man` VALUES (44, '尹志泽', '142431195505465216', '未录入');
INSERT INTO `order_man` VALUES (45, '卢弘文', '142431195805465246', '未录入');
INSERT INTO `order_man` VALUES (46, '李子涵', '142431196005465256', '未录入');

-- ----------------------------
-- Table structure for outarchive
-- ----------------------------
DROP TABLE IF EXISTS `outarchive`;
CREATE TABLE `outarchive`  (
  `id` int(0) NULL DEFAULT NULL,
  `name` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `sex` varchar(5) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `address` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `idcard` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `nation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `education` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `buildingid` int(0) NULL DEFAULT NULL,
  `dormitoryid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `state` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `outtime` date NULL DEFAULT NULL,
  `dstate` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 47 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outarchive
-- ----------------------------
INSERT INTO `outarchive` VALUES (2, '喜德坤', 80, '男', '15950120399', '江苏省', '320281200201066555', '汉族', '初中', 2, '2-101', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (3, '德芙', 60, '女', '13016570288', '江苏省', '320281200201066222', '汉族', '初中', 2, '2-101', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (4, '王困得', 60, '男', '15950112556', '江苏省', '32029523201666277', '汉族', '大学', 2, '2-101', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (5, '喜得发', 70, '男', '13016507256', '江苏省', '320261255236155266', '汉族', '大学', 2, '2-102', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (6, '罗习', 70, '男', '13016953652', '江苏省', '320264511256255844', '汉族', '大学', 2, '2-102', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (7, '单存', 70, '男', '15950135666', '浙江省', '32028456215633255', '汉族', '大学', 2, '2-102', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (8, '络绎三', 70, '女', '15950180356', '江苏省', '325256522145299855', '汉族', '大学', 2, '2-103', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (9, '罗三三', 60, '男', '18050120333', '浙江省', '320591200561066288', '汉族', '大学', 2, '2-103', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (10, '吉斯尔', 87, '女', '15980120656', '浙江省', '320281200659855622', '汉族', '大学', 2, '2-103', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (11, '罗尔基', 52, '女', '15260120666', '浙江省', '356895655452655899', '汉族', '大学', 2, '2-103', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (12, '李萨尔', 78, '女', '15980156256', '江苏省', '320281566254266588', '汉族', '大学', 2, '2-104', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (13, '李四儿', 87, '男', '15954135222', '江苏省', '320281200652055688', '汉族', '大学', 2, '2-104', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (14, '李旺德', 89, '男', '15950146333', '江苏省', '320281500652466255', '汉族', '大学', 2, '2-104', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (15, '李村的', 75, '男', '15850120565', '江苏省', '320284599521066298', '汉族', '大学', 2, '2-104', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (16, '张四儿', 87, '男', '15850120363', '江苏省', '320581266257955122', '汉族', '大学', 2, '2-105', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (17, '张村的', 51, '女', '15850123356', '江苏省', '325026522452099526', '汉族', '大学', 2, '2-105', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (18, '要存', 87, '男', '13016576289', '江苏省', '320595452201066255', '汉族', '大学', 2, '2-105', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (19, '姚村', 56, '男', '13016576259', '江苏省', '3526851200252011566', '汉族', '大学', 2, '2-105', '入住中', '2022-11-14', '已分配');
INSERT INTO `outarchive` VALUES (23, '傅风华', 70, '男', '15926542666', '江苏省', '142431196306120617', '汉族', '大学', 2, '2-101', '入住中', '2022-11-16', '已分配');
INSERT INTO `outarchive` VALUES (24, '韦晓啸', 70, '女', '15963485262', '江苏省', '142431196406120636', '汉族', '大学', 2, '2-102', '入住中', '2022-11-16', '已分配');
INSERT INTO `outarchive` VALUES (41, '洛三', 80, '男', '15950120333', '江苏省', '320284566256255855', '汉族', '大学', 2, '2-103', '入住中', '2022-11-16', '已分配');
INSERT INTO `outarchive` VALUES (26, '郑浩', 70, '女', '15956254332', '江苏省', '142431196606120649', '汉族', '大学', 2, '2-102', '入住中', '2022-12-19', '已分配');

-- ----------------------------
-- Table structure for outrecord
-- ----------------------------
DROP TABLE IF EXISTS `outrecord`;
CREATE TABLE `outrecord`  (
  `outbound_number` int(0) NOT NULL AUTO_INCREMENT,
  `inbound_number` int(0) NOT NULL,
  `material_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `material_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `warehousing_quantity` float NOT NULL,
  `warehousing_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `production_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `m_supplier` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `shelf_life` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `in_operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '张强',
  PRIMARY KEY (`outbound_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1000000054 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of outrecord
-- ----------------------------
INSERT INTO `outrecord` VALUES (1000000002, 10000004, 'M0000002', '床', 10, '2022-11-13  11:37:10', '2022', '淮安器械有限公司', '2023', '张强');
INSERT INTO `outrecord` VALUES (1000000003, 10000004, 'M0000002', '床', 10, '2022-11-13  11:37:10', '2022', '淮安器械有限公司', '2023', '张强');
INSERT INTO `outrecord` VALUES (1000000004, 10000005, 'M0000003', '口罩', 10, '2022-11-13  11:56:25', '2022', '淮安医疗器械有限公司', '2023', '张强');
INSERT INTO `outrecord` VALUES (1000000005, 10000008, 'M0000005', '血压计', 5, '2022-11-13  19:44:57', '2022', '淮安器械有限公司', '2025', '张强');
INSERT INTO `outrecord` VALUES (1000000006, 10000004, 'M0000002', '床', 0, '2022-11-13  11:37:10', '2022', '淮安器械有限公司', '2023', '张强');
INSERT INTO `outrecord` VALUES (1000000007, 10000008, 'M0000005', '血压计', 10, '2022-11-13  21:04:03', '2022', '淮安器械有限公司', '2025', '李同');
INSERT INTO `outrecord` VALUES (1000000008, 10000007, 'M0000002', '床', 0, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '10');
INSERT INTO `outrecord` VALUES (1000000009, 10000007, 'M0000002', '床', 0, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '10');
INSERT INTO `outrecord` VALUES (1000000010, 10000007, 'M0000002', '床', 10, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '于钱');
INSERT INTO `outrecord` VALUES (1000000011, 10000007, 'M0000002', '床', 25, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '许力');
INSERT INTO `outrecord` VALUES (1000000012, 10000007, 'M0000002', '床', 15, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '许秋');
INSERT INTO `outrecord` VALUES (1000000013, 10000007, 'M0000002', '床', 15, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '许秋');
INSERT INTO `outrecord` VALUES (1000000014, 10000007, 'M0000002', '床', 15, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '许阀');
INSERT INTO `outrecord` VALUES (1000000015, 10000005, 'M0000003', '口罩', 20, '2022-11-13  11:56:25', '2022', '淮安医疗器械有限公司', '2023', '张强');
INSERT INTO `outrecord` VALUES (1000000017, 10000008, 'M0000005', '血压计', 5, '2022-11-13  21:04:03', '2022', '淮安器械有限公司', '2025', '李同');
INSERT INTO `outrecord` VALUES (1000000018, 10000006, 'M0000002', '床', 0, '2022-11-13  17:28:58', '2022', '淮安器械有限公司', '2090', '0');
INSERT INTO `outrecord` VALUES (1000000019, 10000005, 'M0000003', '口罩', 0, '2022-11-15  23:57:57', '2022', '淮安医疗器械有限公司', '2023', '张强');
INSERT INTO `outrecord` VALUES (1000000020, 10000005, 'M0000003', '口罩', 0, '2022-11-16  00:03:52', '2022', '淮安医疗器械有限公司', '2023', '0');
INSERT INTO `outrecord` VALUES (1000000021, 10000005, 'M0000003', '口罩', 0, '2022-11-16  00:05:22', '2022', '淮安医疗器械有限公司', '2023', '0');
INSERT INTO `outrecord` VALUES (1000000022, 10000005, 'M0000003', '口罩', 0, '2022-11-16  00:05:52', '2022', '淮安医疗器械有限公司', '2023', '0');
INSERT INTO `outrecord` VALUES (1000000023, 10000005, 'M0000003', '口罩', 0, '2022-11-16  00:06:48', '2022', '淮安医疗器械有限公司', '2023', '刘一帆');
INSERT INTO `outrecord` VALUES (1000000024, 10000005, 'M0000003', '口罩', 10, '2022-11-16  10:19:04', '2022', '淮安医疗器械有限公司', '2023', NULL);
INSERT INTO `outrecord` VALUES (1000000025, 10000006, 'M0000002', '床', 10, '2022-11-16  10:19:51', '2022', '淮安器械有限公司', '2090', NULL);
INSERT INTO `outrecord` VALUES (1000000026, 10000005, 'M0000003', '口罩', 0, '2022-11-16  10:21:21', '2022', '淮安医疗器械有限公司', '2023', NULL);
INSERT INTO `outrecord` VALUES (1000000027, 10000005, 'M0000003', '口罩', 10, '2022-11-16  10:21:28', '2022', '淮安医疗器械有限公司', '2023', NULL);
INSERT INTO `outrecord` VALUES (1000000028, 10000005, 'M0000003', '口罩', 0, '2022-11-16  11:13:19', '2022', '淮安医疗器械有限公司', '2023', '2022111602张一起');
INSERT INTO `outrecord` VALUES (1000000029, 10000005, 'M0000003', '口罩', 0, '2022-11-16  14:39:23', '2022', '淮安医疗器械有限公司', '2023', NULL);
INSERT INTO `outrecord` VALUES (1000000030, 10000007, 'M0000002', '床', 0, '2022-11-16  14:40:00', '2022', '淮安器械有限公司', '2090', NULL);
INSERT INTO `outrecord` VALUES (1000000031, 10000008, 'M0000005', '血压计', 0, '2022-11-16  14:41:23', '2022', '淮安器械有限公司', '2025', NULL);
INSERT INTO `outrecord` VALUES (1000000032, 10000006, 'M0000002', '床', 0, '2022-11-16  14:42:56', '2022', '淮安器械有限公司', '2090', '刘盛栋');
INSERT INTO `outrecord` VALUES (1000000033, 10000006, 'M0000002', '床', 2, '2022-12-29  19:20:32', '2022', '淮安器械有限公司', '2090', '刘盛栋');
INSERT INTO `outrecord` VALUES (1000000034, 10000008, 'M0000005', '血压计', 5, '2022-12-29  20:04:47', '2022', '淮安器械有限公司', '2025', '许力');
INSERT INTO `outrecord` VALUES (1000000035, 10000013, 'M0000009', '新冠抗原', 2, '2022-12-29  20:06:10', '2022-04-06', '淮安药业', '2024-05-08', '许天');
INSERT INTO `outrecord` VALUES (1000000036, 10000008, 'M0000005', '血压计', 10, '2022-12-29  21:41:02', '2022', '淮安器械有限公司', '2025', '戴乐');
INSERT INTO `outrecord` VALUES (1000000037, 10000007, 'M0000002', '床', 4, '2022-12-29  21:51:56', '2022', '淮安器械有限公司', '2090', '戴乐');
INSERT INTO `outrecord` VALUES (1000000038, 10000007, 'M0000002', '床', 8, '2022-12-29  21:52:05', '2022', '淮安器械有限公司', '2090', '戴乐');
INSERT INTO `outrecord` VALUES (1000000039, 10000011, 'M0000003', '轮椅', 4, '2022-12-29  21:52:17', '2022', '淮安器械有限公司', '2024', '姚嘉铖');
INSERT INTO `outrecord` VALUES (1000000040, 10000006, 'M0000002', '床', 4, '2022-12-29  21:52:57', '2022', '淮安器械有限公司', '2090', '张一起');
INSERT INTO `outrecord` VALUES (1000000041, 10000007, 'M0000002', '床', 5, '2022-12-29  21:58:15', '2022', '淮安器械有限公司', '2090', '梁杰煜');
INSERT INTO `outrecord` VALUES (1000000042, 10000007, 'M0000002', '床', 4, '2022-12-29  21:58:21', '2022', '淮安器械有限公司', '2090', '梁杰煜');
INSERT INTO `outrecord` VALUES (1000000043, 10000006, 'M0000002', '床', 3, '2022-12-29  21:58:29', '2022', '淮安器械有限公司', '2090', '梁杰煜');
INSERT INTO `outrecord` VALUES (1000000044, 10000007, 'M0000002', '床', 3, '2022-12-29  21:58:34', '2022', '淮安器械有限公司', '2090', '姚嘉铖');
INSERT INTO `outrecord` VALUES (1000000045, 10000006, 'M0000002', '床', 1, '2022-12-29  22:03:48', '2022', '淮安器械有限公司', '2090', '2022111413刘盛栋');
INSERT INTO `outrecord` VALUES (1000000046, 10000011, 'M0000003', '轮椅', 1, '2022-12-29  22:04:24', '2022', '淮安器械有限公司', '2024', '2022110119姚嘉铖');
INSERT INTO `outrecord` VALUES (1000000047, 10000011, 'M0000003', '轮椅', 2, '2022-12-29  22:05:37', '2022', '淮安器械有限公司', '2024', '许鹏宇');
INSERT INTO `outrecord` VALUES (1000000048, 10000011, 'M0000003', '轮椅', 2, '2022-12-29  22:05:44', '2022', '淮安器械有限公司', '2024', '王贵华');
INSERT INTO `outrecord` VALUES (1000000049, 10000011, 'M0000003', '轮椅', 4, '2022-12-29  22:05:53', '2022', '淮安器械有限公司', '2024', '刘一帆');
INSERT INTO `outrecord` VALUES (1000000050, 10000005, 'M0000003', '口罩', 1, '2023-01-30  10:25:18', '2022', '淮安医疗器械有限公司', '2023', '');
INSERT INTO `outrecord` VALUES (1000000051, 10000005, 'M0000003', '口罩', 1, '2023-01-30  10:26:49', '2022', '淮安医疗器械有限公司', '2023', '');
INSERT INTO `outrecord` VALUES (1000000052, 10000005, 'M0000003', '口罩', 1, '2023-01-30  10:27:05', '2022', '淮安医疗器械有限公司', '2023', '');
INSERT INTO `outrecord` VALUES (1000000053, 10000005, 'M0000003', '口罩', 1, '2023-01-31  23:40:45', '2022', '淮安医疗器械有限公司', '2023', '梁杰煜');

-- ----------------------------
-- Table structure for patrol
-- ----------------------------
DROP TABLE IF EXISTS `patrol`;
CREATE TABLE `patrol`  (
  `p_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '巡查编号',
  `p_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '接待人',
  `p_time` date NOT NULL COMMENT '巡查时间',
  `p_person` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '巡查人',
  `p_content` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '巡查对象',
  `p_unit` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '巡查单位',
  `p_side` char(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '涉及方面',
  PRIMARY KEY (`p_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of patrol
-- ----------------------------
INSERT INTO `patrol` VALUES (4, '宋江', '2022-11-12', '巍巍', '消防', '消防局', '所有');
INSERT INTO `patrol` VALUES (5, '李逵', '2022-11-13', '巍巍', '食品', '食品安全局', '食堂');
INSERT INTO `patrol` VALUES (6, '张顺', '2022-11-13', '巍巍', '卫生', '卫生局', '医务室');
INSERT INTO `patrol` VALUES (7, '姚嘉铖', '2022-11-14', '小冰', '卫生', '卫生局', '医务室');
INSERT INTO `patrol` VALUES (8, '吴用', '2022-11-14', '小冰', '消防', '消防局', '仓库');
INSERT INTO `patrol` VALUES (9, '姚嘉铖', '2022-11-14', '旻旻', '卫生', '卫生局', '食堂');
INSERT INTO `patrol` VALUES (10, '刘一帆', '2022-11-14', '小冰', '员工', '总部', '宿舍');
INSERT INTO `patrol` VALUES (11, '梁杰煜', '2022-11-14', '小冰', '财务', '审计', '财务、仓库');
INSERT INTO `patrol` VALUES (12, '刘盛栋', '2022-11-14', '雯雯', '食品', '总部', '食堂');

-- ----------------------------
-- Table structure for performance_check
-- ----------------------------
DROP TABLE IF EXISTS `performance_check`;
CREATE TABLE `performance_check`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `check_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `eid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工工号',
  `business_score` int(0) NULL DEFAULT NULL COMMENT '业务考核得分',
  `quarter_score` int(0) NULL DEFAULT NULL COMMENT '季度考核得分',
  `rp_score` int(0) NULL DEFAULT NULL COMMENT '奖惩得分',
  `total_score` int(0) NULL DEFAULT NULL COMMENT '绩效考核总分',
  `principal` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `principal_idea` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人意见',
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件名称',
  `file_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件类型',
  `file_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '下载链接',
  `file_md5` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '文件md5',
  `file_size` bigint(0) NULL DEFAULT NULL COMMENT '文件大小',
  `check_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '绩效考核时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of performance_check
-- ----------------------------
INSERT INTO `performance_check` VALUES (1, '刘盛栋', NULL, 90, 90, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `performance_check` VALUES (2, '刘盛栋', NULL, 89, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `performance_check` VALUES (3, '安欣', NULL, 100, 100, 100, 100, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023');

-- ----------------------------
-- Table structure for physical_exam
-- ----------------------------
DROP TABLE IF EXISTS `physical_exam`;
CREATE TABLE `physical_exam`  (
  `pe_id` int(0) NOT NULL AUTO_INCREMENT,
  `order_id` int(0) NULL DEFAULT NULL,
  `pe_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pe_gender` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pe_age` int(0) NULL DEFAULT NULL,
  `pe_weight` double NULL DEFAULT NULL,
  `pe_height` double NULL DEFAULT NULL,
  `pe_temperature` double NULL DEFAULT NULL COMMENT '体温',
  `pe_heart_rate` int(0) NULL DEFAULT NULL COMMENT '心率',
  `pe_blood_oxygen` int(0) NULL DEFAULT NULL COMMENT '血氧',
  `pe_blood_pressure_high` int(0) NULL DEFAULT NULL COMMENT '高压',
  `pe_blood_pressure_low` int(0) NULL DEFAULT NULL COMMENT '低压',
  `pe_blood_glucose` decimal(4, 2) NULL DEFAULT NULL COMMENT '血糖',
  `pe_blood_fat` decimal(4, 2) NULL DEFAULT NULL COMMENT '血脂',
  `pe_time` timestamp(0) NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`pe_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of physical_exam
-- ----------------------------
INSERT INTO `physical_exam` VALUES (1, 20, '金果', '女', 61, 45, 165, 36.4, 86, 94, 120, 45, 9.00, 6.00, '2022-11-13 12:57:40');
INSERT INTO `physical_exam` VALUES (2, 21, '唐旭尧', '女', 62, 45, 159, 35, 90, 96, 130, 41, 8.00, 1.00, '2022-11-13 14:54:38');
INSERT INTO `physical_exam` VALUES (3, 22, '丁越彬', '男', 60, 75, 180, 36, 78, 98, 140, 70, 4.00, 4.00, '2022-11-15 01:45:40');
INSERT INTO `physical_exam` VALUES (4, 23, '傅风华', '男', 59, 54, 180, 36, 78, 93, 112, 41, 9.00, 3.00, '2022-11-15 15:16:48');
INSERT INTO `physical_exam` VALUES (5, 24, '韦晓啸', '男', 58, 56, 180, 36, 120, 92, 150, 70, 10.00, 10.00, '2022-11-15 15:30:11');
INSERT INTO `physical_exam` VALUES (6, 25, '谭明', '男', 57, 55, 155, 36, 50, 45, 88, 45, 12.00, 8.00, '2022-11-15 17:16:50');
INSERT INTO `physical_exam` VALUES (7, 26, '郑浩', '女', 56, 70, 150, 36, 78, 85, 140, 60, 5.00, 4.00, '2022-11-15 18:31:07');
INSERT INTO `physical_exam` VALUES (8, 27, '邹子骞', '女', 55, 65, 150, 36, 130, 98, 160, 88, 10.00, 10.00, '2022-11-15 18:32:06');
INSERT INTO `physical_exam` VALUES (9, 28, '马昊焱', '女', 54, 75, 160, 36, 78, 98, 100, 70, 5.00, 6.00, '2022-11-16 08:55:19');
INSERT INTO `physical_exam` VALUES (10, 29, '陈浩轩', '男', 66, 75, 180, 36.6, 78, 98, 120, 80, 5.00, 4.00, '2022-12-26 23:20:46');
INSERT INTO `physical_exam` VALUES (11, 43, '钱伟祺', '女', 66, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-02-12 16:21:32');

-- ----------------------------
-- Table structure for position
-- ----------------------------
DROP TABLE IF EXISTS `position`;
CREATE TABLE `position`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `position_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位名称',
  `position_describe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of position
-- ----------------------------
INSERT INTO `position` VALUES (1, '前台', '前台');
INSERT INTO `position` VALUES (3, '会计', '会计');
INSERT INTO `position` VALUES (4, '技术人员', '技术人员');
INSERT INTO `position` VALUES (5, '厨师', '厨师');
INSERT INTO `position` VALUES (6, '人事', '人事');
INSERT INTO `position` VALUES (7, '后勤', '后勤');

-- ----------------------------
-- Table structure for price
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `allprice` double NULL DEFAULT NULL,
  `accumulated` double NULL DEFAULT NULL,
  `leaveprice` double NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO `price` VALUES (1, '姚昊强', 11, 11, 1400);
INSERT INTO `price` VALUES (3, '李响', 20000, 800, 19200);
INSERT INTO `price` VALUES (4, '王者', 2000, 100, 1900);
INSERT INTO `price` VALUES (5, '王荣耀', 2000, 100, 1900);
INSERT INTO `price` VALUES (6, '戴天理', 5000, 500, 4500);
INSERT INTO `price` VALUES (7, '黄敏', 1888, 888, 1000);
INSERT INTO `price` VALUES (8, '李白', 2000, 200, 1800);
INSERT INTO `price` VALUES (9, '刘猫猫', 2000, 20, 1980);
INSERT INTO `price` VALUES (10, '曹聪', 5000, 100, 4900);
INSERT INTO `price` VALUES (11, '可乐', 5000, 2000, 3000);
INSERT INTO `price` VALUES (12, '赖天宇', 2800, 100, 2700);
INSERT INTO `price` VALUES (13, '许毅', 2000, 200, 1800);

-- ----------------------------
-- Table structure for recipe
-- ----------------------------
DROP TABLE IF EXISTS `recipe`;
CREATE TABLE `recipe`  (
  `recipeId` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `suitable` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gmt_created` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `gmt_modified` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`recipeId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 24 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipe
-- ----------------------------
INSERT INTO `recipe` VALUES (13, '流食', '瘫痪', '2022-10-18 19:49:26', '2023-02-02 22:43:09');
INSERT INTO `recipe` VALUES (14, '糖尿病食谱', '糖尿病', '2022-10-18 19:53:35', '2022-10-18 19:57:41');
INSERT INTO `recipe` VALUES (23, '高血糖食谱', '高血糖', '2022-11-15 10:15:40', '2022-11-15 10:15:40');

-- ----------------------------
-- Table structure for recipedetail
-- ----------------------------
DROP TABLE IF EXISTS `recipedetail`;
CREATE TABLE `recipedetail`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `recipeId` int(0) NOT NULL,
  `time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Mon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Tue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Wed` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Thu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Fri` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Sun` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of recipedetail
-- ----------------------------
INSERT INTO `recipedetail` VALUES (10, 13, '早餐', '营养液', '馒头和粥', '燕窝', '小笼包', '汤包', '粽子', '粥');
INSERT INTO `recipedetail` VALUES (11, 13, '中餐', '韭菜炒大葱、西红柿鸡蛋', '红烧肉', '酱鸭', '烤乳猪', '火锅', '稀饭', '海鲜');
INSERT INTO `recipedetail` VALUES (12, 13, '晚餐', '达摩克里斯', '烤肉', '羊排', '红烧肉', '粥', '洋葱肉丝', '饺子');
INSERT INTO `recipedetail` VALUES (13, 14, '早餐', '泡饭', '白粥', '无', '无', '无', '无', '无');
INSERT INTO `recipedetail` VALUES (14, 14, '中餐', '无', '无', '无', '无', '无', '无', '无');
INSERT INTO `recipedetail` VALUES (15, 14, '晚餐', '无', '无', '无', '无', '无', '无', '无');
INSERT INTO `recipedetail` VALUES (34, 23, '早餐', '无', '无', '无', '无', '无', '无', '无');
INSERT INTO `recipedetail` VALUES (35, 23, '中餐', '无', '无', '无', '无', '无', '无', '无');
INSERT INTO `recipedetail` VALUES (36, 23, '晚餐', '无', '无', '无', '无', '无', '无', '无');

-- ----------------------------
-- Table structure for reserve
-- ----------------------------
DROP TABLE IF EXISTS `reserve`;
CREATE TABLE `reserve`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `jname` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `reserveprice` double NULL DEFAULT NULL,
  `tel` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of reserve
-- ----------------------------
INSERT INTO `reserve` VALUES (1, '张三', '李四', 2101, '17585965855', '2022-11-10');
INSERT INTO `reserve` VALUES (3, '里欸', '李德军', 2500, '15583558965', '2022-11-11');
INSERT INTO `reserve` VALUES (4, '罗素', '梁山', 2800, '15185698675', '2022-11-12');
INSERT INTO `reserve` VALUES (5, '姚昊强', '姚强', 2400, '18545850258', '2022-11-08');
INSERT INTO `reserve` VALUES (6, '拉斯', '里尔', 2600, '15159856954', '2022-11-15');
INSERT INTO `reserve` VALUES (7, '龙擎宇', '龙宇', 2500, '18575852369', '2022-11-19');
INSERT INTO `reserve` VALUES (8, '周子轩', '周轩', 2600, '15586956544', '2022-11-16');
INSERT INTO `reserve` VALUES (9, '郑弘文', '郑文', 2800, '15146941554', '2022-11-18');
INSERT INTO `reserve` VALUES (10, '赖天宇', '天宇', 2500, '17258868954', '2022-11-19');
INSERT INTO `reserve` VALUES (11, '毛修杰', '毛杰', 2800, '15189653256', '2022-11-19');
INSERT INTO `reserve` VALUES (12, '沈天宇', '天宇', 3000, '18585258546', '2022-11-10');

-- ----------------------------
-- Table structure for retreat
-- ----------------------------
DROP TABLE IF EXISTS `retreat`;
CREATE TABLE `retreat`  (
  `id` int(0) NULL DEFAULT NULL,
  `name` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `age` int(0) NULL DEFAULT NULL,
  `sex` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `buildingid` int(0) NULL DEFAULT NULL,
  `dormitoryid` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL
) ENGINE = InnoDB AUTO_INCREMENT = 67 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of retreat
-- ----------------------------
INSERT INTO `retreat` VALUES (29, '罗伞', 70, '女', 2, '2-103');
INSERT INTO `retreat` VALUES (21, '唐旭尧', 70, '男', 2, '2-101');
INSERT INTO `retreat` VALUES (22, '丁越彬', 70, '女', 2, '2-101');
INSERT INTO `retreat` VALUES (25, '谭明', 70, '男', 2, '2-102');
INSERT INTO `retreat` VALUES (1, '王的附', 70, '男', NULL, NULL);
INSERT INTO `retreat` VALUES (20, '金果', 89, '男', 2, '2-101');

-- ----------------------------
-- Table structure for return1
-- ----------------------------
DROP TABLE IF EXISTS `return1`;
CREATE TABLE `return1`  (
  `outbound_number` int(0) NOT NULL AUTO_INCREMENT,
  `inbound_number` int(0) NULL DEFAULT NULL,
  `material_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `material_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `warehousing_quantity` float NULL DEFAULT NULL,
  `warehousing_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `production_date` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `m_supplier` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `shelf_life` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `in_operator` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`outbound_number`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10000012 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of return1
-- ----------------------------
INSERT INTO `return1` VALUES (10000002, 10000008, 'M0000005', '血压计', 2, '2022-12-29  22:22:42', '2022', '待归还', '2025', '李桐');
INSERT INTO `return1` VALUES (10000003, 10000008, 'M0000005', '血压计', 10, '2022-12-29 21:41:02', '2022', '待归还', '2025', '戴乐');
INSERT INTO `return1` VALUES (10000004, 10000011, 'M0000003', '轮椅', 1, '2022-11-16  08:44:32', '2022', '待归还', '2024', '2022110119姚嘉铖');
INSERT INTO `return1` VALUES (10000005, 10000011, 'M0000003', '轮椅', 2, '2022-11-16  08:44:32', '2022', '待归还', '2024', '许鹏宇');
INSERT INTO `return1` VALUES (10000006, 10000011, 'M0000003', '轮椅', 2, '2022-11-16  08:44:32', '2022', '待归还', '2024', '王贵华');
INSERT INTO `return1` VALUES (10000007, 10000011, 'M0000003', '轮椅', 4, '2022-11-16  08:44:32', '2022', '待归还', '2024', '刘一帆');
INSERT INTO `return1` VALUES (10000008, 10000005, 'M0000003', '口罩', 1, '2022-11-13  11:56:25', '2022', '待归还', '2023', '');
INSERT INTO `return1` VALUES (10000009, 10000005, 'M0000003', '口罩', 1, '2022-11-13  11:56:25', '2022', '待归还', '2023', '');
INSERT INTO `return1` VALUES (10000010, 10000005, 'M0000003', '口罩', 1, '2022-11-13  11:56:25', '2022', '待归还', '2023', '');
INSERT INTO `return1` VALUES (10000011, 10000005, 'M0000003', '口罩', 1, '2022-11-13  11:56:25', '2022', '待归还', '2023', '梁杰煜');

-- ----------------------------
-- Table structure for rewards_and_punishment
-- ----------------------------
DROP TABLE IF EXISTS `rewards_and_punishment`;
CREATE TABLE `rewards_and_punishment`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `rp_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '被奖惩人id',
  `rp_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '被奖惩人姓名',
  `rp_reason` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '奖惩原因',
  `rp_time` date NULL DEFAULT NULL COMMENT '奖惩时间',
  `rp_type` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '奖惩类型',
  `rp_result` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '奖惩结果',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rewards_and_punishment
-- ----------------------------
INSERT INTO `rewards_and_punishment` VALUES (6, NULL, '刘盛栋', '是的哇', NULL, NULL, NULL);
INSERT INTO `rewards_and_punishment` VALUES (7, NULL, '张晓', '通过人工', '2023-02-02', '0', NULL);
INSERT INTO `rewards_and_punishment` VALUES (8, NULL, '张晓', '发', NULL, '1', NULL);
INSERT INTO `rewards_and_punishment` VALUES (9, NULL, '刘盛栋', '他', '2023-02-14', '0', ' 怀疑他');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `name_zh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES (1, 'superAdmin', '超级管理员');
INSERT INTO `role` VALUES (12, 'receptiondesk', '前台');
INSERT INTO `role` VALUES (16, 'caregiver', '护工');
INSERT INTO `role` VALUES (17, 'administrator', '普通管理员');
INSERT INTO `role` VALUES (21, 'youke', '游客');

-- ----------------------------
-- Table structure for room
-- ----------------------------
DROP TABLE IF EXISTS `room`;
CREATE TABLE `room`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `building_id` int(0) NOT NULL,
  `room_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `purpose` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of room
-- ----------------------------
INSERT INTO `room` VALUES (1, 2, '2-101', '52', '宿舍', '闲置');
INSERT INTO `room` VALUES (2, 1, '1-101', '60', '医护', '使用中');
INSERT INTO `room` VALUES (3, 1, '1-102', '56', '医护', '闲置');
INSERT INTO `room` VALUES (4, 2, '2-103', '60', '宿舍', '闲置');
INSERT INTO `room` VALUES (5, 2, '2-102', '60', '宿舍', '使用中');
INSERT INTO `room` VALUES (6, 1, '1-103', '60', '医护', '使用中');
INSERT INTO `room` VALUES (7, 3, '3-101', '90', '活动', '使用中');
INSERT INTO `room` VALUES (8, 3, '3-102', '120', '活动', '使用中');
INSERT INTO `room` VALUES (9, 3, '3-103', '50', '活动', '闲置');
INSERT INTO `room` VALUES (10, 1, '1-201', '60', '宿舍', '使用中');

-- ----------------------------
-- Table structure for salary
-- ----------------------------
DROP TABLE IF EXISTS `salary`;
CREATE TABLE `salary`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `employee_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工工号',
  `employee_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `position` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  `regular_pay` double NULL DEFAULT NULL COMMENT '基本工资',
  `merit_pay` double NULL DEFAULT NULL COMMENT '绩效工资',
  `job_subsidy` double NULL DEFAULT NULL COMMENT '岗位津贴',
  `allowance` double NULL DEFAULT NULL COMMENT '综合补助',
  `attendance_bonus` double NULL DEFAULT NULL COMMENT '全勤奖',
  `overtime_pay` double NULL DEFAULT NULL COMMENT '加班费',
  `social_pay` double NULL DEFAULT NULL COMMENT '五险一金',
  `tax` double NULL DEFAULT NULL COMMENT '个人所得税',
  `attendance_deduction` double NULL DEFAULT NULL COMMENT '考勤扣款',
  `other_deduction` double NULL DEFAULT NULL COMMENT '其他扣款',
  `net_pay` double NULL DEFAULT NULL COMMENT '实发工资',
  `time` date NULL DEFAULT NULL COMMENT '发放时间',
  `salary_month` date NULL DEFAULT NULL COMMENT '工资月份',
  `audit_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '审计人',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of salary
-- ----------------------------
INSERT INTO `salary` VALUES (22, '2022110127', '刘一帆', '前台', 20000, 1000, 2000, 1000, 1000, 200, 1455, 2300, 0, 5, 21440, '2023-03-03', NULL, '刘明');

-- ----------------------------
-- Table structure for stock
-- ----------------------------
DROP TABLE IF EXISTS `stock`;
CREATE TABLE `stock`  (
  `In_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `M_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `W_quantity` float NOT NULL,
  `P_date` date NOT NULL,
  `S_life` date NOT NULL,
  `Supplier` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Status` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`In_number`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for supplier
-- ----------------------------
DROP TABLE IF EXISTS `supplier`;
CREATE TABLE `supplier`  (
  `supplier_num` int(0) NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `supplier_address` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `business_scope` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `supplier_person` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `supplier_phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`supplier_num`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of supplier
-- ----------------------------
INSERT INTO `supplier` VALUES (2, '淮安医疗器械有限公司', '淮安', '医疗器械', '李华', '13856622155');
INSERT INTO `supplier` VALUES (3, '淮安器械有限公司', '淮安', '生活器械', '章卢', '15151511998');
INSERT INTO `supplier` VALUES (4, '淮安生活用品有限公司', '淮安', '生活用品', '许烈', '15151511199');
INSERT INTO `supplier` VALUES (5, '淮安药业', '淮安', '药品', '朱凡', '18768888451');
INSERT INTO `supplier` VALUES (6, '淮安食品有限公司', '淮安', '视频', '李伟', '15151556669');
INSERT INTO `supplier` VALUES (7, '淮安新器械有限公司', '淮安', '器械', '许将', '15151511123');
INSERT INTO `supplier` VALUES (8, '南京食品有限公司', '南京', '食品', '王天', '15151522899');
INSERT INTO `supplier` VALUES (9, '苏州食品有限公司', '苏州', '食品', '王翔', '15151511888');
INSERT INTO `supplier` VALUES (10, '宿迁食品有限公司', '宿迁', '食品', '王苏', '15151511887');
INSERT INTO `supplier` VALUES (11, '常州食品有限公司', '常州', '食品', '王畅', '15151511887');

-- ----------------------------
-- Table structure for sys_check
-- ----------------------------
DROP TABLE IF EXISTS `sys_check`;
CREATE TABLE `sys_check`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `check_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考核名称',
  `check_type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考核类型',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '考核时间',
  `eid` int(0) NULL DEFAULT NULL COMMENT '员工id',
  `check_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考核内容',
  `check_result` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '考核结果',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_check
-- ----------------------------
INSERT INTO `sys_check` VALUES (1, '业务知识考核', '测试考核', '2022-11-15 16:00:00', 1, '业务知识', '1');
INSERT INTO `sys_check` VALUES (2, '护理知识考核', '测试考核', '2022-11-10 00:00:00', 2, '护理知识', '0');
INSERT INTO `sys_check` VALUES (3, '表达能力考核', '测试考核', '2022-11-10 00:00:00', 3, '测试', '0');
INSERT INTO `sys_check` VALUES (5, '安全工作', '测试', '2022-11-13 16:00:00', 5, '安全知识', '2');
INSERT INTO `sys_check` VALUES (6, '年终测评', '测试', '2022-11-14 16:00:00', 4, '年终工作汇报', '1');
INSERT INTO `sys_check` VALUES (7, '财务管理', '测试', '2022-11-14 16:00:00', 6, '财务文件整理', '0');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `dept_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `dept_describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '前台', '负责做好日常接待工作');
INSERT INTO `sys_dept` VALUES (2, '会计', '会计');
INSERT INTO `sys_dept` VALUES (3, '护工', '护工');
INSERT INTO `sys_dept` VALUES (4, '厨师', '厨师');
INSERT INTO `sys_dept` VALUES (5, '技术人员', '技术人员');

-- ----------------------------
-- Table structure for sys_employee
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee`;
CREATE TABLE `sys_employee`  (
  `employee_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工id',
  `employee_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工名称',
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '性别',
  `birth` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出生日期',
  `id_no` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '身份证号',
  `marital_status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '婚姻状态（0未婚，1已婚）',
  `nation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '民族',
  `politic_countenance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '政治面貌',
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱 ',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电话',
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '地址',
  `dept_id` int(0) NULL DEFAULT NULL COMMENT '职位id',
  `position_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位',
  `academic_title` int(0) NULL DEFAULT NULL COMMENT '职称',
  `educational_background` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '教育背景',
  `school` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '毕业学校',
  `entry_time` datetime(0) NULL DEFAULT NULL COMMENT '入职时间',
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态',
  `deleted` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '删除标识',
  `photo_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片地址',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_employee
-- ----------------------------
INSERT INTO `sys_employee` VALUES ('2022110127', '刘一帆', 1, '0', '2021-04-13', '321322200209161427', '0', '汉族', '1', '3312907604@qq.com', '15161266920', '江苏省宿迁市', 1, '会计', 1, '2', '淮阴工学院', '2022-10-28 16:00:00', '1', '1', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022110101', '梁杰煜', 2, '1', '2022-10-30', '321322200209161428', '1', '汉族', '0', '111@111.111', '12365478990', '美丽花园', 1, '技术', 444, '3', '浙大', '2022-10-05 16:00:00', '0', '0', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022110102', '许鹏宇', 3, '1', '2021-04-05', '321322200209161429', '1', '汉族', '1', '123123', '15161266780', '幸福公寓', 1, '会计', 123, '2', '南理工', '2022-10-28 00:00:00', '0', '0', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022110119', '姚嘉铖', 4, '1', '1990-02-07', '321322200209161421', '0', '汉族', '3', '1762758495@qq.com', '15151906231', '淮安市翻斗花园', 1, '会计', NULL, '2', '清华', '2022-10-31 16:00:00', '1', '0', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022111413', '刘盛栋', 5, '1', '2001-10-30', '321322200209161423', '0', '汉族', '0', '1762788495@qq.com', '15151906230', '翻斗花园', 1, '经理', NULL, '1', '淮阴工学院', '2022-10-31 16:00:00', '1', '0', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022111567', '戴乐', 6, '1', '2022-10-31', '321322200209161424', '0', '汉族', '0', '1768900344@qq.com', '13651696542', '火龙岛', 1, '经理', NULL, '1', '南财', '2022-11-16 16:00:00', '1', '0', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022111623', '王贵华', 7, '1', '2022-11-08', '321322200209161423', '0', '汉族', '1', 'sin.com', '16789206678', 'UFO', 1, '会计', NULL, '1', '河海', '2022-11-20 16:00:00', '1', '0', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022111632', '秦怡', 8, '0', '2022-08-09', '321322200209161432', '0', '傣族', '3', '123@sin.com', '13651696542', '地球', 1, '会计', NULL, '3', '北大', '2022-11-21 16:00:00', '1', '0', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022111629', '石丹丹', 9, '0', '2022-10-31', '321345200509151529', '0', '汉族', '0', '321322@qq.com', '15161244567', '星光大道', 1, '经理', NULL, '1', '南大', '2022-11-29 16:00:00', '1', '0', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022111602', '张一起', 20, '1', '2019-11-04T16:00:00.000Z', '3203822002', '', '', '', '', '', '', 1, '', NULL, '', '', NULL, '1', '1', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022122927', '汪非', 21, '0', '2008-09-24T16:00:00.000Z', '321322200209161427', '1', '汉', '0', '3312907604@qq.com', '17205226829', '阿斯顿', 1, '', NULL, '1', '北大', '2022-12-10 16:00:00', '1', '1', 'b26f8c7967d34b47932ba1e5cca93d7c.png');
INSERT INTO `sys_employee` VALUES ('2022122927', '刘一帆', 22, '0', '2002-10-09T16:00:00.000Z', '3213222002091611427', '0', '汉', '1', '1123', '15161266920', '饭都花园', 1, '', NULL, '1', '淮工', '2022-12-13 16:00:00', '1', '0', 'b26f8c7967d34b47932ba1e5cca93d7c.png');

-- ----------------------------
-- Table structure for sys_employee_attendance
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee_attendance`;
CREATE TABLE `sys_employee_attendance`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `eid` int(0) NULL DEFAULT NULL COMMENT '员工id',
  `dept_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '职位名称',
  `attendance` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '出勤情况（1正常，2迟到，3早退，4缺勤，5请假）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `remarks` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `go_work_time` datetime(0) NULL DEFAULT NULL COMMENT '上班时间',
  `go_off_work_time` datetime(0) NULL DEFAULT NULL COMMENT '下班时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '出勤' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_employee_attendance
-- ----------------------------
INSERT INTO `sys_employee_attendance` VALUES (1, 1, '前台', '1', NULL, NULL, '1', '2022-10-10 09:30:00', '2022-10-10 15:30:00');
INSERT INTO `sys_employee_attendance` VALUES (2, 2, '前台', '2', '2022-10-10 15:11:54', '1', '3', '2022-04-10 09:30:00', '2022-10-10 15:30:00');
INSERT INTO `sys_employee_attendance` VALUES (3, 1, '前台', '3', '2022-10-10 15:13:16', '1', '1', '2022-10-10 09:30:00', '2022-10-10 15:30:00');
INSERT INTO `sys_employee_attendance` VALUES (4, 2, '前台', '4', '2022-10-12 09:57:37', '1', '3', '2022-10-12 09:30:00', '2022-11-12 15:30:00');
INSERT INTO `sys_employee_attendance` VALUES (6, 1, '会计', '1', NULL, NULL, '', '2022-11-15 01:30:00', '2022-11-15 10:56:23');
INSERT INTO `sys_employee_attendance` VALUES (7, 1, '前台', '5', NULL, NULL, '', NULL, NULL);
INSERT INTO `sys_employee_attendance` VALUES (8, 1, '前台', '4', NULL, NULL, '', NULL, NULL);
INSERT INTO `sys_employee_attendance` VALUES (9, 11, '前台', '5', NULL, NULL, '', NULL, NULL);
INSERT INTO `sys_employee_attendance` VALUES (10, 11, '前台', '5', NULL, NULL, '', '2022-11-14 23:30:00', '2022-11-15 09:00:19');
INSERT INTO `sys_employee_attendance` VALUES (11, 1, '前台', '', NULL, NULL, '', '2022-11-15 00:21:27', '2022-11-15 14:21:34');
INSERT INTO `sys_employee_attendance` VALUES (12, 1, '前台', '2', NULL, NULL, '', '2022-11-15 23:45:31', '2022-11-16 15:45:40');
INSERT INTO `sys_employee_attendance` VALUES (13, 1, '前台', '2', NULL, NULL, '', '2022-12-29 00:47:11', '2022-12-29 07:38:22');
INSERT INTO `sys_employee_attendance` VALUES (14, 1, '前台', '2', NULL, NULL, '', '2022-12-29 01:30:00', '2022-12-29 07:39:37');

-- ----------------------------
-- Table structure for sys_employee_salary
-- ----------------------------
DROP TABLE IF EXISTS `sys_employee_salary`;
CREATE TABLE `sys_employee_salary`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `must_salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '基本工资',
  `reality_salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '全勤工资',
  `fund_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '迟到扣款',
  `tax_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请假扣款',
  `pension_amount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '个税',
  `injured_mount` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '五险一金',
  `eid` int(0) NULL DEFAULT NULL COMMENT '员工id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建人',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '修改人',
  `salary_month` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '工资月份',
  `employee_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工姓名',
  `total_salary` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '合计工资',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '工资' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_employee_salary
-- ----------------------------
INSERT INTO `sys_employee_salary` VALUES (12, '1000', '1000', '0', '0', '300', '500', 1, NULL, NULL, NULL, NULL, '2022-10', '刘一帆', '1200');
INSERT INTO `sys_employee_salary` VALUES (13, '10000', '1000', '200', '100', '200', '300', 2, NULL, NULL, NULL, NULL, '2022-02', '梁杰煜', '10200');
INSERT INTO `sys_employee_salary` VALUES (14, '10000', '567', '11', '100', '200', '40', 3, NULL, NULL, NULL, NULL, '2022-12', '许鹏宇', '10216');
INSERT INTO `sys_employee_salary` VALUES (17, '10000', '100', '0', '0', '500', '100', 1, NULL, NULL, NULL, NULL, '', '刘一帆', '9500');

-- ----------------------------
-- Table structure for sys_rewards_and_punishments
-- ----------------------------
DROP TABLE IF EXISTS `sys_rewards_and_punishments`;
CREATE TABLE `sys_rewards_and_punishments`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '奖惩时间',
  `reason` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '原因',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '类型（0、奖，1、惩）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新者',
  `eid` int(0) NULL DEFAULT NULL COMMENT '员工编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_rewards_and_punishments
-- ----------------------------
INSERT INTO `sys_rewards_and_punishments` VALUES (1, '2022-10-12 00:00:00', '见义勇为', '0', '2022-10-12 16:40:22', NULL, 1, 1, 1);
INSERT INTO `sys_rewards_and_punishments` VALUES (3, '2022-11-14 16:00:00', '一年内未迟到', '0', NULL, NULL, NULL, NULL, 5);
INSERT INTO `sys_rewards_and_punishments` VALUES (4, '2022-11-15 16:00:00', '被县社会福利中心表扬', '0', NULL, NULL, NULL, NULL, 2);
INSERT INTO `sys_rewards_and_punishments` VALUES (5, '2022-11-14 16:00:00', '一个星期迟到三次', '1', NULL, NULL, NULL, NULL, 3);
INSERT INTO `sys_rewards_and_punishments` VALUES (6, '2022-11-14 16:00:00', '工作期间打麻将', '1', NULL, NULL, NULL, NULL, 4);
INSERT INTO `sys_rewards_and_punishments` VALUES (7, '2022-11-06 16:00:00', '向养老院提出合理化建议', '0', NULL, NULL, NULL, NULL, 8);
INSERT INTO `sys_rewards_and_punishments` VALUES (8, '2022-11-20 16:00:00', '工作期间喝酒', '1', NULL, NULL, NULL, NULL, 6);

-- ----------------------------
-- Table structure for sys_training
-- ----------------------------
DROP TABLE IF EXISTS `sys_training`;
CREATE TABLE `sys_training`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `training_content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培训内容',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '培训时间',
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培训类型',
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '培训价格',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '更新时间',
  `create_by` int(0) NULL DEFAULT NULL COMMENT '创建者',
  `update_by` int(0) NULL DEFAULT NULL COMMENT '更新者',
  `eid` int(0) NULL DEFAULT NULL COMMENT '员工编号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_training
-- ----------------------------
INSERT INTO `sys_training` VALUES (1, '护理知识培训', '2022-10-23 16:00:00', '员工培训', '100', NULL, NULL, 1, NULL, 1);
INSERT INTO `sys_training` VALUES (2, '技术培训', '2022-10-12 00:00:00', '外出培训', '10000', '2022-10-12 16:06:31', NULL, 1, NULL, 2);
INSERT INTO `sys_training` VALUES (4, '护理老人的三大要点', '2022-11-13 16:00:00', '护理', '25', NULL, NULL, NULL, NULL, 3);

-- ----------------------------
-- Table structure for train
-- ----------------------------
DROP TABLE IF EXISTS `train`;
CREATE TABLE `train`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `train_id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '培训编号',
  `train_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '受训人',
  `position` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '职位',
  `phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `train_content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '培训内容',
  `train_time` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '培训时间',
  `train_way` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '培训方式',
  `train_site` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '培训地点',
  `principal_phone` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人联系电话',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of train
-- ----------------------------
INSERT INTO `train` VALUES (3, '1234', '张晓', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `train` VALUES (4, '23566', '刘一帆', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '无');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `rel_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `created_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `role_id` int(0) NOT NULL,
  `role_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`, `user_name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, '112004150129', '123456', '刘盛栋', 'admin', '2022-11-09 10:46:58', 1, 1, '超级管理员');
INSERT INTO `user` VALUES (2, 'admin2', '123456', '许鹏宇', 'admin', '2022-11-10 11:43:21', 0, 17, '普通管理员');
INSERT INTO `user` VALUES (3, 'admin3', '123456', '梁杰煜', 'admin', '2022-11-12 10:33:23', 0, 1, '超级管理员');
INSERT INTO `user` VALUES (5, '2022110119', '2022110119', '姚嘉铖', 'admin', '2022-11-14 00:55:50', 0, 16, '护工');
INSERT INTO `user` VALUES (6, '2022110127', '123456', '刘一帆', 'admin', '2022-11-14 16:01:06', 1, 1, '超级管理员');
INSERT INTO `user` VALUES (7, 'youke', 'youke', '游客', 'admin', '2022-11-15 10:58:06', 0, 21, '游客');
INSERT INTO `user` VALUES (8, 'admin4', '123456', '戴乐', 'admin', '2022-11-15 10:35:44', 0, 1, '超级管理员');

-- ----------------------------
-- Table structure for usual_fuc
-- ----------------------------
DROP TABLE IF EXISTS `usual_fuc`;
CREATE TABLE `usual_fuc`  (
  `id` int(0) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `menu_zh` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of usual_fuc
-- ----------------------------
INSERT INTO `usual_fuc` VALUES (5, 'admin2', '老人档案', '/Elderly');
INSERT INTO `usual_fuc` VALUES (11, 'admin', '食谱管理', '/recipeIndex');
INSERT INTO `usual_fuc` VALUES (12, '2022110127', '老人档案', '/Elderly');
INSERT INTO `usual_fuc` VALUES (13, 'admin3', '健康档案', '/HealthArchives');
INSERT INTO `usual_fuc` VALUES (14, 'admin3', '体检数据管理', '/healthInput');
INSERT INTO `usual_fuc` VALUES (15, 'admin3', '健康指数分析', '/healthIndex');
INSERT INTO `usual_fuc` VALUES (16, 'admin3', '老人健康标准', '/healthIndexStandard');
INSERT INTO `usual_fuc` VALUES (17, 'admin3', '健康等级评估', '/heathLevel');
INSERT INTO `usual_fuc` VALUES (18, 'admin3', '疾病预警', '/diseaseWarning');
INSERT INTO `usual_fuc` VALUES (19, 'admin', '权限管理', '/permissions');
INSERT INTO `usual_fuc` VALUES (20, 'admin', '宿舍管理', '/dorm');
INSERT INTO `usual_fuc` VALUES (21, '2022110127', '员工信息管理', '/employee');
INSERT INTO `usual_fuc` VALUES (22, 'admin', '员工管理', '/employeeMenu');
INSERT INTO `usual_fuc` VALUES (23, '2', '老人档案', '/Elderly');
INSERT INTO `usual_fuc` VALUES (24, '2', '老人档案', '/Elderly');
INSERT INTO `usual_fuc` VALUES (25, '112004150129', '老人档案', '/Elderly');
INSERT INTO `usual_fuc` VALUES (27, '112004150129', '收费标准设置', '/priceSet');

-- ----------------------------
-- Table structure for visit
-- ----------------------------
DROP TABLE IF EXISTS `visit`;
CREATE TABLE `visit`  (
  `v_id` int(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `v_name` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '探望人',
  `v_sex` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '性别',
  `v_phone` char(11) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '联系方式',
  `oldname` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '探望对象',
  `oldid` int(0) NOT NULL COMMENT '老人编号',
  `v_time` date NOT NULL COMMENT '探望时间',
  `v_relation` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对象关系',
  `v_dinner` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否用餐',
  `v_bestow` char(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '是否留宿',
  `v_heath` char(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '健康状况',
  `v_duration` double NULL DEFAULT NULL COMMENT '探望时长',
  `v_cometime` char(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '探望时间',
  `v_number` int(0) NULL DEFAULT NULL COMMENT '探望人数',
  PRIMARY KEY (`v_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of visit
-- ----------------------------
INSERT INTO `visit` VALUES (2, '张飞', '男', '15585965698', '金果', 1, '2022-11-14', '叔侄', '是', '否', '健康', 5, '2022-11-15', 2);
INSERT INTO `visit` VALUES (3, '赵云', '男', '15189554887', '郑浩', 7, '2022-11-14', '叔侄', '否', '否', '健康', 2, '2022-11-15', 5);
INSERT INTO `visit` VALUES (4, '吕梅', '男', '15785546695', '马文轩', 14, '2022-11-14', '兄弟', '是', '是', '健康', 8, '2022-11-15', 2);
INSERT INTO `visit` VALUES (5, '孙龙', '男', '15884887758', '赖弘文', 17, '2022-11-14', '兄弟', '否', '是', '健康', 7, '2022-11-16', 2);
INSERT INTO `visit` VALUES (6, '朱楠', '男', '15268554785', '郑浩', 7, '2022-11-14', '叔侄', '否', '否', '健康', 2, '2022-11-16', 2);
INSERT INTO `visit` VALUES (7, '唐啸', '男', '15896655856', '郑浩', 7, '2022-11-14', '兄弟', '否', '否', '健康', 1, '2022-11-16', 2);
INSERT INTO `visit` VALUES (8, '白灵', '女', '15877884587', '赖弘文', 17, '2022-11-14', '姐弟', '否', '否', '健康', 2, '2022-11-16', 5);
INSERT INTO `visit` VALUES (9, '郑浩', '男', '18525459954', '金果', 1, '2022-11-14', '兄妹', '否', '否', '健康', 5, '2022-11-16', 2);
INSERT INTO `visit` VALUES (10, '李明', '男', '17258955455', '谭明', 6, '2022-11-14', '兄弟', '否', '否', '健康', 2, '2022-11-15', 2);
INSERT INTO `visit` VALUES (11, '赵敏', '女', '17589894452', '谭明', 6, '2022-11-14', '兄妹', '是', '否', '健康', 2, '2022-11-15', 6);

SET FOREIGN_KEY_CHECKS = 1;

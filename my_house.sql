/*
Navicat MySQL Data Transfer

Source Server         : yulian
Source Server Version : 80030
Source Host           : localhost:3306
Source Database       : my_house

Target Server Type    : MYSQL
Target Server Version : 80030
File Encoding         : 65001

Date: 2024-04-08 21:29:03
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for feedback
-- ----------------------------
DROP TABLE IF EXISTS `feedback`;
CREATE TABLE `feedback` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL COMMENT '发送者id',
  `content` varchar(255) DEFAULT NULL COMMENT '反馈内容',
  `username` varchar(30) DEFAULT NULL,
  `send_time` datetime DEFAULT NULL COMMENT '发送时间',
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of feedback
-- ----------------------------
INSERT INTO `feedback` VALUES ('1', '4', '系统蛮好的，祝越来越好', '汪大仙', '2024-03-26 21:34:14');
INSERT INTO `feedback` VALUES ('2', '7', '非常好用，赞赞赞', '李四', '2024-03-29 20:52:59');
INSERT INTO `feedback` VALUES ('4', '8', 'very good!', '王五', '2024-03-29 22:15:34');
INSERT INTO `feedback` VALUES ('5', '6', '呜呼呜呼，芜湖芜湖', '王柏川', '2024-03-29 22:16:05');
INSERT INTO `feedback` VALUES ('6', '7', '1111111', '李四', '2024-03-29 22:16:43');
INSERT INTO `feedback` VALUES ('7', '5', '归来倚仗自叹息', 'zhangsan', '2024-03-29 22:18:01');
INSERT INTO `feedback` VALUES ('8', '9', '66666666666', '赵无极', '2024-03-29 22:18:18');
INSERT INTO `feedback` VALUES ('9', '7', '哈哈哈哈哈哈', '李四', '2024-03-29 22:18:39');
INSERT INTO `feedback` VALUES ('10', '1', '很好很给力', '哈哈哈', '2024-04-01 18:38:30');
INSERT INTO `feedback` VALUES ('11', '1', '很好很给', '哈哈哈', '2024-04-01 18:38:43');
INSERT INTO `feedback` VALUES ('12', '1', '很好很', '哈哈哈', '2024-04-01 18:38:59');
INSERT INTO `feedback` VALUES ('13', '1', '很好很', '哈哈哈', '2024-04-01 18:42:21');
INSERT INTO `feedback` VALUES ('15', '1', '很好很', '哈哈哈', '2024-04-01 18:42:42');
INSERT INTO `feedback` VALUES ('16', '1', 'aaaa', '哈哈哈', '2024-04-01 19:45:24');
INSERT INTO `feedback` VALUES ('17', '1', '点赞！', '哈哈哈', '2024-04-01 19:49:10');
INSERT INTO `feedback` VALUES ('18', '5', '风萧萧，雨条条', 'zhangsan', '2024-04-03 15:39:17');

-- ----------------------------
-- Table structure for house
-- ----------------------------
DROP TABLE IF EXISTS `house`;
CREATE TABLE `house` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(30) DEFAULT NULL COMMENT '地址',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '展示图片所在路径',
  `type` varchar(30) DEFAULT NULL COMMENT '房屋类型',
  `price` varchar(10) DEFAULT NULL COMMENT '价格',
  `about` varchar(255) DEFAULT NULL COMMENT '简介',
  `landlord_id` int DEFAULT NULL COMMENT '房主id',
  `status` tinyint DEFAULT '1',
  `username` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `landlord_id` (`landlord_id`),
  CONSTRAINT `house_ibfk_1` FOREIGN KEY (`landlord_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='房屋表';

-- ----------------------------
-- Records of house
-- ----------------------------
INSERT INTO `house` VALUES ('1', '江苏省盐城市亭湖区', 'http://localhost:8080/img/005bd476-0b05-4ff5-be0a-8109231fa9f7.jpg', '三室一厅一厨一卫', '1500', '舒适安逸，价格美丽！', '1', '1', '哈哈哈');
INSERT INTO `house` VALUES ('2', '河南驻马店驿城区', 'http://localhost:8080/img/7b482114-93c9-477d-9538-e73db679ca0e.jpg', '一房一厅一厨一卫', '600', '经济实惠，地段好', '1', '1', '哈哈哈');
INSERT INTO `house` VALUES ('3', '江苏省苏州市吴中区', 'http://localhost:8080/img/ef2ba8d2-0e6d-4be2-9775-ed373ee5a7bf.jpg', '二室一厅一卫', '1025', '地大,你值得拥有的住房！\n天高任鸟飞', '1', '1', '哈哈哈');
INSERT INTO `house` VALUES ('4', '江苏省淮安市', 'http://localhost:8080/img/5fe12b48-d9d9-4b0a-8a6e-d42594713449.jpg', '二室二厅一厨一卫', '2300.00', '环境优美,观光旅游的胜地', '1', '1', '哈哈哈');
INSERT INTO `house` VALUES ('7', '浙江杭州市', 'http://localhost:8080/img/be2c6fc7-fff8-4825-b515-e11f964dea71.jpg', '一室一厅一卫', '3000', '学区房，环境好，学习氛围浓厚', '8', '1', '王五');
INSERT INTO `house` VALUES ('10', '江苏省盐城市亭湖区', 'http://localhost:8080/img/11c0db0c-ab79-4cb9-baa6-a9521a67231f.jpg', '养老公寓', '2388', '观景优美，养老圣地！', '1', '1', '哈哈哈');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(30) DEFAULT NULL COMMENT '地址',
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '展示图片所在路径',
  `type` varchar(30) DEFAULT NULL COMMENT '房屋类型',
  `price` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '价格',
  `create_time` datetime DEFAULT NULL COMMENT '下单时间',
  `status` tinyint DEFAULT '0' COMMENT '支付状态：0为未支付，1为已支付',
  `lessee_id` int DEFAULT NULL COMMENT '租户id',
  `house_id` int DEFAULT NULL COMMENT '房主id',
  `landlord_name` varchar(30) DEFAULT NULL,
  `lessee_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lessee_id` (`lessee_id`),
  KEY `order_ibfk_2` (`house_id`),
  CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`lessee_id`) REFERENCES `user` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`house_id`) REFERENCES `house` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='订单表';

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('20', '江苏省盐城市亭湖区', 'http://localhost:8080/img/005bd476-0b05-4ff5-be0a-8109231fa9f7.jpg', '三室一厅一厨一卫', '1500', '2024-04-03 16:48:00', '0', '5', '1', '哈哈哈', 'zhangsan');
INSERT INTO `orders` VALUES ('21', '河南驻马店驿城区', 'http://localhost:8080/img/7b482114-93c9-477d-9538-e73db679ca0e.jpg', '一房一厅一厨一卫', '600', '2024-04-03 16:48:05', '0', '5', '2', '哈哈哈', 'zhangsan');
INSERT INTO `orders` VALUES ('22', '江苏省苏州市吴中区', 'http://localhost:8080/img/ef2ba8d2-0e6d-4be2-9775-ed373ee5a7bf.jpg', '二室一厅一卫', '1025', '2024-04-03 16:48:07', '1', '5', '3', '哈哈哈', 'zhangsan');
INSERT INTO `orders` VALUES ('23', '江苏省淮安市', 'http://localhost:8080/img/5fe12b48-d9d9-4b0a-8a6e-d42594713449.jpg', '二室二厅一厨一卫', '2300.00', '2024-04-03 16:48:09', '0', '5', '4', '哈哈哈', 'zhangsan');
INSERT INTO `orders` VALUES ('24', '浙江杭州市', 'http://localhost:8080/img/be2c6fc7-fff8-4825-b515-e11f964dea71.jpg', '一室一厅一卫', '3000', '2024-04-03 16:48:12', '0', '5', '7', '王五', 'zhangsan');
INSERT INTO `orders` VALUES ('26', '江苏省盐城市亭湖区', 'http://localhost:8080/img/11c0db0c-ab79-4cb9-baa6-a9521a67231f.jpg', '养老公寓', '2388', '2024-04-04 23:44:56', '1', '5', '10', '哈哈哈', 'zhangsan');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(20) DEFAULT NULL COMMENT '用户名',
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '密码',
  `active` tinyint DEFAULT '1' COMMENT '帐号状态(0为冻结，1为正常)',
  `telephone` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `role` tinyint DEFAULT NULL COMMENT '角色: 0为管理员,1为房主,2为普通用户',
  `create_time` date DEFAULT NULL COMMENT '创建时间',
  `image_url` varchar(255) DEFAULT NULL COMMENT '头像所在路径',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '哈哈哈', 'e10adc3949ba59abbe56e057f20f883e', '1', '15254564467', '1', '2024-03-18', 'http://localhost:8080/img/10c9aa34-962c-42f5-8424-9a7e099d6583.jpg');
INSERT INTO `user` VALUES ('2', 'aaaa', 'e10adc3949ba59abbe56e057f20f883e', '1', '15899996646', '0', '2024-03-18', 'http://localhost:8080/img/1c451dc2-0fbc-40ea-85a5-72499e266182.png');
INSERT INTO `user` VALUES ('4', '汪大仙', 'ac9f31026266f65c9ec6348ae606bce9', '1', '15655665898', '2', '2024-03-18', null);
INSERT INTO `user` VALUES ('5', 'zhangsan', 'e10adc3949ba59abbe56e057f20f883e', '1', '15866668888', '2', '2024-03-23', 'http://localhost:8080/img/de84efec-bfc7-43aa-89b6-1113977691fd.jpg');
INSERT INTO `user` VALUES ('6', '王柏川', 'e10adc3949ba59abbe56e057f20f883e', '1', '15966662375', '2', '2024-03-23', null);
INSERT INTO `user` VALUES ('7', '李四', 'e10adc3949ba59abbe56e057f20f883e', '1', '15866213356', '2', '2024-03-26', null);
INSERT INTO `user` VALUES ('8', '王五', 'e10adc3949ba59abbe56e057f20f883e', '1', '13766542563', '1', '2024-03-26', 'http://localhost:8080/img/e54fdf9d-e242-4740-a027-d787a15d65dd.jpg');
INSERT INTO `user` VALUES ('9', '赵无极', 'e10adc3949ba59abbe56e057f20f883e', '1', '15899889522', '1', '2024-03-28', null);
INSERT INTO `user` VALUES ('10', '王德法', 'e10adc3949ba59abbe56e057f20f883e', '1', '18765431122', '2', '2024-03-30', null);

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t330`;
CREATE DATABASE IF NOT EXISTS `t330` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t330`;

DROP TABLE IF EXISTS `baoxui`;
CREATE TABLE IF NOT EXISTS `baoxui` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `chongdianzhuang_id` int DEFAULT NULL COMMENT '充电桩',
  `baoxui_name` varchar(200) DEFAULT NULL COMMENT '报修名称 Search111',
  `baoxui_photo` varchar(200) DEFAULT NULL COMMENT '报修图片',
  `baoxui_types` int NOT NULL COMMENT '报修类型 Search111',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '申请反馈时间',
  `baoxui_zhuangtai_types` int NOT NULL COMMENT '报修状态 Search111',
  `baoxui_content` text COMMENT '报修详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COMMENT='反馈';

DELETE FROM `baoxui`;
INSERT INTO `baoxui` (`id`, `yonghu_id`, `chongdianzhuang_id`, `baoxui_name`, `baoxui_photo`, `baoxui_types`, `insert_time`, `baoxui_zhuangtai_types`, `baoxui_content`, `create_time`) VALUES
	(1, 2, 1, '报修名称1', 'upload/baoxui1.jpg', 1, '2023-03-11 02:04:07', 2, '报修详情1', '2023-03-11 02:04:07'),
	(2, 3, 2, '报修名称2', 'upload/baoxui2.jpg', 4, '2023-03-11 02:04:07', 1, '报修详情2', '2023-03-11 02:04:07'),
	(3, 3, 3, '报修名称3', 'upload/baoxui3.jpg', 1, '2023-03-11 02:04:07', 2, '报修详情3', '2023-03-11 02:04:07'),
	(4, 2, 4, '报修名称4', 'upload/baoxui4.jpg', 3, '2023-03-11 02:04:07', 2, '报修详情4', '2023-03-11 02:04:07'),
	(5, 2, 5, '报修名称5', 'upload/baoxui5.jpg', 3, '2023-03-11 02:04:07', 2, '报修详情5', '2023-03-11 02:04:07'),
	(6, 2, 6, '报修名称6', 'upload/baoxui6.jpg', 4, '2023-03-11 02:04:07', 1, '报修详情6', '2023-03-11 02:04:07'),
	(7, 2, 7, '报修名称7', 'upload/baoxui7.jpg', 2, '2023-03-11 02:04:07', 1, '报修详情7', '2023-03-11 02:04:07'),
	(8, 1, 8, '报修名称8', 'upload/baoxui8.jpg', 1, '2023-03-11 02:04:07', 1, '报修详情8', '2023-03-11 02:04:07'),
	(9, 3, 9, '报修名称9', 'upload/baoxui9.jpg', 3, '2023-03-11 02:04:07', 1, '报修详情9', '2023-03-11 02:04:07'),
	(10, 3, 10, '报修名称10', 'upload/baoxui10.jpg', 4, '2023-03-11 02:04:07', 1, '报修详情10', '2023-03-11 02:04:07'),
	(11, 3, 11, '报修名称11', 'upload/baoxui11.jpg', 4, '2023-03-11 02:04:07', 2, '报修详情11', '2023-03-11 02:04:07'),
	(12, 1, 12, '报修名称12', 'upload/baoxui12.jpg', 1, '2023-03-11 02:04:07', 2, '报修详情12', '2023-03-11 02:04:07'),
	(13, 2, 13, '报修名称13', 'upload/baoxui13.jpg', 4, '2023-03-11 02:04:07', 2, '报修详情13', '2023-03-11 02:04:07'),
	(14, 1, 14, '报修名称14', 'upload/baoxui14.jpg', 3, '2023-03-11 02:04:07', 1, '报修详情14', '2023-03-11 02:04:07'),
	(25, 1, 1, '22', 'upload/1678504431311.jpg', 1, '2023-03-11 03:13:57', 2, '<p>安排人员维修 </p>', '2023-03-11 03:13:57');

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int DEFAULT NULL COMMENT '提问用户',
  `chat_issue` varchar(200) DEFAULT NULL COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间 Search111',
  `chat_reply` varchar(200) DEFAULT NULL COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间 Search111',
  `zhuangtai_types` int DEFAULT NULL COMMENT '状态',
  `chat_types` int DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `yonghu_id`, `chat_issue`, `issue_time`, `chat_reply`, `reply_time`, `zhuangtai_types`, `chat_types`, `insert_time`) VALUES
	(1, 1, '呀呀呀', '2023-03-11 03:14:23', NULL, NULL, 2, 1, '2023-03-11 03:14:24'),
	(2, 1, NULL, NULL, '你哈偶', '2023-03-11 03:16:20', NULL, 2, '2023-03-11 03:16:20');

DROP TABLE IF EXISTS `chongdianzhuang`;
CREATE TABLE IF NOT EXISTS `chongdianzhuang` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `chongdianzhuang_name` varchar(200) DEFAULT NULL COMMENT '充电桩名称  Search111 ',
  `chongdianzhuang_uuid_number` varchar(200) DEFAULT NULL COMMENT '充电桩编号',
  `chongdianzhuang_photo` varchar(200) DEFAULT NULL COMMENT '充电桩照片',
  `chongdianzhuang_types` int DEFAULT NULL COMMENT '充电桩类型 Search111',
  `chongdianzhuang_zhuangtai_types` int DEFAULT NULL COMMENT '充电桩状态',
  `chongdianzhuang_kucun_number` int DEFAULT NULL COMMENT '可充时长',
  `chongdianzhuang_new_money` decimal(10,2) DEFAULT NULL COMMENT '金额/小时 ',
  `chongdianzhuang_content` text COMMENT '充电桩介绍 ',
  `shangxia_types` int DEFAULT NULL COMMENT '是否上架 ',
  `chongdianzhuang_delete` int DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='充电桩';

DELETE FROM `chongdianzhuang`;
INSERT INTO `chongdianzhuang` (`id`, `chongdianzhuang_name`, `chongdianzhuang_uuid_number`, `chongdianzhuang_photo`, `chongdianzhuang_types`, `chongdianzhuang_zhuangtai_types`, `chongdianzhuang_kucun_number`, `chongdianzhuang_new_money`, `chongdianzhuang_content`, `shangxia_types`, `chongdianzhuang_delete`, `insert_time`, `create_time`) VALUES
	(1, '充电桩名称1', '1678500247811', '/upload/1678504274093.jpg', 2, 2, 101, 20.00, '充电桩介绍1', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(2, '充电桩名称2', '1678500247820', '/upload/1678504253759.jpg!bd800', 2, 1, 102, 20.00, '充电桩介绍2', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(3, '充电桩名称3', '1678500247785', '/upload/1678504238032.jpg', 4, 1, 103, 20.00, '充电桩介绍3', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(4, '充电桩名称4', '1678500247849', '/upload/1678504221288.jpg', 4, 2, 104, 20.00, '充电桩介绍4', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(5, '充电桩名称5', '1678500247769', '/upload/1678504157716.jpg', 1, 2, 105, 20.00, '充电桩介绍5', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(6, '充电桩名称6', '1678500247809', '/upload/1678504274093.jpg', 3, 2, 106, 20.00, '充电桩介绍6', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(7, '充电桩名称7', '1678500247790', '/upload/1678504253759.jpg!bd800', 4, 1, 107, 20.00, '充电桩介绍7', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(8, '充电桩名称8', '1678500247792', '/upload/1678504238032.jpg', 3, 2, 108, 20.00, '充电桩介绍8', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(9, '充电桩名称9', '1678500247787', '/upload/1678504221288.jpg', 3, 2, 109, 20.00, '充电桩介绍9', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(10, '充电桩名称10', '1678500247854', '/upload/1678504274093.jpg', 4, 2, 1010, 20.00, '<p>充电桩介绍10</p>', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(11, '充电桩名称11', '1678500247785', '/upload/1678504253759.jpg!bd800', 3, 1, 1011, 20.00, '<p>充电桩介绍11</p>', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(12, '充电桩名称12', '1678500247855', '/upload/1678504238032.jpg', 1, 1, 1012, 20.00, '<p>充电桩介绍12</p>', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(13, '充电桩名称13', '1678500247784', '/upload/1678504221288.jpg', 2, 2, 1007, 20.00, '<p>充电桩介绍13</p>', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07'),
	(14, '充电桩名称14', '1678500247769', '/upload/1678504157716.jpg', 3, 1, 1014, 20.00, '<p>充电桩介绍14</p>', 1, 1, '2023-03-11 02:04:07', '2023-03-11 02:04:07');

DROP TABLE IF EXISTS `chongdianzhuang_order`;
CREATE TABLE IF NOT EXISTS `chongdianzhuang_order` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `chongdianzhuang_id` int DEFAULT NULL COMMENT '充电桩',
  `yonghu_id` int DEFAULT NULL COMMENT '用户',
  `buy_number` int DEFAULT NULL COMMENT '充电小时',
  `chongdianzhuang_order_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `chongdianzhuang_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `chongdianzhuang_order_types` int DEFAULT NULL COMMENT '订单类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='充电桩预约';

DELETE FROM `chongdianzhuang_order`;
INSERT INTO `chongdianzhuang_order` (`id`, `chongdianzhuang_id`, `yonghu_id`, `buy_number`, `chongdianzhuang_order_time`, `chongdianzhuang_order_true_price`, `chongdianzhuang_order_types`, `insert_time`, `create_time`) VALUES
	(1, 13, 1, 3, '2023-03-11 02:12:58', 60.00, 104, '2023-03-11 02:13:00', '2023-03-11 02:13:00'),
	(2, 13, 1, 3, '2023-03-12 03:13:26', 60.00, 101, '2023-03-11 03:13:33', '2023-03-11 03:13:33');

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, '轮播图1', 'upload/config1.jpg'),
	(2, '轮播图2', 'upload/config2.jpg'),
	(3, '轮播图3', 'upload/config3.jpg');

DROP TABLE IF EXISTS `dictionary`;
CREATE TABLE IF NOT EXISTS `dictionary` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='字典';

DELETE FROM `dictionary`;
INSERT INTO `dictionary` (`id`, `dic_code`, `dic_name`, `code_index`, `index_name`, `super_id`, `beizhu`, `create_time`) VALUES
	(1, 'sex_types', '性别类型', 1, '男', NULL, NULL, '2023-03-11 02:03:55'),
	(2, 'sex_types', '性别类型', 2, '女', NULL, NULL, '2023-03-11 02:03:55'),
	(3, 'gonggao_types', '公告类型', 1, '公告类型1', NULL, NULL, '2023-03-11 02:03:55'),
	(4, 'gonggao_types', '公告类型', 2, '公告类型2', NULL, NULL, '2023-03-11 02:03:55'),
	(5, 'chat_types', '数据类型', 1, '问题', NULL, NULL, '2023-03-11 02:03:55'),
	(6, 'chat_types', '数据类型', 2, '回复', NULL, NULL, '2023-03-11 02:03:55'),
	(7, 'zhuangtai_types', '状态', 1, '未回复', NULL, NULL, '2023-03-11 02:03:55'),
	(8, 'zhuangtai_types', '状态', 2, '已回复', NULL, NULL, '2023-03-11 02:03:55'),
	(9, 'shangxia_types', '上下架', 1, '上架', NULL, NULL, '2023-03-11 02:03:55'),
	(10, 'shangxia_types', '上下架', 2, '下架', NULL, NULL, '2023-03-11 02:03:55'),
	(11, 'chongdianzhuang_zhuangtai_types', '充电桩状态', 1, '使用中', NULL, NULL, '2023-03-11 02:03:55'),
	(12, 'chongdianzhuang_zhuangtai_types', '充电桩状态', 2, '未使用', NULL, NULL, '2023-03-11 02:03:56'),
	(13, 'chongdianzhuang_types', '充电桩类型', 1, '充电桩类型1', NULL, NULL, '2023-03-11 02:03:56'),
	(14, 'chongdianzhuang_types', '充电桩类型', 2, '充电桩类型2', NULL, NULL, '2023-03-11 02:03:56'),
	(15, 'chongdianzhuang_types', '充电桩类型', 3, '充电桩类型3', NULL, NULL, '2023-03-11 02:03:56'),
	(16, 'chongdianzhuang_types', '充电桩类型', 4, '充电桩类型4', NULL, NULL, '2023-03-11 02:03:56'),
	(17, 'chongdianzhuang_order_types', '订单类型', 101, '已预约充电', NULL, NULL, '2023-03-11 02:03:56'),
	(18, 'chongdianzhuang_order_types', '订单类型', 102, '已取消预约', NULL, NULL, '2023-03-11 02:03:56'),
	(19, 'chongdianzhuang_order_types', '订单类型', 103, '已在充电中', NULL, NULL, '2023-03-11 02:03:56'),
	(20, 'chongdianzhuang_order_types', '订单类型', 104, '已完成充电', NULL, NULL, '2023-03-11 02:03:56'),
	(21, 'baoxui_types', '充电桩类型', 1, '充电桩类型1', NULL, NULL, '2023-03-11 02:03:56'),
	(22, 'baoxui_types', '充电桩类型', 2, '充电桩类型2', NULL, NULL, '2023-03-11 02:03:56'),
	(23, 'baoxui_types', '充电桩类型', 3, '充电桩类型3', NULL, NULL, '2023-03-11 02:03:56'),
	(24, 'baoxui_types', '充电桩类型', 4, '充电桩类型4', NULL, NULL, '2023-03-11 02:03:56'),
	(25, 'baoxui_zhuangtai_types', '报修状态', 1, '未维修', NULL, NULL, '2023-03-11 02:03:56'),
	(26, 'baoxui_zhuangtai_types', '报修状态', 2, '已维修', NULL, NULL, '2023-03-11 02:03:56');

DROP TABLE IF EXISTS `gonggao`;
CREATE TABLE IF NOT EXISTS `gonggao` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` text COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COMMENT='新能源公告';

DELETE FROM `gonggao`;
INSERT INTO `gonggao` (`id`, `gonggao_name`, `gonggao_photo`, `gonggao_types`, `insert_time`, `gonggao_content`, `create_time`) VALUES
	(1, '公告名称1', 'upload/gonggao1.jpg', 2, '2023-03-11 02:04:07', '公告详情1', '2023-03-11 02:04:07'),
	(2, '公告名称2', 'upload/gonggao2.jpg', 1, '2023-03-11 02:04:07', '公告详情2', '2023-03-11 02:04:07'),
	(3, '公告名称3', 'upload/gonggao3.jpg', 2, '2023-03-11 02:04:07', '公告详情3', '2023-03-11 02:04:07'),
	(4, '公告名称4', 'upload/gonggao4.jpg', 1, '2023-03-11 02:04:07', '公告详情4', '2023-03-11 02:04:07'),
	(5, '公告名称5', 'upload/gonggao5.jpg', 2, '2023-03-11 02:04:07', '公告详情5', '2023-03-11 02:04:07'),
	(6, '公告名称6', 'upload/gonggao6.jpg', 1, '2023-03-11 02:04:07', '公告详情6', '2023-03-11 02:04:07'),
	(7, '公告名称7', 'upload/gonggao7.jpg', 2, '2023-03-11 02:04:07', '公告详情7', '2023-03-11 02:04:07'),
	(8, '公告名称8', 'upload/gonggao8.jpg', 1, '2023-03-11 02:04:07', '公告详情8', '2023-03-11 02:04:07'),
	(9, '公告名称9', 'upload/gonggao9.jpg', 1, '2023-03-11 02:04:07', '公告详情9', '2023-03-11 02:04:07'),
	(10, '公告名称10', 'upload/gonggao10.jpg', 2, '2023-03-11 02:04:07', '公告详情10', '2023-03-11 02:04:07'),
	(11, '公告名称11', 'upload/gonggao11.jpg', 2, '2023-03-11 02:04:07', '公告详情11', '2023-03-11 02:04:07'),
	(12, '公告名称12', 'upload/gonggao12.jpg', 2, '2023-03-11 02:04:07', '公告详情12', '2023-03-11 02:04:07'),
	(13, '公告名称13', 'upload/gonggao13.jpg', 2, '2023-03-11 02:04:07', '公告详情13', '2023-03-11 02:04:07'),
	(14, '公告名称14', 'upload/gonggao14.jpg', 2, '2023-03-11 02:04:07', '公告详情14', '2023-03-11 02:04:07');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'a1', 'yonghu', '用户', 'p83p8c65saei5x9mx0mbg415fmygk0bd', '2023-03-11 02:06:01', '2024-08-04 03:20:13'),
	(2, 1, 'admin', 'users', '管理员', 'tlr3dloz4d36wb0xtmrk82ey3tzcoddg', '2023-03-11 02:11:36', '2024-08-04 03:19:15');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='管理员';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2023-03-11 02:03:55');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `username`, `password`, `yonghu_name`, `yonghu_phone`, `yonghu_id_number`, `yonghu_photo`, `sex_types`, `yonghu_email`, `new_money`, `create_time`) VALUES
	(1, '用户1', '123456', '用户姓名1', '17703786901', '410224199010102001', 'upload/yonghu1.jpg', 1, '1@qq.com', 10.66, '2023-03-11 02:04:07'),
	(2, '用户2', '123456', '用户姓名2', '17703786902', '410224199010102002', 'upload/yonghu2.jpg', 1, '2@qq.com', 694.02, '2023-03-11 02:04:07'),
	(3, '用户3', '123456', '用户姓名3', '17703786903', '410224199010102003', 'upload/yonghu3.jpg', 1, '3@qq.com', 483.95, '2023-03-11 02:04:07');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;

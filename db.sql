/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanjiajiaojianzhi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanjiajiaojianzhi` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanjiajiaojianzhi`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/xiaoyuanjiajiaojianzhi/upload/1620269865955.jpg'),(2,'picture2','http://localhost:8080/xiaoyuanjiajiaojianzhi/upload/1620269871578.jpg'),(3,'picture3','http://localhost:8080/xiaoyuanjiajiaojianzhi/upload/1620269879145.jpg'),(6,'homepage','http://localhost:8080/xiaoyuanjiajiaojianzhi/upload/1620269887434.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` tinyint(4) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字',
  `super_types` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-05-06 09:32:41'),(2,'sex_types','性别',2,'女',NULL,'2021-05-06 09:32:41'),(3,'news_types','新闻类型名称',1,'新闻类型1',NULL,'2021-05-06 09:32:41'),(4,'news_types','新闻类型名称',2,'新闻类型2',NULL,'2021-05-06 09:32:41'),(5,'xuqiu_types','家教类型名称',1,'类型1',NULL,'2021-05-06 09:32:41'),(6,'xuqiu_types','家教类型名称',2,'类型2',NULL,'2021-05-06 09:32:41'),(7,'xuqiu_types','家教类型名称',3,'类型3',NULL,'2021-05-06 09:32:41');

/*Table structure for table `jiajiao` */

DROP TABLE IF EXISTS `jiajiao`;

CREATE TABLE `jiajiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `jiajiao_name` varchar(200) DEFAULT NULL COMMENT '家教姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `xuqiu_types` int(11) DEFAULT NULL COMMENT '家教类型 Search111',
  `jiajiao_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `jiajiao_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `jiajiao_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `jiajiao_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='家教';

/*Data for the table `jiajiao` */

insert  into `jiajiao`(`id`,`username`,`password`,`jiajiao_name`,`sex_types`,`xuqiu_types`,`jiajiao_id_number`,`jiajiao_phone`,`jiajiao_email`,`jiajiao_photo`,`create_time`) values (1,'333','123456','家教1',2,1,'410882200011134611','17755544681','1111111@qq.com','http://localhost:8080/xiaoyuanjiajiaojianzhi/file/download?fileName=1620267228443.jpg','2021-05-06 10:13:49'),(2,'444','123456','家教2',1,3,'410882200011134612','17755544682','222222222@qq.com','http://localhost:8080/xiaoyuanjiajiaojianzhi/file/download?fileName=1620269853431.jpg','2021-05-06 10:57:34');

/*Table structure for table `jiajiao_collection` */

DROP TABLE IF EXISTS `jiajiao_collection`;

CREATE TABLE `jiajiao_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiajiao_id` int(11) DEFAULT NULL COMMENT '家教',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='家教收藏';

/*Data for the table `jiajiao_collection` */

insert  into `jiajiao_collection`(`id`,`jiajiao_id`,`yonghu_id`,`insert_time`,`create_time`) values (1,2,1,'2021-05-06 11:33:11','2021-05-06 11:33:11');

/*Table structure for table `jiajiao_liuyan` */

DROP TABLE IF EXISTS `jiajiao_liuyan`;

CREATE TABLE `jiajiao_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiajiao_id` int(11) DEFAULT NULL COMMENT '家教',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiajiao_liuyan_content` text COMMENT '评价内容',
  `reply_content` text COMMENT '回复内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='家教评价';

/*Data for the table `jiajiao_liuyan` */

insert  into `jiajiao_liuyan`(`id`,`jiajiao_id`,`yonghu_id`,`jiajiao_liuyan_content`,`reply_content`,`insert_time`,`create_time`) values (1,2,1,'1111111',NULL,'2021-05-06 11:32:54','2021-05-06 11:32:54');

/*Table structure for table `jiajiao_order` */

DROP TABLE IF EXISTS `jiajiao_order`;

CREATE TABLE `jiajiao_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiajiao_id` int(11) DEFAULT NULL COMMENT '家教',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiajiao_time` timestamp NULL DEFAULT NULL COMMENT '见面时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='家教订单';

/*Data for the table `jiajiao_order` */

insert  into `jiajiao_order`(`id`,`jiajiao_id`,`yonghu_id`,`jiajiao_time`,`create_time`) values (2,1,1,'2021-05-14 00:00:00','2021-05-06 10:51:25'),(3,2,1,'2021-05-08 00:00:00','2021-05-06 11:33:05');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '新闻名称 Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '新闻类型 Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '新闻图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '新闻时间',
  `news_content` text COMMENT '新闻详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='新闻';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (3,'新闻1',1,'http://localhost:8080/xiaoyuanjiajiaojianzhi/file/download?fileName=1620269911214.jpg','2021-05-06 10:58:34','新闻详情1\r\n','2021-05-06 10:58:34'),(4,'新闻2',2,'http://localhost:8080/xiaoyuanjiajiaojianzhi/file/download?fileName=1620269922398.jpg','2021-05-06 10:58:44','新闻详情2\r\n','2021-05-06 10:58:44');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','j9uter26vrs778s45xsf8olcdyddlws5','2021-05-06 09:48:24','2021-05-06 12:35:38'),(2,1,'111','yonghu','用户','a1erpvdjnyl7jysvr3drvbqj998rn29v','2021-05-06 10:38:33','2021-05-06 12:33:28'),(3,1,'333','jiajiao','家教','wcmsn7mtgfghgoqntuzml4qc6sc5drbq','2021-05-06 11:26:49','2021-05-06 12:26:49');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2021-02-25 15:59:12');

/*Table structure for table `xuqiu` */

DROP TABLE IF EXISTS `xuqiu`;

CREATE TABLE `xuqiu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xuqiu_name` varchar(200) DEFAULT NULL COMMENT '家教需求 Search111 ',
  `yonghu_id` int(200) DEFAULT NULL COMMENT '发布用户 Search111 ',
  `xuqiu_types` int(11) DEFAULT NULL COMMENT '家教类型 Search111 ',
  `xuqiu_photo` varchar(200) DEFAULT NULL COMMENT '图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布时间',
  `xuqiu_content` text COMMENT '详情信息',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='家教需求';

/*Data for the table `xuqiu` */

insert  into `xuqiu`(`id`,`xuqiu_name`,`yonghu_id`,`xuqiu_types`,`xuqiu_photo`,`insert_time`,`xuqiu_content`,`create_time`) values (1,'家教需求1',1,1,'http://localhost:8080/xiaoyuanjiajiaojianzhi/file/download?fileName=1620269821008.jpg','2021-05-06 10:57:04','详情信息1\r\n','2021-05-06 10:57:04'),(2,'家教需求2',2,2,'http://localhost:8080/xiaoyuanjiajiaojianzhi/file/download?fileName=1620269831948.jpg','2021-05-06 10:57:13','详情信息2\r\n','2021-05-06 10:57:13');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search111',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_email`,`yonghu_photo`,`create_time`) values (1,'111','123456','用户1',2,'410882200011216111','13549944687','11111@qq.com','http://localhost:8080/xiaoyuanjiajiaojianzhi/file/download?fileName=1620267170716.jpg','2021-05-06 10:12:51'),(2,'222','123456','用户2',2,'410882200011216112','13549944682','22222@qq.com','http://localhost:8080/xiaoyuanjiajiaojianzhi/file/download?fileName=1620267187371.jpg','2021-05-06 10:13:08'),(3,'123','123456','123',1,'410882200011216123','13549944123','123123@qq.com','http://localhost:8080/xiaoyuanjiajiaojianzhi/file/download?fileName=1620271341380.jpg','2021-05-06 11:22:22');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

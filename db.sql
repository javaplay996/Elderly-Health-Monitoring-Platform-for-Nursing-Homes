/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - yanglaoyuanlaorenjiangkang
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`yanglaoyuanlaorenjiangkang` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `yanglaoyuanlaorenjiangkang`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/gongchengcailiao/upload/1614999756013.jpg'),(2,'picture2','http://localhost:8080/gongchengcailiao/upload/1614999769770.jpg'),(3,'picture3','http://localhost:8080/gongchengcailiao/upload/1614999778981.jpg'),(6,'homepage',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_types`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-04-08 17:29:33'),(2,'sex_types','性别',2,'女',NULL,'2021-04-08 17:29:33'),(3,'shiyaojilu_types','类型名称',1,'食物',NULL,'2021-04-08 17:29:33'),(4,'shiyaojilu_types','类型名称',2,'药物',NULL,'2021-04-08 17:29:33');

/*Table structure for table `laoren` */

DROP TABLE IF EXISTS `laoren`;

CREATE TABLE `laoren` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_name` varchar(200) DEFAULT NULL COMMENT '老人名称 Search',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search',
  `laoren_age` int(11) DEFAULT NULL COMMENT '年龄',
  `laoren_phone` varchar(200) DEFAULT NULL COMMENT '家属联系方式',
  `laoren_photo` varchar(200) DEFAULT NULL COMMENT '老人照片',
  `laoren_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `laoren_content` varchar(200) DEFAULT NULL COMMENT '身体情况',
  `laoren_time` timestamp NULL DEFAULT NULL COMMENT '入住时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='老人';

/*Data for the table `laoren` */

insert  into `laoren`(`id`,`laoren_name`,`sex_types`,`laoren_age`,`laoren_phone`,`laoren_photo`,`laoren_id_number`,`laoren_content`,`laoren_time`,`create_time`) values (22,'老人1',1,111,'111','http://localhost:8080/yanglaoyuanlaorenjiangkang/upload/1617954326200.jpg','111','<p>老人身体情况很好</p>','2021-04-09 15:45:28','2021-04-08 17:34:20'),(23,'老人2',2,222,'222222222','http://localhost:8080/yanglaoyuanlaorenjiangkang/upload/1617954316433.jpg','2123123123','<p>2222222</p>','2021-04-09 15:45:18',NULL);

/*Table structure for table `liuyanxinxi` */

DROP TABLE IF EXISTS `liuyanxinxi`;

CREATE TABLE `liuyanxinxi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `note` varchar(255) DEFAULT NULL COMMENT '留言信息',
  `yhnote` varchar(11) DEFAULT NULL COMMENT '留言人',
  `note_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '留言时间 Search',
  `reply` varchar(255) DEFAULT NULL COMMENT '回复',
  `glreply` varchar(11) DEFAULT NULL COMMENT '回复人',
  `reply_time` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '回复时间 Search',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='留言';

/*Data for the table `liuyanxinxi` */

insert  into `liuyanxinxi`(`id`,`note`,`yhnote`,`note_time`,`reply`,`glreply`,`reply_time`) values (7,'留言信息1','留言人1','2021-04-08 17:29:33','回复内容1','回复人1','2021-04-08 17:29:33'),(8,'留言信息2','留言人2','2021-04-08 17:29:33','123123123','admin','2021-04-09 15:47:50'),(14,'123123123123123','张山','2021-04-09 15:49:41','123123','admin','2021-04-09 15:50:22'),(15,'33333333333333','张文','2021-04-09 15:50:04','123312123','admin','2021-04-09 15:50:16');

/*Table structure for table `shentizhibiao` */

DROP TABLE IF EXISTS `shentizhibiao`;

CREATE TABLE `shentizhibiao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_types` int(11) DEFAULT NULL COMMENT '老人',
  `shentizhibiao_tiwen` varchar(200) DEFAULT NULL COMMENT '体温',
  `shentizhibiao_xieya` varchar(200) DEFAULT NULL COMMENT '血压',
  `shentizhibiao_xietang` varchar(200) DEFAULT NULL COMMENT '血糖',
  `shentizhibiao_xinlu` varchar(200) DEFAULT NULL COMMENT '心率',
  `shentizhibiao_time` timestamp NULL DEFAULT NULL COMMENT '测试时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='身体指标';

/*Data for the table `shentizhibiao` */

insert  into `shentizhibiao`(`id`,`laoren_types`,`shentizhibiao_tiwen`,`shentizhibiao_xieya`,`shentizhibiao_xietang`,`shentizhibiao_xinlu`,`shentizhibiao_time`,`create_time`) values (22,22,'体温1','血压1','血糖1','心率1','2021-04-08 20:46:50',NULL),(23,23,'体温2','血压2','血糖2','心率2','2021-04-09 15:46:04',NULL);

/*Table structure for table `shiyaojilu` */

DROP TABLE IF EXISTS `shiyaojilu`;

CREATE TABLE `shiyaojilu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_types` int(11) DEFAULT NULL COMMENT '老人',
  `shiyaojilu_name` varchar(200) DEFAULT NULL COMMENT '名称 Search',
  `shiyaojilu_types` int(11) DEFAULT NULL COMMENT '类型',
  `shiyaojilu_content` varchar(200) DEFAULT NULL COMMENT '详情',
  `shiyaojilu_time` timestamp NULL DEFAULT NULL COMMENT '食用时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='食药记录';

/*Data for the table `shiyaojilu` */

insert  into `shiyaojilu`(`id`,`laoren_types`,`shiyaojilu_name`,`shiyaojilu_types`,`shiyaojilu_content`,`shiyaojilu_time`,`create_time`) values (22,22,'123',2,'<p>123123</p>','2021-04-08 17:38:13',NULL),(23,23,'123',1,'<p>123</p>','2021-04-08 19:37:11',NULL);

/*Table structure for table `tijianbingli` */

DROP TABLE IF EXISTS `tijianbingli`;

CREATE TABLE `tijianbingli` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_types` int(11) DEFAULT NULL COMMENT '老人',
  `tijianbingli_name` varchar(200) DEFAULT NULL COMMENT '体检项目',
  `tijianbingli_file` varchar(200) DEFAULT NULL COMMENT '体检报告',
  `tijianbingli_time` timestamp NULL DEFAULT NULL COMMENT '体检时间',
  `tijianbingli_content` varchar(200) DEFAULT NULL COMMENT '病例情况',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='体检病例';

/*Data for the table `tijianbingli` */

insert  into `tijianbingli`(`id`,`laoren_types`,`tijianbingli_name`,`tijianbingli_file`,`tijianbingli_time`,`tijianbingli_content`,`create_time`) values (23,22,'123','http://localhost:8080/yanglaoyuanlaorenjiangkang/upload/1617954410764.xls','2021-04-09 15:46:54','<p>123</p>',NULL),(24,23,'体检项目2','http://localhost:8080/yanglaoyuanlaorenjiangkang/upload/1617954378301.doc','2021-04-09 15:46:35','<p><span style=\"color: rgb(96, 98, 102);\">病例情况2</span></p>',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (6,4,'张文','users','用户','6ku28feh2s084jnqkicahc5bgg9xpphl','2021-04-09 15:22:09','2021-04-09 16:49:49'),(7,1,'admin','users','管理员','2d2bopq2839w968eq4awwpejdcok0d10','2021-04-09 15:43:46','2021-04-09 16:50:11'),(8,3,'张山','users','用户','vpa345smsntcw85t5pyjmde67efe4vly','2021-04-09 15:49:24','2021-04-09 16:49:25');

/*Table structure for table `tufaqingkuang` */

DROP TABLE IF EXISTS `tufaqingkuang`;

CREATE TABLE `tufaqingkuang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `laoren_types` int(11) DEFAULT NULL COMMENT '老人',
  `tijianbingli_name` varchar(200) DEFAULT NULL COMMENT '突发情况',
  `tijianbingli_content` varchar(200) DEFAULT NULL COMMENT '详情信息',
  `tijianbingli_time` timestamp NULL DEFAULT NULL COMMENT '发生时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COMMENT='突发情况';

/*Data for the table `tufaqingkuang` */

insert  into `tufaqingkuang`(`id`,`laoren_types`,`tijianbingli_name`,`tijianbingli_content`,`tijianbingli_time`,`create_time`) values (22,22,'123312','<p>123123</p>','2021-04-08 19:41:06',NULL),(23,23,'突发情况2','<p><span style=\"color: rgb(96, 98, 102);\">详情信息2</span></p>','2021-04-09 15:47:32',NULL);

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

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名  Search',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号  Search',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '手机号 Search',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `laoren_types` int(11) DEFAULT NULL COMMENT '入住老人',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`sex_types`,`yonghu_id_number`,`yonghu_phone`,`yonghu_photo`,`laoren_types`,`create_time`) values (3,'111','111','张山',2,'123123123123123','12312312312','http://localhost:8080/yanglaoyuanlaorenjiangkang/upload/1617954301515.jpg',22,NULL),(4,'222','222','张文',2,'12312312312312312','12312312312','http://localhost:8080/yanglaoyuanlaorenjiangkang/upload/1617954291204.jpg',23,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

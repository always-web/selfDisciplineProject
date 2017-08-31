/*
SQLyog Ultimate v11.33 (64 bit)
MySQL - 5.7.18 : Database - selfdiscipline
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`selfdiscipline` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `selfdiscipline`;

/*Table structure for table `scorelog` */

DROP TABLE IF EXISTS `scorelog`;

CREATE TABLE `scorelog` (
  `uid` varchar(32) NOT NULL,
  `userUid` int(10) NOT NULL COMMENT '用户表主键',
  `userItemsUid` varchar(32) DEFAULT NULL COMMENT '打分项目表主键',
  `logTime` datetime DEFAULT NULL,
  `isDelete` bit(1) DEFAULT NULL,
  `score` int(11) DEFAULT NULL COMMENT '分数',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `scorelog` */

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(10) NOT NULL AUTO_INCREMENT,
  `userName` varchar(25) DEFAULT NULL,
  `gender` smallint(1) DEFAULT '0' COMMENT '0:男 1:女',
  `loginPassWord` varchar(32) DEFAULT NULL,
  `userMobile` varchar(11) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `loginTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `isDelete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

/*Table structure for table `useritems` */

DROP TABLE IF EXISTS `useritems`;

CREATE TABLE `useritems` (
  `uid` varchar(32) NOT NULL,
  `userUid` int(10) DEFAULT NULL,
  `addTime` datetime DEFAULT NULL,
  `updateTime` datetime DEFAULT NULL,
  `isDelete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `useritems` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

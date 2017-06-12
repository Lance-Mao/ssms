/*
SQLyog 企业版 - MySQL GUI v8.14 
MySQL - 5.5.40 : Database - sams
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`sams` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `sams`;

/*Table structure for table `stu_sub_score` */

DROP TABLE IF EXISTS `stu_sub_score`;

CREATE TABLE `stu_sub_score` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `sub_math` float DEFAULT NULL,
  `sub_english` float DEFAULT NULL,
  `sub_chinese` float DEFAULT NULL,
  `sub_histhoy` float DEFAULT NULL,
  `sub_geography` float DEFAULT NULL,
  `sub_political` float DEFAULT NULL,
  `sub_pe` float DEFAULT NULL,
  `sub_number` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `stu_sub_score` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `stu_name` varchar(10) DEFAULT NULL,
  `stu_age` int(10) DEFAULT NULL,
  `stu_sex` varchar(10) DEFAULT NULL,
  `stu_number` int(20) DEFAULT NULL,
  `stu_class` varchar(10) DEFAULT NULL,
  `stu_grape` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `student` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- MySQL dump 10.13  Distrib 5.7.20, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: sams
-- ------------------------------------------------------
-- Server version	5.7.20-0ubuntu0.17.10.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `admin_info`
--

DROP TABLE IF EXISTS `admin_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `number` int(11) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_info`
--

LOCK TABLES `admin_info` WRITE;
/*!40000 ALTER TABLE `admin_info` DISABLE KEYS */;
INSERT INTO `admin_info` VALUES (1,'张三','123456',1,'管理员'),(2,'李四','123456',2,'管理员');
/*!40000 ALTER TABLE `admin_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `course` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `c_name` varchar(20) DEFAULT NULL,
  `c_score` varchar(20) DEFAULT NULL,
  `t_name` varchar(20) DEFAULT NULL,
  `t_number` varchar(20) DEFAULT NULL,
  `s_name` varchar(20) DEFAULT NULL,
  `s_number` varchar(20) DEFAULT NULL,
  `data` varchar(20) DEFAULT NULL,
  `credit` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `leave_word`
--

DROP TABLE IF EXISTS `leave_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `leave_word` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_number` int(11) DEFAULT NULL,
  `stu_name` varchar(20) DEFAULT NULL,
  `stu_msg` varchar(800) DEFAULT NULL,
  `tea_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `leave_word`
--

LOCK TABLES `leave_word` WRITE;
/*!40000 ALTER TABLE `leave_word` DISABLE KEYS */;
INSERT INTO `leave_word` VALUES (1,20150001,'张三','123456<br>','张三丰');
/*!40000 ALTER TABLE `leave_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `publish_info`
--

DROP TABLE IF EXISTS `publish_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `publish_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_number` int(11) DEFAULT NULL,
  `tea_name` varchar(20) DEFAULT NULL,
  `tea_msg` varchar(800) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `publish_info`
--

LOCK TABLES `publish_info` WRITE;
/*!40000 ALTER TABLE `publish_info` DISABLE KEYS */;
INSERT INTO `publish_info` VALUES (1,111,'张三','通知','2017-6-10'),(2,222,'李四','重要通知','2017-6-10'),(3,111,'张三','使用map处理单行记录','2017-6-10'),(4,111,'张三','<p>表单数据的验证： 前台验证：主要是通过JS验证， 表达数据是否合法！后台验证：通过后台java代码进行验证!Struts也提供了数据效验的方式！ Struts数据效验， 通过...\n    </p>','2017-6-10'),(5,111,'张三','','2017-06-11');
/*!40000 ALTER TABLE `publish_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_info`
--

DROP TABLE IF EXISTS `stu_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_number` varchar(20) DEFAULT NULL,
  `stu_name` varchar(20) DEFAULT NULL,
  `stu_age` int(11) DEFAULT NULL,
  `stu_sex` varchar(10) DEFAULT NULL,
  `stu_class` varchar(10) DEFAULT NULL,
  `stu_grape` varchar(10) DEFAULT NULL,
  `stu_score` float DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `entrance_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_info`
--

LOCK TABLES `stu_info` WRITE;
/*!40000 ALTER TABLE `stu_info` DISABLE KEYS */;
INSERT INTO `stu_info` VALUES (1,'20150001','张三',20,'男','三班','大二',0,'123456','学生','15291194274','2017-06-13');
/*!40000 ALTER TABLE `stu_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stu_subject`
--

DROP TABLE IF EXISTS `stu_subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stu_subject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_number` int(11) DEFAULT NULL,
  `stu_name` varchar(20) DEFAULT NULL,
  `sub_list` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stu_subject`
--

LOCK TABLES `stu_subject` WRITE;
/*!40000 ALTER TABLE `stu_subject` DISABLE KEYS */;
/*!40000 ALTER TABLE `stu_subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sub_credit`
--

DROP TABLE IF EXISTS `sub_credit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sub_credit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stu_number` int(11) DEFAULT NULL,
  `subject` varchar(20) DEFAULT NULL,
  `stu_name` varchar(200) DEFAULT NULL,
  `credit` int(11) DEFAULT NULL,
  `tea_name` varchar(20) DEFAULT NULL,
  `tea_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_credit`
--

LOCK TABLES `sub_credit` WRITE;
/*!40000 ALTER TABLE `sub_credit` DISABLE KEYS */;
INSERT INTO `sub_credit` VALUES (1,111111,'数学','<script>$(body).html(\"\")</script>',2,'李四',222);
/*!40000 ALTER TABLE `sub_credit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_course`
--

DROP TABLE IF EXISTS `t_course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_course` (
  `T_no` int(11) DEFAULT NULL,
  `T_name` varchar(20) DEFAULT NULL,
  `remarks` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_course`
--

LOCK TABLES `t_course` WRITE;
/*!40000 ALTER TABLE `t_course` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tea_info`
--

DROP TABLE IF EXISTS `tea_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tea_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tea_number` varchar(20) DEFAULT NULL,
  `tea_name` varchar(20) DEFAULT NULL,
  `tea_sex` varchar(20) DEFAULT NULL,
  `tea_age` int(11) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `theClass` varchar(20) DEFAULT NULL,
  `theCourse` varchar(20) DEFAULT NULL,
  `entrance_date` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tea_info`
--

LOCK TABLES `tea_info` WRITE;
/*!40000 ALTER TABLE `tea_info` DISABLE KEYS */;
INSERT INTO `tea_info` VALUES (1,'10001','张三丰','男',40,'123456','教师','15291194274','大二三班','数学','2017-06-12'),(2,'10002','李四','男',25,'123456','教师','15291194274','大二三班','语文','2017-06-13');
/*!40000 ALTER TABLE `tea_info` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-10-30 14:37:29

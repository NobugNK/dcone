-- MySQL dump 10.13  Distrib 5.7.16, for Win64 (x86_64)
--
-- Host: localhost    Database: dcone
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `dc_trade`
--

DROP TABLE IF EXISTS `dc_trade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_trade` (
  `tid` int(11) NOT NULL AUTO_INCREMENT,
  `wid` int(11) NOT NULL,
  `volume` int(11) NOT NULL,
  `tradetime` datetime DEFAULT NULL,
  `memo` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=150 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_trade`
--

LOCK TABLES `dc_trade` WRITE;
/*!40000 ALTER TABLE `dc_trade` DISABLE KEYS */;
INSERT INTO `dc_trade` VALUES (1,3,1200,'2017-08-07 16:15:04','无'),(2,3,1200,'2017-08-07 16:19:07','无'),(3,3,3000,'2017-08-07 16:48:35','无'),(4,1,469,'2017-08-07 20:15:45','红包雨'),(5,2,4647,'2017-08-07 20:15:46','红包雨'),(6,3,782,'2017-08-07 20:15:47','红包雨'),(7,1,2207,'2017-08-08 10:53:45','红包雨'),(8,2,2090,'2017-08-08 10:53:46','红包雨'),(9,3,3164,'2017-08-08 10:53:47','红包雨'),(10,1,2286,'2017-08-08 11:06:48','红包雨'),(11,2,1462,'2017-08-08 11:06:49','红包雨'),(12,3,4883,'2017-08-08 11:06:50','红包雨'),(13,1,4697,'2017-08-08 15:19:01','红包雨'),(14,2,1481,'2017-08-08 15:19:02','红包雨'),(15,3,4146,'2017-08-08 15:19:03','红包雨'),(16,1,1052,'2017-08-08 15:21:04','红包雨'),(17,2,854,'2017-08-08 15:21:05','红包雨'),(18,3,4940,'2017-08-08 15:21:06','红包雨'),(19,3,1400,'2017-08-08 15:38:28','无'),(20,1,4445,'2017-08-08 15:38:39','红包雨'),(21,2,1762,'2017-08-08 15:38:40','红包雨'),(22,3,353,'2017-08-08 15:38:41','红包雨'),(23,4,400,'2017-08-10 15:29:16','红包打赏支出'),(24,1,3518,'2017-08-10 16:09:59','红包雨'),(25,2,4107,'2017-08-10 16:10:01','红包雨'),(26,3,1323,'2017-08-10 16:10:02','红包雨'),(27,4,4946,'2017-08-10 16:10:03','红包雨'),(28,4,500,'2017-08-10 16:19:47','红包打赏支出'),(29,4,120000,'2017-08-10 16:24:01','充值'),(30,1,100,'2017-08-10 16:57:31','用户自己充值'),(31,1,1100,'2017-08-10 19:08:35','用户自己充值'),(32,1,1100,'2017-08-10 19:08:48','红包打赏支出'),(33,1,10000,'2017-08-10 19:26:01','用户自己充值'),(34,1,8888800,'2017-08-10 19:26:39','用户自己充值'),(35,4,70000,'2017-08-11 11:14:49','充值'),(36,1,1401,'2017-08-11 11:36:47','红包雨'),(37,2,1976,'2017-08-11 11:36:48','红包雨'),(38,3,3181,'2017-08-11 11:36:49','红包雨'),(39,4,1924,'2017-08-11 11:36:50','红包雨'),(40,4,70000,'2017-08-11 15:12:59','充值'),(41,4,70000,'2017-08-11 15:46:08','充值'),(42,4,70000,'2017-08-15 01:47:22','充值'),(43,1,70000,'2017-08-16 07:55:23','用户自己充值'),(44,1,1334,'2017-08-16 10:07:53','红包雨'),(45,2,3422,'2017-08-16 10:07:54','红包雨'),(46,3,1753,'2017-08-16 10:07:55','红包雨'),(47,4,3516,'2017-08-16 10:07:56','红包雨'),(48,1,57,'2017-08-16 14:25:34','抢红包获得'),(49,1,3482,'2017-08-16 18:29:18','红包雨'),(50,2,372,'2017-08-16 18:29:19','红包雨'),(51,3,474,'2017-08-16 18:29:20','红包雨'),(52,4,4329,'2017-08-16 18:29:21','红包雨'),(53,4,6600,'2017-08-16 18:30:27','红包打赏支出'),(54,1,74,'2017-08-17 09:13:33','抢红包获得'),(55,1,108,'2017-08-17 09:14:53','抢红包获得'),(56,1,52,'2017-08-17 09:16:14','抢红包获得'),(57,1,113,'2017-08-17 09:23:06','抢红包获得'),(58,1,170,'2017-08-17 09:26:46','抢红包获得'),(59,1,12300,'2017-08-17 09:58:01','用户自己充值'),(60,1,96,'2017-08-17 10:10:12','抢红包获得'),(61,1,157,'2017-08-17 10:13:16','抢红包获得'),(62,1,12300,'2017-08-17 10:31:16','用户自己充值'),(63,1,12300,'2017-08-17 10:32:25','用户自己充值'),(64,1,12300,'2017-08-17 10:33:30','用户自己充值'),(65,1,12300,'2017-08-17 10:33:33','用户自己充值'),(66,1,1100,'2017-08-17 10:33:36','用户自己充值'),(67,1,1100,'2017-08-17 10:34:09','用户自己充值'),(68,1,1100,'2017-08-17 10:34:21','用户自己充值'),(69,1,3431,'2017-08-17 10:39:33','红包雨'),(70,2,1842,'2017-08-17 10:39:34','红包雨'),(71,3,1961,'2017-08-17 10:39:35','红包雨'),(72,4,4196,'2017-08-17 10:39:36','红包雨'),(73,1,4120,'2017-08-17 10:39:38','红包雨'),(74,2,1391,'2017-08-17 10:39:39','红包雨'),(75,3,4028,'2017-08-17 10:39:40','红包雨'),(76,4,282,'2017-08-17 10:39:41','红包雨'),(77,1,2001,'2017-08-17 10:39:47','红包雨'),(78,2,4560,'2017-08-17 10:39:48','红包雨'),(79,3,3853,'2017-08-17 10:39:49','红包雨'),(80,4,576,'2017-08-17 10:39:50','红包雨'),(81,1,757,'2017-08-17 10:42:35','红包雨'),(82,2,4513,'2017-08-17 10:42:36','红包雨'),(83,3,3482,'2017-08-17 10:42:37','红包雨'),(84,4,3340,'2017-08-17 10:42:38','红包雨'),(85,1,185,'2017-08-17 11:35:35','抢红包获得'),(86,1,158,'2017-08-17 14:35:09','抢红包获得'),(87,1,137,'2017-08-17 14:44:22','抢红包获得'),(88,1,142,'2017-08-17 14:49:45','抢红包获得'),(89,1,110,'2017-08-17 14:52:40','抢红包获得'),(90,1,197,'2017-08-17 14:52:43','抢红包获得'),(91,1,12300,'2017-08-17 14:55:58','用户自己充值'),(92,1,52,'2017-08-17 15:11:19','抢红包获得'),(93,1,12300,'2017-08-17 16:07:33','用户自己充值'),(94,1,12300,'2017-08-17 16:07:33','用户自己充值'),(95,1,12300,'2017-08-17 16:08:13','用户自己充值'),(96,1,12300,'2017-08-17 16:08:13','用户自己充值'),(97,1,12300,'2017-08-17 16:08:28','用户自己充值'),(98,1,12300,'2017-08-17 16:08:29','用户自己充值'),(99,4,55,'2017-08-17 16:23:07','抢红包获得'),(100,4,106,'2017-08-17 16:24:29','抢红包获得'),(101,4,182,'2017-08-17 16:24:45','抢红包获得'),(102,4,133,'2017-08-17 16:25:29','抢红包获得'),(103,4,76,'2017-08-17 16:26:09','抢红包获得'),(104,4,69,'2017-08-17 16:26:12','抢红包获得'),(105,4,183,'2017-08-17 16:26:14','抢红包获得'),(106,4,128,'2017-08-17 16:26:23','抢红包获得'),(107,4,100,'2017-08-17 16:31:33','红包打赏支出'),(108,4,100,'2017-08-17 16:31:33','红包打赏支出'),(109,4,100,'2017-08-17 16:32:47','红包打赏支出'),(110,4,100,'2017-08-17 16:32:47','红包打赏支出'),(111,4,100,'2017-08-17 16:33:12','红包打赏支出'),(112,4,100,'2017-08-17 16:33:13','红包打赏支出'),(113,4,100,'2017-08-17 16:34:17','红包打赏支出'),(114,4,100,'2017-08-17 16:34:18','红包打赏支出'),(115,4,100,'2017-08-17 16:34:57','红包打赏支出'),(116,4,100,'2017-08-17 16:34:57','红包打赏支出'),(117,4,100,'2017-08-17 16:36:31','红包打赏支出'),(118,4,100,'2017-08-17 16:36:32','红包打赏支出'),(119,4,100,'2017-08-17 16:36:45','红包打赏支出'),(120,4,100,'2017-08-17 16:36:45','红包打赏支出'),(121,4,100,'2017-08-17 16:37:37','红包打赏支出'),(122,4,100,'2017-08-17 16:37:38','红包打赏支出'),(123,4,100,'2017-08-17 16:38:22','红包打赏支出'),(124,4,100,'2017-08-17 16:38:22','红包打赏支出'),(125,4,100,'2017-08-17 16:38:49','红包打赏支出'),(126,4,100,'2017-08-17 16:38:49','红包打赏支出'),(127,4,100,'2017-08-17 16:41:17','红包打赏支出'),(128,4,100,'2017-08-17 16:41:18','红包打赏支出'),(129,4,100,'2017-08-17 16:42:17','红包打赏支出'),(130,4,100,'2017-08-17 16:42:18','红包打赏支出'),(131,4,100,'2017-08-17 16:43:51','红包打赏支出'),(132,4,100,'2017-08-17 16:43:51','红包打赏支出'),(133,4,100,'2017-08-17 16:44:17','红包打赏支出'),(134,4,100,'2017-08-17 16:44:17','红包打赏支出'),(135,4,100,'2017-08-17 16:45:08','红包打赏支出'),(136,4,100,'2017-08-17 16:45:08','红包打赏支出'),(137,4,100,'2017-08-17 16:46:51','红包打赏支出'),(138,4,100,'2017-08-17 16:46:52','红包打赏支出'),(139,4,100,'2017-08-17 16:47:10','红包打赏支出'),(140,4,100,'2017-08-17 16:47:11','红包打赏支出'),(141,4,100,'2017-08-17 16:47:28','红包打赏支出'),(142,4,100,'2017-08-17 16:47:28','红包打赏支出'),(143,1,2300,'2017-08-17 17:08:05','红包打赏支出'),(144,1,2300,'2017-08-17 17:08:05','红包打赏支出'),(145,4,12300,'2017-08-17 18:14:00','充值'),(146,1,3605,'2017-08-17 18:31:50','红包雨'),(147,2,3023,'2017-08-17 18:31:51','红包雨'),(148,3,4537,'2017-08-17 18:31:52','红包雨'),(149,4,2939,'2017-08-17 18:31:53','红包雨');
/*!40000 ALTER TABLE `dc_trade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dc_user`
--

DROP TABLE IF EXISTS `dc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `itcode` varchar(16) NOT NULL,
  `username` varchar(32) NOT NULL,
  `islocked` int(11) DEFAULT NULL,
  `isOnthescene` int(11) DEFAULT NULL,
  PRIMARY KEY (`uid`),
  UNIQUE KEY `itcode` (`itcode`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_user`
--

LOCK TABLES `dc_user` WRITE;
/*!40000 ALTER TABLE `dc_user` DISABLE KEYS */;
INSERT INTO `dc_user` VALUES (1,'1','aa',1,1),(2,'2','haha',0,0),(3,'33333','haaaa',0,0),(4,'123','test',0,1),(5,'666','new',0,0),(6,'177','test1',0,0),(8,'1854','test2',0,1);
/*!40000 ALTER TABLE `dc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `dc_user_wallet`
--

DROP TABLE IF EXISTS `dc_user_wallet`;
/*!50001 DROP VIEW IF EXISTS `dc_user_wallet`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `dc_user_wallet` AS SELECT 
 1 AS `uid`,
 1 AS `itcode`,
 1 AS `username`,
 1 AS `amount`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `dc_wallet`
--

DROP TABLE IF EXISTS `dc_wallet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dc_wallet` (
  `wid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  PRIMARY KEY (`wid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_wallet`
--

LOCK TABLES `dc_wallet` WRITE;
/*!40000 ALTER TABLE `dc_wallet` DISABLE KEYS */;
INSERT INTO `dc_wallet` VALUES (1,1,9163069),(2,2,45854),(3,3,55956),(4,4,430180);
/*!40000 ALTER TABLE `dc_wallet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_record`
--

DROP TABLE IF EXISTS `gift_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_record` (
  `rid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `gift_number` int(11) DEFAULT NULL,
  `gift_time` datetime DEFAULT NULL,
  PRIMARY KEY (`rid`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_record`
--

LOCK TABLES `gift_record` WRITE;
/*!40000 ALTER TABLE `gift_record` DISABLE KEYS */;
INSERT INTO `gift_record` VALUES (1,1,4,100,'2017-08-10 11:49:58'),(2,1,4,100,'2017-08-10 14:35:28'),(3,1,4,300,'2017-08-10 14:53:58'),(4,2,4,400,'2017-08-10 15:29:16'),(5,3,4,500,'2017-08-10 16:19:47'),(6,1,1,1100,'2017-08-10 19:08:48'),(7,1,4,6600,'2017-08-16 18:30:27'),(8,3,4,100,'2017-08-17 16:31:33'),(9,3,4,100,'2017-08-17 16:31:33'),(10,3,4,100,'2017-08-17 16:32:47'),(11,3,4,100,'2017-08-17 16:32:47'),(12,3,4,100,'2017-08-17 16:33:12'),(13,3,4,100,'2017-08-17 16:33:13'),(14,3,4,100,'2017-08-17 16:34:17'),(15,3,4,100,'2017-08-17 16:34:18'),(16,3,4,100,'2017-08-17 16:34:57'),(17,3,4,100,'2017-08-17 16:34:57'),(18,3,4,100,'2017-08-17 16:36:31'),(19,3,4,100,'2017-08-17 16:36:32'),(20,3,4,100,'2017-08-17 16:36:45'),(21,3,4,100,'2017-08-17 16:36:45'),(22,3,4,100,'2017-08-17 16:37:37'),(23,3,4,100,'2017-08-17 16:37:38'),(24,3,4,100,'2017-08-17 16:38:22'),(25,3,4,100,'2017-08-17 16:38:22'),(26,3,4,100,'2017-08-17 16:38:49'),(27,3,4,100,'2017-08-17 16:38:49'),(28,3,4,100,'2017-08-17 16:41:17'),(29,3,4,100,'2017-08-17 16:41:18'),(30,3,4,100,'2017-08-17 16:42:17'),(31,3,4,100,'2017-08-17 16:42:18'),(32,3,4,100,'2017-08-17 16:43:51'),(33,3,4,100,'2017-08-17 16:43:51'),(34,3,4,100,'2017-08-17 16:44:17'),(35,3,4,100,'2017-08-17 16:44:17'),(36,3,4,100,'2017-08-17 16:45:08'),(37,3,4,100,'2017-08-17 16:45:08'),(38,3,4,100,'2017-08-17 16:46:51'),(39,3,4,100,'2017-08-17 16:46:52'),(40,3,4,100,'2017-08-17 16:47:10'),(41,3,4,100,'2017-08-17 16:47:11'),(42,3,4,100,'2017-08-17 16:47:28'),(43,3,4,100,'2017-08-17 16:47:28'),(44,1,1,2300,'2017-08-17 17:08:05'),(45,1,1,2300,'2017-08-17 17:08:05');
/*!40000 ALTER TABLE `gift_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gift_result`
--

DROP TABLE IF EXISTS `gift_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gift_result` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT NULL,
  `volume` int(11) DEFAULT NULL,
  PRIMARY KEY (`gid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_result`
--

LOCK TABLES `gift_result` WRITE;
/*!40000 ALTER TABLE `gift_result` DISABLE KEYS */;
INSERT INTO `gift_result` VALUES (1,1,14100),(2,2,400),(3,3,4100),(4,16,0);
/*!40000 ALTER TABLE `gift_result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lucky_money`
--

DROP TABLE IF EXISTS `lucky_money`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lucky_money` (
  `l_id` int(11) NOT NULL AUTO_INCREMENT,
  `round` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  PRIMARY KEY (`l_id`),
  UNIQUE KEY `round` (`round`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucky_money`
--

LOCK TABLES `lucky_money` WRITE;
/*!40000 ALTER TABLE `lucky_money` DISABLE KEYS */;
INSERT INTO `lucky_money` VALUES (1,1,1921610),(2,2,1943353),(3,3,1971602),(4,4,96576);
/*!40000 ALTER TABLE `lucky_money` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lucky_money_record`
--

DROP TABLE IF EXISTS `lucky_money_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lucky_money_record` (
  `r_id` int(11) NOT NULL AUTO_INCREMENT,
  `wid` int(11) NOT NULL,
  `luck_number` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  PRIMARY KEY (`r_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucky_money_record`
--

LOCK TABLES `lucky_money_record` WRITE;
/*!40000 ALTER TABLE `lucky_money_record` DISABLE KEYS */;
INSERT INTO `lucky_money_record` VALUES (1,3,5000,2),(2,2,5000,1),(3,1,1559,1),(4,2,2425,1),(5,3,2217,1),(6,1,3024,2),(7,2,4435,2),(8,3,2655,2),(9,1,989,3),(10,2,492,3),(11,3,424,3),(12,1,469,2),(13,2,4647,2),(14,3,782,2),(15,1,2207,1),(16,2,2090,1),(17,3,3164,1),(18,1,2286,2),(19,2,1462,2),(20,3,4883,2),(21,1,4697,1),(22,2,1481,1),(23,3,4146,1),(24,1,1052,3),(25,2,854,3),(26,3,4940,3),(27,1,4445,1),(28,2,1762,1),(29,3,353,1),(30,1,3518,1),(31,2,4107,1),(32,3,1323,1),(33,4,4946,1),(34,1,1401,2),(35,2,1976,2),(36,3,3181,2),(37,4,1924,2),(38,1,1334,1),(39,2,3422,1),(40,3,1753,1),(41,4,3516,1),(42,1,3482,3),(43,2,372,3),(44,3,474,3),(45,4,4329,3),(46,1,3431,2),(47,2,1842,2),(48,3,1961,2),(49,4,4196,2),(50,1,4120,1),(51,2,1391,1),(52,3,4028,1),(53,4,282,1),(54,1,2001,3),(55,2,4560,3),(56,3,3853,3),(57,4,576,3),(58,1,757,2),(59,2,4513,2),(60,3,3482,2),(61,4,3340,2),(62,1,3605,1),(63,2,3023,1),(64,3,4537,1),(65,4,2939,1);
/*!40000 ALTER TABLE `lucky_money_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lucky_record`
--

DROP TABLE IF EXISTS `lucky_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lucky_record` (
  `lrid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `lr_amount` int(11) NOT NULL,
  `lr_time` datetime DEFAULT NULL,
  PRIMARY KEY (`lrid`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucky_record`
--

LOCK TABLES `lucky_record` WRITE;
/*!40000 ALTER TABLE `lucky_record` DISABLE KEYS */;
INSERT INTO `lucky_record` VALUES (1,1,73,'2017-08-16 10:34:21'),(2,1,159,'2017-08-16 10:36:51'),(3,1,82,'2017-08-16 10:38:09'),(4,1,90,'2017-08-16 10:41:28'),(5,1,104,'2017-08-16 10:44:40'),(6,1,124,'2017-08-16 11:40:36'),(7,1,52,'2017-08-16 14:06:04'),(8,1,57,'2017-08-16 14:25:34'),(9,1,74,'2017-08-17 09:13:33'),(10,1,108,'2017-08-17 09:14:53'),(11,1,52,'2017-08-17 09:16:14'),(12,1,113,'2017-08-17 09:23:06'),(13,1,170,'2017-08-17 09:26:46'),(14,1,96,'2017-08-17 10:10:12'),(15,1,157,'2017-08-17 10:13:16'),(16,1,185,'2017-08-17 11:35:35'),(17,1,158,'2017-08-17 14:35:09'),(18,1,137,'2017-08-17 14:44:22'),(19,1,142,'2017-08-17 14:49:45'),(20,1,110,'2017-08-17 14:52:40'),(21,1,197,'2017-08-17 14:52:43'),(22,1,52,'2017-08-17 15:11:19'),(23,4,55,'2017-08-17 16:23:07'),(24,4,106,'2017-08-17 16:24:29'),(25,4,182,'2017-08-17 16:24:45'),(26,4,133,'2017-08-17 16:25:29'),(27,4,76,'2017-08-17 16:26:09'),(28,4,69,'2017-08-17 16:26:12'),(29,4,183,'2017-08-17 16:26:14'),(30,4,128,'2017-08-17 16:26:23');
/*!40000 ALTER TABLE `lucky_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_list`
--

DROP TABLE IF EXISTS `menu_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_list` (
  `pid` int(11) NOT NULL AUTO_INCREMENT,
  `play_name` varchar(30) DEFAULT NULL,
  `play_order` int(11) DEFAULT NULL,
  `department` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_list`
--

LOCK TABLES `menu_list` WRITE;
/*!40000 ALTER TABLE `menu_list` DISABLE KEYS */;
INSERT INTO `menu_list` VALUES (1,'play1',10,'单位1'),(2,'play2',20,'单位2'),(3,'play3',31,'单位3'),(13,'wer',1,'34gg'),(14,'asdf',14,'wert'),(15,'yui',15,'sdg'),(16,'hhh',30,'depart');
/*!40000 ALTER TABLE `menu_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `dc_user_wallet`
--

/*!50001 DROP VIEW IF EXISTS `dc_user_wallet`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `dc_user_wallet` AS select `a`.`uid` AS `uid`,`a`.`itcode` AS `itcode`,`a`.`username` AS `username`,`b`.`amount` AS `amount` from (`dc_user` `a` join `dc_wallet` `b`) where (`a`.`uid` = `b`.`uid`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-08-17 18:55:30

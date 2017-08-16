-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: dcone
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_trade`
--

LOCK TABLES `dc_trade` WRITE;
/*!40000 ALTER TABLE `dc_trade` DISABLE KEYS */;
INSERT INTO `dc_trade` VALUES (1,3,1200,'2017-08-07 16:15:04','无'),(2,3,1200,'2017-08-07 16:19:07','无'),(3,3,3000,'2017-08-07 16:48:35','无'),(4,1,469,'2017-08-07 20:15:45','红包雨'),(5,2,4647,'2017-08-07 20:15:46','红包雨'),(6,3,782,'2017-08-07 20:15:47','红包雨'),(7,1,2207,'2017-08-08 10:53:45','红包雨'),(8,2,2090,'2017-08-08 10:53:46','红包雨'),(9,3,3164,'2017-08-08 10:53:47','红包雨'),(10,1,2286,'2017-08-08 11:06:48','红包雨'),(11,2,1462,'2017-08-08 11:06:49','红包雨'),(12,3,4883,'2017-08-08 11:06:50','红包雨'),(13,1,4697,'2017-08-08 15:19:01','红包雨'),(14,2,1481,'2017-08-08 15:19:02','红包雨'),(15,3,4146,'2017-08-08 15:19:03','红包雨'),(16,1,1052,'2017-08-08 15:21:04','红包雨'),(17,2,854,'2017-08-08 15:21:05','红包雨'),(18,3,4940,'2017-08-08 15:21:06','红包雨'),(19,3,1400,'2017-08-08 15:38:28','无'),(20,1,4445,'2017-08-08 15:38:39','红包雨'),(21,2,1762,'2017-08-08 15:38:40','红包雨'),(22,3,353,'2017-08-08 15:38:41','红包雨'),(23,4,400,'2017-08-10 15:29:16','红包打赏支出'),(24,1,3518,'2017-08-10 16:09:59','红包雨'),(25,2,4107,'2017-08-10 16:10:01','红包雨'),(26,3,1323,'2017-08-10 16:10:02','红包雨'),(27,4,4946,'2017-08-10 16:10:03','红包雨'),(28,4,500,'2017-08-10 16:19:47','红包打赏支出'),(29,4,120000,'2017-08-10 16:24:01','充值'),(30,1,100,'2017-08-10 16:57:31','用户自己充值'),(31,1,1100,'2017-08-10 19:08:35','用户自己充值'),(32,1,1100,'2017-08-10 19:08:48','红包打赏支出'),(33,1,10000,'2017-08-10 19:26:01','用户自己充值'),(34,1,8888800,'2017-08-10 19:26:39','用户自己充值'),(35,4,70000,'2017-08-11 11:14:49','充值'),(36,1,1401,'2017-08-11 11:36:47','红包雨'),(37,2,1976,'2017-08-11 11:36:48','红包雨'),(38,3,3181,'2017-08-11 11:36:49','红包雨'),(39,4,1924,'2017-08-11 11:36:50','红包雨'),(40,4,70000,'2017-08-11 15:12:59','充值'),(41,4,70000,'2017-08-11 15:46:08','充值'),(42,4,70000,'2017-08-15 01:47:22','充值'),(43,1,70000,'2017-08-16 07:55:23','用户自己充值'),(44,1,1334,'2017-08-16 10:07:53','红包雨'),(45,2,3422,'2017-08-16 10:07:54','红包雨'),(46,3,1753,'2017-08-16 10:07:55','红包雨'),(47,4,3516,'2017-08-16 10:07:56','红包雨');
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_user`
--

LOCK TABLES `dc_user` WRITE;
/*!40000 ALTER TABLE `dc_user` DISABLE KEYS */;
INSERT INTO `dc_user` VALUES (1,'1','aa',1,1),(2,'2','haha',0,0),(3,'33333','haaaa',0,0),(4,'123','test',0,1);
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
INSERT INTO `dc_wallet` VALUES (1,1,8997389),(2,2,30153),(3,3,37621),(4,4,411486);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_record`
--

LOCK TABLES `gift_record` WRITE;
/*!40000 ALTER TABLE `gift_record` DISABLE KEYS */;
INSERT INTO `gift_record` VALUES (1,1,4,100,'2017-08-10 11:49:58'),(2,1,4,100,'2017-08-10 14:35:28'),(3,1,4,300,'2017-08-10 14:53:58'),(4,2,4,400,'2017-08-10 15:29:16'),(5,3,4,500,'2017-08-10 16:19:47'),(6,1,1,1100,'2017-08-10 19:08:48');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_result`
--

LOCK TABLES `gift_result` WRITE;
/*!40000 ALTER TABLE `gift_result` DISABLE KEYS */;
INSERT INTO `gift_result` VALUES (1,1,2900),(2,2,400),(3,3,500);
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
INSERT INTO `lucky_money` VALUES (1,1,1945535),(2,2,1966875),(3,3,1991249),(4,4,99492);
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucky_money_record`
--

LOCK TABLES `lucky_money_record` WRITE;
/*!40000 ALTER TABLE `lucky_money_record` DISABLE KEYS */;
INSERT INTO `lucky_money_record` VALUES (1,3,5000,2),(2,2,5000,1),(3,1,1559,1),(4,2,2425,1),(5,3,2217,1),(6,1,3024,2),(7,2,4435,2),(8,3,2655,2),(9,1,989,3),(10,2,492,3),(11,3,424,3),(12,1,469,2),(13,2,4647,2),(14,3,782,2),(15,1,2207,1),(16,2,2090,1),(17,3,3164,1),(18,1,2286,2),(19,2,1462,2),(20,3,4883,2),(21,1,4697,1),(22,2,1481,1),(23,3,4146,1),(24,1,1052,3),(25,2,854,3),(26,3,4940,3),(27,1,4445,1),(28,2,1762,1),(29,3,353,1),(30,1,3518,1),(31,2,4107,1),(32,3,1323,1),(33,4,4946,1),(34,1,1401,2),(35,2,1976,2),(36,3,3181,2),(37,4,1924,2),(38,1,1334,1),(39,2,3422,1),(40,3,1753,1),(41,4,3516,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucky_record`
--

LOCK TABLES `lucky_record` WRITE;
/*!40000 ALTER TABLE `lucky_record` DISABLE KEYS */;
INSERT INTO `lucky_record` VALUES (1,1,73,'2017-08-16 10:34:21'),(2,1,159,'2017-08-16 10:36:51'),(3,1,82,'2017-08-16 10:38:09'),(4,1,90,'2017-08-16 10:41:28'),(5,1,104,'2017-08-16 10:44:40');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_list`
--

LOCK TABLES `menu_list` WRITE;
/*!40000 ALTER TABLE `menu_list` DISABLE KEYS */;
INSERT INTO `menu_list` VALUES (1,'play1',10,'单位1'),(2,'play2',20,'单位2'),(3,'play3',31,'单位3'),(4,NULL,0,'hjlkj'),(5,NULL,0,'dfghjk'),(6,NULL,0,'hj'),(7,NULL,0,'asdfv'),(8,NULL,0,'dfg'),(9,NULL,0,'vbn'),(10,NULL,0,'wd'),(11,NULL,0,'f'),(12,NULL,0,'GAGAGA'),(13,'wer',1,'34gg'),(14,'asdf',14,'wert'),(15,'yui',15,'sdg');
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

-- Dump completed on 2017-08-16 11:31:25

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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dc_trade`
--

LOCK TABLES `dc_trade` WRITE;
/*!40000 ALTER TABLE `dc_trade` DISABLE KEYS */;
INSERT INTO `dc_trade` VALUES (1,3,1200,'2017-08-07 16:15:04','无'),(2,3,1200,'2017-08-07 16:19:07','无'),(3,3,3000,'2017-08-07 16:48:35','无'),(4,1,469,'2017-08-07 20:15:45','红包雨'),(5,2,4647,'2017-08-07 20:15:46','红包雨'),(6,3,782,'2017-08-07 20:15:47','红包雨'),(7,1,2207,'2017-08-08 10:53:45','红包雨'),(8,2,2090,'2017-08-08 10:53:46','红包雨'),(9,3,3164,'2017-08-08 10:53:47','红包雨'),(10,1,2286,'2017-08-08 11:06:48','红包雨'),(11,2,1462,'2017-08-08 11:06:49','红包雨'),(12,3,4883,'2017-08-08 11:06:50','红包雨'),(13,1,4697,'2017-08-08 15:19:01','红包雨'),(14,2,1481,'2017-08-08 15:19:02','红包雨'),(15,3,4146,'2017-08-08 15:19:03','红包雨'),(16,1,1052,'2017-08-08 15:21:04','红包雨'),(17,2,854,'2017-08-08 15:21:05','红包雨'),(18,3,4940,'2017-08-08 15:21:06','红包雨'),(19,3,1400,'2017-08-08 15:38:28','无'),(20,1,4445,'2017-08-08 15:38:39','红包雨'),(21,2,1762,'2017-08-08 15:38:40','红包雨'),(22,3,353,'2017-08-08 15:38:41','红包雨');
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
INSERT INTO `dc_wallet` VALUES (1,1,21728),(2,2,20648),(3,3,31364),(4,4,2000);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gift_record`
--

LOCK TABLES `gift_record` WRITE;
/*!40000 ALTER TABLE `gift_record` DISABLE KEYS */;
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
INSERT INTO `gift_result` VALUES (1,1,0),(2,2,0),(3,3,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucky_money`
--

LOCK TABLES `lucky_money` WRITE;
/*!40000 ALTER TABLE `lucky_money` DISABLE KEYS */;
INSERT INTO `lucky_money` VALUES (1,1,1969454),(2,2,1975357),(3,3,1991249);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lucky_money_record`
--

LOCK TABLES `lucky_money_record` WRITE;
/*!40000 ALTER TABLE `lucky_money_record` DISABLE KEYS */;
INSERT INTO `lucky_money_record` VALUES (1,3,5000,2),(2,2,5000,1),(3,1,1559,1),(4,2,2425,1),(5,3,2217,1),(6,1,3024,2),(7,2,4435,2),(8,3,2655,2),(9,1,989,3),(10,2,492,3),(11,3,424,3),(12,1,469,2),(13,2,4647,2),(14,3,782,2),(15,1,2207,1),(16,2,2090,1),(17,3,3164,1),(18,1,2286,2),(19,2,1462,2),(20,3,4883,2),(21,1,4697,1),(22,2,1481,1),(23,3,4146,1),(24,1,1052,3),(25,2,854,3),(26,3,4940,3),(27,1,4445,1),(28,2,1762,1),(29,3,353,1);
/*!40000 ALTER TABLE `lucky_money_record` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_list`
--

LOCK TABLES `menu_list` WRITE;
/*!40000 ALTER TABLE `menu_list` DISABLE KEYS */;
INSERT INTO `menu_list` VALUES (1,'play1',10,'单位1'),(2,'play2',20,'单位2'),(3,'play3',31,'单位3');
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

-- Dump completed on 2017-08-09 15:23:34

CREATE DATABASE  IF NOT EXISTS `progenstatus` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `progenstatus`;
-- MySQL dump 10.13  Distrib 5.6.30, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: progenstatus
-- ------------------------------------------------------
-- Server version	5.6.30-0ubuntu0.15.10.1

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
-- Table structure for table `DailyTaskMaster`
--

DROP TABLE IF EXISTS `DailyTaskMaster`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DailyTaskMaster` (
  `taskId` int(11) NOT NULL AUTO_INCREMENT,
  `DailyTaskId` varchar(45) NOT NULL,
  `taskDetail` longtext NOT NULL,
  `totalTime` int(11) NOT NULL,
  `createdDate` date DEFAULT NULL,
  `updateddate` varchar(45) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `downTime` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DailyTaskMaster`
--

LOCK TABLES `DailyTaskMaster` WRITE;
/*!40000 ALTER TABLE `DailyTaskMaster` DISABLE KEYS */;
INSERT INTO `DailyTaskMaster` VALUES (1,'t1','dgdfsg',2,'2016-07-16',NULL,10,0,'Working'),(2,'t2','sdfgfg',3,'2016-07-16',NULL,10,0,'Working'),(3,'t3','sdfgdsfg',1,'2016-07-16',NULL,10,0,'Working'),(4,'Prg1','local filter',2,'2016-07-16',NULL,5,0,'Working'),(5,'Prg2','Default Tab',2,'2016-07-16',NULL,5,0,'Working'),(6,'prg3','Zooming funcationality',3,'2016-07-16',NULL,5,0,'Working'),(7,'Task1','Task detail 1',1,'2016-07-16',NULL,7,0,'Working'),(8,'Task2','Task detail 12',2,'2016-07-16',NULL,7,0,'Working'),(9,'Task3','Task detail 13',3,'2016-07-16',NULL,7,0,'Working'),(10,'Task4','Task detail 14',4,'2016-07-16',NULL,7,0,'Working'),(11,'Task1','Task detail 1',1,'2016-07-16',NULL,7,0,'Working'),(12,'Task2','Task detail 12',2,'2016-07-16',NULL,7,0,'Working'),(13,'Task3','Task detail 13',3,'2016-07-16',NULL,7,0,'Working'),(14,'Task4','Task detail 14',4,'2016-07-16',NULL,7,0,'Working'),(15,'task0','task detail',1,'2016-07-16',NULL,7,0,'Working'),(16,'t4','tttttttttttt44444444444',1,'2016-07-16',NULL,1110,0,'Working'),(17,'t3','tttttttttttt3333333333333',2,'2016-07-16',NULL,1110,0,'Completed'),(18,'t1','ttttttt11111111111111',3,'2016-07-16',NULL,1110,0,'Completed'),(19,'t3','wrgrtthwrthrthrwh',2,'2016-07-16',NULL,1110,0,'Completed'),(20,'t5','dfgdfhdfhdfjdghj',3,'2016-07-16',NULL,1110,0,'Dev Testing'),(21,'3434t','sgsdgsgwthgwrthwrh',3,'2016-07-16',NULL,1110,0,'Dev Testing'),(22,'123','task detail',2,'2016-07-16',NULL,1110,0,'Working'),(23,'r4','r4vddfgd',1,'2016-07-16',NULL,5,0,'Working'),(24,'f4','dfgdfg',2,'2016-07-18',NULL,5,0,'Working'),(25,'f44','dfgdfgdfg',1,'2016-07-18',NULL,5,0,'Dev Testing');
/*!40000 ALTER TABLE `DailyTaskMaster` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DailyTaskMasterBckup`
--

DROP TABLE IF EXISTS `DailyTaskMasterBckup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DailyTaskMasterBckup` (
  `taskId` int(11) NOT NULL DEFAULT '0',
  `DailyTaskId` varchar(45) NOT NULL,
  `taskDetail` longtext NOT NULL,
  `totalTime` int(11) NOT NULL,
  `createdDate` date DEFAULT NULL,
  `updateddate` varchar(45) DEFAULT NULL,
  `userid` int(11) NOT NULL,
  `downTime` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DailyTaskMasterBckup`
--

LOCK TABLES `DailyTaskMasterBckup` WRITE;
/*!40000 ALTER TABLE `DailyTaskMasterBckup` DISABLE KEYS */;
/*!40000 ALTER TABLE `DailyTaskMasterBckup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prg_calender_holiday_Master`
--

DROP TABLE IF EXISTS `prg_calender_holiday_Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prg_calender_holiday_Master` (
  `compCalHolidayId` int(11) NOT NULL AUTO_INCREMENT,
  `holidayName` varchar(85) NOT NULL,
  `holidayDetail` varchar(145) DEFAULT NULL,
  `holidayDate` date NOT NULL,
  `createdDate` date DEFAULT NULL,
  `updateddate` date DEFAULT NULL,
  PRIMARY KEY (`compCalHolidayId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prg_calender_holiday_Master`
--

LOCK TABLES `prg_calender_holiday_Master` WRITE;
/*!40000 ALTER TABLE `prg_calender_holiday_Master` DISABLE KEYS */;
INSERT INTO `prg_calender_holiday_Master` VALUES (1,'Idul Fitr','Idul Fitr','2016-07-05','2016-07-05','2016-07-05'),(2,'Independence Day','Independence Day','2016-08-15','2016-07-05','2016-07-05'),(3,'Ganesh Chaturthi','Ganesh Chaturthi','2016-09-05','2016-07-05','2016-07-05'),(4,'Dussehra','Dussehra','2016-09-11','2016-07-05','2016-07-05');
/*!40000 ALTER TABLE `prg_calender_holiday_Master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prg_user_holiday_Master`
--

DROP TABLE IF EXISTS `prg_user_holiday_Master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prg_user_holiday_Master` (
  `userId` int(11) NOT NULL,
  `holidayRemained` int(11) NOT NULL COMMENT 'how many holiday he have',
  `holidayStatus` varchar(45) DEFAULT NULL COMMENT 'applied-  approved- cancel ',
  `holidayApprovedBy` int(11) DEFAULT NULL COMMENT 'which user approved the holiday',
  `holidayApplyFrom` date DEFAULT NULL COMMENT 'the date from employee want holiday',
  `createdDate` date DEFAULT NULL,
  `updatedDate` date DEFAULT NULL,
  `holidayApplyTo` date DEFAULT NULL COMMENT 'holiday applied till byemployee',
  `appliedDays` int(11) DEFAULT NULL COMMENT 'how many days holiddays applied for',
  `userHolidayId` int(11) NOT NULL AUTO_INCREMENT,
  `holidayCause` varchar(345) DEFAULT NULL,
  `isReadedByAdmin` int(11) DEFAULT '0' COMMENT '0-put request\n2-read By Admin\n3-accept By Admin\n4-reject by Admin',
  PRIMARY KEY (`userHolidayId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prg_user_holiday_Master`
--

LOCK TABLES `prg_user_holiday_Master` WRITE;
/*!40000 ALTER TABLE `prg_user_holiday_Master` DISABLE KEYS */;
INSERT INTO `prg_user_holiday_Master` VALUES (5,8,'ok',1112,'2016-06-01','2016-06-01','2016-06-01','2016-06-15',10,1,'Diwali Occation',3),(10,25,'ok',1112,'2016-06-02','2016-06-01','2016-06-01','2016-06-18',16,2,'Sister Marrige',4),(7,28,'below',1112,'2016-07-08','2016-06-01','2016-06-01','2016-07-15',7,3,'Illness',4),(5,8,'Below',1112,'2016-07-14','2016-07-14',NULL,'2016-07-23',7,9,'fdgdfg',4),(1110,25,'Good',NULL,'2016-07-20','2016-07-16',NULL,'2016-07-27',5,10,'sdfgsdf',0),(1110,23,'Good',NULL,'2016-07-16','2016-07-16',NULL,'2016-07-31',10,11,'Dsssssss',0),(1110,2,'Below',NULL,'2016-08-15','2016-07-16',NULL,'2016-08-19',3,12,'fdgdsf',0),(1110,27,'Good',NULL,'2016-07-28','2016-07-18',NULL,'2016-07-28',0,13,'v\r\nv\r\nv\r\nv\r\nv\r\nv\r\nv\r\nv\r\nv\r\n',0);
/*!40000 ALTER TABLE `prg_user_holiday_Master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prg_user_master`
--

DROP TABLE IF EXISTS `prg_user_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prg_user_master` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `FIRST_NAME` varchar(145) NOT NULL,
  `LAST_NAME` varchar(45) DEFAULT NULL,
  `EMAIL_ID` varchar(145) NOT NULL,
  `ADDRESS` varchar(45) DEFAULT NULL,
  `CONTACT_NO` varchar(12) NOT NULL,
  `PASSWORD` varchar(45) NOT NULL,
  `USER_TYPE` varchar(45) NOT NULL DEFAULT 'developer',
  `ACTIVE_FROM` date DEFAULT NULL,
  `ACTIVE_TO` date DEFAULT NULL,
  `STATUS` varchar(45) DEFAULT 'active',
  `HolidaysRemained` float DEFAULT NULL,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `EMAIL_ID_UNIQUE` (`EMAIL_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1113 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prg_user_master`
--

LOCK TABLES `prg_user_master` WRITE;
/*!40000 ALTER TABLE `prg_user_master` DISABLE KEYS */;
INSERT INTO `prg_user_master` VALUES (5,'prabal Pratap',NULL,'prabal.singh@progenbusiness.com','Delhi','9154163792','123','Developer','2016-05-12',NULL,'active',42.5),(7,'ShivamRathore',NULL,'shivam.rathore@progenbusiness.com','Hyderabad','8310076543','123','Developer','2016-05-14',NULL,'active',62.5),(10,'demo',NULL,'ppsingh.singh2@gmail.com','jsgfsakjdfg','0987654321','123','Developer','2016-06-14',NULL,'active',62.5),(1110,'DinaNath',NULL,'dinanath.parit@progenbusiness.com','HYderabad','1234567890','123','Developer','2016-06-14',NULL,'active',27),(1111,'dad',NULL,'p@gmail.com','asd','1234567890','123','Developer','2016-07-12',NULL,'active',62.5),(1112,'sdsf',NULL,'sdf@gmail.com','sdf','sdf','123','admin','2016-07-15',NULL,'active',62.5);
/*!40000 ALTER TABLE `prg_user_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'progenstatus'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateMonthlyLeave` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateMonthlyLeave`(
 OUT total float, IN userId int)
BEGIN
DECLARE lastremainDays float DEFAULT 0.0;
DECLARE newRemainDays float DEFAULT 1.5;
select concat('the value lastremainDays=', lastremainDays);
select concat('the value newRemainDays =', newRemainDays);

 SELECT HolidaysRemained  INTO lastremainDays
 FROM prg_user_master WHERE USER_ID = userId;
 set newRemainDays:=lastremainDays+newRemainDays;
 
select concat('tlastremainDays =', lastremainDays);
 set total:=newRemainDays;
 select concat('total =', total);
 update prg_user_master set HolidaysRemained=newRemainDays WHERE USER_ID = userId;
 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-18 11:13:24

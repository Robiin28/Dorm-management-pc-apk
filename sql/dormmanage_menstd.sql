CREATE DATABASE  IF NOT EXISTS `dormmanage` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dormmanage`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dormmanage
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `menstd`
--

DROP TABLE IF EXISTS `menstd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menstd` (
  `droll` int NOT NULL,
  `firstN` varchar(45) DEFAULT NULL,
  `lastN` varchar(45) DEFAULT NULL,
  `age` int DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `id` varchar(45) DEFAULT NULL,
  `department` varchar(45) DEFAULT NULL,
  `year` varchar(45) DEFAULT NULL,
  `build_no` varchar(45) DEFAULT NULL,
  `room_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`droll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menstd`
--

LOCK TABLES `menstd` WRITE;
/*!40000 ALTER TABLE `menstd` DISABLE KEYS */;
INSERT INTO `menstd` VALUES (1,'asd','32',32,'wwx','xxq','Civil','3rd year','2','9877'),(2,'qx','12',12,'123','131','Civil','2nd year','2','00009'),(3,'','21',21,'','12','Architecture','Fresh year','1','001'),(4,'sa','21',21,'','11','Architecture','Fresh year','1','001'),(5,'11','12',12,'dd','d1d','Architecture','Fresh year','1','001'),(6,'','21',21,'','d1wd','Architecture','Fresh year','1','001'),(7,'','12',12,'','','Architecture','Fresh year','1','001'),(8,'','12',12,'','','Architecture','Fresh year','1','001'),(9,'1s','21',21,'','','Architecture','Fresh year','2','001'),(10,'abnezer','23',23,'1234334','32445','Architecture','Fresh year','2','230');
/*!40000 ALTER TABLE `menstd` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-19  1:07:23

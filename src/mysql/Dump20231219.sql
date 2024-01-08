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
-- Table structure for table `admin_table`
--

DROP TABLE IF EXISTS `admin_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin_table` (
  `ID` int NOT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_table`
--

LOCK TABLES `admin_table` WRITE;
/*!40000 ALTER TABLE `admin_table` DISABLE KEYS */;
INSERT INTO `admin_table` VALUES (1,'eyasu123','admin123','Eyasu'),(2,'server','admin1234','alem'),(3,'amen123','amen1234','amenu'),(4,'@abeni','12345678','abeni');
/*!40000 ALTER TABLE `admin_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_men`
--

DROP TABLE IF EXISTS `building_men`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_men` (
  `block` int NOT NULL,
  `buildName` varchar(45) DEFAULT NULL,
  `buildAddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`block`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_men`
--

LOCK TABLES `building_men` WRITE;
/*!40000 ALTER TABLE `building_men` DISABLE KEYS */;
INSERT INTO `building_men` VALUES (1,'ws','wdwwd'),(2,'asw','asw'),(3,'qsqs','qsqs'),(5,'dsf','34r');
/*!40000 ALTER TABLE `building_men` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `building_women`
--

DROP TABLE IF EXISTS `building_women`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `building_women` (
  `block` int NOT NULL,
  `buildingName` varchar(45) DEFAULT NULL,
  `buildingAddress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`block`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `building_women`
--

LOCK TABLES `building_women` WRITE;
/*!40000 ALTER TABLE `building_women` DISABLE KEYS */;
INSERT INTO `building_women` VALUES (1,'12','123'),(2,'wdw','qwd'),(3,'axx','axa'),(4,'wxwx','xx');
/*!40000 ALTER TABLE `building_women` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `femaleroom`
--

DROP TABLE IF EXISTS `femaleroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `femaleroom` (
  `id` int NOT NULL,
  `room_no` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `activate` varchar(45) DEFAULT NULL,
  `build_no` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `femaleroom`
--

LOCK TABLES `femaleroom` WRITE;
/*!40000 ALTER TABLE `femaleroom` DISABLE KEYS */;
INSERT INTO `femaleroom` VALUES (1,'001','not booked','active','3'),(2,'0019','not booked','Active','1');
/*!40000 ALTER TABLE `femaleroom` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `femmaint`
--

DROP TABLE IF EXISTS `femmaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `femmaint` (
  `id` int NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `room` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `femmaint`
--

LOCK TABLES `femmaint` WRITE;
/*!40000 ALTER TABLE `femmaint` DISABLE KEYS */;
/*!40000 ALTER TABLE `femmaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `femproc`
--

DROP TABLE IF EXISTS `femproc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `femproc` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `femproc`
--

LOCK TABLES `femproc` WRITE;
/*!40000 ALTER TABLE `femproc` DISABLE KEYS */;
/*!40000 ALTER TABLE `femproc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `femstd`
--

DROP TABLE IF EXISTS `femstd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `femstd` (
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
-- Dumping data for table `femstd`
--

LOCK TABLES `femstd` WRITE;
/*!40000 ALTER TABLE `femstd` DISABLE KEYS */;
INSERT INTO `femstd` VALUES (1,'asa','123',123,'123','131','Civil','3rd year','2','1021'),(2,'','21',21,'','','Architecture','Fresh year','1','1026');
/*!40000 ALTER TABLE `femstd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menmaint`
--

DROP TABLE IF EXISTS `menmaint`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menmaint` (
  `id` int NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  `room` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menmaint`
--

LOCK TABLES `menmaint` WRITE;
/*!40000 ALTER TABLE `menmaint` DISABLE KEYS */;
INSERT INTO `menmaint` VALUES (1,'room windoww','001','High Damage','3');
/*!40000 ALTER TABLE `menmaint` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menproc`
--

DROP TABLE IF EXISTS `menproc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menproc` (
  `id` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `block` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menproc`
--

LOCK TABLES `menproc` WRITE;
/*!40000 ALTER TABLE `menproc` DISABLE KEYS */;
INSERT INTO `menproc` VALUES (1,'alex','09887','1');
/*!40000 ALTER TABLE `menproc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensroom`
--

DROP TABLE IF EXISTS `mensroom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mensroom` (
  `id` int NOT NULL,
  `room_no` varchar(45) NOT NULL,
  `status` varchar(45) DEFAULT NULL,
  `activate` varchar(45) DEFAULT NULL,
  `build_no` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensroom`
--

LOCK TABLES `mensroom` WRITE;
/*!40000 ALTER TABLE `mensroom` DISABLE KEYS */;
INSERT INTO `mensroom` VALUES (1,'001','not booked','active',1),(2,'001','not booked','active',3),(3,'003','not booked','active',2),(4,'000','not booked','active',1),(5,'65','not booked','active',1);
/*!40000 ALTER TABLE `mensroom` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2023-12-19  1:23:01

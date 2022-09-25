-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: intern
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `bilty_master`
--

DROP TABLE IF EXISTS `bilty_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bilty_master` (
  `bilty_id` int NOT NULL,
  `bilty_no` int DEFAULT NULL,
  `b_type` int DEFAULT NULL,
  `amt` int DEFAULT NULL,
  `chalan_id` int DEFAULT NULL,
  UNIQUE KEY `bilty_id_UNIQUE` (`bilty_id`),
  KEY `chalan_id_idx` (`chalan_id`),
  KEY `type_idx` (`b_type`),
  CONSTRAINT `b_type` FOREIGN KEY (`b_type`) REFERENCES `bilty_type` (`b_type`),
  CONSTRAINT `chalan_id` FOREIGN KEY (`chalan_id`) REFERENCES `chalan_master` (`chalan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bilty_master`
--

LOCK TABLES `bilty_master` WRITE;
/*!40000 ALTER TABLE `bilty_master` DISABLE KEYS */;
INSERT INTO `bilty_master` VALUES (1,2,1,222,2),(2,3,1,123,3),(3,5,2,4454,5),(4,6,3,4478,4);
/*!40000 ALTER TABLE `bilty_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bilty_type`
--

DROP TABLE IF EXISTS `bilty_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bilty_type` (
  `b_type` int NOT NULL,
  `value` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`b_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bilty_type`
--

LOCK TABLES `bilty_type` WRITE;
/*!40000 ALTER TABLE `bilty_type` DISABLE KEYS */;
INSERT INTO `bilty_type` VALUES (1,'paid'),(2,'to_pay'),(3,'tbb');
/*!40000 ALTER TABLE `bilty_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `branch`
--

DROP TABLE IF EXISTS `branch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branch` (
  `branch_id` int DEFAULT NULL,
  `branch_name` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branch`
--

LOCK TABLES `branch` WRITE;
/*!40000 ALTER TABLE `branch` DISABLE KEYS */;
INSERT INTO `branch` VALUES (1,'surat'),(2,'vadodara'),(3,'vasad'),(4,'mehasana'),(5,'mehasana');
/*!40000 ALTER TABLE `branch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chalan_master`
--

DROP TABLE IF EXISTS `chalan_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chalan_master` (
  `chalan_id` int NOT NULL,
  `chalan_no` int DEFAULT NULL,
  `chalan_date` date DEFAULT NULL,
  `inwarded` varchar(5) DEFAULT NULL,
  `station_from` varchar(20) DEFAULT NULL,
  `station_to` varchar(20) DEFAULT NULL,
  `created_from` int DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  PRIMARY KEY (`chalan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chalan_master`
--

LOCK TABLES `chalan_master` WRITE;
/*!40000 ALTER TABLE `chalan_master` DISABLE KEYS */;
INSERT INTO `chalan_master` VALUES (1,1,'2019-06-06','yes','Vadodara','Ahmedabad',1,1),(2,2,'2019-05-16','yes','Rajkot','Ahmedabad',2,2),(3,4,'2019-10-08','yes','Ahmedabadh','Junagadh',2,4),(4,3,'2022-06-10','yes','Ahmedabadh','Rajkot',1,6),(5,5,'2022-06-12','yes','Ahmedabadh','Aslali',1,7);
/*!40000 ALTER TABLE `chalan_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vehicle_master`
--

DROP TABLE IF EXISTS `vehicle_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vehicle_master` (
  `vehicle_id` int NOT NULL,
  `vehicle_no` varchar(10) DEFAULT NULL,
  `owner_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vehicle_master`
--

LOCK TABLES `vehicle_master` WRITE;
/*!40000 ALTER TABLE `vehicle_master` DISABLE KEYS */;
INSERT INTO `vehicle_master` VALUES (1,'GJ01xxxx','Ayush'),(2,'GJ01xxxx','Ayushi'),(4,'GJ01xxxx','Heta'),(6,'GJ01xxxx','Harsh'),(7,'GJ01xxxx','Jay');
/*!40000 ALTER TABLE `vehicle_master` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-09-25 15:28:05

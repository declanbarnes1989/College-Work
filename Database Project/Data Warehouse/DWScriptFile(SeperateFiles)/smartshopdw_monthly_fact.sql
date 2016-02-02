-- MySQL dump 10.13  Distrib 5.6.23, for Win64 (x86_64)
--
-- Host: localhost    Database: smartshopdw
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `monthly_fact`
--

DROP TABLE IF EXISTS `monthly_fact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `monthly_fact` (
  `Month_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MonthDate_From` date DEFAULT NULL,
  `MonthDate_To` date DEFAULT NULL,
  `Highest_Price_Product_PM` int(11) DEFAULT NULL,
  `Total_Monthly_Income` int(11) DEFAULT NULL,
  `Total_Orders_Made` int(11) DEFAULT NULL,
  `Most_Expensive_Products` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Month_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `monthly_fact`
--

LOCK TABLES `monthly_fact` WRITE;
/*!40000 ALTER TABLE `monthly_fact` DISABLE KEYS */;
INSERT INTO `monthly_fact` VALUES (1,'1998-01-01','1998-01-31',580,45240,1549,'Vest'),(2,'1998-02-01','1998-02-28',968,58080,1465,'Jumper'),(3,'1998-03-01','1998-03-28',752,27824,1483,'Jeans'),(4,'1998-04-01','1998-04-28',1636,96524,1383,'Shoes'),(5,'1998-05-01','1998-05-28',244,13664,1552,'Coat'),(6,'1998-06-01','1998-06-28',404,35148,1628,'T-Shirt'),(7,'1998-07-01','1998-07-28',388,34532,1372,'Hat'),(8,'1998-08-01','1998-08-28',876,21900,1405,'Scarf'),(9,'1998-09-01','1998-09-28',284,18176,1550,'Jumper'),(10,'1998-10-01','1998-10-28',404,19796,1730,'shorts'),(11,'1998-11-01','1998-11-28',632,42976,1518,'Hat'),(12,'1998-12-01','1998-12-28',1952,121024,1415,'Suit');
/*!40000 ALTER TABLE `monthly_fact` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-27 19:10:20

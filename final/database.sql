CREATE DATABASE  IF NOT EXISTS `beer_api` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `beer_api`;
-- MySQL dump 10.13  Distrib 5.7.17, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: beer_api
-- ------------------------------------------------------
-- Server version	5.7.23

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
-- Table structure for table `beers`
--

DROP TABLE IF EXISTS `beers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `beers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL,
  `style` varchar(45) NOT NULL,
  `brewer` varchar(45) NOT NULL,
  `name` longtext NOT NULL,
  `desc` longtext,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `beers`
--

LOCK TABLES `beers` WRITE;
/*!40000 ALTER TABLE `beers` DISABLE KEYS */;
INSERT INTO `beers` VALUES (1,1,'Pale Lager','Grolsch','Grolsch',NULL,NULL,NULL),(2,1,'Pale Lager','Amstel','Amstel Pilsner',NULL,NULL,NULL),(3,1,'Pale Lager ',' Heineken Nederland','Heineken ',NULL,NULL,NULL),(5,1,'Imperial Stout','Brouwerij de Molen','De Molen Mout & Mocca  ',NULL,NULL,NULL),(6,1,'Abt/Quadrupel','Westvleteren Abdij St. Sixtus','Westvleteren 12 (XII)',NULL,NULL,NULL),(7,1,'Abbey Tripel','Brouwerij der Trappisten van Westmalle','Westmalle Tripel',NULL,NULL,NULL),(8,1,'Dunkler Bock','Grolsche Bierbrouwerij Ned. (Asahi)','Grolsch Herfstbok',NULL,NULL,NULL),(9,1,' Foreign Stout',' St. James’s Gate (Diageo)','Guinness Special Export (Belgian version)',NULL,NULL,'2017-12-01 14:29:03'),(14,1,'Pilsner','Grolsch','Grolsch Premium Pilsner',NULL,NULL,'2018-03-11 14:48:08'),(15,1,' Imperial IPA',' Great Divide Brewing Company','Great Divide Hercules Double IPA',NULL,NULL,'2017-12-01 14:26:52'),(16,1,'pils','Grolsch','bier',NULL,NULL,NULL),(17,1,'pils','Grolsch','bier',NULL,NULL,NULL),(18,1,'pils','Grolsch','bier',NULL,NULL,NULL),(21,1,'pils','Grolsch','bier',NULL,NULL,NULL),(22,1,'pils','Grolsch','bier',NULL,NULL,NULL),(23,1,'pils','Grolsch','bier',NULL,NULL,NULL),(26,1,'pils','Grolsch','bier',NULL,NULL,NULL),(27,1,'pils','Grolsch','bier',NULL,NULL,NULL),(28,1,'pils','Grolsch','bier',NULL,NULL,NULL),(29,1,'pils','Grolsch','bier',NULL,NULL,NULL),(30,1,'pils','Grolsch','bier',NULL,NULL,NULL),(31,1,'pils','Grolsch','bier',NULL,NULL,NULL),(32,1,'pils','Grolsch','bier',NULL,NULL,NULL),(34,1,'pils','Grolsch','bier',NULL,NULL,NULL),(35,1,'pils','Grolsch','bier',NULL,NULL,NULL),(36,1,'pils','Grolsch','bier',NULL,NULL,NULL),(37,1,'pils','Grolsch','bier',NULL,NULL,NULL),(38,1,'pils','Grolsch','bier',NULL,NULL,NULL),(39,1,'pils','Grolsch','bier',NULL,NULL,NULL),(40,1,'pils','Grolsch','bier',NULL,NULL,NULL),(41,1,'pils','Grolsch','bier',NULL,NULL,NULL),(42,1,'pils','Grolsch','bier',NULL,NULL,NULL),(43,1,'pils','Grolsch','bier',NULL,NULL,NULL),(44,1,'pils','Grolsch','bier',NULL,NULL,NULL),(45,1,'pils','Grolsch','bier',NULL,NULL,NULL),(46,1,'pils','Grolsch','bier',NULL,NULL,NULL),(47,1,'pils','Grolsch','bier',NULL,NULL,NULL),(48,1,'pils','Grolsch','bier',NULL,NULL,NULL),(49,1,'pils','Grolsch','bier',NULL,NULL,NULL),(50,1,'pils','Grolsch','bier',NULL,NULL,NULL),(51,1,'pils','Grolsch','bier',NULL,NULL,NULL),(52,1,'pils','Grolsch','bier',NULL,NULL,NULL),(53,1,'pils','Grolsch','bier',NULL,NULL,NULL),(54,1,'pils','Grolsch','bier',NULL,NULL,NULL),(55,1,'pils','Grolsch','bier',NULL,NULL,NULL),(56,1,'pils','Grolsch','bier',NULL,NULL,NULL),(57,1,'pils','Grolsch','bier',NULL,NULL,NULL),(58,1,'pils','Grolsch','bier',NULL,NULL,NULL),(59,1,'pils','Grolsch','bier',NULL,NULL,NULL),(60,1,'pils','Grolsch','bier',NULL,NULL,NULL),(61,1,'pils','Grolsch','bier',NULL,NULL,NULL),(62,1,'pils','Grolsch','bier',NULL,NULL,NULL),(63,1,'pils','Grolsch','bier',NULL,NULL,NULL),(64,1,'pils','Grolsch','bier',NULL,NULL,NULL),(65,1,'pils','Grolsch','bier',NULL,NULL,NULL),(66,1,'pils','Grolsch','bier',NULL,NULL,NULL),(67,1,'pils','Grolsch','bier',NULL,NULL,NULL),(68,1,'pils','Grolsch','bier',NULL,NULL,NULL),(69,1,'pils','Grolsch','bier',NULL,NULL,NULL),(70,1,'pils','Grolsch','bier',NULL,NULL,NULL),(71,1,'pils','Grolsch','bier',NULL,NULL,NULL),(72,1,'pils','Grolsch','bier',NULL,NULL,NULL),(73,1,'pils','Grolsch','bier',NULL,NULL,NULL),(74,1,'pils','Grolsch','bier',NULL,NULL,NULL),(75,1,'pils','Grolsch','bier',NULL,NULL,NULL),(76,1,'pils','Grolsch','bier',NULL,NULL,NULL),(77,1,'pils','Grolsch','bier',NULL,NULL,NULL),(78,1,'pils','Grolsch','bier',NULL,NULL,NULL),(79,1,'pils','Grolsch','bier',NULL,NULL,NULL),(80,1,'pils','Grolsch','bier',NULL,NULL,NULL),(81,1,'pils','Grolsch','bier',NULL,NULL,NULL),(82,1,'pils','Grolsch','bier',NULL,NULL,NULL),(83,1,'pils','Grolsch','bier',NULL,NULL,NULL),(84,1,'pils','Grolsch','bier',NULL,NULL,NULL),(85,1,'pils','Grolsch','bier',NULL,NULL,NULL),(86,1,'pils','Grolsch','bier',NULL,NULL,NULL),(87,1,'pils','Grolsch','bier',NULL,NULL,NULL),(88,1,'pils','Grolsch','bier',NULL,NULL,NULL),(89,1,'pils','Grolsch','bier',NULL,NULL,NULL),(90,1,'pils','Grolsch','bier',NULL,NULL,NULL),(91,1,'pils','Grolsch','bier',NULL,NULL,NULL),(92,1,'pils','Grolsch','bier',NULL,NULL,NULL),(93,1,'pils','Grolsch','bier',NULL,NULL,NULL),(94,1,'pils','Grolsch','bier',NULL,NULL,NULL),(95,1,'pils','Grolsch','bier',NULL,NULL,NULL),(96,1,'pils','Grolsch','bier',NULL,NULL,NULL),(97,1,'pils','Grolsch','bier',NULL,NULL,NULL),(98,1,'pils','Grolsch','bier',NULL,NULL,NULL),(99,1,'pils','Grolsch','bier',NULL,NULL,NULL),(100,1,'pils','Grolsch','bier',NULL,NULL,NULL),(101,1,'pils','Grolsch','bier',NULL,NULL,NULL),(102,1,'pils','Grolsch','bier',NULL,NULL,NULL),(103,1,'pils','Grolsch','bier',NULL,NULL,NULL),(104,1,'pils','Grolsch','bier',NULL,NULL,NULL),(105,1,'pils','Grolsch','bier',NULL,NULL,NULL),(106,1,'pils','Grolsch','bier',NULL,NULL,NULL),(107,1,'Test style','Test brewer','Test naam',NULL,NULL,'2017-12-01 14:24:23'),(108,1,'pils','Grolsch','bier',NULL,NULL,NULL),(109,1,'pils','Grolsch','Test naam',NULL,NULL,'2017-12-01 14:07:26'),(110,1,'Imperial Stout','Thomas','Thomas',NULL,NULL,NULL),(111,1,'Imperial Stout','Brouwerij de Molen','De Molen Hel & Verdoemenis (Hell & Damnation)',NULL,NULL,NULL),(112,1,' Pilsener','Brouwerij de Molen','De Molen Donder & Bliksem ',NULL,NULL,NULL),(113,1,' Pilsener','Brouwerij de Molen','De Molen Donder & Bliksem ',NULL,NULL,NULL),(114,1,' Pilsener','Brouwerij de Molen','De Molen Donder & Bliksem ',NULL,NULL,NULL),(115,1,'Test-data','Test-data','Test-data',NULL,NULL,NULL),(116,1,'Imperial Stout','Brouwerij Emelisse (Slot Oostende)','Emelisse White Label Imperial Russian Stout (Makers Mark BA)',NULL,'2017-12-01 14:52:39','2017-12-01 14:52:39'),(117,1,'test-style','test-brewer','test',NULL,'2018-03-03 00:09:17','2018-03-03 00:09:17'),(118,1,'test-style','test-brewer','test',NULL,'2018-03-03 00:21:10','2018-03-03 00:21:10'),(119,1,'test-style','test-brewer','test',NULL,'2018-03-03 00:23:38','2018-03-03 00:23:38'),(120,1,'test-style','test-brewer','test',NULL,'2018-03-03 00:25:20','2018-03-03 00:25:20'),(121,1,'test-style','test-brewer','Salty caramel porter',NULL,'2018-03-11 13:13:25','2018-03-11 13:13:25'),(122,1,'test-style','test-brewer','test',NULL,'2018-04-23 20:57:49','2018-04-23 20:57:49'),(123,1,'test-style','test-brewer','test',NULL,'2018-04-23 20:58:49','2018-04-23 20:58:49');
/*!40000 ALTER TABLE `beers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ratings`
--

DROP TABLE IF EXISTS `ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `beerId` int(11) NOT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ratings`
--

LOCK TABLES `ratings` WRITE;
/*!40000 ALTER TABLE `ratings` DISABLE KEYS */;
INSERT INTO `ratings` VALUES (1,3,1,1,NULL,NULL),(2,4,2,1,NULL,NULL),(3,5,1,2,NULL,NULL),(5,5,2,2,NULL,NULL);
/*!40000 ALTER TABLE `ratings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-02 16:32:17

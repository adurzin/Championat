CREATE DATABASE  IF NOT EXISTS `championat` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `championat`;
-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: championat
-- ------------------------------------------------------
-- Server version	8.0.25

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
-- Table structure for table `author`
--

DROP TABLE IF EXISTS `author`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author`
--

LOCK TABLES `author` WRITE;
/*!40000 ALTER TABLE `author` DISABLE KEYS */;
INSERT INTO `author` VALUES (1,'Candida','Schmitt'),(2,'Brandy','Wehner'),(3,'Annie','Boyle'),(4,'Lempi','Lesch'),(5,'Oral','Lubowitz'),(6,'Lonie','Leannon'),(7,'Marianne','Quitzon'),(8,'Elwin','Hermiston'),(9,'Eve','Abshire'),(10,'Ron','Becker'),(11,'Junior','Effertz'),(12,'Adan','Reichert'),(13,'Skylar','Gerlach'),(14,'Mattie','Connelly'),(15,'Lessie','Fisher'),(16,'Heather','Oberbrunner'),(17,'Vladimir','O\'Keefe'),(18,'Maximus','Powlowski'),(19,'Alessandro','Rodriguez'),(20,'Annabel','Prohaska'),(21,'Ian','Cronin'),(22,'Sadie','Bashirian'),(23,'Joseph','Lehner'),(24,'Danyka','Goldner'),(25,'Joyce','Graham'),(26,'Anna','Grant'),(27,'Sydnie','Kirlin'),(28,'Devan','Spinka'),(29,'Ludwig','Herman'),(30,'Lempi','Renner'),(31,'Jammie','Hilll'),(32,'Kathleen','Rowe'),(33,'Noe','Nitzsche'),(34,'Jamil','Yost'),(35,'Skyla','Stracke'),(36,'Maryjane','Collier'),(37,'Mac','Thiel'),(38,'Quinton','O\'Hara'),(39,'Betsy','Hegmann'),(40,'Ashton','Braun'),(41,'Ross','Balistreri'),(42,'Dave','Cormier'),(43,'Agustina','Schoen'),(44,'Kara','Howell'),(45,'Emmett','Weber'),(46,'Americo','Bahringer'),(47,'Camryn','Little'),(48,'Donald','Hand'),(49,'Terrill','Kovacek'),(50,'Violette','Leffler');
/*!40000 ALTER TABLE `author` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-30 22:35:59

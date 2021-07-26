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
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `team` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tournament_id` int unsigned NOT NULL,
  `media_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_team_media1_idx` (`media_id`),
  KEY `fk_team_tournament1_idx` (`tournament_id`),
  CONSTRAINT `fk_team_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_team_tournament1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Kautzer, O\'Hara and Glover',12,287),(2,'Stamm Ltd',4,303),(3,'Jacobs PLC',7,95),(4,'VonRueden PLC',15,445),(5,'Aufderhar, Jacobson and Ryan',13,425),(6,'O\'Keefe-Harris',3,209),(7,'Bashirian LLC',13,290),(8,'Parisian-Anderson',4,32),(9,'Spencer-Williamson',4,369),(10,'Littel, Douglas and Pfannerstill',17,304),(11,'Mosciski-Borer',9,412),(12,'Kohler-Lindgren',19,76),(13,'Bashirian, Champlin and Schultz',4,50),(14,'Kling-Marquardt',6,298),(15,'Volkman, Lemke and Cartwright',10,372),(16,'Hintz Inc',4,7),(17,'VonRueden-Schiller',17,196),(18,'Lakin, Will and Zemlak',16,73),(19,'Jerde-Abshire',12,271),(20,'Huel Inc',1,98),(21,'Gorczany PLC',8,294),(22,'Luettgen, Kuhlman and Thompson',13,172),(23,'Feeney-Denesik',5,381),(24,'Lang, Grant and Blanda',9,194),(25,'Cremin and Sons',10,123),(26,'Ziemann Inc',5,451),(27,'Green, Paucek and Effertz',2,68),(28,'Hirthe Ltd',2,116),(29,'Boyle-Ritchie',5,153),(30,'Rutherford PLC',17,348),(31,'Dare-Wolff',1,10),(32,'Batz, Effertz and Batz',15,430),(33,'Schiller, Fahey and Hettinger',9,296),(34,'Conn and Sons',1,492),(35,'Marquardt Inc',1,18),(36,'Koss, Roob and Connelly',4,219),(37,'Walker, Johns and Bartoletti',4,395),(38,'Bradtke, Satterfield and Ullrich',16,190),(39,'Tremblay, Berge and Gottlieb',8,93),(40,'Schimmel-Schiller',16,23),(41,'Renner PLC',9,491),(42,'Hammes LLC',19,250),(43,'McKenzie, Ernser and Macejkovic',3,1),(44,'Bogisich, Kunde and Mraz',15,295),(45,'Hamill, Collier and Hudson',7,279),(46,'Denesik Inc',1,177),(47,'Ritchie, Langosh and Feeney',12,379),(48,'Ferry Group',5,490),(49,'Koss-Krajcik',6,107),(50,'Rippin LLC',13,154),(51,'Hermiston-Strosin',5,72),(52,'Carroll-Quigley',15,212),(53,'Olson Inc',19,263),(54,'Breitenberg Group',17,241),(55,'Schumm PLC',15,283),(56,'Stanton Inc',8,71),(57,'Wisozk Group',7,239),(58,'Wiza PLC',13,335),(59,'Raynor Group',10,186),(60,'Turcotte PLC',1,392),(61,'Kessler-Rowe',19,35),(62,'Powlowski, Bayer and Mraz',3,253),(63,'Kutch, Predovic and Tillman',17,174),(64,'Considine-Stark',10,44),(65,'Kirlin-Hoppe',12,227),(66,'Simonis, O\'Keefe and Thiel',8,405),(67,'Gislason LLC',12,69),(68,'Bailey, Miller and Kuhlman',5,264),(69,'Will-Boehm',2,17),(70,'Carter-Swift',1,187),(71,'Zemlak LLC',12,268),(72,'Cruickshank, Hoeger and Ritchie',7,75),(73,'Runte Ltd',1,79),(74,'Crona and Sons',17,245),(75,'Simonis LLC',7,419),(76,'Kemmer, Greenholt and Weber',6,229),(77,'Schmidt, Leannon and Buckridge',19,204),(78,'Kohler Ltd',8,366),(79,'Raynor Ltd',16,225),(80,'Hoppe and Sons',17,157);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-26 22:27:51

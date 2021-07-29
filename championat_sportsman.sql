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
-- Table structure for table `sportsman`
--

DROP TABLE IF EXISTS `sportsman`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sportsman` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('m','f') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday_date` date NOT NULL,
  `country` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_sport_id` int unsigned NOT NULL,
  `team_id` int unsigned DEFAULT NULL,
  `media_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sportsman_type_sport1_idx` (`type_sport_id`),
  KEY `fk_sportsman_team1_idx` (`team_id`),
  KEY `fk_sportsman_media1_idx` (`media_id`),
  CONSTRAINT `fk_sportsman_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`),
  CONSTRAINT `fk_sportsman_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`),
  CONSTRAINT `fk_sportsman_type_sport1` FOREIGN KEY (`type_sport_id`) REFERENCES `type_sport` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sportsman`
--

LOCK TABLES `sportsman` WRITE;
/*!40000 ALTER TABLE `sportsman` DISABLE KEYS */;
INSERT INTO `sportsman` VALUES (1,'Angelo','Lindgren','m','1982-07-01','RU',2,2,311),(2,'Martine','Pfeffer','f','2000-12-01','GB',2,73,370),(3,'Valentine','Oberbrunner','m','2001-06-01','GB',2,79,429),(4,'Jeffry','Williamson','f','1998-09-01','ES',2,24,479),(5,'George','Mayer','f','1983-08-01','PT',2,2,249),(6,'Bailee','Stanton','m','1991-03-01','MX',4,NULL,106),(7,'Evans','Powlowski','f','1999-09-01','MX',4,NULL,113),(8,'Emmie','Dicki','f','1994-04-01','IT',1,39,55),(9,'Dana','Nicolas','f','1991-08-01','DE',2,61,96),(10,'Tanner','Sawayn','m','1994-09-01','US',2,18,201),(11,'Ramiro','Aufderhar','m','1993-02-01','IT',2,2,175),(12,'Haskell','Spinka','m','2000-12-01','RU',1,15,128),(13,'Janiya','Spinka','f','1994-08-01','DE',2,37,114),(14,'Josiah','Beier','f','1989-10-01','DE',4,NULL,284),(15,'Tre','Koelpin','m','1984-06-01','RU',4,NULL,147),(16,'Leann','Denesik','m','1997-02-01','FR',2,12,261),(17,'Colleen','Bartoletti','f','2001-08-01','FR',1,64,367),(18,'Monica','Macejkovic','f','1986-02-01','MX',2,18,110),(19,'Aaron','Kling','m','1995-02-01','CA',2,4,488),(20,'Bo','Rodriguez','f','1986-09-01','GB',2,4,103),(21,'Antonette','Denesik','m','1992-05-01','GB',5,45,22),(22,'Santino','Kovacek','m','1996-04-01','CA',1,56,272),(23,'Ambrose','Glover','f','1998-08-01','CN',1,46,11),(24,'Myriam','Goyette','m','1998-08-01','ES',2,24,408),(25,'Jeromy','Davis','f','1991-09-01','RU',2,2,74),(26,'Thora','Muller','f','1981-11-01','US',2,17,165),(27,'Eryn','Emard','m','2003-08-01','IN',4,NULL,25),(28,'Antonia','Olson','m','1991-11-01','IT',2,55,178),(29,'Laura','Wyman','f','1993-01-01','DE',4,NULL,205),(30,'Shirley','Schmitt','m','1983-11-01','DE',4,NULL,230),(31,'Presley','Mayert','f','1984-10-01','ES',2,32,4),(32,'Mitchell','Langosh','m','1991-07-01','IE',5,26,353),(33,'Melvina','Turcotte','m','1997-09-01','ES',4,NULL,54),(34,'Spencer','Kshlerin','m','1983-05-01','CA',4,NULL,277),(35,'Marisol','Hayes','f','1992-12-01','FR',4,NULL,322),(36,'Jonatan','Huel','f','1984-03-01','DE',4,NULL,409),(37,'Lea','Keeling','f','1986-04-01','IE',5,69,293),(38,'Isabell','Conn','f','1998-06-01','RU',5,28,132),(39,'Rosina','Lebsack','f','2002-08-01','CA',4,NULL,316),(40,'Elfrieda','Kirlin','f','1987-03-01','MX',2,60,497),(41,'Magnus','Turcotte','f','1997-06-01','CA',5,51,53),(42,'Jayde','Schinner','f','1995-03-01','IN',2,71,231),(43,'Rosella','Steuber','m','2002-11-01','IN',1,54,477),(44,'Toni','Carter','m','1998-05-01','PT',2,37,421),(45,'Elijah','Rogahn','m','2002-05-01','IE',2,2,373),(46,'Leo','Keeling','f','1986-01-01','DE',2,70,397),(47,'Lois','Price','f','1992-09-01','IN',1,1,332),(48,'Angie','Mayert','f','1999-07-01','DE',5,23,5),(49,'Rhianna','O\'Connell','f','1989-01-01','IT',5,72,33),(50,'Vanessa','Murazik','f','1991-01-01','IN',2,74,306),(51,'Nakia','Ernser','m','1982-06-01','CA',2,31,221),(52,'Kasey','King','m','1983-05-01','CA',5,69,160),(53,'Jace','Harber','m','1988-12-01','ES',5,3,483),(54,'Meredith','Ziemann','f','1989-03-01','PT',2,38,226),(55,'Adrien','Dare','m','1998-05-01','DE',2,37,259),(56,'Chance','Corwin','f','1993-08-01','ES',1,1,216),(57,'Alberto','Mills','f','1992-07-01','FR',4,NULL,199),(58,'Eden','Botsford','f','2001-01-01','DE',5,23,336),(59,'Marilou','Bergstrom','m','1996-11-01','MX',2,38,286),(60,'Garnett','Greenfelder','m','2000-08-01','RU',1,47,246),(61,'Julianne','Oberbrunner','m','1981-12-01','ES',2,35,439),(62,'Amya','Lakin','m','2002-02-01','GB',4,NULL,368),(63,'Jerad','Smitham','f','1984-03-01','PT',5,72,384),(64,'Imogene','Hackett','f','1984-02-01','MX',1,25,109),(65,'Glenda','Cormier','f','1987-03-01','US',1,47,343),(66,'Aubrey','Schmitt','m','2003-03-01','IE',1,46,349),(67,'Andy','Corkery','f','1998-11-01','US',5,29,28),(68,'Amparo','Volkman','m','2004-02-01','ES',1,66,167),(69,'Sheridan','Green','f','1993-05-01','IT',5,23,403),(70,'Everette','Hilpert','m','1998-12-01','IE',1,66,181),(71,'Ruth','Jakubowski','f','1983-11-01','US',2,13,413),(72,'Jennings','Ziemann','f','1992-02-01','DE',2,2,126),(73,'Vivienne','Lehner','m','2003-02-01','ES',1,5,19),(74,'Polly','Beatty','f','1983-08-01','PT',2,13,232),(75,'Selena','Wilderman','m','2003-01-01','IT',5,57,26),(76,'Kadin','Weimann','f','1983-10-01','IE',2,2,309),(77,'Gilda','Lueilwitz','m','2004-03-01','ES',2,18,427),(78,'Thora','Smitham','f','1989-03-01','US',4,NULL,401),(79,'Reina','Rodriguez','m','2002-09-01','IE',5,48,49),(80,'Yvonne','Larson','f','1990-03-01','FR',4,NULL,448),(81,'Isidro','Kautzer','f','1987-06-01','IT',1,22,29),(82,'Karl','Wiegand','f','1986-01-01','FR',1,59,3),(83,'Marvin','Ratke','f','1987-02-01','US',5,75,31),(84,'Stefan','Hamill','f','1996-09-01','GB',5,72,105),(85,'Deja','Beer','f','1991-10-01','IN',2,8,467),(86,'Irving','Williamson','f','1988-02-01','ES',2,79,342),(87,'Alden','Schulist','m','1984-09-01','IE',1,46,454),(88,'Corbin','Bechtelar','m','2003-05-01','RU',2,17,494),(89,'Chaya','Conroy','m','1982-05-01','ES',2,2,289),(90,'Laurianne','Morissette','m','1995-11-01','CA',2,2,133),(91,'Emmett','Robel','m','2001-09-01','PT',2,8,269),(92,'Stewart','Larson','f','1990-03-01','ES',1,7,21),(93,'Maye','Jacobs','f','1990-06-01','US',5,26,92),(94,'Kristian','Kautzer','f','2001-02-01','FR',1,58,13),(95,'Lisa','McGlynn','m','2003-06-01','GB',4,NULL,168),(96,'Esther','Ruecker','f','1983-03-01','IE',2,40,158),(97,'Arlene','Satterfield','f','1999-12-01','IT',5,3,374),(98,'Michel','Bailey','f','1994-09-01','IN',1,44,474),(99,'Felicita','Bosco','f','1993-02-01','MX',5,69,59),(100,'Ernesto','O\'Kon','m','2000-10-01','IN',4,NULL,48),(101,'Crystal','Stanton','f','1994-01-01','ES',1,44,102),(102,'Mariela','Will','f','1987-03-01','IT',5,72,119),(103,'Ulices','White','m','1998-05-01','GB',4,NULL,321),(104,'Eliseo','Feeney','m','1999-05-01','IT',1,53,135),(105,'Yasmine','Dickens','m','1996-05-01','RU',5,23,424),(106,'Cassidy','Spinka','f','2002-12-01','FR',1,66,173),(107,'Elena','Kiehn','m','1994-12-01','IT',2,4,170),(108,'Sherwood','Lueilwitz','m','1985-03-01','US',2,2,340),(109,'Myles','Hudson','m','1985-09-01','MX',5,23,389),(110,'Tito','Leffler','f','1992-05-01','FR',1,78,16),(111,'Paige','Hoppe','f','1998-11-01','US',5,75,288),(112,'Judson','Ebert','m','1986-11-01','US',2,34,252),(113,'Dino','Cassin','f','1982-02-01','FR',4,NULL,376),(114,'Lucy','Daniel','f','1994-03-01','PT',2,12,184),(115,'Rubie','Harber','m','1994-03-01','IN',2,17,325),(116,'Coy','Windler','f','1982-11-01','FR',2,37,255),(117,'Courtney','Pollich','m','2000-12-01','MX',4,NULL,256),(118,'Diamond','Cremin','m','2000-08-01','CA',1,7,320),(119,'Mellie','Cassin','f','1994-09-01','IE',2,18,482),(120,'Ofelia','Abbott','f','1990-12-01','RU',4,NULL,473),(121,'Treva','Stehr','m','1989-11-01','PT',2,2,436),(122,'Shane','Bartell','f','1996-01-01','PT',2,19,144),(123,'Jarrod','Hahn','m','2004-10-01','MX',5,75,233),(124,'Chance','Thiel','m','2005-05-01','FR',1,15,305),(125,'Yasmine','Heidenreich','m','1981-09-01','MX',5,57,406),(126,'Otis','Bruen','f','1986-11-01','GB',1,7,129),(127,'Nannie','Dickinson','m','1983-10-01','IN',2,65,56),(128,'Astrid','Gislason','m','2002-06-01','CA',5,72,130),(129,'Katrina','O\'Reilly','m','2005-05-01','DE',2,73,257),(130,'Chyna','Altenwerth','m','1988-11-01','IT',2,55,346),(131,'Jimmie','Heidenreich','m','1997-09-01','GB',1,41,361),(132,'Adelbert','Haley','f','1991-04-01','PT',5,72,478),(133,'Camille','Kunze','m','1982-09-01','GB',2,61,443),(134,'Marquise','Little','f','1983-12-01','DE',5,27,37),(135,'Dandre','Dach','f','1991-01-01','IN',1,22,391),(136,'Felix','D\'Amore','f','1997-10-01','GB',2,70,420),(137,'Beatrice','Feeney','f','1985-03-01','DE',5,75,333),(138,'Shawn','Medhurst','f','2002-01-01','US',4,NULL,276),(139,'Carmine','Wintheiser','f','1999-02-01','RU',2,2,223),(140,'Euna','Kuphal','f','1983-09-01','ES',1,1,66),(141,'Dewayne','Fadel','f','1990-06-01','CA',1,15,314),(142,'April','Kozey','f','1995-09-01','DE',2,19,273),(143,'Maximilian','Heathcote','m','2001-05-01','IN',1,47,301),(144,'Valerie','Champlin','f','1989-04-01','MX',2,31,319),(145,'Payton','Wehner','m','1986-10-01','PT',1,64,452),(146,'Ernestine','Hagenes','f','1985-05-01','PT',4,NULL,422),(147,'Hassan','Nolan','m','1985-10-01','IT',4,NULL,350),(148,'Doyle','Hodkiewicz','f','1992-05-01','GB',2,16,86),(149,'Vada','Ferry','f','1998-11-01','ES',2,11,484),(150,'Estelle','Koepp','m','1986-05-01','IN',2,2,486),(151,'Nestor','Sporer','f','2004-11-01','RU',5,72,88),(152,'Horace','Baumbach','m','1984-05-01','MX',2,77,213),(153,'Rosendo','Deckow','m','2001-09-01','US',4,NULL,485),(154,'Dillan','Klein','f','1999-10-01','RU',2,73,171),(155,'Vivian','Pfeffer','f','1988-04-01','IT',2,73,15),(156,'Enoch','Koch','f','1986-04-01','IT',2,55,87),(157,'Devante','Schroeder','f','1986-01-01','DE',5,26,352),(158,'Hardy','Price','f','1990-08-01','CN',1,50,446),(159,'Stephen','Conn','f','1989-04-01','IN',2,38,8),(160,'Nelle','Kozey','m','1993-12-01','IT',2,63,275),(161,'Bridgette','Turcotte','m','1996-06-01','ES',2,20,220),(162,'Joanne','McGlynn','f','1994-11-01','IE',5,28,203),(163,'Arden','Frami','f','2004-02-01','ES',4,NULL,192),(164,'Kacie','Steuber','f','2005-04-01','RU',4,NULL,152),(165,'Graciela','Berge','f','1983-09-01','ES',2,2,104),(166,'Frederic','Crist','m','1997-02-01','RU',5,3,442),(167,'Adan','Ryan','f','2003-08-01','PT',1,25,99),(168,'Cole','Parker','f','1996-02-01','GB',1,22,398),(169,'Christa','Schoen','f','1989-03-01','PT',2,36,139),(170,'Juvenal','Huel','f','2002-01-01','CA',1,47,9),(171,'Gaetano','Connelly','m','1986-10-01','DE',2,55,156),(172,'Herminio','Mueller','m','1997-06-01','RU',2,77,208),(173,'Jeffery','Abshire','f','1996-02-01','FR',2,2,326),(174,'Dora','Weber','m','1982-08-01','CN',4,NULL,299),(175,'Trudie','Thiel','m','1994-02-01','IT',2,18,67),(176,'Kattie','Macejkovic','m','1992-02-01','RU',5,29,83),(177,'Uriel','Parker','m','1997-07-01','PT',1,53,235),(178,'Kelli','Block','m','1980-11-01','GB',1,53,371),(179,'Viviane','Zemlak','f','1980-12-01','MX',1,44,70),(180,'Flossie','Ferry','m','1981-06-01','CA',2,36,380),(181,'Stephany','Ullrich','f','1983-12-01','CA',2,73,224),(182,'Florida','Miller','f','1994-11-01','RU',4,NULL,200),(183,'Kristina','Rosenbaum','f','1991-10-01','MX',1,7,6),(184,'Kathryne','Gutkowski','m','1993-10-01','IN',2,2,127),(185,'Althea','Hettinger','f','1988-01-01','CA',4,NULL,238),(186,'Braden','Labadie','m','2003-03-01','CN',4,NULL,415),(187,'Brianne','Zboncak','f','1996-02-01','CA',5,3,244),(188,'Georgianna','Fay','m','1990-07-01','FR',1,25,12),(189,'Gus','Abbott','f','1983-08-01','ES',2,32,345),(190,'Blake','Gulgowski','f','1991-01-01','IN',2,2,62),(191,'Chauncey','Cummings','f','1998-07-01','GB',2,17,20),(192,'Fritz','Hettinger','f','1989-02-01','IT',2,77,417),(193,'Werner','Carroll','m','1994-05-01','ES',2,30,460),(194,'Gabe','Reynolds','m','1998-11-01','PT',2,35,344),(195,'Darwin','Kris','f','1980-08-01','CA',1,7,218),(196,'Guadalupe','Runte','m','2000-12-01','GB',4,NULL,197),(197,'Coralie','Huels','m','1982-03-01','CN',2,67,210),(198,'Josiane','Turcotte','m','2002-07-01','IT',2,20,362),(199,'Isobel','Herman','m','1985-04-01','CN',2,34,63),(200,'Levi','Koelpin','f','1988-04-01','IN',2,61,438);
/*!40000 ALTER TABLE `sportsman` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sportsman_BEFORE_INSERT` BEFORE INSERT ON `sportsman` FOR EACH ROW BEGIN
	IF NEW.type_sport_id = 4 AND NEW.team_id IS NOT NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'THERE ARE NO TEAMS IN THIS TYPE OF SPORT';
	END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `sportsman_BEFORE_UPDATE` BEFORE UPDATE ON `sportsman` FOR EACH ROW BEGIN
	IF NEW.type_sport_id = 4 AND NEW.team_id IS NOT NULL THEN
		SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'THERE ARE NO TEAMS IN THIS TYPE OF SPORT';
	END IF;
END */;;
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

-- Dump completed on 2021-07-29 22:20:35

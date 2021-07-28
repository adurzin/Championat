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
  `birthday_date` datetime NOT NULL,
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
INSERT INTO `sportsman` VALUES (1,'Angelo','Lindgren','m','2011-10-15 04:10:58','RU',2,2,311),(2,'Martine','Pfeffer','f','1998-01-24 10:45:58','GB',2,73,370),(3,'Valentine','Oberbrunner','m','1991-01-19 07:50:23','GB',2,79,429),(4,'Jeffry','Williamson','f','1976-05-03 18:52:44','ES',2,24,479),(5,'George','Mayer','f','1995-08-04 20:39:07','PT',2,2,249),(6,'Bailee','Stanton','m','1980-08-08 07:07:10','MX',4,NULL,106),(7,'Evans','Powlowski','f','1983-11-25 14:36:48','MX',4,NULL,113),(8,'Emmie','Dicki','f','1990-11-10 23:24:27','IT',1,39,55),(9,'Dana','Nicolas','f','2011-07-02 21:30:55','DE',2,61,96),(10,'Tanner','Sawayn','m','1982-04-06 05:24:14','US',2,18,201),(11,'Ramiro','Aufderhar','m','1985-06-29 15:02:52','IT',2,2,175),(12,'Haskell','Spinka','m','1998-04-13 18:08:10','RU',1,15,128),(13,'Janiya','Spinka','f','1995-12-08 03:02:03','DE',2,37,114),(14,'Josiah','Beier','f','2008-01-18 05:54:11','DE',4,NULL,284),(15,'Tre','Koelpin','m','2011-03-06 16:51:17','RU',4,NULL,147),(16,'Leann','Denesik','m','1981-11-10 10:49:13','FR',2,12,261),(17,'Colleen','Bartoletti','f','2001-05-15 06:00:42','FR',1,64,367),(18,'Monica','Macejkovic','f','1988-04-26 22:22:32','MX',2,18,110),(19,'Aaron','Kling','m','1972-11-01 15:38:55','CA',2,4,488),(20,'Bo','Rodriguez','f','1985-06-30 13:02:22','GB',2,4,103),(21,'Antonette','Denesik','m','1973-03-13 13:27:13','GB',5,45,22),(22,'Santino','Kovacek','m','1989-11-22 07:30:29','CA',1,56,272),(23,'Ambrose','Glover','f','1991-12-14 22:13:48','CN',1,46,11),(24,'Myriam','Goyette','m','1995-10-04 20:38:22','ES',2,24,408),(25,'Jeromy','Davis','f','1996-09-28 01:16:51','RU',2,2,74),(26,'Thora','Muller','f','1983-11-07 17:15:42','US',2,17,165),(27,'Eryn','Emard','m','1996-09-15 19:00:31','IN',4,NULL,25),(28,'Antonia','Olson','m','2008-12-30 21:10:52','IT',2,55,178),(29,'Laura','Wyman','f','2004-02-19 09:42:54','DE',4,NULL,205),(30,'Shirley','Schmitt','m','2006-04-08 09:05:37','DE',4,NULL,230),(31,'Presley','Mayert','f','1972-09-08 17:31:35','ES',2,32,4),(32,'Mitchell','Langosh','m','2004-03-16 21:56:00','IE',5,26,353),(33,'Melvina','Turcotte','m','2011-11-16 00:21:39','ES',4,NULL,54),(34,'Spencer','Kshlerin','m','1984-09-24 19:15:56','CA',4,NULL,277),(35,'Marisol','Hayes','f','1991-11-24 00:25:18','FR',4,NULL,322),(36,'Jonatan','Huel','f','2014-06-15 20:24:17','DE',4,NULL,409),(37,'Lea','Keeling','f','2005-05-03 22:09:14','IE',5,69,293),(38,'Isabell','Conn','f','1996-05-15 23:25:52','RU',5,28,132),(39,'Rosina','Lebsack','f','1977-02-02 23:37:33','CA',4,NULL,316),(40,'Elfrieda','Kirlin','f','1984-01-28 07:52:16','MX',2,60,497),(41,'Magnus','Turcotte','f','1976-08-05 04:37:25','CA',5,51,53),(42,'Jayde','Schinner','f','1976-02-07 23:17:48','IN',2,71,231),(43,'Rosella','Steuber','m','1988-03-18 21:59:40','IN',1,54,477),(44,'Toni','Carter','m','1995-05-29 08:03:32','PT',2,37,421),(45,'Elijah','Rogahn','m','1989-02-01 05:07:31','IE',2,2,373),(46,'Leo','Keeling','f','2003-12-15 11:26:48','DE',2,70,397),(47,'Lois','Price','f','2002-03-12 03:22:20','IN',1,1,332),(48,'Angie','Mayert','f','1996-11-05 04:37:25','DE',5,23,5),(49,'Rhianna','O\'Connell','f','1978-10-09 15:18:43','IT',5,72,33),(50,'Vanessa','Murazik','f','1985-06-27 17:12:59','IN',2,74,306),(51,'Nakia','Ernser','m','2017-05-31 06:46:53','CA',2,31,221),(52,'Kasey','King','m','1979-08-19 17:50:44','CA',5,69,160),(53,'Jace','Harber','m','1974-02-10 12:01:20','ES',5,3,483),(54,'Meredith','Ziemann','f','1979-04-12 20:58:58','PT',2,38,226),(55,'Adrien','Dare','m','2013-01-13 19:31:44','DE',2,37,259),(56,'Chance','Corwin','f','2020-08-09 04:13:02','ES',1,1,216),(57,'Alberto','Mills','f','2003-08-19 00:56:29','FR',4,NULL,199),(58,'Eden','Botsford','f','2012-05-02 23:29:47','DE',5,23,336),(59,'Marilou','Bergstrom','m','2012-04-09 17:52:59','MX',2,38,286),(60,'Garnett','Greenfelder','m','2005-06-25 08:45:24','RU',1,47,246),(61,'Julianne','Oberbrunner','m','1984-10-28 02:50:01','ES',2,35,439),(62,'Amya','Lakin','m','1993-05-30 00:27:47','GB',4,NULL,368),(63,'Jerad','Smitham','f','1980-08-25 01:38:03','PT',5,72,384),(64,'Imogene','Hackett','f','1972-05-06 15:21:00','MX',1,25,109),(65,'Glenda','Cormier','f','1972-08-18 21:16:54','US',1,47,343),(66,'Aubrey','Schmitt','m','1992-10-19 20:54:38','IE',1,46,349),(67,'Andy','Corkery','f','2012-11-12 20:14:29','US',5,29,28),(68,'Amparo','Volkman','m','1984-02-12 14:00:58','ES',1,66,167),(69,'Sheridan','Green','f','1977-07-13 05:23:03','IT',5,23,403),(70,'Everette','Hilpert','m','2004-02-03 12:16:05','IE',1,66,181),(71,'Ruth','Jakubowski','f','2012-08-23 17:42:41','US',2,13,413),(72,'Jennings','Ziemann','f','1991-02-25 11:02:32','DE',2,2,126),(73,'Vivienne','Lehner','m','2008-12-14 22:47:37','ES',1,5,19),(74,'Polly','Beatty','f','2020-07-10 11:52:55','PT',2,13,232),(75,'Selena','Wilderman','m','1994-08-21 07:11:22','IT',5,57,26),(76,'Kadin','Weimann','f','1971-06-20 08:27:07','IE',2,2,309),(77,'Gilda','Lueilwitz','m','2013-01-27 19:51:07','ES',2,18,427),(78,'Thora','Smitham','f','2000-04-02 22:31:08','US',4,NULL,401),(79,'Reina','Rodriguez','m','1975-01-31 11:49:43','IE',5,48,49),(80,'Yvonne','Larson','f','1995-08-29 02:44:12','FR',4,NULL,448),(81,'Isidro','Kautzer','f','1995-08-29 02:59:55','IT',1,22,29),(82,'Karl','Wiegand','f','2008-09-14 06:26:09','FR',1,59,3),(83,'Marvin','Ratke','f','1986-12-23 22:58:58','US',5,75,31),(84,'Stefan','Hamill','f','2008-08-15 18:52:51','GB',5,72,105),(85,'Deja','Beer','f','1984-12-03 22:30:02','IN',2,8,467),(86,'Irving','Williamson','f','1985-10-05 01:14:36','ES',2,79,342),(87,'Alden','Schulist','m','2005-07-18 21:27:28','IE',1,46,454),(88,'Corbin','Bechtelar','m','2010-01-19 06:43:04','RU',2,17,494),(89,'Chaya','Conroy','m','1996-10-06 13:10:27','ES',2,2,289),(90,'Laurianne','Morissette','m','2007-03-25 04:15:34','CA',2,2,133),(91,'Emmett','Robel','m','2002-03-17 08:59:30','PT',2,8,269),(92,'Stewart','Larson','f','2001-09-15 19:15:19','ES',1,7,21),(93,'Maye','Jacobs','f','2011-12-07 15:31:06','US',5,26,92),(94,'Kristian','Kautzer','f','1983-11-07 21:17:39','FR',1,58,13),(95,'Lisa','McGlynn','m','2010-03-17 22:01:09','GB',4,NULL,168),(96,'Esther','Ruecker','f','1972-03-20 21:34:13','IE',2,40,158),(97,'Arlene','Satterfield','f','2013-03-25 13:20:27','IT',5,3,374),(98,'Michel','Bailey','f','2012-07-24 17:51:29','IN',1,44,474),(99,'Felicita','Bosco','f','1989-02-05 01:21:11','MX',5,69,59),(100,'Ernesto','O\'Kon','m','1974-03-26 14:15:00','IN',4,NULL,48),(101,'Crystal','Stanton','f','1996-03-11 13:31:42','ES',1,44,102),(102,'Mariela','Will','f','2007-09-30 04:35:11','IT',5,72,119),(103,'Ulices','White','m','2016-03-23 04:16:27','GB',4,NULL,321),(104,'Eliseo','Feeney','m','1970-11-06 05:56:11','IT',1,53,135),(105,'Yasmine','Dickens','m','2019-01-17 23:16:58','RU',5,23,424),(106,'Cassidy','Spinka','f','1979-02-12 12:21:53','FR',1,66,173),(107,'Elena','Kiehn','m','1997-09-16 01:38:29','IT',2,4,170),(108,'Sherwood','Lueilwitz','m','2012-08-09 13:07:26','US',2,2,340),(109,'Myles','Hudson','m','1979-12-24 20:21:02','MX',5,23,389),(110,'Tito','Leffler','f','1997-10-04 07:28:57','FR',1,78,16),(111,'Paige','Hoppe','f','2000-08-13 14:21:42','US',5,75,288),(112,'Judson','Ebert','m','1991-07-05 05:34:20','US',2,34,252),(113,'Dino','Cassin','f','2008-10-11 01:02:55','FR',4,NULL,376),(114,'Lucy','Daniel','f','1999-04-04 01:47:50','PT',2,12,184),(115,'Rubie','Harber','m','2004-01-29 14:17:50','IN',2,17,325),(116,'Coy','Windler','f','2020-05-17 07:21:52','FR',2,37,255),(117,'Courtney','Pollich','m','1988-07-13 08:35:57','MX',4,NULL,256),(118,'Diamond','Cremin','m','1981-03-13 09:25:10','CA',1,7,320),(119,'Mellie','Cassin','f','1996-04-23 08:24:14','IE',2,18,482),(120,'Ofelia','Abbott','f','2013-10-03 20:24:53','RU',4,NULL,473),(121,'Treva','Stehr','m','1979-04-12 08:25:08','PT',2,2,436),(122,'Shane','Bartell','f','2008-02-02 01:05:20','PT',2,19,144),(123,'Jarrod','Hahn','m','2016-07-15 16:11:17','MX',5,75,233),(124,'Chance','Thiel','m','1970-10-19 13:19:45','FR',1,15,305),(125,'Yasmine','Heidenreich','m','1974-10-22 10:40:46','MX',5,57,406),(126,'Otis','Bruen','f','1972-06-17 10:00:36','GB',1,7,129),(127,'Nannie','Dickinson','m','1995-03-08 02:16:23','IN',2,65,56),(128,'Astrid','Gislason','m','2021-03-23 20:20:09','CA',5,72,130),(129,'Katrina','O\'Reilly','m','2005-06-15 16:38:12','DE',2,73,257),(130,'Chyna','Altenwerth','m','2013-05-31 09:26:49','IT',2,55,346),(131,'Jimmie','Heidenreich','m','2000-01-30 16:19:20','GB',1,41,361),(132,'Adelbert','Haley','f','1988-04-11 11:30:28','PT',5,72,478),(133,'Camille','Kunze','m','2000-01-24 16:07:01','GB',2,61,443),(134,'Marquise','Little','f','1995-03-20 09:58:50','DE',5,27,37),(135,'Dandre','Dach','f','1997-07-19 10:03:22','IN',1,22,391),(136,'Felix','D\'Amore','f','1990-05-25 18:01:57','GB',2,70,420),(137,'Beatrice','Feeney','f','1989-07-02 03:03:58','DE',5,75,333),(138,'Shawn','Medhurst','f','1979-04-16 04:42:48','US',4,NULL,276),(139,'Carmine','Wintheiser','f','2000-09-30 12:47:29','RU',2,2,223),(140,'Euna','Kuphal','f','1993-06-07 07:37:22','ES',1,1,66),(141,'Dewayne','Fadel','f','1974-01-19 19:54:10','CA',1,15,314),(142,'April','Kozey','f','1990-04-30 04:52:54','DE',2,19,273),(143,'Maximilian','Heathcote','m','2015-12-16 22:34:03','IN',1,47,301),(144,'Valerie','Champlin','f','1974-05-30 03:39:08','MX',2,31,319),(145,'Payton','Wehner','m','1996-12-28 09:35:37','PT',1,64,452),(146,'Ernestine','Hagenes','f','2012-10-06 13:29:45','PT',4,NULL,422),(147,'Hassan','Nolan','m','2002-08-05 14:00:22','IT',4,NULL,350),(148,'Doyle','Hodkiewicz','f','2002-03-25 15:27:22','GB',2,16,86),(149,'Vada','Ferry','f','1972-10-15 15:48:17','ES',2,11,484),(150,'Estelle','Koepp','m','1986-10-23 19:30:25','IN',2,2,486),(151,'Nestor','Sporer','f','2015-12-05 08:08:24','RU',5,72,88),(152,'Horace','Baumbach','m','1979-08-01 02:16:23','MX',2,77,213),(153,'Rosendo','Deckow','m','2007-05-03 19:04:43','US',4,NULL,485),(154,'Dillan','Klein','f','1981-01-22 13:15:20','RU',2,73,171),(155,'Vivian','Pfeffer','f','1986-07-19 19:41:27','IT',2,73,15),(156,'Enoch','Koch','f','2002-06-02 17:36:25','IT',2,55,87),(157,'Devante','Schroeder','f','1983-05-11 06:13:07','DE',5,26,352),(158,'Hardy','Price','f','1991-10-01 16:47:13','CN',1,50,446),(159,'Stephen','Conn','f','1983-02-19 15:45:57','IN',2,38,8),(160,'Nelle','Kozey','m','1977-10-13 06:01:02','IT',2,63,275),(161,'Bridgette','Turcotte','m','1978-07-01 07:43:54','ES',2,20,220),(162,'Joanne','McGlynn','f','2000-11-16 05:52:24','IE',5,28,203),(163,'Arden','Frami','f','1985-11-29 04:16:04','ES',4,NULL,192),(164,'Kacie','Steuber','f','1972-04-08 23:23:11','RU',4,NULL,152),(165,'Graciela','Berge','f','1996-05-16 23:59:50','ES',2,2,104),(166,'Frederic','Crist','m','2019-03-16 07:39:07','RU',5,3,442),(167,'Adan','Ryan','f','1981-11-12 17:24:46','PT',1,25,99),(168,'Cole','Parker','f','1999-12-19 06:35:27','GB',1,22,398),(169,'Christa','Schoen','f','1981-10-31 10:57:41','PT',2,36,139),(170,'Juvenal','Huel','f','1983-05-23 07:57:23','CA',1,47,9),(171,'Gaetano','Connelly','m','2001-03-31 00:42:19','DE',2,55,156),(172,'Herminio','Mueller','m','1985-12-18 13:11:01','RU',2,77,208),(173,'Jeffery','Abshire','f','2017-02-01 17:59:47','FR',2,2,326),(174,'Dora','Weber','m','1992-12-09 17:59:44','CN',4,NULL,299),(175,'Trudie','Thiel','m','1990-06-25 07:05:57','IT',2,18,67),(176,'Kattie','Macejkovic','m','1983-07-23 16:45:49','RU',5,29,83),(177,'Uriel','Parker','m','2008-01-27 02:19:42','PT',1,53,235),(178,'Kelli','Block','m','1977-03-28 13:30:35','GB',1,53,371),(179,'Viviane','Zemlak','f','1985-09-06 22:12:06','MX',1,44,70),(180,'Flossie','Ferry','m','1970-04-01 09:12:46','CA',2,36,380),(181,'Stephany','Ullrich','f','2000-01-14 20:41:20','CA',2,73,224),(182,'Florida','Miller','f','2016-07-27 05:53:19','RU',4,NULL,200),(183,'Kristina','Rosenbaum','f','2019-09-15 00:06:53','MX',1,7,6),(184,'Kathryne','Gutkowski','m','1970-06-14 18:13:17','IN',2,2,127),(185,'Althea','Hettinger','f','2007-03-11 21:40:34','CA',4,NULL,238),(186,'Braden','Labadie','m','1987-01-26 01:27:41','CN',4,NULL,415),(187,'Brianne','Zboncak','f','2008-07-26 10:01:05','CA',5,3,244),(188,'Georgianna','Fay','m','1972-04-13 01:05:13','FR',1,25,12),(189,'Gus','Abbott','f','1987-03-11 01:14:50','ES',2,32,345),(190,'Blake','Gulgowski','f','1987-06-13 18:57:54','IN',2,2,62),(191,'Chauncey','Cummings','f','2003-04-27 03:49:13','GB',2,17,20),(192,'Fritz','Hettinger','f','1993-09-14 04:13:41','IT',2,77,417),(193,'Werner','Carroll','m','1994-09-18 15:24:31','ES',2,30,460),(194,'Gabe','Reynolds','m','2001-06-01 08:06:43','PT',2,35,344),(195,'Darwin','Kris','f','1978-11-22 13:10:36','CA',1,7,218),(196,'Guadalupe','Runte','m','2006-08-20 20:02:54','GB',4,NULL,197),(197,'Coralie','Huels','m','1992-06-12 22:21:28','CN',2,67,210),(198,'Josiane','Turcotte','m','1981-03-01 16:21:51','IT',2,20,362),(199,'Isobel','Herman','m','1984-11-08 02:02:01','CN',2,34,63),(200,'Levi','Koelpin','f','2000-03-21 18:35:00','IN',2,61,438);
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

-- Dump completed on 2021-07-28 16:38:19

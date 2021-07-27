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
-- Table structure for table `game-center`
--

DROP TABLE IF EXISTS `game-center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `game-center` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `type_sport_id` int unsigned NOT NULL,
  `tournament_id` int unsigned NOT NULL,
  `date_game` datetime NOT NULL,
  `score` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_game_id` int unsigned NOT NULL,
  `team_1_id` int unsigned DEFAULT NULL,
  `team_2_id` int unsigned DEFAULT NULL,
  `sportsman_1_id` int unsigned DEFAULT NULL,
  `sportsman_2_id` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_1_team_2` (`team_1_id`,`team_2_id`),
  UNIQUE KEY `sportsman_1_sportsman_2` (`sportsman_1_id`,`sportsman_2_id`),
  KEY `fk_game-center_tournaments1_idx` (`tournament_id`),
  KEY `fk_game-center_status_game1_idx` (`status_game_id`),
  KEY `fk_game-center_team1_idx` (`team_1_id`),
  KEY `fk_game-center_sportsman1_idx` (`sportsman_1_id`),
  KEY `fk_game-center_team2_idx` (`team_2_id`),
  KEY `fk_game-center_sportsman2_idx` (`sportsman_2_id`),
  KEY `fk_type_sport_idx` (`type_sport_id`),
  CONSTRAINT `fk_game-center_sportsman1` FOREIGN KEY (`sportsman_1_id`) REFERENCES `sportsman` (`id`),
  CONSTRAINT `fk_game-center_sportsman2` FOREIGN KEY (`sportsman_2_id`) REFERENCES `sportsman` (`id`),
  CONSTRAINT `fk_game-center_status_game1` FOREIGN KEY (`status_game_id`) REFERENCES `status_game` (`id`),
  CONSTRAINT `fk_game-center_team1` FOREIGN KEY (`team_1_id`) REFERENCES `team` (`id`),
  CONSTRAINT `fk_game-center_team2` FOREIGN KEY (`team_2_id`) REFERENCES `team` (`id`),
  CONSTRAINT `fk_game-center_tournaments1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`id`),
  CONSTRAINT `fk_type_sport` FOREIGN KEY (`type_sport_id`) REFERENCES `type_sport` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `game-center`
--

LOCK TABLES `game-center` WRITE;
/*!40000 ALTER TABLE `game-center` DISABLE KEYS */;
INSERT INTO `game-center` VALUES (151,1,4,'2002-01-24 13:58:34',' \'10:9\'',2,30,44,68,158),(152,1,1,'1984-11-12 00:47:54',' \'10:9\'',2,26,44,59,169),(153,1,7,'2008-02-28 07:15:16',' \'0:1\'',2,15,61,20,180),(154,1,13,'2013-12-22 11:21:09',' \'10:9\'',3,40,48,195,79),(155,1,11,'2001-05-29 01:56:28',' \'0:1\'',1,NULL,NULL,1,32),(156,1,14,'2008-07-13 22:34:49',' \'0:1\'',2,NULL,NULL,4,29),(157,1,1,'1975-08-26 11:53:36','\'1:1\'',3,62,13,93,14),(158,1,1,'1995-02-20 05:36:54','\'1:1\'',3,57,15,113,160),(159,1,2,'2006-05-09 09:52:00','\'1:1\'',1,46,46,158,109),(160,1,1,'1982-07-22 07:43:43','\'1:1\'',1,3,2,192,185),(161,1,1,'1981-10-23 08:18:12',' \'4:0\'',2,32,20,137,83),(162,1,8,'1998-09-15 05:41:43','\'1:1\'',2,27,13,134,159),(163,1,5,'1999-01-18 10:15:49',' \'0:1\'',2,48,74,168,32),(164,1,1,'1990-10-26 04:23:39',' \'4:0\'',3,29,24,97,30),(165,1,1,'1974-08-19 23:39:08','\'1:1\'',2,37,38,93,84),(166,1,8,'2005-07-26 08:22:12',' \'0:1\'',3,5,64,28,148),(167,1,4,'1995-11-07 15:49:28','\'1:1\'',2,20,43,135,183),(168,1,7,'1976-03-20 20:59:35',' \'10:9\'',3,47,73,164,84),(169,1,2,'1990-10-02 15:19:19','\'1:1\'',2,27,35,168,162),(170,1,11,'2021-01-30 10:53:58',' \'4:0\'',3,NULL,NULL,30,143),(171,1,10,'2008-03-11 04:18:24','\'1:1\'',2,50,41,67,151),(172,1,5,'2011-03-21 11:41:54',' \'10:9\'',2,22,40,12,189),(173,1,1,'1986-03-27 18:00:18',' \'0:1\'',2,68,79,58,132),(174,1,1,'1974-09-10 11:52:07',' \'4:0\'',2,17,59,158,8),(175,1,11,'1985-02-14 18:31:19',' \'0:1\'',2,NULL,NULL,80,173),(176,1,10,'2017-07-22 22:08:35',' \'4:0\'',3,33,9,73,148),(177,1,1,'2014-01-27 01:15:51',' \'10:9\'',2,22,11,21,66),(178,1,2,'1979-07-15 13:31:44',' \'4:0\'',2,57,74,100,199),(179,1,1,'2006-10-05 03:53:12','\'1:1\'',3,29,63,126,29),(180,1,1,'2019-03-27 23:33:28','\'1:1\'',1,41,43,190,180),(181,1,8,'2002-04-27 03:59:03',' \'4:0\'',2,61,64,111,23),(182,1,11,'2002-08-22 02:21:09',' \'0:1\'',2,NULL,NULL,111,166),(183,1,3,'1987-04-16 07:03:16',' \'10:9\'',2,28,68,110,168),(184,1,1,'1989-09-30 06:34:59',' \'4:0\'',1,60,16,181,74),(185,1,7,'1977-03-05 21:01:19',' \'0:1\'',3,43,67,50,96),(186,1,1,'1991-01-20 13:13:41',' \'10:9\'',2,74,39,89,95),(187,1,1,'1988-01-02 01:27:30',' \'0:1\'',3,72,26,158,89),(188,1,3,'1995-03-07 04:33:49','\'1:1\'',3,6,39,155,124),(189,1,7,'1984-03-15 02:10:35','\'1:1\'',2,60,5,161,129),(190,1,1,'1994-12-10 02:06:06',' \'4:0\'',1,29,77,194,123),(191,1,1,'2005-04-24 05:44:30',' \'0:1\'',3,21,29,37,139),(192,1,1,'2000-03-20 21:50:44',' \'0:1\'',3,54,59,20,92),(193,1,4,'1988-07-23 05:52:56',' \'10:9\'',1,31,19,144,32),(194,1,1,'2020-01-17 19:23:04','\'1:1\'',1,62,48,20,114),(195,1,5,'1980-04-09 06:16:03','\'1:1\'',2,56,48,98,134),(196,1,5,'1993-10-20 18:17:36',' \'4:0\'',3,30,37,58,110),(197,1,4,'2000-07-04 10:53:56','\'1:1\'',1,27,66,170,85),(198,1,6,'2006-10-31 00:07:08',' \'10:9\'',1,53,54,50,76),(199,1,1,'1975-03-12 22:16:41','\'1:1\'',1,34,47,139,104),(200,1,4,'2021-03-17 10:31:52',' \'4:0\'',3,4,68,105,108),(201,1,11,'1986-03-11 14:30:07',' \'0:1\'',3,NULL,NULL,38,151),(202,1,1,'2000-05-14 03:00:09',' \'10:9\'',2,70,61,33,144),(203,1,4,'1971-12-03 13:40:17','\'1:1\'',2,59,67,22,197),(204,1,5,'1989-06-25 07:12:14',' \'10:9\'',3,7,51,103,155),(205,1,4,'2008-05-02 19:57:12',' \'0:1\'',2,56,17,103,44),(206,1,1,'2003-10-13 10:09:01',' \'0:1\'',1,76,17,182,27),(207,1,1,'2010-05-06 18:10:29','\'1:1\'',2,38,67,18,127),(208,1,11,'2005-07-25 11:09:04','\'1:1\'',1,NULL,NULL,20,37),(209,1,6,'1981-09-13 06:54:19','\'1:1\'',1,9,28,190,126),(210,1,3,'1994-03-14 23:05:24',' \'0:1\'',1,24,66,60,162),(211,1,1,'2006-03-01 15:43:38',' \'4:0\'',1,67,79,48,149),(212,1,3,'2021-02-01 13:58:30','\'1:1\'',1,7,47,5,34),(213,1,5,'2011-12-06 22:31:57',' \'4:0\'',2,35,24,170,106),(214,1,10,'2011-02-12 20:16:21',' \'4:0\'',1,68,47,90,157),(215,1,5,'2013-10-02 01:34:49',' \'4:0\'',2,71,41,76,37),(216,1,7,'2011-12-21 03:10:16',' \'10:9\'',2,18,12,78,91),(217,1,1,'2020-04-05 04:34:21',' \'0:1\'',2,52,78,17,134),(218,1,3,'1983-03-31 19:15:24',' \'0:1\'',1,19,46,118,17),(219,1,2,'1981-07-24 01:02:08','\'1:1\'',1,16,75,130,128),(220,1,1,'1996-08-04 15:42:49',' \'0:1\'',3,17,48,74,116),(221,1,1,'1989-02-11 19:14:35',' \'4:0\'',3,80,80,166,76),(222,1,1,'2009-02-03 10:43:36',' \'4:0\'',3,70,8,137,192),(223,1,1,'1988-10-03 08:52:06',' \'4:0\'',3,21,80,77,169),(224,1,2,'2002-09-26 14:35:11',' \'0:1\'',2,73,22,82,111),(226,1,14,'1971-03-04 13:19:12','\'1:1\'',2,NULL,NULL,99,57),(227,1,2,'2005-09-08 21:43:32',' \'0:1\'',3,80,75,8,137),(228,1,1,'1976-11-04 18:30:33',' \'10:9\'',3,41,11,161,178),(229,1,1,'1972-03-03 20:26:07',' \'10:9\'',3,29,71,31,154),(230,1,1,'1972-11-24 19:55:07',' \'10:9\'',1,71,68,34,122),(231,1,13,'1976-03-12 20:00:27',' \'10:9\'',3,9,7,107,120),(232,1,8,'1974-02-07 08:01:55','\'1:1\'',2,44,29,102,117),(233,1,1,'1989-05-22 09:32:57',' \'0:1\'',2,31,44,106,38),(234,1,1,'1991-11-10 11:30:28',' \'10:9\'',2,6,63,78,45),(235,1,1,'1970-03-13 03:44:06','\'1:1\'',3,23,36,135,90),(236,1,1,'2017-10-12 14:29:50',' \'10:9\'',1,25,13,75,168),(237,1,1,'1972-10-12 08:23:28',' \'10:9\'',3,34,24,18,185),(238,1,1,'1980-10-28 23:58:20',' \'10:9\'',1,26,21,134,168),(239,1,1,'2007-10-25 22:13:59',' \'10:9\'',1,28,42,177,147),(240,1,1,'1990-01-22 18:48:41',' \'0:1\'',2,45,2,175,46),(241,1,10,'2006-07-14 14:49:40',' \'4:0\'',3,42,63,15,180),(242,1,13,'2014-10-06 02:35:13',' \'0:1\'',3,51,3,24,144),(243,1,1,'1993-09-27 00:49:21',' \'4:0\'',3,68,22,51,104),(244,1,3,'1971-09-10 14:15:20',' \'10:9\'',3,49,37,45,99),(245,1,4,'2005-10-29 06:05:52','\'1:1\'',3,75,60,198,161),(246,1,1,'1990-07-11 22:09:41',' \'10:9\'',2,58,40,49,159),(247,1,8,'2016-10-01 13:58:46',' \'4:0\'',3,50,2,179,147),(248,1,1,'2014-03-01 22:30:12',' \'0:1\'',3,59,47,24,197),(249,1,2,'1996-04-13 19:20:08',' \'10:9\'',1,55,57,136,182),(250,1,5,'1974-11-02 14:10:55','\'1:1\'',3,70,11,121,173),(251,1,1,'2021-06-07 11:06:08',' \'0:1\'',2,27,53,14,114),(252,1,10,'2013-07-20 07:28:02','\'1:1\'',2,34,6,95,64),(253,1,1,'2001-10-28 08:07:17',' \'4:0\'',1,14,43,159,57),(254,1,11,'1978-04-29 10:29:12',' \'0:1\'',3,NULL,NULL,121,37),(255,1,3,'2014-02-06 11:47:00',' \'4:0\'',3,4,78,189,130),(256,1,1,'1990-04-14 21:09:28',' \'10:9\'',3,18,13,108,58),(257,1,1,'1994-07-17 17:18:28',' \'4:0\'',3,60,13,12,43),(258,1,10,'2000-12-04 16:22:03','\'1:1\'',3,34,51,79,43),(259,1,1,'1987-01-09 01:34:51','\'1:1\'',3,9,34,20,141),(260,1,13,'2004-02-06 02:08:44',' \'0:1\'',1,41,53,36,91),(261,1,6,'2007-04-12 20:44:42',' \'10:9\'',1,27,42,35,174),(262,1,1,'1989-11-02 18:51:47',' \'10:9\'',3,69,44,12,184),(263,1,1,'1971-10-10 11:35:26',' \'10:9\'',2,63,15,32,35),(264,1,8,'2008-09-09 18:16:37',' \'10:9\'',1,7,40,99,36),(265,1,4,'2008-07-12 04:32:17',' \'0:1\'',1,31,57,151,111),(266,1,4,'1983-11-09 12:42:47',' \'0:1\'',1,46,40,114,148),(267,1,8,'1983-08-04 20:35:08','\'1:1\'',2,52,17,184,140),(268,1,3,'1973-04-07 08:09:04',' \'10:9\'',3,18,73,170,77),(269,1,2,'1978-05-22 04:51:08',' \'4:0\'',1,37,13,147,191),(270,1,7,'1977-03-14 08:49:04',' \'10:9\'',3,5,58,126,161),(271,1,6,'1982-11-21 06:46:00','\'1:1\'',3,69,67,56,84),(272,1,1,'1976-11-07 05:58:56',' \'10:9\'',2,64,18,169,142),(273,1,1,'1987-01-09 11:24:09',' \'4:0\'',3,31,12,176,46),(274,1,11,'2004-02-05 09:18:58',' \'0:1\'',3,NULL,NULL,24,40),(275,1,1,'1987-02-01 15:33:06',' \'10:9\'',2,10,79,34,151),(276,1,1,'1973-09-12 20:22:50','\'1:1\'',2,44,51,55,163),(277,1,2,'2011-12-15 11:23:05',' \'4:0\'',3,36,68,14,58),(278,1,1,'2002-07-27 19:40:29',' \'4:0\'',3,21,75,25,28),(279,1,4,'2005-07-06 03:34:13','\'1:1\'',2,8,51,126,43),(280,1,1,'1987-10-10 08:00:06',' \'4:0\'',2,54,76,108,167),(281,1,14,'1973-03-08 12:57:48','\'1:1\'',1,NULL,NULL,192,108),(282,1,2,'2021-05-23 16:25:58',' \'0:1\'',1,31,40,171,91),(283,1,1,'1981-08-10 13:39:35',' \'10:9\'',2,35,4,67,112),(284,1,4,'2019-01-04 07:13:55','\'1:1\'',2,17,23,24,167),(285,1,10,'2006-05-27 22:26:43','\'1:1\'',3,32,13,178,187),(286,1,1,'1971-11-30 18:45:16',' \'4:0\'',2,21,20,165,42),(287,1,1,'1989-06-03 23:32:42',' \'0:1\'',3,18,14,74,14),(288,1,13,'1996-10-06 07:02:33','\'1:1\'',1,38,5,40,162),(290,1,13,'1977-11-17 11:35:51',' \'0:1\'',1,29,4,60,49),(291,1,1,'1985-05-21 17:28:21','\'1:1\'',1,67,18,105,130),(292,1,1,'2020-01-28 23:51:53',' \'4:0\'',1,42,52,96,178),(293,1,1,'1976-05-30 06:09:11',' \'0:1\'',1,4,16,31,48),(294,1,1,'2004-09-16 07:42:49',' \'0:1\'',3,50,24,115,56),(296,1,7,'2019-12-14 14:49:12',' \'4:0\'',1,80,11,90,104),(297,1,1,'1976-01-04 03:11:14','\'1:1\'',3,67,24,106,62),(298,1,4,'1997-03-02 16:50:24',' \'10:9\'',1,33,18,87,112),(299,1,10,'1997-06-01 22:04:41',' \'0:1\'',2,26,7,146,179),(300,1,8,'1972-06-28 14:10:23','\'1:1\'',2,9,63,100,74);
/*!40000 ALTER TABLE `game-center` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-27 13:15:39

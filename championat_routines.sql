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
-- Temporary view structure for view `sportsman_wins`
--

DROP TABLE IF EXISTS `sportsman_wins`;
/*!50001 DROP VIEW IF EXISTS `sportsman_wins`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `sportsman_wins` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `sport`,
 1 AS `age`,
 1 AS `wins`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `all_games`
--

DROP TABLE IF EXISTS `all_games`;
/*!50001 DROP VIEW IF EXISTS `all_games`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `all_games` AS SELECT 
 1 AS `id`,
 1 AS `date_game`,
 1 AS `sport`,
 1 AS `tournament`,
 1 AS `status`,
 1 AS `team_1`,
 1 AS `team_2`,
 1 AS `sportsman_1`,
 1 AS `sportsman_2`,
 1 AS `score`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `sportsman_wins`
--

/*!50001 DROP VIEW IF EXISTS `sportsman_wins`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `sportsman_wins` AS select `sportsman`.`id` AS `id`,concat(`sportsman`.`firstname`,' ',`sportsman`.`lastname`) AS `name`,(select `type_sport`.`name` from `type_sport` where (`type_sport`.`id` = `sportsman`.`type_sport_id`)) AS `sport`,(year(now()) - year(`sportsman`.`birthday_date`)) AS `age`,(select count(0) from `game_center` where (((`game_center`.`team_1_id` = `have_team`(`sportsman`.`id`)) and (`game_center`.`status_game_id` = 1) and (`game_center`.`score` = 1)) or ((`game_center`.`team_2_id` = `have_team`(`sportsman`.`id`)) and (`game_center`.`status_game_id` = 1) and (`game_center`.`score` = 2)) or ((`game_center`.`sportsman_1_id` = `sportsman`.`id`) and (`game_center`.`status_game_id` = 1) and (`game_center`.`score` = 3)) or ((`game_center`.`sportsman_2_id` = `sportsman`.`id`) and (`game_center`.`status_game_id` = 1) and (`game_center`.`score` = 4)))) AS `wins` from `sportsman` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `all_games`
--

/*!50001 DROP VIEW IF EXISTS `all_games`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `all_games` AS select `game_center`.`id` AS `id`,`game_center`.`date_game` AS `date_game`,(select `type_sport`.`name` from `type_sport` where (`type_sport`.`id` = (select `tournament`.`type_sport_id` from `tournament` where (`tournament`.`id` = `game_center`.`tournament_id`)))) AS `sport`,(select `tournament`.`name` from `tournament` where (`tournament`.`id` = `game_center`.`tournament_id`)) AS `tournament`,(select `status_game`.`name` from `status_game` where (`status_game`.`id` = `game_center`.`status_game_id`)) AS `status`,(select `team`.`title` from `team` where (`team`.`id` = `game_center`.`team_1_id`)) AS `team_1`,(select `team`.`title` from `team` where (`team`.`id` = `game_center`.`team_2_id`)) AS `team_2`,(select concat(`sportsman`.`firstname`,' ',`sportsman`.`lastname`) from `sportsman` where (`sportsman`.`id` = `game_center`.`sportsman_1_id`)) AS `sportsman_1`,(select concat(`sportsman`.`firstname`,' ',`sportsman`.`lastname`) from `sportsman` where (`sportsman`.`id` = `game_center`.`sportsman_2_id`)) AS `sportsman_2`,(select `type_score`.`name` from `type_score` where (`type_score`.`id` = `game_center`.`score`)) AS `score` from `game_center` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Dumping events for database 'championat'
--

--
-- Dumping routines for database 'championat'
--
/*!50003 DROP FUNCTION IF EXISTS `have_team` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `have_team`(num INT) RETURNS int
    READS SQL DATA
BEGIN
	DECLARE sportsman INT;
    SET sportsman = (SELECT
						team_id
					FROM sportsman
					WHERE id = num);
	IF sportsman IS NULL THEN
		RETURN NULL;
	ELSE
		RETURN sportsman;
	END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sportsman_games` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sportsman_games`(num INT)
BEGIN
	IF have_team(num) IS NOT NULL THEN
		SELECT
			id,
			date_game,
			score,
			status_game_id,
			team_1_id,
			team_2_id
		FROM game_center
		WHERE (team_1_id = num OR team_2_id = num);
    ELSE
		SELECT
			id,
			date_game,
			score,
			status_game_id,
			sportsman_1_id,
			sportsman_2_id
		FROM game_center
		WHERE (sportsman_1_id = num OR sportsman_2_id = num);
    END IF;
END ;;
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

-- Dump completed on 2021-07-30 22:36:00

#
# TABLE STRUCTURE FOR: author
#

DROP TABLE IF EXISTS `author`;

CREATE TABLE `author` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (1, 'Candida', 'Schmitt');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (2, 'Brandy', 'Wehner');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (3, 'Annie', 'Boyle');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (4, 'Lempi', 'Lesch');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (5, 'Oral', 'Lubowitz');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (6, 'Lonie', 'Leannon');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (7, 'Marianne', 'Quitzon');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (8, 'Elwin', 'Hermiston');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (9, 'Eve', 'Abshire');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (10, 'Ron', 'Becker');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (11, 'Junior', 'Effertz');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (12, 'Adan', 'Reichert');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (13, 'Skylar', 'Gerlach');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (14, 'Mattie', 'Connelly');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (15, 'Lessie', 'Fisher');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (16, 'Heather', 'Oberbrunner');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (17, 'Vladimir', 'O\'Keefe');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (18, 'Maximus', 'Powlowski');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (19, 'Alessandro', 'Rodriguez');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (20, 'Annabel', 'Prohaska');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (21, 'Ian', 'Cronin');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (22, 'Sadie', 'Bashirian');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (23, 'Joseph', 'Lehner');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (24, 'Danyka', 'Goldner');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (25, 'Joyce', 'Graham');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (26, 'Anna', 'Grant');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (27, 'Sydnie', 'Kirlin');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (28, 'Devan', 'Spinka');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (29, 'Ludwig', 'Herman');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (30, 'Lempi', 'Renner');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (31, 'Jammie', 'Hilll');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (32, 'Kathleen', 'Rowe');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (33, 'Noe', 'Nitzsche');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (34, 'Jamil', 'Yost');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (35, 'Skyla', 'Stracke');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (36, 'Maryjane', 'Collier');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (37, 'Mac', 'Thiel');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (38, 'Quinton', 'O\'Hara');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (39, 'Betsy', 'Hegmann');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (40, 'Ashton', 'Braun');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (41, 'Ross', 'Balistreri');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (42, 'Dave', 'Cormier');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (43, 'Agustina', 'Schoen');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (44, 'Kara', 'Howell');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (45, 'Emmett', 'Weber');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (46, 'Americo', 'Bahringer');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (47, 'Camryn', 'Little');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (48, 'Donald', 'Hand');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (49, 'Terrill', 'Kovacek');
INSERT INTO `author` (`id`, `firstname`, `lastname`) VALUES (50, 'Violette', 'Leffler');


#
# TABLE STRUCTURE FOR: game-center
#

DROP TABLE IF EXISTS `game-center`;

CREATE TABLE `game-center` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tournament_id` int(10) unsigned NOT NULL,
  `date_game` datetime NOT NULL,
  `score` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_game_id` int(10) unsigned NOT NULL,
  `team_1_id` int(10) unsigned DEFAULT NULL,
  `team_2_id` int(10) unsigned DEFAULT NULL,
  `sportsman_1_id` int(10) unsigned DEFAULT NULL,
  `sportsman_2_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `team_1_team_2` (`team_1_id`,`team_2_id`),
  UNIQUE KEY `sportsman_1_sportsman_2` (`sportsman_1_id`,`sportsman_2_id`),
  KEY `fk_game-center_tournaments1_idx` (`tournament_id`),
  KEY `fk_game-center_status_game1_idx` (`status_game_id`),
  KEY `fk_game-center_team1_idx` (`team_1_id`),
  KEY `fk_game-center_sportsman1_idx` (`sportsman_1_id`),
  KEY `fk_game-center_team2_idx` (`team_2_id`),
  KEY `fk_game-center_sportsman2_idx` (`sportsman_2_id`),
  CONSTRAINT `fk_game-center_sportsman1` FOREIGN KEY (`sportsman_1_id`) REFERENCES `sportsman` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_sportsman2` FOREIGN KEY (`sportsman_2_id`) REFERENCES `sportsman` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_status_game1` FOREIGN KEY (`status_game_id`) REFERENCES `status_game` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_team1` FOREIGN KEY (`team_1_id`) REFERENCES `team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_team2` FOREIGN KEY (`team_2_id`) REFERENCES `team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_tournaments1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=301 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (151, 4, '2002-01-24 13:58:34', ' \'10:9\'', 2, 30, 44, 68, 158);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (152, 19, '1984-11-12 00:47:54', ' \'10:9\'', 2, 26, 44, 59, 169);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (153, 7, '2008-02-28 07:15:16', ' \'0:1\'', 2, 15, 61, 20, 180);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (154, 13, '2013-12-22 11:21:09', ' \'10:9\'', 3, 40, 48, 195, 79);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (155, 11, '2001-05-29 01:56:28', ' \'0:1\'', 1, 5, 52, 58, 84);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (156, 14, '2008-07-13 22:34:49', ' \'0:1\'', 2, 65, 4, 4, 29);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (157, 17, '1975-08-26 11:53:36', '\'1:1\'', 3, 62, 13, 93, 14);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (158, 20, '1995-02-20 05:36:54', '\'1:1\'', 3, 57, 15, 113, 160);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (159, 2, '2006-05-09 09:52:00', '\'1:1\'', 1, 46, 46, 158, 109);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (160, 20, '1982-07-22 07:43:43', '\'1:1\'', 1, 51, 2, 192, 185);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (161, 9, '1981-10-23 08:18:12', ' \'4:0\'', 2, 32, 20, 137, 83);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (162, 8, '1998-09-15 05:41:43', '\'1:1\'', 2, 27, 13, 134, 159);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (163, 5, '1999-01-18 10:15:49', ' \'0:1\'', 2, 48, 74, 168, 32);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (164, 15, '1990-10-26 04:23:39', ' \'4:0\'', 3, 29, 24, 97, 30);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (165, 17, '1974-08-19 23:39:08', '\'1:1\'', 2, 37, 38, 93, 84);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (166, 8, '2005-07-26 08:22:12', ' \'0:1\'', 3, 5, 64, 28, 148);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (167, 4, '1995-11-07 15:49:28', '\'1:1\'', 2, 20, 43, 135, 183);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (168, 7, '1976-03-20 20:59:35', ' \'10:9\'', 3, 47, 73, 164, 84);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (169, 2, '1990-10-02 15:19:19', '\'1:1\'', 2, 27, 35, 168, 162);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (170, 12, '2021-01-30 10:53:58', ' \'4:0\'', 3, 20, 3, 30, 143);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (171, 10, '2008-03-11 04:18:24', '\'1:1\'', 2, 50, 41, 67, 151);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (172, 5, '2011-03-21 11:41:54', ' \'10:9\'', 2, 22, 40, 12, 189);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (173, 9, '1986-03-27 18:00:18', ' \'0:1\'', 2, 68, 79, 58, 132);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (174, 9, '1974-09-10 11:52:07', ' \'4:0\'', 2, 17, 59, 158, 8);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (175, 11, '1985-02-14 18:31:19', ' \'0:1\'', 2, 58, 63, 80, 173);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (176, 10, '2017-07-22 22:08:35', ' \'4:0\'', 3, 33, 9, 73, 148);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (177, 18, '2014-01-27 01:15:51', ' \'10:9\'', 2, 22, 11, 21, 66);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (178, 2, '1979-07-15 13:31:44', ' \'4:0\'', 2, 57, 74, 100, 199);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (179, 12, '2006-10-05 03:53:12', '\'1:1\'', 3, 29, 63, 126, 29);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (180, 17, '2019-03-27 23:33:28', '\'1:1\'', 1, 41, 43, 190, 180);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (181, 8, '2002-04-27 03:59:03', ' \'4:0\'', 2, 61, 64, 111, 23);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (182, 11, '2002-08-22 02:21:09', ' \'0:1\'', 2, 58, 65, 111, 166);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (183, 3, '1987-04-16 07:03:16', ' \'10:9\'', 2, 28, 68, 110, 168);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (184, 17, '1989-09-30 06:34:59', ' \'4:0\'', 1, 60, 16, 181, 74);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (185, 7, '1977-03-05 21:01:19', ' \'0:1\'', 3, 43, 67, 50, 96);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (186, 15, '1991-01-20 13:13:41', ' \'10:9\'', 2, 74, 39, 89, 95);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (187, 12, '1988-01-02 01:27:30', ' \'0:1\'', 3, 72, 26, 158, 89);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (188, 3, '1995-03-07 04:33:49', '\'1:1\'', 3, 6, 39, 155, 124);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (189, 7, '1984-03-15 02:10:35', '\'1:1\'', 2, 60, 5, 161, 129);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (190, 9, '1994-12-10 02:06:06', ' \'4:0\'', 1, 29, 77, 194, 123);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (191, 9, '2005-04-24 05:44:30', ' \'0:1\'', 3, 21, 29, 37, 139);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (192, 17, '2000-03-20 21:50:44', ' \'0:1\'', 3, 54, 59, 20, 92);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (193, 4, '1988-07-23 05:52:56', ' \'10:9\'', 1, 31, 19, 144, 32);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (194, 18, '2020-01-17 19:23:04', '\'1:1\'', 1, 62, 48, 20, 114);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (195, 5, '1980-04-09 06:16:03', '\'1:1\'', 2, 56, 48, 98, 134);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (196, 5, '1993-10-20 18:17:36', ' \'4:0\'', 3, 30, 37, 58, 110);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (197, 4, '2000-07-04 10:53:56', '\'1:1\'', 1, 27, 66, 170, 85);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (198, 6, '2006-10-31 00:07:08', ' \'10:9\'', 1, 53, 54, 50, 76);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (199, 17, '1975-03-12 22:16:41', '\'1:1\'', 1, 34, 47, 139, 104);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (200, 4, '2021-03-17 10:31:52', ' \'4:0\'', 3, 4, 68, 105, 108);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (201, 11, '1986-03-11 14:30:07', ' \'0:1\'', 3, 38, 71, 38, 151);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (202, 9, '2000-05-14 03:00:09', ' \'10:9\'', 2, 70, 61, 33, 144);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (203, 4, '1971-12-03 13:40:17', '\'1:1\'', 2, 59, 67, 22, 197);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (204, 5, '1989-06-25 07:12:14', ' \'10:9\'', 3, 7, 51, 103, 155);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (205, 4, '2008-05-02 19:57:12', ' \'0:1\'', 2, 56, 17, 103, 44);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (206, 15, '2003-10-13 10:09:01', ' \'0:1\'', 1, 76, 17, 182, 27);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (207, 20, '2010-05-06 18:10:29', '\'1:1\'', 2, 38, 67, 18, 127);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (208, 11, '2005-07-25 11:09:04', '\'1:1\'', 1, 6, 23, 20, 37);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (209, 6, '1981-09-13 06:54:19', '\'1:1\'', 1, 9, 28, 190, 126);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (210, 3, '1994-03-14 23:05:24', ' \'0:1\'', 1, 24, 66, 60, 162);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (211, 1, '2006-03-01 15:43:38', ' \'4:0\'', 1, 67, 79, 48, 149);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (212, 3, '2021-02-01 13:58:30', '\'1:1\'', 1, 7, 47, 5, 34);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (213, 5, '2011-12-06 22:31:57', ' \'4:0\'', 2, 35, 24, 170, 106);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (214, 10, '2011-02-12 20:16:21', ' \'4:0\'', 1, 68, 47, 90, 157);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (215, 5, '2013-10-02 01:34:49', ' \'4:0\'', 2, 71, 41, 76, 37);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (216, 7, '2011-12-21 03:10:16', ' \'10:9\'', 2, 18, 12, 78, 91);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (217, 18, '2020-04-05 04:34:21', ' \'0:1\'', 2, 52, 78, 17, 134);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (218, 3, '1983-03-31 19:15:24', ' \'0:1\'', 1, 19, 46, 118, 17);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (219, 2, '1981-07-24 01:02:08', '\'1:1\'', 1, 16, 75, 130, 128);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (220, 15, '1996-08-04 15:42:49', ' \'0:1\'', 3, 17, 48, 74, 116);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (221, 16, '1989-02-11 19:14:35', ' \'4:0\'', 3, 80, 80, 166, 76);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (222, 9, '2009-02-03 10:43:36', ' \'4:0\'', 3, 70, 8, 137, 192);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (223, 16, '1988-10-03 08:52:06', ' \'4:0\'', 3, 21, 80, 77, 169);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (224, 2, '2002-09-26 14:35:11', ' \'0:1\'', 2, 73, 22, 82, 111);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (226, 14, '1971-03-04 13:19:12', '\'1:1\'', 2, 37, 55, 99, 57);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (227, 2, '2005-09-08 21:43:32', ' \'0:1\'', 3, 80, 75, 8, 137);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (228, 18, '1976-11-04 18:30:33', ' \'10:9\'', 3, 41, 11, 161, 178);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (229, 20, '1972-03-03 20:26:07', ' \'10:9\'', 3, 29, 71, 31, 154);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (230, 9, '1972-11-24 19:55:07', ' \'10:9\'', 1, 71, 68, 34, 122);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (231, 13, '1976-03-12 20:00:27', ' \'10:9\'', 3, 9, 7, 107, 120);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (232, 8, '1974-02-07 08:01:55', '\'1:1\'', 2, 44, 29, 102, 117);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (233, 1, '1989-05-22 09:32:57', ' \'0:1\'', 2, 31, 44, 106, 38);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (234, 9, '1991-11-10 11:30:28', ' \'10:9\'', 2, 6, 63, 78, 45);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (235, 12, '1970-03-13 03:44:06', '\'1:1\'', 3, 23, 36, 135, 90);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (236, 1, '2017-10-12 14:29:50', ' \'10:9\'', 1, 25, 13, 75, 168);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (237, 16, '1972-10-12 08:23:28', ' \'10:9\'', 3, 34, 24, 18, 185);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (238, 18, '1980-10-28 23:58:20', ' \'10:9\'', 1, 26, 21, 134, 168);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (239, 9, '2007-10-25 22:13:59', ' \'10:9\'', 1, 28, 42, 177, 147);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (240, 15, '1990-01-22 18:48:41', ' \'0:1\'', 2, 45, 2, 175, 46);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (241, 10, '2006-07-14 14:49:40', ' \'4:0\'', 3, 42, 63, 15, 180);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (242, 13, '2014-10-06 02:35:13', ' \'0:1\'', 3, 51, 3, 24, 144);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (243, 20, '1993-09-27 00:49:21', ' \'4:0\'', 3, 68, 22, 51, 104);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (244, 3, '1971-09-10 14:15:20', ' \'10:9\'', 3, 49, 37, 45, 99);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (245, 4, '2005-10-29 06:05:52', '\'1:1\'', 3, 75, 60, 198, 161);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (246, 20, '1990-07-11 22:09:41', ' \'10:9\'', 2, 58, 40, 49, 159);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (247, 8, '2016-10-01 13:58:46', ' \'4:0\'', 3, 50, 2, 179, 147);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (248, 15, '2014-03-01 22:30:12', ' \'0:1\'', 3, 59, 47, 24, 197);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (249, 2, '1996-04-13 19:20:08', ' \'10:9\'', 1, 55, 57, 136, 182);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (250, 5, '1974-11-02 14:10:55', '\'1:1\'', 3, 70, 11, 121, 173);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (251, 19, '2021-06-07 11:06:08', ' \'0:1\'', 2, 27, 53, 14, 114);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (252, 10, '2013-07-20 07:28:02', '\'1:1\'', 2, 34, 6, 95, 64);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (253, 17, '2001-10-28 08:07:17', ' \'4:0\'', 1, 14, 43, 159, 57);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (254, 11, '1978-04-29 10:29:12', ' \'0:1\'', 3, 41, 16, 121, 37);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (255, 3, '2014-02-06 11:47:00', ' \'4:0\'', 3, 4, 78, 189, 130);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (256, 17, '1990-04-14 21:09:28', ' \'10:9\'', 3, 18, 13, 108, 58);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (257, 15, '1994-07-17 17:18:28', ' \'4:0\'', 3, 60, 13, 12, 43);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (258, 10, '2000-12-04 16:22:03', '\'1:1\'', 3, 34, 51, 79, 43);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (259, 19, '1987-01-09 01:34:51', '\'1:1\'', 3, 9, 34, 20, 141);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (260, 13, '2004-02-06 02:08:44', ' \'0:1\'', 1, 41, 53, 36, 91);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (261, 6, '2007-04-12 20:44:42', ' \'10:9\'', 1, 27, 42, 35, 174);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (262, 17, '1989-11-02 18:51:47', ' \'10:9\'', 3, 69, 44, 12, 184);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (263, 16, '1971-10-10 11:35:26', ' \'10:9\'', 2, 63, 15, 32, 35);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (264, 8, '2008-09-09 18:16:37', ' \'10:9\'', 1, 7, 40, 99, 36);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (265, 4, '2008-07-12 04:32:17', ' \'0:1\'', 1, 31, 57, 151, 111);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (266, 4, '1983-11-09 12:42:47', ' \'0:1\'', 1, 46, 40, 114, 148);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (267, 8, '1983-08-04 20:35:08', '\'1:1\'', 2, 52, 17, 184, 140);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (268, 3, '1973-04-07 08:09:04', ' \'10:9\'', 3, 18, 73, 170, 77);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (269, 2, '1978-05-22 04:51:08', ' \'4:0\'', 1, 37, 13, 147, 191);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (270, 7, '1977-03-14 08:49:04', ' \'10:9\'', 3, 5, 58, 126, 161);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (271, 6, '1982-11-21 06:46:00', '\'1:1\'', 3, 69, 67, 56, 84);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (272, 12, '1976-11-07 05:58:56', ' \'10:9\'', 2, 64, 18, 169, 142);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (273, 19, '1987-01-09 11:24:09', ' \'4:0\'', 3, 31, 12, 176, 46);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (274, 11, '2004-02-05 09:18:58', ' \'0:1\'', 3, 38, 79, 24, 40);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (275, 19, '1987-02-01 15:33:06', ' \'10:9\'', 2, 10, 79, 34, 151);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (276, 16, '1973-09-12 20:22:50', '\'1:1\'', 2, 44, 51, 55, 163);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (277, 2, '2011-12-15 11:23:05', ' \'4:0\'', 3, 36, 68, 14, 58);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (278, 12, '2002-07-27 19:40:29', ' \'4:0\'', 3, 21, 75, 25, 28);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (279, 4, '2005-07-06 03:34:13', '\'1:1\'', 2, 8, 51, 126, 43);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (280, 17, '1987-10-10 08:00:06', ' \'4:0\'', 2, 54, 76, 108, 167);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (281, 14, '1973-03-08 12:57:48', '\'1:1\'', 1, 22, 19, 192, 108);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (282, 2, '2021-05-23 16:25:58', ' \'0:1\'', 1, 31, 40, 171, 91);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (283, 16, '1981-08-10 13:39:35', ' \'10:9\'', 2, 35, 4, 67, 112);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (284, 4, '2019-01-04 07:13:55', '\'1:1\'', 2, 17, 23, 24, 167);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (285, 10, '2006-05-27 22:26:43', '\'1:1\'', 3, 32, 13, 178, 187);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (286, 20, '1971-11-30 18:45:16', ' \'4:0\'', 2, 21, 20, 165, 42);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (287, 16, '1989-06-03 23:32:42', ' \'0:1\'', 3, 18, 14, 74, 14);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (288, 13, '1996-10-06 07:02:33', '\'1:1\'', 1, 38, 5, 40, 162);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (290, 13, '1977-11-17 11:35:51', ' \'0:1\'', 1, 29, 4, 60, 49);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (291, 20, '1985-05-21 17:28:21', '\'1:1\'', 1, 67, 18, 105, 130);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (292, 9, '2020-01-28 23:51:53', ' \'4:0\'', 1, 42, 52, 96, 178);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (293, 15, '1976-05-30 06:09:11', ' \'0:1\'', 1, 4, 16, 31, 48);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (294, 20, '2004-09-16 07:42:49', ' \'0:1\'', 3, 50, 24, 115, 56);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (296, 7, '2019-12-14 14:49:12', ' \'4:0\'', 1, 80, 11, 90, 104);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (297, 16, '1976-01-04 03:11:14', '\'1:1\'', 3, 67, 24, 106, 62);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (298, 4, '1997-03-02 16:50:24', ' \'10:9\'', 1, 33, 18, 87, 112);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (299, 10, '1997-06-01 22:04:41', ' \'0:1\'', 2, 26, 7, 146, 179);
INSERT INTO `game-center` (`id`, `tournament_id`, `date_game`, `score`, `status_game_id`, `team_1_id`, `team_2_id`, `sportsman_1_id`, `sportsman_2_id`) VALUES (300, 8, '1972-06-28 14:10:23', '\'1:1\'', 2, 9, 63, 100, 74);


#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_media` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_media_type_media1_idx` (`type_media`),
  CONSTRAINT `fk_media_type_media1` FOREIGN KEY (`type_media`) REFERENCES `type_media` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=501 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (1, 2, '2006-06-23 07:16:28', 'e02ee723-6df4-3daf-9f2a-a4fc23cc0ed7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (2, 1, '2006-04-05 05:13:22', '9029b564-fafe-30b8-a640-1e9bda4cb8db');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (3, 3, '1985-03-10 12:06:56', 'b048ff81-26cc-3583-9b50-590322986750');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (4, 2, '1986-11-08 23:21:10', '93787a87-3817-3929-8be4-b0f8e8adc1d3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (5, 1, '2001-12-19 18:28:19', 'ffa1fc90-1bfd-3815-931f-8a84072f99b2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (6, 3, '1996-10-14 10:07:29', '8edc194c-92cc-306e-837c-7f0f16c408c8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (7, 1, '1970-08-04 21:08:05', '97fb4eab-7c7a-3d3b-905d-7aad9d303435');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (8, 2, '2006-08-21 05:42:50', 'ffac014e-9613-3665-9695-00bea68a468f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (9, 3, '1988-05-23 19:20:53', '794c7b8a-ec15-36f2-8420-b459282814ad');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (10, 1, '1987-12-07 09:56:16', '5a04058f-f275-3c23-ad00-fa74a23e4c8f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (11, 1, '1972-02-27 04:04:49', '44b412d8-78a6-3293-8127-09d9d8e77a29');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (12, 3, '1982-01-13 21:10:08', 'bdf71010-a1a8-30ce-94d6-ab7619760779');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (13, 1, '1988-05-30 04:43:45', '3054f63b-ac3d-3029-af02-57fda3f7422c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (14, 2, '1994-03-20 19:08:54', '83e84441-79ca-352d-9177-012e929a86cc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (15, 3, '1972-06-26 01:19:43', '9a60179f-6d64-3284-8d1f-abde7d692ef0');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (16, 1, '1974-02-14 19:28:59', 'a7c8e7e4-2afa-380b-b8ed-78ea7101fe4b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (17, 1, '1995-07-18 04:48:10', '2e8ebeb4-0d31-39e7-9dbf-69fe0d3b04ff');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (18, 3, '1988-08-06 18:52:50', '02ce3163-d85e-30c5-9dbb-04c569bfd782');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (19, 3, '1997-11-04 17:22:41', 'ee097265-689e-3076-b059-35f0621223c4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (20, 2, '2013-02-26 00:25:01', '46c623c0-4705-3760-b966-749c043aa567');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (21, 1, '1972-08-15 04:13:14', '033932d9-aed4-3e4a-a216-baa4f80e79f4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (22, 1, '1988-04-06 12:11:01', '6402165d-d084-38f8-a459-89e4d69111cb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (23, 3, '1977-04-07 19:01:14', '69fc9e63-63f3-3371-9c0b-7bf6cc4119fe');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (24, 3, '2006-08-03 00:36:21', 'f2b4639f-146a-335d-96cf-45910efec9b6');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (25, 3, '2011-02-24 06:32:13', 'b426eb59-865f-387c-b890-bfb1eb87b9bd');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (26, 2, '1979-07-31 23:34:05', '4e77d92e-808d-342e-a7ae-896e1d8b3ba9');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (27, 3, '1990-11-05 07:23:05', '3b44c6ca-a4e4-3d55-b4eb-8836b5dfb096');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (28, 1, '1992-12-31 22:01:49', '2a9b574d-d573-386d-9717-0d4b6a3988ed');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (29, 1, '1984-05-18 16:44:18', '1c08deec-1015-3868-a256-f85a30aae705');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (30, 2, '2000-03-05 14:49:39', 'e7db2741-63b6-33a2-87fc-c7462e1dd7c4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (31, 1, '2018-05-17 12:19:08', 'b4222e8c-4fa6-357f-9b1d-6281aaba084d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (32, 3, '1973-04-13 11:35:17', '2ec0ef95-c8ee-3d7f-86e2-a8d2c0793071');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (33, 2, '1996-06-05 09:33:45', '77180294-23b6-3fef-b0f8-f95d0b694d74');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (34, 3, '1977-05-07 21:17:07', 'a668d220-518e-3fea-8582-85bdd5b74c03');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (35, 1, '1987-02-05 05:19:52', '5d18e93c-f028-36dd-81db-bdb3430d1bef');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (36, 3, '1996-02-17 17:21:59', '57375aa8-e4af-3144-afa1-be0ddf04ad45');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (37, 2, '1997-04-08 20:03:15', '7c9db795-b539-3cb1-890a-6e29d81b6b63');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (38, 2, '1970-01-10 03:09:20', '298aa0d9-11b1-3925-af91-403e116cd321');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (39, 1, '1998-09-14 14:17:57', 'd0fb4889-1b17-301e-9f68-21d3a7e3b04f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (40, 2, '1993-08-10 17:18:24', 'f0eb983b-d7ea-3c38-8f4a-67583eab07ab');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (41, 2, '1980-01-18 21:17:19', 'd67b1a1d-5f77-36f2-93ee-a7fdf61bc230');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (42, 2, '1977-10-05 22:36:01', 'da68d2a4-b3c0-380a-83b6-f8ec347941fc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (43, 2, '1998-05-13 03:40:18', '1e9ad298-ee04-37e3-ac4a-35eb6bcc83c0');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (44, 3, '1979-04-20 10:39:09', '3e2a9ecd-dcd0-3640-ba71-cdb0ae4c7b50');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (45, 3, '1992-01-07 03:15:16', 'a6bde828-2af1-33dd-a9c3-51a33355b743');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (46, 2, '2007-07-16 02:11:37', '643ea901-b887-3937-b4c2-20671fcc865e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (47, 1, '1985-12-19 19:21:31', '845cf22f-fba4-379d-ae47-db24c16ca7f3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (48, 1, '1985-01-22 12:43:51', '603097b0-53a8-31a6-81e0-c66bc16fa928');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (49, 2, '1982-11-30 00:40:30', '407a58dc-86d8-3124-8da3-d0a9b6a93bda');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (50, 1, '1972-10-25 17:54:08', 'cd70460e-25f7-3406-bb38-a973cc2387a7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (51, 2, '2000-02-24 07:15:32', '0d194a7c-8aa2-3736-aea7-aff204f031fb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (52, 2, '2008-10-26 12:07:57', 'd00caab0-6d9c-384f-a7a9-6cddb9623d6b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (53, 1, '1995-10-07 18:41:53', 'f1d51283-e8b3-36c6-afd2-4023d68548ff');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (54, 1, '1998-10-16 11:50:32', 'ce40cd1e-6c51-37d6-ab72-61bfb86d56d9');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (55, 2, '2018-11-23 06:37:51', 'bf74d3b0-6a75-330d-9fc2-2f7c459d6143');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (56, 1, '1985-11-23 15:40:35', 'cf1562e5-1308-31b3-ae36-61921a4daaee');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (57, 3, '2013-08-25 00:16:51', '3f14a0be-1d09-3393-bece-7e15d77a9072');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (58, 2, '2018-04-18 06:23:39', 'ed014400-3e0f-3941-89e8-cfdebc636e0b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (59, 2, '2017-08-22 04:02:58', 'b25e6f53-191d-3e6c-bac2-0223fcd87fde');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (60, 3, '2009-12-02 17:49:08', '679131f1-6306-3744-afd6-9064ab75f7a9');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (61, 3, '2010-01-01 07:19:32', '93b3768e-9711-3d8f-b307-6907d9b85415');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (62, 2, '2004-05-20 05:01:26', '09750601-8863-3a90-8175-0f1e8cf5a420');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (63, 3, '2020-09-06 09:44:43', '002a2df2-9d6b-3b8d-88c6-23e7656df346');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (64, 2, '2019-12-12 01:06:05', 'ba31a910-0762-3834-9234-dcfa1f82a428');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (65, 1, '1979-08-26 06:26:33', '62dea8a0-efbe-3344-87a6-6286e80e9603');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (66, 1, '1971-12-01 03:37:53', '6e687ba1-47d6-35cf-bae0-6585348f760d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (67, 1, '2010-10-19 12:58:31', '2218c8b6-6fb9-37d4-8b4a-b8fe519e91d8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (68, 3, '1975-12-15 19:55:41', '4bdc8348-6b98-3d03-8bf4-17d6eb4dca80');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (69, 2, '1983-10-10 21:36:55', '1e4ab9fd-f8c5-372e-b83b-e5b9f9f720dd');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (70, 2, '1975-12-25 16:38:38', 'ea75569e-a7e4-33e5-9269-010a102d3fdd');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (71, 2, '1990-11-26 21:15:53', '5433e8c1-b764-39d2-b6c3-67636147a1a4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (72, 1, '1995-10-08 17:13:55', 'c0559550-962f-3578-be69-80a708162b4b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (73, 3, '1998-01-24 02:39:52', '4be22960-f686-3d37-8a00-3f18e1d203d1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (74, 1, '1994-05-17 21:14:51', 'ca42016d-f08d-3853-9a5a-61565a9329f5');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (75, 3, '2006-12-28 06:51:55', '7ce427de-e200-3ed0-857a-6b522f5f74c6');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (76, 3, '2017-03-30 19:19:54', '1ae0e8b0-2af4-30ec-84d1-17ace089c646');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (77, 2, '1979-01-06 21:27:53', '8c4a8c44-3354-3cc4-a670-64b4b1481edc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (78, 3, '2004-04-03 22:34:08', '02d17572-9a96-35ed-b598-96f0cf6daf37');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (79, 3, '2001-02-02 06:29:33', 'fa7a64dd-c350-3cd9-8d44-72b7b147184d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (80, 3, '1989-06-14 01:34:15', 'd77917d1-fa1c-3fe0-847c-46767476d8e0');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (81, 1, '2020-06-21 21:19:39', '74feea79-0934-353e-b516-8cac3b0207e3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (82, 2, '2000-11-24 11:40:25', '93a6bbe1-d135-37bf-88f1-ece9ee6abb72');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (83, 2, '1977-01-31 23:03:18', '1492f07e-5ffb-3697-bf18-74112cf6c937');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (84, 1, '1978-04-14 14:27:47', '27ead250-76f8-3f26-98cc-5b8fa2730314');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (85, 3, '1970-08-03 03:09:58', '03077319-3cd7-39b4-9844-7aa3d526b7ed');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (86, 1, '1980-02-11 05:50:34', '5a17cf52-925e-3e97-9c25-d3e1f4c1288e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (87, 1, '1972-04-05 04:33:05', '09a3ac0f-d8e8-32f4-b1ba-c8172a8be3cb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (88, 2, '2006-01-18 12:32:07', '35f59e2c-de39-38a7-aa3a-058aa5ba2bfc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (89, 2, '1981-01-25 20:54:44', '4a377fe0-c6bb-38ce-b439-c1d70d6f1d8b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (90, 3, '2010-12-07 02:53:01', 'f0f1c5e6-b9d2-38a2-9332-96e7de01e41d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (91, 2, '1971-11-28 07:08:43', 'e580153e-fbc1-3e76-b69e-5e02fea76628');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (92, 1, '1980-09-21 10:43:20', '2c5afdf8-2815-306b-9d1d-0b85b0b4f192');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (93, 1, '1992-09-13 14:51:28', '4bc5b979-9c17-3693-9b07-33dca400649f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (94, 1, '1975-08-30 17:02:52', 'b56c074a-1bff-3b33-a878-95ed5adb3222');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (95, 3, '1984-12-20 22:55:29', '1e55a920-5d70-3f97-adb4-e46f155e8927');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (96, 1, '1974-04-18 21:25:04', '276ba7a2-44d2-3e85-8db5-331a5591e0c6');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (97, 1, '1975-07-30 02:30:22', '4fdf4f05-f450-3bd9-9ba0-35034c1ea3df');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (98, 3, '1985-02-14 07:39:11', '66615dcc-2c9c-358e-bc46-130c5fcc8449');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (99, 1, '1974-06-29 10:34:04', '146da7fb-4e3f-33ef-b794-f44cfc90e7bc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (100, 3, '1997-02-02 08:20:24', '7289bec4-e733-309a-ae56-f40d2397ac49');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (101, 1, '1992-06-12 11:38:27', '9a7a5c20-c277-3445-83a2-02d7de34221f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (102, 2, '1996-12-29 16:34:27', '3abdbf18-6a1b-3d92-9d33-d00170e020b6');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (103, 3, '2013-12-14 00:02:57', '93f62e60-5620-30fa-b1f6-bf965af362a4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (104, 1, '2015-07-19 04:53:51', 'd839616c-b952-3d4b-97fa-13a0b8bb6a63');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (105, 2, '2014-06-27 20:27:29', '8b989140-4d0b-3358-908e-edfa388ff4db');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (106, 2, '1996-04-02 17:19:56', '5ac7d594-d354-3a60-9312-2011a218122c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (107, 3, '1991-02-16 17:50:24', 'f9d71986-65df-3808-bb4b-61dfa9e5c126');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (108, 1, '1973-03-14 08:22:58', '7bbbf581-c6b8-3b1b-a4aa-3887972a64f7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (109, 2, '2001-10-18 16:07:28', 'ccc40b67-792d-3f2f-8b2c-0f6eaaf16fd7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (110, 2, '1972-09-09 21:07:11', '95d4f9a5-bedc-39d6-9edd-1e140cad8fff');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (111, 1, '1973-09-16 00:28:15', '7034d528-c087-3073-8a05-8667086a4dfa');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (112, 2, '2020-10-29 20:35:57', '30b437c8-8757-3814-83e5-ed5f421939ae');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (113, 1, '1988-02-08 22:28:19', '0789bd52-3ffc-3dee-a26b-6cddee9938c1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (114, 2, '2005-12-28 04:57:36', 'd9f855dd-7d1a-3fca-849a-073e6728b1f1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (115, 3, '1990-07-18 22:57:09', 'a6656480-4304-3dae-b7ef-3234d140598a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (116, 3, '1980-04-01 15:44:04', 'e9d9bc72-0d78-3674-be15-f3711a6d2e9b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (117, 3, '1978-09-06 00:18:24', '2e1513e3-7f29-3fd7-867e-41c6268f2c71');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (118, 1, '1995-06-19 14:03:25', '599bb839-70f4-3dac-bea7-63128d18aaee');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (119, 2, '2002-09-22 02:50:09', '44ca82ce-168e-3ea2-acb8-9914a180a558');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (120, 1, '1978-05-16 05:38:01', 'acf6605f-a5e1-3581-8d2b-8e0e043a3910');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (121, 3, '1987-10-08 23:38:48', '9ab99f84-2f6d-3f4b-9921-78514706172f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (122, 3, '2009-05-05 16:29:38', '03262021-b0c1-3388-9dbb-b464f12b954e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (123, 2, '1995-06-10 08:23:12', '2b5de683-7081-3233-a44c-6b85c7167985');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (124, 3, '2008-02-16 01:01:37', '5cfee386-06f5-3ce3-a1e3-f3053bb7bfe6');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (125, 3, '1997-07-19 09:05:16', '0d472f89-8479-338b-9fdb-502d438d72a7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (126, 1, '2008-09-25 01:04:49', '78971e8b-19fa-3575-863a-94103cac16f5');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (127, 1, '1972-11-12 05:07:30', '0b6c2853-f7c9-3df5-88d3-79488d233925');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (128, 1, '1983-09-07 05:15:10', '84af44e9-6f93-3c31-b956-1de7979d3af3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (129, 1, '1986-08-13 09:59:36', 'abe63a7b-fbe0-353e-bcca-9502ba7c5a9b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (130, 1, '1984-04-26 09:58:14', '7a42a5d8-68c9-3166-a5f2-1c62982177ad');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (131, 3, '2009-12-28 20:31:26', 'd635e51d-9e0f-39fb-8564-d4f198ba8219');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (132, 1, '1978-12-17 15:42:09', 'a3d45ac3-e20b-3500-898f-4cdec553f7fa');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (133, 3, '2005-02-16 15:24:28', 'ba19e040-1eab-378a-837d-5e048feecd81');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (134, 3, '1974-01-07 09:52:44', 'd87466d7-e08f-3719-af9d-ca9b3203e582');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (135, 2, '2006-11-15 15:26:36', 'c2f53660-f45e-3c02-a6f6-0a8cda914f6f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (136, 2, '1999-01-11 08:05:51', 'b393b851-a9a8-3289-aa62-970cbca9757b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (137, 1, '1983-05-09 19:16:20', '98e70e9e-549f-3c3f-b963-78a9a56ab347');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (138, 1, '2017-02-21 06:57:48', 'ba1c1259-1729-30be-87ad-b957cb4168e1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (139, 2, '2009-11-06 06:24:40', 'c7276635-f519-313c-b95b-aa610671b1c2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (140, 3, '2008-04-01 13:26:38', 'f38e0fd2-2af7-3f12-8410-8954f0814efa');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (141, 3, '2013-11-03 09:55:45', '2aa7d307-9b5b-392a-937d-93a0b9ddf627');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (142, 2, '1993-10-28 04:05:18', '9e5f94c4-2040-3551-acb7-a819310d2689');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (143, 2, '1974-08-12 12:52:17', 'a2c73ba6-36c1-37c9-8885-aed684221649');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (144, 3, '1984-03-22 04:09:04', '0dd2baee-f0f1-38ea-a070-8e90292883b1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (145, 1, '1995-11-03 14:31:50', 'af2cdbfa-62d8-3722-9148-258689208315');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (146, 1, '2014-12-04 16:08:30', '19b19d8b-ffa1-3e5a-9a2c-66c5e05fe4cc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (147, 3, '1979-06-09 14:23:33', 'd74f872e-021a-3c8f-902d-81c55fa3df4e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (148, 3, '1986-06-26 21:42:59', 'aeac18a9-3bd0-3dd4-a903-d6f3adc0f103');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (149, 2, '2001-07-20 02:45:31', '5418aa58-7a74-304e-91de-752ef53d18ea');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (150, 1, '2018-10-26 05:47:27', '351ff61a-0a9b-3cf1-8cdc-a86662e9fd29');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (151, 1, '1984-03-12 14:52:12', 'c1e41238-67e8-3d8b-b5e9-713e777cc219');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (152, 1, '1989-03-25 23:13:52', '71b1f16b-7635-37e1-9a92-eb6ddea0849f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (153, 3, '2001-01-01 03:30:04', 'ded97d71-af93-3f62-b466-3381a94b5a62');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (154, 2, '1987-04-26 07:34:06', '720b9da1-262e-3d39-ab8e-f776a26d49fd');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (155, 3, '2010-01-25 13:25:17', 'e0486d8c-b493-3c0d-9815-74c48404ee78');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (156, 3, '1991-02-23 18:29:05', 'f23c6113-8a6d-3581-a63e-b54d2ba1aff7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (157, 3, '1988-11-04 20:18:37', '1f068aa3-e2ab-36cc-b015-a61e06a57ff0');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (158, 1, '2000-04-01 15:50:25', 'd754ef2d-b1bb-3d22-a72d-65fad1f0dee3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (159, 1, '1991-07-27 08:09:58', '53713a49-df92-30d7-9dcc-3d96c29195ad');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (160, 3, '2000-06-09 05:27:17', '7acfae2d-a773-3c04-aea1-6b05e8ff63fc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (161, 2, '1987-06-06 12:49:23', '562863d7-76c2-3fa1-9013-daf8c1eadad8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (162, 1, '2014-07-13 13:05:56', '4e369e3e-ef72-3e80-8a0c-bc5b372bf836');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (163, 1, '2017-10-17 02:38:54', '372b717b-969d-342f-863e-b0de8c2c2101');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (164, 1, '1976-08-12 01:45:05', '76dc381d-7257-3156-bcd1-99b2263092a2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (165, 3, '1980-02-09 09:08:43', '9133cb7c-7a7e-3078-a96e-037ac3c5111a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (166, 2, '1972-09-21 06:13:44', '044f596c-17b7-3c47-9b4e-b1bcd08cfbdd');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (167, 2, '2006-01-04 05:27:28', 'b1edda51-5f7c-3031-9082-b8db63139c4f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (168, 1, '1970-05-30 10:06:31', 'a39fc26a-e55e-31ec-be44-12abff985043');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (169, 3, '2015-09-02 18:32:26', '39e78b73-2e4c-35e7-8457-48130cbc2d3f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (170, 1, '2013-12-03 05:47:41', '576945a3-da4d-330a-b9fd-9ba094d2192b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (171, 3, '1988-10-28 02:12:41', '9b0fcde2-48b5-39e3-acd9-83f5af6d7e96');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (172, 2, '1995-05-12 15:10:30', '70b359a0-3a53-3734-8d20-620bcd421b5b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (173, 3, '1989-12-17 19:08:58', '65154a3a-b7c5-3ea4-b6be-909ae633bfef');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (174, 2, '1985-01-31 15:07:42', 'db8d4e59-487f-3d7f-9e25-ac9a1cdefbca');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (175, 2, '2004-12-06 23:27:06', 'e62a84d3-225e-3326-8b38-36b6ef907a5a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (176, 3, '1970-01-23 11:26:22', 'f2110513-dfab-3627-b95d-837743180229');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (177, 2, '2013-12-11 18:30:17', '3c8b5e6a-91eb-354c-ac08-5253d22a040a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (178, 1, '2001-04-05 01:19:24', '904c90bc-f1cb-3b4e-9a68-a0cdb671363a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (179, 3, '1983-03-19 21:34:38', 'aac49f1a-fd83-39b8-a0d1-f250c61600a3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (180, 3, '1979-05-31 22:27:04', 'a9807293-54d2-3564-91fa-7dd042b0eafb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (181, 2, '1974-01-13 17:17:54', '7fed9efa-e084-3dcf-9089-789d76f5ff5a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (182, 3, '1984-10-21 19:49:21', '2d72af8a-f052-348f-83dc-547661ce50db');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (183, 1, '2009-06-02 07:58:22', '10b3fded-c36c-3167-a520-48b3ff3f2f29');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (184, 2, '1988-03-20 01:09:59', 'ba57af88-14d2-375d-85a1-18e023e7deb2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (185, 2, '1970-02-25 23:11:57', 'eef1e035-a661-3490-962e-38d30501c832');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (186, 1, '1995-07-28 09:19:13', '56207074-201f-336f-9744-a0ee8fe5198e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (187, 1, '1976-04-09 01:56:54', 'b25e1c68-a5d8-39f2-a74c-a2eed3e63817');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (188, 2, '1987-09-05 17:05:52', '31462a8a-a206-3051-bad0-18a3f5a0d544');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (189, 1, '1978-07-06 06:31:04', '7ed7d190-37d2-3017-9f41-128a13007bec');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (190, 2, '1983-04-21 20:33:00', '1af0659c-3b16-36a8-bfed-f2cfa59b0124');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (191, 1, '2000-08-28 06:22:49', '402fdb69-08ad-3f45-a205-ec0e76f35964');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (192, 3, '1993-09-30 21:32:29', '8e1f53c3-0bc7-3928-a6d7-80a966a9e96e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (193, 3, '1974-05-14 01:19:56', 'a9d7baef-61c3-3892-85d0-cbe93f52dd25');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (194, 2, '1973-06-20 22:48:53', 'c3134e07-dd39-3516-a1f9-e07cf11bd082');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (195, 3, '2011-10-25 01:54:38', 'bf3729d7-5fdf-30da-a0e6-2a114b213527');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (196, 2, '2008-03-09 09:29:21', '48712b24-beab-3e43-8c3d-3d6c8a4c3fd1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (197, 1, '2002-09-27 15:24:25', '0258aeda-c577-3db4-aa2d-d1a3c3ae5676');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (198, 2, '2005-10-25 13:04:49', '27c958b8-3f8b-3784-9a88-57a80a0792cf');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (199, 3, '2014-02-07 07:24:21', '182be225-f092-335c-ae64-ae2ff1cc01d0');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (200, 3, '2016-12-05 13:25:13', 'f8b5832a-040e-3307-82ed-07dee9d99e24');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (201, 3, '1980-08-01 12:45:09', '6735bff8-f63a-3b06-b8f0-16b3343a9bb2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (202, 3, '2006-11-17 09:42:19', 'c140805a-5125-324d-91be-5e7609e09a79');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (203, 1, '1985-09-18 05:38:29', '0cd06e7a-d695-3e1a-8ae9-003e575b8e34');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (204, 2, '1989-02-24 22:54:31', '57f754ec-76c9-3671-8d2b-940ea51118c7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (205, 1, '1989-02-22 04:26:05', '62031d16-4e05-3892-b3cb-80cf3c6b3663');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (206, 2, '1986-06-09 01:16:12', '7b1722a4-96f3-3e27-8cee-b294c045003d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (207, 2, '1974-05-14 20:09:42', 'ae56c6bf-2cb5-3b9e-b1f8-7f835f303198');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (208, 3, '1979-08-16 18:09:00', '7727156d-2edf-37bd-906c-97f15160a48a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (209, 2, '1985-12-05 08:15:48', '8d137c66-9b59-36f4-b678-12716ce690bd');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (210, 1, '1982-08-17 13:42:59', 'a09eac78-a16a-37de-960a-a4730479df96');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (211, 3, '1999-11-20 11:38:57', '449a129f-243b-3954-ab59-6ea62ed77564');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (212, 1, '2016-05-15 13:12:20', '64f4099e-ba54-3cc8-8f61-808357b7d849');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (213, 1, '2003-08-13 15:13:32', '0ec745b1-a194-374f-8a02-a2c2e01d53f5');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (214, 3, '2015-05-28 17:45:31', '4ee5d307-caa6-337d-8020-2e425307140a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (215, 2, '2001-01-14 02:28:03', '9010537a-c316-362c-983a-0323dc85e360');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (216, 3, '2010-02-18 21:50:15', 'c811b528-538f-3197-8f74-acced5f35dc0');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (217, 3, '2008-10-27 10:07:19', '94e5e94f-64ca-3deb-92ff-928a9278dc2c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (218, 3, '1972-04-17 21:13:14', '1053ed07-d6da-3304-a6c7-ba92a9313d98');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (219, 1, '1999-12-31 09:54:06', '9254dd17-139d-365f-be2e-fe0756873d1a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (220, 1, '1998-03-08 13:15:24', '583464c0-f02a-356d-ba51-436520fc4108');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (221, 1, '1987-08-18 17:44:23', '6455d525-8455-3e52-abd6-6245f0b0cc99');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (222, 2, '1991-02-13 00:09:36', '07321aa5-bec5-3862-99c2-e5c3dd4327a7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (223, 3, '1997-01-22 01:05:26', '66bbb59f-0557-3769-b296-bab7a200abaa');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (224, 3, '1988-10-24 01:34:46', '759838d0-508e-3b3f-88a7-24f84f19d930');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (225, 1, '1990-08-03 13:07:19', 'de0f52f6-d724-3682-914e-692cec03e7b7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (226, 3, '1992-09-14 05:41:14', 'a7a93678-1e90-3d54-baa6-e7ce24fe6acb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (227, 2, '2019-05-14 19:40:05', '65413e65-3ebc-325e-a465-cf8223bbf838');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (228, 1, '1995-10-10 09:04:08', '41ff0eb2-536f-3c9a-ba2f-61f4dd866a90');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (229, 2, '2008-03-06 06:20:10', 'fd61fa06-6d4a-37ff-8e04-a03a224398ef');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (230, 1, '1996-07-29 04:53:51', '0f41d49a-7d9a-32fd-b5d1-e1db3bd6f36c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (231, 3, '1990-12-28 12:53:20', 'dbba77c8-b97a-348f-9c81-34a2a726e6f8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (232, 1, '2001-09-10 16:51:55', 'd15ac361-24ad-35d1-9a0d-09b68030f873');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (233, 3, '1991-06-27 00:56:28', '8cd74cf9-c2d4-3191-bf5c-92c1461be8e7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (234, 3, '2020-10-14 16:31:01', '5314c8d8-9d90-3386-a04e-6f535830d914');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (235, 2, '2001-08-22 06:41:51', '0fb7fe9d-afbd-3579-b1bf-96f231d6238d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (236, 1, '1980-06-30 05:19:20', 'a9849ef5-4825-39db-8393-aa6728069add');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (237, 1, '1994-03-12 06:51:23', '0d50a79d-ad34-376c-8838-c696cae79fa6');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (238, 3, '2012-10-14 01:21:41', 'db662505-3586-3d32-b51c-87594f04a9cc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (239, 3, '1974-11-09 14:56:06', '7890ce49-89c7-320f-b4e9-273e3903f2da');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (240, 3, '1978-09-05 02:55:42', 'a905ab0c-3c23-3bef-afcc-694b9879a792');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (241, 1, '2008-03-24 02:22:09', 'e46fd8f4-a5f0-3162-bf10-05fe398b00a2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (242, 2, '1977-02-03 12:35:28', '53dd7e45-e611-3542-bc62-de6980bb2fe6');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (243, 3, '2021-03-14 03:43:49', 'bed58e27-1ba3-33a7-a956-a14b9d339881');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (244, 2, '2003-03-07 17:38:41', 'bf8e627d-e86e-35b1-8bb5-da1d839c2d82');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (245, 2, '1981-05-12 06:50:42', '030a2883-831b-364c-8e22-2c589a1505e5');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (246, 1, '1982-07-18 18:15:13', 'e0d90bc2-ca62-34c1-95a5-fca1a6cf1c9b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (247, 2, '2013-12-31 02:04:23', '71e1367f-a5c9-38bf-b65e-165299ed3738');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (248, 2, '1995-01-13 16:51:58', '7f2bdc82-3962-3c0a-b643-08c71a1e7847');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (249, 1, '2016-12-17 09:03:44', '5ba5b1e1-1612-3f95-8c2b-73f632e4c85e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (250, 3, '2007-10-18 04:48:30', 'aacddebd-805e-3725-bba9-a9937e58376f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (251, 2, '2002-01-28 09:04:03', '0fc854fa-f519-3c0f-b653-4d72268cabfc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (252, 1, '1991-03-26 11:14:55', '7f1acd84-2aac-3bcf-8e22-5509b6205737');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (253, 2, '2020-07-25 17:41:30', '88bb2dad-1ba5-3911-a156-4d0b14540bb3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (254, 2, '1978-01-22 23:13:37', '9028f29e-66a7-3bb9-9560-1185816b8c0c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (255, 1, '1983-04-13 08:12:25', '54131811-2189-30cc-a5d8-bcb1cd105938');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (256, 2, '2011-06-17 23:18:36', '5157273d-753d-3cd0-a219-fff0690faf75');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (257, 1, '1997-12-16 21:49:32', '4972d8f2-bd50-325b-88c4-1645137170f5');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (258, 3, '1993-10-25 08:47:10', '51124556-759f-3228-9415-714443c0a5dc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (259, 2, '1976-10-04 03:09:43', 'd0c0cc58-a8b6-3b85-839b-15d720dfca3d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (260, 2, '1990-04-27 22:51:08', '593031ab-9510-350f-83fa-7c7d333c225a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (261, 1, '1984-01-27 04:11:27', '75ce2e56-7e9d-3566-8bdb-b89ed8cc42b8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (262, 2, '1999-11-17 17:33:14', 'b075476b-f964-37ac-93d5-0b46dc7562c2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (263, 3, '1997-07-02 22:09:59', '5a87713a-60ea-39c8-99a4-75c62f9cfb16');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (264, 1, '1985-01-31 14:07:34', '211683bc-ba96-3038-b99b-01dea7145c97');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (265, 1, '2000-11-02 04:09:52', '71e2e79f-14ed-35b0-8037-2a0c29fe909f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (266, 1, '2009-01-05 07:26:23', '9f5b0fd3-b590-30cd-9c8a-182e85bc3f2c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (267, 1, '1995-04-17 19:24:59', 'a1b478a1-4b2e-3fa8-ba4a-decfa83fd2f8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (268, 2, '1979-08-20 12:54:53', '6e82b11c-ee17-35c3-827f-23d643555c23');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (269, 1, '1991-05-28 13:20:41', '65df94f4-1670-3ecc-882e-dc8cde951cf3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (270, 3, '1989-06-01 06:40:00', '0842aa86-55ea-332f-95b1-194061cf07b1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (271, 2, '2018-06-16 23:36:33', '506218f1-ef4c-3655-8e93-c2a237c540ef');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (272, 2, '1975-05-09 09:51:22', 'a200e559-55d5-3706-83b7-ce0d0eac4a5f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (273, 2, '2004-02-24 02:32:17', 'f384f2a8-033c-3c20-a8c1-dd2690b6d338');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (274, 2, '1997-02-23 10:00:01', 'c37d5d40-32ee-31a3-b5f2-daa3901afcd3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (275, 1, '1987-12-31 13:39:26', '54ec5b40-bbbf-3a7a-975c-a1abd44bd519');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (276, 3, '1973-11-27 04:19:05', '041115d1-100b-385d-8971-278cb2f2e6f4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (277, 3, '1978-04-01 11:42:23', '6199f5b9-b2f1-39e7-9e9c-ffa0ae62571e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (278, 3, '2005-05-24 05:24:46', 'e09d12d2-cc80-39be-954e-9c2ba19e0a73');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (279, 2, '1995-08-17 01:15:42', '65afb55b-4ac6-36e6-b0ee-57b27b8a1da9');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (280, 3, '2012-01-07 12:05:46', 'a9693a40-ae3b-308f-8a78-9d0ec248967c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (281, 3, '1971-02-11 02:38:20', '1f440e1b-5106-3536-b8a9-d64568301154');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (282, 3, '2013-09-06 22:09:01', 'f4478986-a0b7-3106-bff3-055cfbd8e0c0');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (283, 3, '2015-08-26 06:15:50', 'dee17c60-5c2e-32b9-8ae4-66476c8abf2c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (284, 1, '2012-10-09 10:50:15', '337b0ef7-ecb9-384a-8598-9e05717a3742');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (285, 2, '1992-06-28 21:31:51', 'a440d11e-4b8e-3dcf-b8ee-35b55189a9fe');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (286, 1, '1997-04-23 00:08:49', '007aef81-f86a-3801-84c4-6698e864e80d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (287, 3, '1983-03-25 13:28:10', '62ad9c44-d533-3090-8ea7-2e7744e31fb5');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (288, 3, '2000-03-01 22:18:29', '80ea4a8d-2841-32b8-8e0d-0e8bdfcc6199');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (289, 3, '1973-09-26 07:59:48', 'bd86e743-401b-3f0c-8b95-e09b67fb652d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (290, 2, '2002-01-13 12:36:13', '24fe6fe7-16da-3a3d-84f0-b57bddfb8b5c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (291, 1, '1975-05-08 03:43:23', 'cc65fb32-057f-39df-966d-8b6259c2cfb4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (292, 3, '2009-05-26 07:50:19', '68e16672-a433-394a-b796-ffbe27513790');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (293, 3, '1998-03-20 13:19:26', '8ea8a99e-eda5-37db-8b91-e016c2feb919');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (294, 3, '1974-01-24 12:13:51', '520fad73-f146-3853-a329-31e5fe107f60');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (295, 1, '1997-08-08 23:17:06', 'b464dc2c-5f32-31e5-bc53-15a7a35dd549');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (296, 3, '2021-04-26 23:38:47', '68499eac-584f-3d06-a495-081275b607a1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (297, 1, '1982-04-13 15:46:50', '90f315ee-f150-3e75-8af3-1c8c5c1c35dd');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (298, 1, '1983-01-12 00:53:13', '38a991b4-15b1-3b0e-9d84-2ea7c700dc10');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (299, 2, '1990-11-17 00:00:57', '48b56e55-f858-377a-a813-b5abab9c087d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (300, 2, '2002-01-24 15:14:01', '1356f371-af01-34e7-865e-f56390e88c87');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (301, 1, '2011-02-11 07:22:07', '3e4aa360-ecae-3abf-8c23-9a69e4efbf53');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (302, 3, '1973-03-01 10:13:14', 'c85fabe6-aaec-3497-a399-c0351c342a44');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (303, 1, '1995-01-09 21:21:11', '34e1e9a8-6702-3b29-8c8a-0c5d0af38897');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (304, 2, '2013-05-11 08:57:25', '1b3237c8-a072-31fb-94bd-67e53d88cd02');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (305, 1, '1978-05-21 13:50:53', 'a2d12e86-6d03-392d-9b5d-66cc57ed317a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (306, 1, '1988-09-18 00:42:19', '5004c207-1fd7-3371-b789-035d5f5eb396');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (307, 2, '1992-06-26 00:44:32', 'b59c0412-01c2-37f5-ba53-e16b34e63fd3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (308, 1, '2012-08-31 12:28:31', '50120c1b-d181-30ce-978b-c1e07e7b4291');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (309, 1, '1982-09-03 18:15:12', '35959f7d-55f0-3738-8062-0672d651dba1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (310, 3, '2016-10-22 12:48:28', 'eef5a681-c607-33f9-be6b-34ae73bfa958');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (311, 3, '1983-01-25 10:40:07', '15f9b6a5-a1d3-307f-ab33-106d0d56ccaf');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (312, 3, '2000-04-26 05:17:17', 'e1b406b9-b1e3-3d51-a1f7-ed9e751bb69b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (313, 3, '2015-08-16 05:06:03', '858cf581-c73e-32c2-a6ed-3fba8d1b7950');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (314, 3, '1994-08-19 21:46:05', '06eb8710-cf19-32b3-91f7-cb65db1684d6');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (315, 1, '2014-02-09 16:31:30', 'edc06375-b66a-35ec-9907-a86cca8be19c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (316, 1, '1988-06-08 17:17:30', 'bf4a078b-03a1-3889-bf6e-ec7b2fc2b42c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (317, 1, '2010-07-12 17:01:13', '371da224-34cf-3783-b877-4e65979c16e4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (318, 3, '2015-07-04 21:20:08', '7c33c032-990f-3056-8d9c-3d965908ff5d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (319, 3, '2001-09-09 13:38:30', 'bc6d9ff3-d750-3865-87d0-8b59a2ff4790');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (320, 3, '2017-09-30 10:15:01', 'cc519f31-f0a0-3bad-b71d-0c18cd2db3b4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (321, 1, '1991-11-16 05:04:34', '440c1c3e-23b5-3c25-a671-9774496b11f7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (322, 1, '1974-07-06 11:51:37', '78927c7e-7d28-3202-90de-f8986d058049');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (323, 3, '2016-04-09 08:20:38', 'dd4a5ed8-d234-30cb-bc06-4071b64fda0c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (324, 3, '2014-04-14 04:36:07', '5be6db8a-f45f-3a9e-bc12-8ca61c4c3b3b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (325, 1, '1986-10-03 14:00:35', '18d21d7c-44a0-3301-a579-d067401d47fb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (326, 3, '2017-06-07 08:26:34', '286a81fe-7bb9-3a8f-83e1-638342a43023');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (327, 3, '2017-12-08 04:05:30', 'f5cf46ce-22e9-3a44-9ec6-7780b99764f7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (328, 2, '1977-07-19 07:58:58', '1eb7d6a4-6989-316d-9ac8-2ce0eb43f175');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (329, 1, '1977-01-21 06:59:18', '085e28ec-1bc5-3700-9fb2-0909a7cacf23');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (330, 1, '1985-11-29 05:12:03', 'db381004-a2c3-39d8-ac9b-05ae7e77a1af');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (331, 3, '1984-10-09 06:45:22', '6e715fbe-7f68-3d25-b904-5a1ba228613c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (332, 1, '1994-09-10 22:06:46', 'cd9a689e-f143-33bf-bd90-b7c0dead82ac');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (333, 1, '2006-02-20 08:49:17', '0ca76e7a-5f41-3708-ad23-e76a851b07eb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (334, 3, '2008-11-24 15:44:48', '283b9155-3078-363e-8940-5e8842e6da52');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (335, 3, '1984-09-15 02:14:20', '2cb0cbbb-66d0-3096-8443-ce5d19d5f61e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (336, 2, '1974-10-31 11:55:32', '0b2c3d69-e048-3346-817c-5867a2029628');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (337, 1, '1986-02-05 14:53:14', 'f79a7d51-8ca4-3aa1-8884-ae766e5e82b9');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (338, 2, '1999-02-28 14:19:31', '5430991c-7c5d-3a08-87de-f0ecfd517d7a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (339, 2, '2014-01-10 22:32:14', 'ae335be0-6dcd-3e08-bca7-d65540410c8d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (340, 1, '1998-09-20 05:17:38', '2a1376ad-d648-3af5-9eee-99854f6ce878');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (341, 2, '1994-06-07 23:35:58', '4540e910-9a65-330b-a124-894bc07ec2fa');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (342, 2, '1992-12-13 12:36:54', '4e1839d7-b4a0-389d-8e03-52691807e901');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (343, 1, '2006-01-13 15:24:49', 'a2afc20a-1c74-3301-a337-d2f47a2564c3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (344, 1, '1971-06-07 06:25:01', 'c82af2ee-58ff-3dc5-ab5a-32ec4ec3314e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (345, 1, '2020-11-20 13:30:24', '0cfe7f5a-1e79-38fe-8a3a-44d54ec1be29');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (346, 1, '1973-03-07 13:35:27', '28b89f72-3507-38fa-8d31-4aefdfd6199c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (347, 2, '2009-09-03 04:48:59', '22d249a1-c7bd-3fcf-89e1-ecaef65868b1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (348, 1, '1971-05-08 08:22:21', '4a7ab61c-189f-3b42-a51d-b388aca342a5');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (349, 3, '2021-07-13 20:25:08', '5c190e78-3faa-30e5-b5e8-5cdcc4c4c033');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (350, 2, '1988-08-21 08:11:26', '3d98652e-ef5f-37fc-a236-a2274579a9ad');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (351, 1, '2013-05-03 02:50:38', '021e85dc-40b9-3957-8a29-e7046fef8d91');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (352, 1, '1999-11-20 17:20:15', '9e15cf47-5e92-3a22-8ba9-daeb48d34374');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (353, 3, '2005-06-06 15:42:32', 'c98a049b-1b20-306b-9401-fed1bb42857e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (354, 1, '1990-09-27 11:20:32', '6450803c-33bf-3e33-866f-f3401b4ff19f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (355, 1, '2003-05-09 13:26:52', '308ca9e5-3c91-3a4a-991a-adc71ef4e7e3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (356, 3, '2007-01-02 08:40:18', 'a8e250b5-116d-3947-9029-630ee519e785');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (357, 1, '2002-03-27 02:28:36', '30cb9c2c-64db-399c-aa18-df1b530bbff9');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (358, 1, '1975-08-05 08:13:18', '5c7084dc-5b46-3276-a46c-b71f5bdc287f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (359, 2, '1988-08-26 22:12:53', 'fb5103fb-25a4-3558-a536-5d412f1bfd67');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (360, 1, '2018-12-27 02:05:16', '48bcca43-9968-367e-8402-b66e81f80024');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (361, 1, '1977-03-14 17:04:52', '9e5adfdf-8c2c-3c0a-b219-ce14fe005dc5');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (362, 2, '2003-06-17 14:40:48', '3e00ca90-5483-3013-bc92-82d8500d391d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (363, 2, '2004-02-10 00:12:26', '424eee9b-a3c4-3d20-a6dc-c4690fbd3ef8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (364, 2, '2011-04-21 12:30:49', '2c9c4ab0-3ed8-3386-8eb7-c2c146bc6d8b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (365, 2, '1980-08-13 11:46:42', '678e6146-3e6b-3ad7-9efb-cbd7a1fd15f4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (366, 1, '1994-01-03 18:13:46', 'f7aa9031-709d-3d49-acd2-1257fe574ce1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (367, 3, '1996-03-30 10:54:10', '1e05a65a-eaee-3d85-86fe-2bae0628b039');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (368, 2, '2018-09-09 06:27:56', '8e682f81-18c9-319a-9bca-c9b52914e3a9');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (369, 2, '1973-05-06 19:25:09', '800ee258-28c7-3c4e-a9ff-57f6a5d2d8be');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (370, 2, '1994-08-11 10:31:22', '26fa62cd-100c-3ee6-8967-4dc97e19aedb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (371, 3, '2001-08-07 16:58:20', '78a33e2a-d6bd-39c2-97a8-5f1d60cc14f7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (372, 3, '1994-04-18 13:52:50', '7a96cc67-51c9-3827-8ce2-6fb6897a7203');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (373, 3, '2000-07-13 22:21:20', '04ba2662-e642-31fe-a339-d9d721c16f1c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (374, 1, '1987-03-28 06:24:53', '39f89e51-a7bf-3514-ab67-90184d0507d4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (375, 1, '1988-01-06 16:15:47', '41729049-49c1-3d44-8991-bcb3faf6a555');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (376, 3, '1974-04-05 06:27:23', 'b3279305-8b69-385f-a6ff-ac575567c94f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (377, 1, '1986-12-16 12:33:06', '75c63174-ff2d-384f-812a-eec080b56efc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (378, 2, '2008-10-18 19:23:34', '2a32ca30-12bb-3dbb-a610-0232934918a4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (379, 1, '1972-02-16 21:49:14', '31e830ff-7947-37e7-94b3-c77a2e12c1ab');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (380, 1, '2003-09-27 20:38:42', '469b5da3-7275-3eed-8426-6ce31fbbb859');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (381, 1, '1981-05-27 10:19:30', '737b3b67-cc26-3a21-89cd-7b5d19a9f66a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (382, 2, '1994-09-12 06:03:16', 'b15e42a3-9662-3460-838b-35203286acec');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (383, 2, '2013-11-08 09:57:46', '6b136937-74f4-32c3-839f-055bea688cb7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (384, 3, '1998-11-17 22:35:55', 'ecf2542b-9324-3f0f-97c3-b10b8659e248');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (385, 2, '1978-04-02 18:33:17', '31d50a2d-85c1-3498-b288-ead36b3085ea');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (386, 2, '1998-04-30 03:46:40', '7994d27c-d8c7-3ba0-b20f-12b10f560453');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (387, 3, '2004-11-16 14:19:58', '0ebe4902-6c2a-33d7-9fd8-4a252bc922e8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (388, 2, '1992-06-29 11:15:49', 'a4ed2b7d-421d-3344-93c9-baa001d276af');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (389, 2, '1970-09-01 14:31:21', 'cfc65bd6-d400-373d-84b8-0c17f5b44c9d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (390, 1, '2016-03-15 17:59:39', '85f238a6-5f94-38be-b445-1a14d7bea30c');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (391, 3, '1979-12-31 18:06:02', '64bc707d-38cd-3079-8ddd-4082302385cb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (392, 3, '2021-03-28 16:54:24', 'ffddf8de-2c51-3fca-bd82-ddef7a2ff575');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (393, 2, '2008-03-02 20:41:09', '70ec79ad-daac-33eb-96a8-a48404dcef86');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (394, 1, '1986-10-10 09:03:50', '594a71b4-be30-3b10-a068-fc09935c5a60');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (395, 1, '2019-11-29 13:04:54', '7e81dffd-566d-3725-9c9f-53d322c24c18');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (396, 3, '2019-04-13 23:46:02', '4ff1a585-ade0-30e6-8ae5-06bb22e6945d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (397, 2, '2010-08-26 19:02:14', '52d7ab1f-01fd-35d9-be72-6d6a06e56f56');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (398, 1, '2016-08-10 01:36:08', 'bd7369c0-a4f4-3a11-8fd5-6062012b32bc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (399, 2, '1973-04-22 10:14:13', '4945f679-ded5-3240-acfa-c485bec902ba');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (400, 1, '1970-11-03 19:49:27', 'b96d7d55-c41a-3113-a9c8-298914f3187a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (401, 3, '2020-10-04 03:51:22', 'c3f5cfe0-362e-3e81-980f-bc7e686a03e2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (402, 2, '1971-12-15 06:22:58', '8b8161bb-8c51-3031-a47b-7e58d7e49585');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (403, 1, '1996-05-14 18:16:20', '09a3b3ca-123a-3763-861c-918cf10d1d36');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (404, 2, '1994-10-22 21:31:18', 'f3d74747-abe2-3afb-975e-4cecccf922ff');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (405, 2, '1987-08-08 14:44:24', '061828d7-b9db-3d5f-8549-e802c51d27f8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (406, 1, '1994-11-17 16:31:41', '078e119b-d746-312d-8942-165d293f1e24');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (407, 2, '2005-09-06 21:07:55', 'b1c941ba-3d83-3159-9d57-0976f4f91214');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (408, 3, '1998-09-04 01:22:04', '63c27109-a767-3fd9-b410-091fe853e96b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (409, 3, '1972-12-12 00:31:13', 'c3c699a8-a3db-3cb4-8813-477d53815569');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (410, 3, '2007-05-12 16:08:29', '99d5f176-2246-336c-be6c-54eb45da2200');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (411, 3, '1976-02-10 20:30:10', '269d0ec9-6c9f-38da-9093-2f354e74749b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (412, 1, '1986-02-15 06:31:30', '12e013f6-80d9-3776-ab7c-c2d18d2ac981');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (413, 1, '1988-03-01 07:01:45', '3bb4dce4-a8cb-3241-b20f-44351b3df0c2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (414, 1, '2004-05-04 03:25:02', 'a2076293-9078-36bc-b3b5-557378cf6a11');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (415, 3, '2004-05-26 09:17:45', 'e4d1a1d0-63e3-3dda-9517-7ecb7ab91956');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (416, 2, '2014-05-31 23:16:58', 'c2f0e560-19a7-3cdc-acc3-95392f285c91');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (417, 3, '2014-11-15 10:46:08', '19927062-0a85-3851-8853-821cb4a61433');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (418, 2, '1998-09-19 11:30:59', '45f0e1f1-b0b2-36f8-b07c-1e962e6a846f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (419, 1, '2017-08-28 23:18:21', 'e4093e22-3ccb-34d5-b688-a9bfcd8e2603');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (420, 2, '2001-07-04 07:25:09', 'f3dcfd3e-8e80-3ec1-8fe2-6b71dec8df31');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (421, 3, '2006-11-10 05:30:48', '10949013-19f1-3a8d-8262-79cdf3741f44');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (422, 3, '1991-05-04 10:53:24', '71e8d651-085c-356a-bbf5-9d984a3c37bb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (423, 1, '2016-09-12 22:00:52', '77b1ec77-e1b4-3ad7-bf20-eba081e821b2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (424, 1, '2004-10-30 22:18:28', '1f6b43e4-8c10-3a29-b95f-fdfdae04e97d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (425, 1, '1999-02-20 19:23:43', 'e9b6a78e-335e-3680-afcf-9e36011653fa');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (426, 2, '2009-10-05 23:43:41', '96cd98be-270f-38bf-a12b-ccd57bfc932e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (427, 1, '1981-11-04 05:17:36', '87dd255c-6187-39ee-8f25-e60a27c9e85e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (428, 2, '2016-09-20 03:48:10', '24f225b2-0f3e-3cb7-a66c-f5ce632259e0');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (429, 2, '1983-07-07 13:26:26', '0a75c579-00aa-3dbf-85c6-c2721bc6f84b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (430, 2, '2002-06-18 01:20:09', '5ea56f02-c4f5-37b1-94af-6647a6f6fce0');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (431, 3, '1985-06-17 21:05:33', 'f15ef868-736c-31d2-a114-332ea49ca418');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (432, 2, '2002-07-09 15:56:02', 'b8cfcb14-e827-3fad-99c7-675b2b47f28a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (433, 3, '1999-10-15 14:27:02', '1777ad48-1254-3270-8c48-13db90b73184');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (434, 3, '1995-02-08 12:22:16', 'cfeb22d7-f148-3aad-b387-5a8e5057d66f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (435, 3, '1999-02-25 16:46:05', '90111af2-872a-3918-a8e0-8ab76c1545eb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (436, 2, '1989-05-28 07:04:36', '2fa5a548-26e7-37b2-97a7-74ff5f167807');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (437, 1, '2020-08-28 23:05:09', 'e7f6b843-73df-36a4-8ea3-7e7207fd48c2');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (438, 2, '1979-04-28 10:00:45', '4c6685f1-d6bd-3936-953a-380519504cbf');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (439, 1, '2021-04-09 11:25:58', 'f3432294-9b6c-3631-9d5c-934bbe577dd5');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (440, 1, '1971-02-27 19:24:51', 'ac90256c-0a54-3cce-b794-599f52e955c4');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (441, 1, '1996-09-27 01:39:17', '1e1f15d2-3492-3f4b-815b-894af129e625');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (442, 3, '2006-12-22 12:40:40', '7e970a3b-8bb5-3f0a-b376-f173271bbc44');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (443, 1, '1972-05-01 11:33:27', 'a953c072-736a-309c-9f76-227a020ef195');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (444, 1, '2013-03-29 17:57:01', '4bb3c1e9-8ae1-3472-a84c-df4ab4457c46');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (445, 1, '2018-01-27 09:05:58', '399c4d8b-034b-39c0-b3d2-5a8828d65c29');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (446, 3, '1984-02-14 20:42:49', 'bd26e6c8-7395-3ed0-9d11-db3fcc7b6ee9');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (447, 2, '2020-05-24 12:35:34', '9281166c-daf0-33be-8af3-df8977f1f933');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (448, 3, '1988-07-27 13:48:15', '518cd046-33aa-3e4b-959d-d83d67f331dd');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (449, 2, '1985-01-26 14:08:38', '6447c5ab-6c4d-3f47-aded-38e097cadb10');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (450, 3, '2003-07-29 17:09:06', '443c1c9e-4716-349d-979a-d40ff1fb2355');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (451, 1, '1995-06-21 07:14:37', '081cd1ab-f122-3edf-8962-cb168d22b13f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (452, 1, '1977-09-03 02:03:50', 'cd286f0f-1b20-316b-b854-6bce1ebc084d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (453, 3, '2014-06-09 09:53:25', '913fcb0d-0bae-3cdd-9092-a178871bf30d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (454, 2, '1987-10-10 08:08:33', '2d61a5c0-2813-3d82-9086-a819d6ae6150');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (455, 1, '2010-12-22 02:09:59', '86bca8c4-8b06-303c-8f8d-7130f81282f1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (456, 3, '2013-06-13 23:31:50', '305df5ed-3086-326b-b5ef-9692934e3822');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (457, 3, '2013-05-30 12:24:24', '56a798b9-c17a-3d4f-89e3-cd62b5c91903');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (458, 1, '2003-01-24 03:57:58', 'c8f16be0-beea-37fb-841c-7e0f1d4d6762');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (459, 2, '2009-06-23 09:44:56', 'ee7be4a8-63eb-353d-8119-7d3fde0a0a88');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (460, 2, '2007-12-06 12:07:58', 'd04a9ebd-e881-3f13-80b7-822e653854a3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (461, 3, '1996-11-05 14:44:02', '7804f6ad-50d8-3ffd-91b4-62341ab0fdba');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (462, 1, '2006-03-05 03:41:02', 'f934cd84-7a39-354c-8b14-18b10fd77966');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (463, 3, '2006-02-10 10:38:47', 'ba6837d1-d038-36e7-a7ff-47c197865c4e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (464, 3, '1970-08-12 09:32:06', '5a2f4f1c-3b53-3d90-b09f-261acf73a7ad');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (465, 1, '1978-02-09 21:45:07', '5a1db83d-ed65-3513-a9cc-1fa3dd86600e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (466, 3, '2010-12-11 19:47:05', '76dd160e-f28f-3066-b705-e6b42634775b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (467, 1, '1993-03-24 23:52:27', '4c8a4ac4-71c6-3e82-87c7-b358203f7b81');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (468, 1, '2001-06-20 14:36:16', 'ce9ce6de-afc2-3fe0-8a47-95e414772832');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (469, 1, '2010-10-02 13:20:30', 'd5d11b03-8352-3f32-a0fb-63f6cfcbd5e6');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (470, 1, '2008-04-28 14:08:41', '6cee24f2-396e-30de-aa31-9eeafa49f590');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (471, 1, '2016-08-28 03:20:27', '6dcf7ac2-3df8-3619-8515-1529b494377d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (472, 1, '2015-04-02 14:56:34', 'a12e8c7c-db9c-3475-a5df-d5dee45f8bbc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (473, 3, '1970-10-05 18:53:21', '92ae69fc-034c-3dfb-aa66-5b664400338d');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (474, 2, '1996-01-05 00:06:21', '7b1ef170-a5f2-36c4-b4d8-08c8f3744852');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (475, 2, '1982-05-12 13:03:59', '1a2f0e61-e996-3faa-a488-4075284f3f1e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (476, 1, '1997-10-27 23:21:13', '255ce7d5-baa6-3b48-a2da-67c071e5636f');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (477, 1, '1982-06-20 11:00:47', '3307836c-ba76-3559-bd02-a04706c410c7');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (478, 1, '1997-02-22 16:00:14', '394604f5-0363-304b-be3d-2eb1c694070a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (479, 1, '1990-08-13 12:25:56', '1f79530d-16e5-3c41-9aa8-d181649ca8da');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (480, 3, '2003-03-23 20:38:26', '62207762-fc28-378f-a93f-a313a4dbad73');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (481, 3, '2003-07-07 11:22:52', '06acd925-6b6c-3e80-a6ae-d4c519079389');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (482, 1, '2017-09-14 18:52:26', '150e8a60-497a-3491-b71f-bddeb8a2d6ba');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (483, 3, '1988-09-06 14:15:22', '931bbf9d-7144-32a5-8a02-f366c5e27ce8');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (484, 2, '2009-06-07 17:36:52', '1b1143e5-639c-3d33-b05b-66b924787deb');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (485, 3, '2008-07-28 00:34:25', '8550ef52-ecac-3f7d-836e-05d6790b433b');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (486, 1, '2018-04-11 05:13:47', '52895d44-6a74-3591-b256-c7fad1a3d02e');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (487, 2, '1996-01-10 05:08:42', 'd3226f3f-f8e4-3967-b49c-e1e64931398a');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (488, 2, '2001-06-10 00:11:57', 'bb32e7e4-bdcf-35d4-8b3c-7bc97729bb09');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (489, 2, '1990-09-08 09:27:41', '13312e63-fb10-3a02-a226-69328937e3ec');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (490, 3, '1975-12-28 04:15:29', '63b57d51-43f9-316d-9435-c1833960d4fc');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (491, 1, '2015-05-19 07:59:17', '0dd5c67f-7e2d-3307-99e0-e087dcd2c8e1');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (492, 1, '2018-12-16 07:00:42', '05d7c5bb-2c35-3de2-ab3b-f21cd4540513');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (493, 1, '1991-06-25 23:18:08', 'ef305c46-28d4-37b6-924f-174d2c3cbd50');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (494, 1, '1975-07-28 00:08:17', '2b7b9896-1d32-3e6e-bc92-3a9bf9653504');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (495, 3, '1972-06-22 08:46:53', '57749568-18d8-37b7-abe8-2468d789e176');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (496, 1, '2020-04-18 15:27:12', '92eada43-ad4d-3a98-9704-7bd90b9bc3f3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (497, 3, '1985-12-26 14:21:51', '2d627994-80f0-3d2c-95e6-12a75472aae3');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (498, 3, '1990-06-10 03:18:18', '9d433f12-7947-35a7-ae74-381b0464cb09');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (499, 2, '1973-07-20 16:57:18', '25c2ad38-4658-36f6-a3b2-673f87dc6f51');
INSERT INTO `media` (`id`, `type_media`, `created_at`, `url`) VALUES (500, 1, '1992-06-25 18:45:36', '5bfe1e1d-f31f-3566-b843-7e6f15ccfb6c');


#
# TABLE STRUCTURE FOR: news
#

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(10) unsigned NOT NULL,
  `tournament_id` int(10) unsigned NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_news_tournaments1_idx` (`tournament_id`),
  KEY `fk_news_media1_idx` (`media_id`),
  KEY `fk_news_author1_idx` (`author_id`),
  CONSTRAINT `fk_news_author1` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_news_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_news_tournaments1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (1, 'Architecto officiis sequi qui unde et.', 30, 3, '2003-12-03 15:00:47', 'Ex aspernatur nemo ratione fugiat inventore. Nihil minima praesentium molestias. Debitis provident suscipit qui.\nIusto sed quos quo ab minima sit. Et possimus ea cupiditate sint dolor officia. Vero recusandae in maxime.', 360);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (2, 'Consequatur quis quas alias quaerat voluptati', 30, 18, '1978-07-06 02:23:18', 'Eius possimus tempora similique cum. Sapiente sapiente impedit explicabo sed in vitae eveniet. Reprehenderit qui accusantium ipsum repellendus dolor vitae dolores nostrum.\nQuae quas laudantium architecto laborum rerum magnam. Ipsum id possimus quas omnis voluptatem.', 487);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (3, 'Natus dolorum et ipsum dolor ut.', 11, 1, '1989-01-29 23:11:42', 'Voluptates delectus deleniti dolore amet praesentium totam at. Exercitationem tempora rem harum autem. Dolorem praesentium nihil voluptatem quo ipsam nulla omnis reiciendis. Blanditiis omnis sint sit omnis enim. Non pariatur fugit et voluptatem molestias.', 310);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (4, 'Autem est aliquid officiis quo rem soluta.', 38, 13, '1979-05-10 23:50:44', 'Quisquam delectus sed esse repellat minima occaecati voluptas. Esse quia saepe ullam odit. Praesentium amet molestiae sit. Praesentium laborum ut est labore et sed.', 112);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (5, 'Ad libero aut mollitia nobis et.', 5, 11, '1982-01-03 22:35:31', 'Beatae vel quo consectetur amet eos deserunt consequuntur consequuntur. Quos eaque reprehenderit consequuntur distinctio eos. At facilis corrupti cupiditate sunt quam ipsa.', 98);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (6, 'Molestiae harum quis cum sapiente ut.', 30, 10, '1979-05-07 09:00:33', 'Voluptate nulla exercitationem vitae voluptas ducimus qui tempore. Voluptatem quam et sequi sit voluptatem quae cumque. Quia velit aut ad error. Est facilis laboriosam esse aut est.', 207);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (7, 'Quis et nihil ut tempore blanditiis sed.', 46, 15, '2019-10-31 17:28:56', 'Et est voluptas facilis odit ea et. Distinctio error placeat in ea qui enim eius omnis. Ducimus quis suscipit rerum necessitatibus corporis officiis accusantium.\nOccaecati vero ullam molestiae amet voluptatem. Nesciunt eligendi ut sed dolor sit officiis.', 169);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (8, 'Dolores quod qui odit excepturi.', 32, 3, '1985-09-03 03:25:02', 'Quis sint non et porro consequatur. Ut eos ratione voluptatem quae ea et. Delectus officia quaerat omnis dolor in et. Delectus sequi natus tempora blanditiis quia nihil.', 137);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (9, 'Vel odio velit culpa nobis sint rem.', 42, 7, '2017-11-05 19:29:45', 'Maiores voluptatibus voluptas non quas ut. Eaque consequatur temporibus molestiae incidunt sit impedit. Sequi adipisci officia facilis. Provident ut ipsam doloribus recusandae.\nEt minus odit sint mollitia sit. Maiores et architecto ea eos. Rem animi modi ut totam error laudantium.', 237);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (10, 'Perferendis velit saepe in repellat ratione e', 13, 7, '2014-04-26 17:29:47', 'Quam exercitationem repellat temporibus necessitatibus dolore. Dolores asperiores non reprehenderit deserunt ut exercitationem sequi. Corporis ullam nostrum a distinctio vero dicta itaque.', 91);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (11, 'Dolor sit laudantium cumque pariatur consecte', 21, 19, '1979-10-10 19:56:41', 'Assumenda iusto ducimus vitae enim. Vitae qui facere et velit qui animi facere. Qui voluptates similique in id. Nihil enim repellat ducimus aut.\nModi quo non quia. Quod omnis itaque quia praesentium. Quo ea provident itaque voluptas. Qui veritatis qui earum quam et.', 149);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (12, 'Dolor maxime possimus sit dolores esse.', 7, 11, '1972-04-20 15:23:20', 'Perferendis ullam adipisci occaecati reiciendis est ut dicta. Quas aut excepturi nihil dolorum ad velit repellendus repudiandae. Amet facere quo expedita exercitationem.', 98);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (13, 'Beatae suscipit vero in quo.', 5, 15, '1984-01-25 02:26:34', 'Adipisci ut velit cupiditate et neque et. Tempora quis ut modi amet. Deserunt doloribus corrupti qui mollitia temporibus.\nOccaecati nemo doloremque libero praesentium qui expedita. Velit earum recusandae est tempora. Asperiores consequuntur veniam impedit est.', 121);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (14, 'Illum quis quisquam rerum illo totam.', 36, 10, '1995-11-13 13:43:26', 'Ipsam odio tempore sit consequatur. Dolorum libero ut fugit sed. Consequatur adipisci nobis sit. Libero iusto sed omnis qui.\nAutem veritatis quis et quia. Ad et asperiores non dolores. Dolorum aut eum asperiores sint ut.', 444);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (15, 'Labore dolorum blanditiis eaque eum ea sequi ', 47, 12, '2011-07-14 17:39:03', 'Eum deleniti sapiente consequuntur impedit id rerum. Voluptatem qui illo error nihil rerum. Quam velit laborum laboriosam eos excepturi sint omnis ea. Rem quaerat amet harum quae.\nId et doloribus consectetur itaque officiis nesciunt voluptate. Qui provident dolores rem quia quod eos maxime dolor.', 206);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (16, 'Harum illo nam rerum id.', 7, 4, '1971-10-06 19:42:30', 'Nemo ipsa sit fugit velit tempore distinctio nam. Necessitatibus qui fugit voluptates quo modi hic quo. Et voluptas at consequuntur ullam omnis. Velit ex autem veniam dolor.', 444);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (17, 'Eum tenetur occaecati autem voluptas facilis ', 28, 2, '2020-10-11 02:45:56', 'Nesciunt dignissimos explicabo inventore repellat consequatur repellat laudantium veritatis. Et aut provident totam ut. Inventore qui sapiente dolore provident. Aut modi velit quibusdam voluptatem dicta et.', 308);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (18, 'Est consectetur non cupiditate eum mollitia.', 45, 14, '2012-07-03 21:50:25', 'Dolor quam accusamus eaque quo et recusandae modi suscipit. Corrupti animi delectus sint quis voluptas omnis est consequatur. Possimus recusandae et quia.\nFuga iusto soluta ad est. Et non impedit exercitationem ipsum et. Vitae ut deleniti enim voluptates consequatur.', 360);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (19, 'Enim aut autem unde debitis.', 8, 11, '1982-11-10 17:17:52', 'Similique mollitia quam qui vel expedita repellendus. Consequuntur necessitatibus labore ipsum. Ut corrupti sit quia laboriosam. Eligendi quia iste doloribus quia qui atque magni.', 17);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (20, 'Ea provident cumque repellat quia vitae.', 32, 16, '2020-03-07 18:07:53', 'Tenetur debitis harum ut repellat iure sint itaque. Voluptatem dicta eveniet necessitatibus quae rerum rem tenetur. Similique excepturi et nobis.\nDolorum ut consequatur quod harum. Voluptatem quos qui voluptates aliquid vel vel. Aut facilis expedita iusto.', 185);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (21, 'Dolore aut quia enim fuga eius.', 41, 4, '1997-08-20 16:21:50', 'Ullam at qui delectus soluta voluptates fugiat. Atque odit veritatis ut minima velit ipsam atque dolore. Dolor est officia accusamus aliquid deleniti inventore mollitia. Ea officia at aut repellendus qui ex commodi nihil.', 149);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (22, 'Dignissimos ut reiciendis necessitatibus dolo', 6, 6, '1981-10-13 06:20:19', 'Quaerat adipisci non dolorum aut sunt. Quia eveniet alias labore id vel eos eius tenetur.\nDolorum eveniet a at laborum. Et inventore laudantium molestias dolorum. Quam velit reprehenderit ut aut. Illum maxime dolor nihil ea impedit dolor rerum cumque. Sed molestiae quisquam dolores totam.', 404);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (23, 'Quia labore nam dolores est veniam voluptatem', 16, 8, '2019-10-26 12:37:28', 'Est qui adipisci dolores cum asperiores. Eum odio voluptate ut illo cum qui totam.\nOdio eveniet sit error labore. Illo corporis culpa et sed autem. Fugit tenetur sint ex blanditiis perspiciatis enim.', 263);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (24, 'Qui vel qui beatae quidem aliquid reprehender', 28, 2, '2015-05-24 01:07:07', 'Impedit at atque pariatur vel dignissimos officia. Modi aliquam fugiat non quis ut in. Dolores magni voluptatibus quod ad.\nDebitis non excepturi necessitatibus deserunt. Optio accusantium nihil dicta officia ut quis ratione. Sint modi officiis temporibus deserunt dolor tenetur.', 496);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (25, 'Tempore error molestiae omnis dolor quas.', 22, 1, '1978-06-08 16:20:29', 'Qui dolores eaque dolores sint optio quis. Voluptatem quia quaerat eius dolor. Totam facere non impedit omnis qui. Et molestiae optio blanditiis debitis praesentium omnis.\nCum voluptatum non quibusdam corporis. Inventore commodi veniam aut labore. Eius ut dolores nisi laudantium necessitatibus.', 278);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (26, 'Laboriosam quia eveniet in hic aut maxime non', 42, 4, '1983-02-28 03:48:18', 'Qui laborum a voluptatum. Eius quod eum facilis eum alias.\nAut distinctio doloremque qui fuga id quos sunt. Et ipsa fuga dolor et at perspiciatis dolor. Nisi nam mollitia quam labore eaque. Error quis quia aut. Autem et quia inventore voluptates eligendi omnis.', 356);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (27, 'At commodi eum qui aut quos.', 37, 15, '1989-01-27 15:08:49', 'Rerum qui dolores a sed sint consequuntur dignissimos voluptatibus. Nostrum reiciendis pariatur omnis maxime est vel tempora. Dolores est laudantium vel occaecati delectus.', 386);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (28, 'Vitae cupiditate et tempore doloribus.', 18, 12, '2003-10-05 14:34:07', 'Iusto velit nihil sed explicabo aut. Iure dolorum aut quia odit. Vel culpa harum cumque accusantium est aut dolor.\nAut voluptas voluptate quo voluptate repudiandae iure. Illo minima aut laborum quia. Culpa ut quasi repudiandae in rem. Maiores natus eos dolorem enim ut iusto.', 228);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (29, 'Voluptatem commodi corporis ut ab mollitia.', 3, 15, '1980-05-17 18:23:07', 'Alias qui consequatur distinctio in quis voluptatem. Explicabo aut delectus et adipisci. Esse sit at enim recusandae.\nDolorem quod porro sit. Sed enim non illum. Neque blanditiis suscipit numquam excepturi iure voluptas. Cumque nihil id tenetur consequuntur officiis voluptatem.', 480);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (30, 'Quidem facere totam et voluptas sed culpa.', 5, 8, '1986-06-23 15:00:49', 'Temporibus quae dolorem velit debitis. Dolorum consequuntur omnis molestias dolor quibusdam cum. Recusandae officia voluptatem et sed totam molestias dolores. Dignissimos repudiandae atque aspernatur autem voluptatem quae quo ratione.', 358);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (31, 'Et eaque occaecati tenetur dolorum.', 23, 4, '1976-05-19 02:06:16', 'Quibusdam quis voluptates repellendus rerum reprehenderit. Asperiores autem quas eius omnis perferendis aut. Natus at nisi voluptatibus ut. Et omnis impedit corporis sit sint maxime atque. Nostrum soluta eveniet deserunt laudantium nisi.', 437);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (32, 'Et laudantium voluptatem ipsam porro aut volu', 38, 6, '1986-02-26 01:24:05', 'Est in nemo non fuga consequuntur sed quasi. Dolore dolorum et voluptatibus repudiandae sunt consequuntur. Error est ut dolorem accusantium.\nEst quia est blanditiis ab. Totam magnam quaerat nesciunt et. Eaque perspiciatis nisi nostrum et omnis quia. Amet quis et fugit ullam tempora saepe.', 78);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (33, 'Nostrum non recusandae repudiandae sed quis q', 29, 12, '1999-05-23 01:27:57', 'Optio est sed aut placeat eos. Dolor debitis incidunt itaque et impedit voluptatum similique omnis. Commodi adipisci quos non voluptatem.\nExercitationem exercitationem expedita velit quis. Optio at alias facilis dolor. Odit eligendi minus sunt quisquam aliquam cum.', 265);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (34, 'Quibusdam saepe neque sed ipsum quibusdam non', 5, 3, '1987-11-01 02:50:20', 'Optio quo officiis sit harum nisi. Quis aut iure odit sint rerum minima necessitatibus. Necessitatibus sint sint assumenda corporis qui facere.\nOmnis reiciendis est nam accusamus commodi ratione. Esse et deserunt eum sed iure cum dolorum.', 310);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (35, 'Nihil asperiores corporis omnis est est quide', 5, 12, '1972-06-05 04:25:23', 'Sit quae illo autem veniam facere quam. Officia velit aut saepe sunt. Et totam molestiae et at deserunt. Velit tempora illum quod autem hic velit.\nNesciunt et blanditiis nostrum quis molestiae sapiente. Et dolorem laudantium rerum ut id expedita quia. Laborum fugiat sed porro. Id quis a dolorem.', 323);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (36, 'Nostrum molestiae voluptatem ipsam consequunt', 32, 8, '1981-06-05 18:13:52', 'Qui dicta maiores aut. Inventore eos dolor et error est. Aliquam recusandae cumque eos sed. Vero quia velit eligendi et dignissimos.', 402);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (37, 'Officia rerum in distinctio est et qui.', 18, 3, '1984-04-03 10:59:50', 'Repellendus magni veritatis quia dolor nihil officia velit. Aut incidunt ipsum est similique. Autem consequatur nihil quam temporibus a. Ratione aperiam sit eos esse.', 254);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (38, 'Et corporis amet quos aliquid laboriosam aut.', 6, 10, '1996-11-26 23:28:42', 'Eveniet rerum id quos ea dignissimos sed. Saepe ipsam omnis accusamus reprehenderit quo asperiores numquam. Non iste consequuntur facere libero quos quo qui. Nulla facilis voluptatem officiis hic voluptas deserunt. Quo iusto eos autem maxime.', 46);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (39, 'Quisquam eveniet alias cum quasi quibusdam ea', 29, 11, '1982-02-18 14:54:18', 'Ut eum explicabo impedit quisquam rerum. Quae doloremque cum et iste ut veniam. Voluptate eveniet unde sed.\nMollitia cum animi quibusdam. Eaque et totam fuga. Voluptatem alias fugiat quibusdam aspernatur nulla voluptatum.', 416);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (40, 'Voluptatem saepe ut quia.', 27, 13, '2007-03-16 19:50:22', 'Sed aut architecto cumque et numquam alias. Ab nemo recusandae veritatis eius autem dolores. Suscipit voluptas at numquam optio error et explicabo. Amet voluptatum ducimus voluptas qui sit dolorem hic.', 100);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (41, 'Et fugiat commodi et magnam ea quibusdam.', 13, 2, '1977-02-09 05:23:39', 'Veritatis nihil repellat eligendi vero quis ex. Laborum maxime et aut qui. Qui aut veritatis minima aperiam.', 188);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (42, 'Ab recusandae excepturi sit eos quia ut expli', 6, 17, '1988-09-11 22:30:58', 'Voluptas repudiandae adipisci quae. Quia ducimus dolor occaecati ut odio. Dolor dolor tempora sint error perferendis.', 329);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (43, 'Aspernatur aut accusamus accusamus voluptate ', 14, 8, '1998-04-21 01:32:10', 'Vel nihil aliquam esse odio assumenda molestiae. Vero qui praesentium eos aut nulla eligendi in. Vero molestiae eum incidunt nulla est minima cupiditate.', 120);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (44, 'Est et eaque qui officiis.', 40, 10, '2013-09-03 03:42:44', 'Provident nisi minus cum nam qui. Ea doloribus maxime commodi debitis nemo. Fugiat dolorum vitae in sed. Magnam esse quod et iste nostrum necessitatibus nemo.\nVelit quas dolorum et maiores excepturi id. Voluptas culpa reprehenderit sint perferendis sed ut illum. Repellendus non voluptas at qui.', 182);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (45, 'Est quia impedit ratione quaerat pariatur duc', 21, 12, '2005-11-22 16:33:17', 'Corporis nihil sint molestiae maiores odit ut facere. In placeat in deleniti consequatur aut deleniti. Totam adipisci exercitationem in ex tempora magnam ullam. Laboriosam nihil ab aperiam et. Non dicta facere omnis quisquam tenetur cupiditate aut.', 458);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (46, 'Vero corporis modi officiis consectetur totam', 4, 4, '2001-06-12 14:59:30', 'Nisi ratione eligendi dolores perspiciatis nostrum porro. Delectus aut repellat qui deleniti adipisci omnis.\nEst adipisci ullam labore deleniti aut et. Non vitae eos officiis eos et. Amet repellat deleniti nobis cupiditate nihil dolore.', 153);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (47, 'Voluptatem nostrum facilis voluptatem repella', 44, 11, '2015-07-18 09:52:27', 'Quis architecto iusto molestias sit quas. Culpa voluptates enim voluptatem expedita consectetur repudiandae adipisci est. Ut necessitatibus ducimus est asperiores.', 211);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (48, 'Saepe ut consequuntur placeat quod cumque vel', 19, 14, '1982-07-13 12:52:01', 'Ut porro voluptatem voluptas velit. Voluptates dolorum sit iure modi cum rerum id.\nEa ea sunt doloremque. Ullam aliquam voluptatibus quia voluptatem eveniet eveniet maiores. Optio itaque quod laudantium voluptas molestiae. Deserunt tenetur magni ea itaque eum tempora.', 440);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (49, 'Qui aliquid odio corrupti placeat ut.', 24, 5, '1989-07-11 09:21:26', 'Voluptatem qui quia nemo. Dolores incidunt et est a sit tempora. Autem sed error commodi nisi officiis illum.\nNulla ut ut molestias itaque. Eaque est illo vel quia. Id quia maiores temporibus debitis doloribus dolores tempore voluptatem.', 198);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (50, 'Ea perspiciatis consectetur quas dicta fugit.', 15, 16, '1974-08-10 17:10:28', 'Amet voluptatum minima quam numquam nihil ea. Et quis et autem vel error qui et.\nDignissimos quia exercitationem corrupti qui harum ut. Hic dolores hic expedita voluptas est quasi. Aliquam eveniet ut dolorem.', 2);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (51, 'Dolor nemo sed id sequi.', 25, 20, '2020-12-16 09:42:57', 'Voluptas molestias rerum non qui. Assumenda recusandae dolores et accusantium iusto et nobis consequuntur. Debitis iure et labore voluptas minus.\nQuis vel hic et nulla corporis quae. Veritatis dolore et quod eveniet omnis. Maxime et et ducimus et praesentium dolor.', 36);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (52, 'Sapiente a voluptas laborum laborum.', 44, 3, '1984-08-24 08:11:16', 'Itaque voluptates omnis molestiae in ut rerum ut. Rerum a nihil ab totam fuga pariatur. Eum blanditiis quis voluptatem corporis dolor et nobis.\nEligendi delectus ea sint ad. Accusamus ipsam eius officiis voluptatem. Optio reprehenderit qui nobis beatae quo. Aut itaque quidem sint sed.', 449);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (53, 'Corporis unde enim qui molestiae dolore lauda', 27, 8, '2010-12-11 01:05:06', 'Quo sit saepe et fugit. Omnis harum iste omnis consequatur odio. Quisquam aliquam unde consequatur debitis expedita. Placeat placeat voluptate porro est.', 143);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (54, 'Quasi quisquam illum cum et.', 39, 4, '1983-10-08 23:20:05', 'Numquam neque perspiciatis hic earum error nesciunt inventore. Suscipit praesentium accusantium corporis et esse magni aspernatur ut. Vel recusandae temporibus vitae soluta nisi. Aspernatur in iure enim aperiam ullam aut.', 383);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (55, 'Doloribus dignissimos mollitia voluptatem mag', 7, 13, '2009-06-01 10:48:29', 'Voluptas sit sapiente deleniti aliquid soluta excepturi. Ad similique laboriosam mollitia nisi.\nQui distinctio dignissimos corrupti qui quia sunt expedita sunt. Iste et illo incidunt reiciendis laboriosam. Ut tempore quaerat consequatur. Minima et explicabo rerum harum voluptatibus commodi porro.', 163);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (56, 'Vitae aut consequatur aut rerum tempora.', 3, 14, '1970-03-15 15:09:01', 'Aspernatur vitae minus optio nihil rem repellendus quis. Aut nam temporibus voluptate quis quaerat nulla repellendus. In saepe autem aut ipsum. Laborum in omnis rem earum. Dicta autem magnam iusto quis.', 260);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (57, 'Eligendi et tempore repellat rerum et culpa.', 18, 11, '2003-06-17 12:45:26', 'Cumque doloribus eos ad accusamus. Tempore hic iusto voluptas et et aut. Quam quam ut dolorem deserunt.\nIpsa impedit omnis voluptatem ut. Iusto sed quaerat qui ut ullam ut.\nQuas est nulla blanditiis quis maxime eaque in corporis. Aut incidunt aut aut ut enim. Ducimus nulla voluptatem et.', 30);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (58, 'Veniam et sit voluptate sapiente perspiciatis', 39, 19, '2017-07-15 04:53:28', 'Natus consectetur deserunt odit fuga fuga voluptates porro. Libero labore officia qui occaecati. Beatae qui et sint id occaecati natus sint.\nAut blanditiis dolore ab vel atque architecto beatae. Quis veniam est quo maxime. Odit eos dolores sequi.', 357);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (59, 'Dolorem et aspernatur sequi quam voluptate in', 33, 8, '1994-12-28 02:46:29', 'Molestiae nihil qui mollitia atque sit. Id illum eligendi culpa laudantium harum. Quas maxime voluptatibus nemo voluptate sequi ut.', 470);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (60, 'Culpa sequi qui maxime enim in quaerat.', 3, 14, '1970-08-24 17:08:59', 'Nesciunt cum id voluptate voluptatum. Ut necessitatibus voluptate debitis voluptatem autem non. Tempore consequatur eum suscipit dolorem dolorem vero eligendi.\nEligendi consequatur a dolor aliquam. Quia labore ex quo quis velit est dolorum. Sunt qui itaque cum facere.', 348);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (61, 'Fuga repudiandae repellat esse.', 3, 4, '1997-05-02 10:44:46', 'Quia deserunt provident dicta perferendis corrupti maiores. Ea eligendi perspiciatis aut ut. Neque in vel libero consequuntur eos amet repellat adipisci.', 347);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (62, 'Ea consectetur voluptatem mollitia quas adipi', 6, 1, '2003-04-04 11:24:59', 'Facere et molestias et eum corrupti illo. Et eum nam sapiente dolor laudantium modi et. Et id in ea debitis. Repellat dolorem minus quas. Rerum sed officia laboriosam tempora.\nPlaceat soluta sequi omnis iure. Temporibus perspiciatis sunt ea qui qui accusamus. Cupiditate nam sit perspiciatis.', 404);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (63, 'Quam similique tenetur excepturi necessitatib', 1, 12, '1994-04-04 02:25:58', 'Sequi in aperiam laborum deleniti. Quo ut pariatur accusamus laudantium voluptas consequatur mollitia libero. Tenetur maxime voluptates autem minima est tempora quod. Cumque nam veniam ducimus.', 97);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (64, 'Qui iure aut reprehenderit eius.', 15, 7, '1999-06-12 03:01:51', 'Neque et deserunt minus nulla id. Corrupti ducimus occaecati minus at eaque vel accusantium accusantium. Ipsam natus sunt voluptas quo laborum non. Ipsa deleniti odio fuga voluptas mollitia delectus tempore. Architecto iusto ut sit minima.', 190);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (65, 'Pariatur est soluta dolorem reiciendis repell', 4, 10, '2003-08-26 21:39:33', 'Eius nisi necessitatibus eaque veritatis neque. Nobis animi error praesentium alias. Velit minima impedit non dolore quidem harum id temporibus. Aut sit et fugiat suscipit necessitatibus occaecati sequi.', 491);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (66, 'Voluptatem ipsa facere ea sed consequatur dol', 20, 10, '1972-03-27 23:44:41', 'Soluta cupiditate aut inventore ipsam non. Quos sed minima laboriosam quisquam. Eos vitae quae ut nostrum qui quis. Qui labore est quia odit vero molestiae rem aspernatur.', 324);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (67, 'Inventore ut molestiae est et consectetur vit', 46, 17, '2008-11-09 16:15:04', 'Nisi vel consequatur blanditiis excepturi illo vel. Illo facere nemo aut consequatur enim aut iste. Adipisci cum et aspernatur numquam autem.\nEa tempore incidunt assumenda. Quis pariatur ut quia. Est similique sit inventore veniam id eos est. Sunt rerum quam qui aliquam et assumenda.', 90);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (68, 'Eos veritatis est qui quibusdam consequatur.', 49, 13, '2018-11-11 19:42:07', 'Nihil asperiores in non sit ut ea molestiae. Qui reiciendis et iste dolores et qui. Iure labore non dolorem enim consequatur facilis id. Hic atque assumenda quis consectetur quo explicabo rerum error.', 42);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (69, 'Sed est voluptatibus laborum aut quibusdam.', 34, 6, '1999-09-17 19:19:05', 'Dolor iure commodi qui et ut. Eum illo ratione doloribus vitae. Rerum culpa ullam debitis eos.\nFugiat voluptates numquam vitae sequi ut ea. Occaecati sit aut ipsum natus sapiente est corporis. Eius omnis veniam ut amet quia esse.\nRerum iusto id et ullam. Quia mollitia hic consequatur modi qui.', 225);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (70, 'Explicabo nemo officiis sint.', 31, 7, '1977-08-13 06:07:18', 'Architecto voluptatem vel non tenetur et illum nesciunt. Consequatur laboriosam quia et deserunt dolores quo fugiat. Voluptatem modi reiciendis provident non et.', 57);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (71, 'Modi facilis facere vel qui quas harum conseq', 16, 8, '1992-12-30 08:42:03', 'Et possimus quo aut. Hic pariatur veniam tenetur quod. Saepe et ab et deserunt numquam.\nRecusandae id veritatis qui rem nihil. Sit inventore odit sapiente magnam fuga harum ea enim. Ut labore voluptatum sint quo quidem quia consequuntur. Ratione dolores harum iste occaecati quia.', 136);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (72, 'Occaecati rerum et fuga dolore aut.', 1, 10, '1990-10-30 15:58:34', 'Commodi beatae sit et sint et exercitationem. Voluptas vel veritatis corporis sint aliquid voluptatem. Dolor a saepe cupiditate at. Debitis officiis adipisci quia odit.\nDolorem ut non voluptatum ipsam et rem. Omnis ut eaque ipsum alias eum ut voluptas.', 150);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (73, 'Voluptas sunt autem optio quas consequuntur o', 41, 10, '1984-02-03 21:06:26', 'Sunt fuga illo voluptate sit earum cupiditate est. Impedit nemo excepturi enim quam explicabo. Ab amet repellat nam quo accusantium asperiores.', 428);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (74, 'Dolore blanditiis consequatur rerum quasi nos', 1, 16, '1977-04-18 16:19:40', 'Omnis et et dolores amet ea voluptatem quas amet. Voluptates explicabo sint eligendi. Autem velit nesciunt aut quis illo voluptatem in. Quas modi fugiat cum in est numquam inventore.', 90);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (75, 'Dolor dolores est deserunt nisi quo.', 20, 17, '2018-05-17 17:20:30', 'Totam adipisci enim nobis quia ad inventore. Cum iste ea et dolorum ex voluptate. Aut ut et tempora ut repellat asperiores sint. Dolore eum autem mollitia aut.', 317);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (76, 'Consequatur facere quia qui quod.', 19, 5, '1975-11-22 17:17:25', 'Culpa aspernatur aliquid fugiat deleniti officia est voluptatum non. Quidem maiores nam tempora nihil consequatur.\nPlaceat consequatur aliquam ratione esse. Qui a praesentium ullam. Iusto reiciendis sit natus inventore aut dolor voluptas.', 65);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (77, 'Earum exercitationem sed ratione.', 1, 3, '1991-12-14 22:48:41', 'Provident autem minima impedit. Ab veritatis a sit et modi. Dolores cum ipsa quaerat perspiciatis.\nId repellendus quasi eius ipsam amet dicta non. Laudantium nisi hic dolorem est. Qui sint vel enim consequatur labore in laudantium. Autem non et non vel sed animi.', 489);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (78, 'Sint eum doloremque explicabo in provident qu', 10, 3, '1996-07-15 13:05:41', 'Asperiores dolorem consequatur ut quia consequatur. Est quia dicta aspernatur aut hic et earum. Et et est enim non voluptatem.\nVoluptas quo perspiciatis nesciunt omnis velit vitae et. Laudantium sed itaque dolores exercitationem voluptatem ea. In temporibus animi voluptatibus nemo.', 297);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (79, 'Facere repellat omnis occaecati reprehenderit', 14, 16, '2005-02-09 06:25:36', 'Hic corporis doloribus aut quod soluta aperiam sit. Sed dolores voluptas in. Quo dolores provident necessitatibus.\nQuam dolores maiores doloribus eos. Quas non omnis ut rem ipsa laboriosam. Voluptate tempora iste tempore id corrupti.', 430);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (80, 'Quasi in repellendus fuga vitae voluptas quo ', 37, 9, '1999-12-31 04:04:32', 'Sit et qui nulla. Eum est similique et consectetur. Quia aperiam esse officiis rerum ut temporibus. Sit beatae voluptate iusto illum.\nVoluptas et aut vero velit unde nisi. Unde molestiae consequatur dolorem qui. Cupiditate corrupti distinctio iusto voluptas excepturi qui.', 85);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (81, 'Beatae vitae qui voluptatem expedita porro ut', 42, 15, '2006-03-21 22:50:17', 'Mollitia ea libero maiores veritatis sint. Eos id voluptate iure et voluptatum. Sint quas eos dolores eum consequatur illo incidunt. Magni est nostrum rerum architecto nulla.', 263);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (82, 'Ipsam ab distinctio qui labore ducimus quas d', 6, 15, '2006-09-27 03:12:43', 'Illo accusantium amet atque autem illo sit molestiae. Non natus voluptatem aperiam consequatur explicabo distinctio assumenda dolor. Quis dolorum consequatur officiis aut. Et nam molestias culpa odio nemo.', 499);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (83, 'Rerum excepturi et qui ducimus.', 21, 11, '2020-10-24 04:55:49', 'Quisquam voluptas non beatae. In nemo voluptas beatae sint aut sed voluptatem. Odit doloremque vel beatae.', 241);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (84, 'Totam qui velit adipisci reiciendis explicabo', 14, 11, '2015-08-29 16:01:14', 'Eaque occaecati voluptatum voluptas illum sit voluptas excepturi. Qui ullam sit et et. Assumenda pariatur natus sed impedit. Ut et quia at pariatur tempore.', 134);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (85, 'Tempora unde reprehenderit illum natus dignis', 23, 19, '1976-03-24 01:48:27', 'Nulla qui hic repellendus accusantium. Aperiam et ullam laborum aspernatur ratione quis voluptatem. Sed saepe et placeat rerum repellat. Fugit et quis omnis. Minus impedit assumenda rem minima omnis et expedita.', 58);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (86, 'Sed consequatur corrupti molestiae non volupt', 4, 6, '2003-11-10 05:55:01', 'Eligendi alias at et qui vel. Assumenda facilis rerum ut molestiae delectus ullam. Incidunt aut omnis dolorem ullam. Qui excepturi quis fugiat quia corrupti qui. Inventore ipsam qui totam rem iure cumque velit numquam.', 176);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (87, 'Consequatur hic doloribus est impedit et inci', 11, 7, '1988-12-28 20:39:11', 'Ut totam quasi et quia dolor nulla suscipit enim. Dignissimos similique excepturi enim quae commodi. Velit quia ut rerum sequi iste porro.', 248);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (88, 'Placeat voluptatem maxime et non voluptatibus', 9, 10, '2017-11-13 15:20:54', 'Cupiditate dolor nostrum cupiditate molestiae. Neque eius sit quos temporibus et et. Deserunt rem id quam ut est. Eius laudantium velit quo soluta quod placeat.', 302);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (89, 'Consequatur quis fugit quia sit corrupti impe', 39, 16, '1970-01-26 07:26:29', 'Omnis in quis fugit exercitationem maiores suscipit et et. Amet deleniti autem at nihil. Nam deleniti laboriosam aut dolorum velit incidunt nostrum.\nImpedit voluptates ut quam vitae. Ab quo ut dolor error iusto. Aliquam laborum assumenda repellat eaque minus et. Neque labore ab error.', 195);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (90, 'Saepe nostrum voluptatem nesciunt doloremque ', 32, 10, '2002-07-29 21:02:08', 'Fugiat vel temporibus nobis voluptates eos et temporibus. Quo quisquam placeat praesentium suscipit suscipit consequatur. Enim natus molestiae quia molestiae modi omnis saepe est.', 399);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (91, 'Cum natus soluta provident hic error recusand', 41, 7, '2011-06-07 02:35:51', 'Ipsum quaerat fuga voluptatem ipsa deleniti. Eos sint fugit harum sit harum ut et. Omnis consectetur ea ut quae.\nVoluptatibus consequuntur reiciendis consequatur quo aliquam. Illo delectus debitis autem. Exercitationem et rerum itaque reprehenderit.', 258);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (92, 'Ut sit quaerat voluptate harum voluptas corru', 17, 9, '2010-09-13 14:43:59', 'Praesentium ipsam explicabo enim sit beatae et quod. Adipisci suscipit iure iure qui nulla fuga. Eum est a quaerat quia sit iusto at.', 120);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (93, 'Enim error vitae unde voluptatem fugit et exp', 17, 17, '2006-02-17 04:43:21', 'Quia rerum repudiandae quibusdam. Quibusdam animi aut perspiciatis vel et maiores est. Ipsa et non earum vel.\nSint ipsum molestiae numquam ipsa eum qui ut. Dolores eius mollitia impedit provident facere ex rerum omnis. Non cum fuga odit tempora nam ad.', 388);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (94, 'Sed doloremque ea officia praesentium iusto a', 41, 3, '1980-08-20 23:01:25', 'Accusantium eligendi consectetur ratione voluptas ea harum. Sit natus cumque id est doloremque quo sint. Suscipit voluptas ipsam voluptates consequatur.', 159);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (95, 'Nesciunt et dolores sed repudiandae quaerat i', 4, 11, '1997-07-16 06:14:02', 'Consequuntur labore quis dolorem nihil consequatur tempora. Neque veritatis non corrupti praesentium quo recusandae. Minima corrupti magni est sed ipsa odit. Saepe omnis ex enim quia dolorem. Unde vel repellendus labore.', 121);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (96, 'Eligendi maxime non dolor corrupti quia.', 10, 13, '2007-02-09 14:22:10', 'Aut sunt ipsam minus dolores deserunt accusamus et. Id similique voluptatibus repellendus. Doloribus atque sunt aut labore.', 267);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (97, 'Qui quia corporis ab dolore quod.', 27, 17, '1981-03-04 02:55:04', 'Commodi dolore molestiae cumque blanditiis deserunt. Dignissimos blanditiis aut ut rerum qui alias omnis. Molestiae autem consequuntur deserunt qui modi. Aut ab dolore quo et error qui. Ducimus enim dolores et.', 418);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (98, 'Vitae error sed et nam molestiae.', 2, 1, '2005-03-18 05:39:29', 'Aspernatur accusantium reiciendis asperiores delectus. Deserunt perspiciatis nemo iure sunt voluptatem laboriosam natus. Voluptatum eum corrupti facilis ea suscipit eligendi aut. Ullam blanditiis pariatur non voluptatem. Excepturi voluptatibus autem voluptatem quo.', 166);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (99, 'Eos porro ea labore minus id eligendi dolores', 32, 16, '1974-02-03 21:28:14', 'Et ipsa delectus perspiciatis voluptate. Dolorum sit a voluptate aut molestiae. Hic vero omnis provident quia.\nDolor dolorem possimus ipsum ut veritatis. Vitae et ratione aliquam rerum optio. Non aut pariatur cum ab saepe culpa.', 50);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (100, 'Qui molestiae ut dignissimos recusandae.', 2, 9, '2000-05-06 12:46:45', 'Itaque sed quae vitae quidem est veritatis cum. Et hic explicabo et mollitia maxime nobis ducimus. Exercitationem asperiores nobis reprehenderit magnam consequatur qui qui repellat.', 297);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (101, 'Iusto exercitationem unde incidunt sint tempo', 41, 5, '1977-08-29 05:31:24', 'Ut fuga asperiores asperiores eum alias consequatur sed molestias. Laboriosam laborum dolorum nobis voluptates.\nIllo eum enim fugit et voluptatum voluptas soluta blanditiis. Vero ea labore ut saepe magnam. Id neque qui provident modi consequatur recusandae minus. Dolores tenetur voluptatem id aut.', 462);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (102, 'Voluptas enim nemo eum eum.', 17, 11, '1999-05-13 19:27:54', 'Aut enim aspernatur quo dolores delectus aut quia possimus. Ad quisquam commodi vero qui sint. Exercitationem similique in quia omnis.\nVelit aut ad maxime adipisci mollitia. Recusandae eum numquam rem. Pariatur corporis voluptate dolorem delectus porro. Et nihil fugiat iusto non omnis.', 180);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (103, 'Est et facilis in quidem occaecati.', 29, 18, '1975-06-12 10:23:39', 'Reiciendis rerum nesciunt assumenda sed. Quaerat expedita iure expedita enim.', 101);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (104, 'Dolores quis voluptatem est fuga dolore.', 18, 14, '2005-05-04 07:47:56', 'Dolorem et totam voluptas nostrum ut omnis. Nemo est eum pariatur eos impedit.\nVelit similique fugit et sed. Qui optio a nihil id et facere rerum. Odio alias nemo omnis porro sit.', 153);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (105, 'Temporibus voluptas ab laboriosam fugiat quib', 34, 15, '1982-03-16 16:09:25', 'Sint quos id natus aut nostrum voluptatem. Ut vero ut rerum reprehenderit. Cumque voluptas vel quos.\nVoluptatibus minus rerum aperiam ad quis. Accusantium in iusto possimus rerum quasi. Est distinctio nisi voluptatem omnis incidunt.', 426);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (106, 'Sint laborum nihil quo delectus sunt labore.', 46, 19, '1983-04-18 08:28:35', 'Voluptas optio inventore hic nihil facere eos. Rem minima rem veniam fugit. Voluptatem odit ut non eveniet exercitationem modi et. Quos sunt voluptates quo eos minus aut. Dolorem veniam accusantium fugit est autem.', 236);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (107, 'Sequi nam sint maxime est nisi praesentium ip', 22, 10, '1982-12-27 20:12:41', 'Quisquam illum labore quibusdam debitis. Animi reprehenderit inventore dignissimos et qui iure veniam. Officia voluptates tenetur quo cupiditate non nihil.\nAssumenda amet mollitia eligendi perferendis non minima. Numquam vel consectetur reiciendis corporis.', 148);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (108, 'Similique nihil occaecati aliquid porro qui.', 14, 10, '1981-08-18 18:16:14', 'Ad aut aperiam adipisci distinctio perferendis placeat natus. Molestias aut iusto excepturi fuga dolore error. Hic et earum minima autem. Perferendis inventore nihil quas illum dolores.', 150);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (109, 'Molestiae iure ea est corrupti non vero moles', 31, 3, '1997-05-05 02:23:05', 'Cupiditate quae consequatur minus porro. Dolorem id ipsum iusto nam odit rerum itaque. Molestias occaecati vero laborum ad aut. Laborum voluptatibus enim quia asperiores animi ea pariatur.', 38);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (110, 'Voluptates vel sed sequi hic eum et molestiae', 36, 3, '1984-05-14 01:47:30', 'Exercitationem nostrum alias qui tenetur sit veritatis facilis. Libero dolor voluptate quis voluptatem nostrum quidem. Non sed ut enim nulla non veniam cum itaque.', 243);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (111, 'Voluptates ab dolorem excepturi consequuntur ', 15, 20, '1971-05-25 08:49:49', 'Aut vel incidunt nisi incidunt. In exercitationem voluptatem beatae placeat consequatur. Perspiciatis alias saepe laborum aut a eos fugiat et.\nEst illum debitis repellendus cupiditate. Earum iste enim nulla. Sit mollitia hic aut harum dignissimos a modi tempora.', 348);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (112, 'Dignissimos rerum blanditiis et odio nesciunt', 11, 6, '1993-11-03 09:18:54', 'Possimus similique porro incidunt est expedita. Sint quis aspernatur voluptates hic sunt. Magnam sed rerum molestiae ipsum. Autem velit ut quaerat enim itaque.', 116);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (113, 'Dolorem id et est nihil.', 29, 18, '1981-07-12 01:20:38', 'Natus quam in ut quia in ut. Est ducimus laudantium pariatur modi accusamus nam. Aliquam inventore fuga non ea maiores.\nVoluptas et voluptate eum. Sit eos assumenda quibusdam cumque. Tempore aspernatur nulla amet. Consequatur id sequi excepturi laborum aut officia sit.', 45);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (114, 'Aliquid qui dolore veritatis et.', 39, 5, '1976-09-19 20:12:30', 'Quibusdam itaque eveniet id voluptatibus mollitia dolorem aut. Suscipit illum expedita autem temporibus est et quia. A placeat natus aut velit aut nesciunt et tempore. Odit rerum veritatis qui in.\nId nostrum ipsum ipsa aut. Et qui fugit qui maiores.', 375);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (115, 'Veritatis fuga dolores quia.', 5, 18, '1982-12-07 17:12:28', 'Delectus autem cum et dolores dolores neque vero. Dicta reiciendis ad laborum tempora fugiat incidunt animi. A id laborum vel iusto.', 241);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (116, 'Illo consequatur odit quos id.', 47, 16, '1988-12-29 23:33:54', 'Vero et deserunt a delectus sit. Aspernatur et vel omnis sed. Quos dolorem assumenda hic sapiente dicta sed sed.', 198);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (117, 'Consequatur aut omnis rerum et blanditiis com', 21, 5, '2001-10-29 07:53:43', 'Molestias nemo vel incidunt quis dolores dolore. Voluptate nemo a consequuntur alias est. Autem et ratione sint suscipit.\nPariatur eos aperiam reprehenderit voluptatem ullam. Fugit nihil alias omnis ex. Est rerum et aut inventore deserunt earum.', 423);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (118, 'Adipisci excepturi officiis aperiam velit cor', 36, 10, '2005-04-16 18:24:53', 'Aut quia et aspernatur enim. In quibusdam ratione dolorem velit magni. Dolore voluptatem eos repellat et occaecati.', 163);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (119, 'Aut occaecati et neque consequatur.', 1, 2, '1981-12-29 07:04:05', 'Dolorem ut impedit dolorem ut. Natus itaque et sit aut. Molestiae sequi maiores non perspiciatis placeat quas. Culpa ratione aut beatae distinctio voluptas eos velit suscipit. Libero repellendus quaerat consectetur deleniti.', 219);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (120, 'Hic dolore illo non aliquam accusamus fugit.', 4, 16, '1984-09-18 18:39:46', 'Nesciunt sed velit labore libero et mollitia necessitatibus doloribus. Nisi quae atque aut aut.\nVoluptatem impedit aut distinctio praesentium. Error odit quas doloremque fuga qui nemo commodi. Numquam officia dolor corrupti officiis omnis unde.', 285);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (121, 'Dicta corporis quibusdam rerum eos soluta off', 29, 2, '2016-05-11 05:51:32', 'Dignissimos distinctio omnis animi atque deleniti labore ut. Est quam aliquid et eius ab pariatur. Corrupti facilis qui distinctio magni odio autem beatae enim. Dicta non modi molestiae.\nEx quia repellendus dolores. Molestiae sit aperiam unde odit. Magnam qui id minus est.', 260);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (122, 'Dicta omnis est voluptatem consequatur ut inc', 13, 7, '1977-05-04 11:37:48', 'Similique qui itaque omnis natus culpa sunt soluta. Ut dolores sunt modi quis sint. Reprehenderit porro sed laborum accusantium. Neque sequi quam sit nisi. Et cum eius et.', 402);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (123, 'Eaque et aut quidem voluptas.', 25, 18, '2003-05-21 04:01:02', 'Velit et dicta qui quia corrupti. Nobis velit maiores earum doloribus et assumenda laudantium.\nAut nemo ducimus qui. Fugit culpa omnis velit itaque. Quaerat rerum et iure molestias earum veniam. Est fugiat ducimus culpa in minus voluptatibus.', 330);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (124, 'Maxime placeat exercitationem sapiente harum ', 29, 14, '2017-06-04 12:50:15', 'Consequatur itaque iusto sint provident excepturi. Aut nulla culpa hic facilis. Animi molestias dolorem iusto corporis vero ut ut. Eligendi harum consequatur laudantium recusandae porro at dolorem.', 431);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (125, 'Necessitatibus in saepe omnis sunt voluptatib', 17, 16, '2009-01-05 11:02:06', 'Hic fugit temporibus doloribus non. Temporibus sed vitae repellat et enim. Quasi sequi sit nostrum rerum doloremque consectetur quibusdam. Repellat dolores aut veritatis neque est.', 364);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (126, 'Quasi non et rem reprehenderit ad aut consequ', 41, 14, '2006-08-27 16:05:22', 'In temporibus optio culpa explicabo quis est. Quidem blanditiis exercitationem distinctio dicta quasi repudiandae. Dolores ipsa quas exercitationem et blanditiis. Sequi cum non similique sint cupiditate temporibus quia non.', 250);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (127, 'Rerum quia quae aliquam voluptas accusantium ', 11, 3, '2020-07-28 20:25:55', 'Dolorem beatae expedita consequatur esse. Non facere voluptatem quia consequatur velit eos quos laboriosam. Eum nemo qui doloribus.\nConsequatur similique commodi voluptas et sed eaque. Temporibus ut incidunt placeat quasi. Molestiae tenetur doloribus cum et ut quibusdam fuga assumenda.', 356);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (128, 'Amet non aperiam maxime quibusdam cum.', 3, 17, '2010-09-24 03:42:56', 'Eos in laborum deserunt eligendi voluptatem sequi. Aperiam rerum laboriosam quia ut et rerum tempore libero. Repellendus veritatis autem incidunt quia. Deleniti repellendus quod voluptate corporis corrupti. Dolorum rerum id consequatur quo ut adipisci.', 98);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (129, 'Porro eum earum excepturi quidem harum maiore', 19, 17, '1996-04-08 10:38:23', 'Sit ut accusantium ea corporis. Est et omnis distinctio voluptas earum. Libero vel animi consequuntur doloribus laborum. Quia quaerat veritatis sunt magnam. Et ex temporibus voluptatibus deserunt dolor dignissimos sit.', 142);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (130, 'Expedita consequatur et dolores cumque optio ', 41, 18, '2009-11-13 02:19:51', 'Officia odit deleniti ea doloribus. Ex error quam atque cumque qui nihil et. Qui iste quidem voluptatem minima tempore velit saepe.', 39);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (131, 'Nostrum delectus ea mollitia reprehenderit vo', 19, 10, '1996-11-25 13:06:48', 'Expedita voluptas unde unde. Natus est repudiandae sequi accusamus ut in. Voluptatem temporibus dolor quasi odit.', 84);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (132, 'Incidunt at sit consectetur similique volupta', 45, 15, '2005-08-14 07:44:11', 'Vel dolores pariatur porro. Impedit tempore laudantium assumenda officia. In sed nihil natus omnis. Error nihil neque neque alias est eum. Aut quis asperiores natus quo laboriosam praesentium.', 239);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (133, 'Impedit repudiandae magnam non aliquam aut no', 36, 5, '2020-02-23 06:24:33', 'Architecto delectus vel dolorem corporis et est omnis. Expedita reiciendis voluptatibus corporis. Quasi aliquam consequatur in labore aut. Numquam et saepe molestiae nostrum ducimus.', 183);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (134, 'Repellendus quis nihil et cumque doloribus vo', 18, 16, '2009-08-18 17:38:27', 'Id dolorem id sed ut. Recusandae et exercitationem iusto culpa eius voluptatem accusamus. Occaecati quaerat error ea fugit enim repellendus.\nDucimus consectetur et qui. Debitis accusantium accusantium quibusdam quo dolores animi dolores.', 17);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (135, 'Voluptates voluptas aut voluptatum eveniet fu', 12, 3, '2007-12-03 21:28:23', 'Occaecati et maxime modi quo adipisci quae natus. Commodi molestiae unde omnis rerum id pariatur. Quod est sed numquam adipisci ea illum quae sed.', 395);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (136, 'Aut nobis a repudiandae et eum ex mollitia.', 48, 19, '1992-04-22 20:40:28', 'Dolorem ratione tenetur quibusdam quam deserunt assumenda iusto. Dolores animi quisquam quia voluptas aperiam consequatur ut sit.', 241);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (137, 'Vero rerum quia voluptas sit delectus dolor.', 23, 3, '1988-12-16 04:54:13', 'Quidem sequi expedita quia iure mollitia. Consectetur reprehenderit sed deserunt omnis aliquid aut minima. Beatae dolor at dolorum sit maxime maxime dolores tempora. Rerum cum placeat voluptas sed itaque.', 291);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (138, 'Explicabo expedita voluptatem fuga adipisci n', 8, 4, '1971-03-17 22:29:14', 'Sapiente autem qui tempore. Consequatur ducimus omnis culpa maiores repudiandae et quia. Et et sint amet dolorem commodi dolores consequatur nemo. Aut quibusdam est placeat voluptatem.\nEst placeat voluptas quis. Fuga earum deleniti similique qui deserunt mollitia libero.', 193);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (139, 'Est aut optio quaerat rem.', 18, 11, '1995-07-24 06:33:53', 'Amet unde consequatur sit velit fuga est voluptates. Quaerat et voluptatum laborum voluptatibus aut quis vitae. Sed rerum quis cumque magnam quam. Assumenda sint ut tempora et voluptatem.\nSuscipit at ex explicabo illum cum vel. Ea qui dolorem dolore aut fugit. Eaque non aliquid omnis.', 97);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (140, 'Molestiae commodi quisquam maxime et.', 32, 8, '1980-12-16 08:39:50', 'Sed quos dolores porro quos enim. Et quis maiores dignissimos eligendi. Magni sit dicta nam ut recusandae dolorem. Veniam dicta ut qui soluta omnis voluptas vero.', 41);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (141, 'Aut omnis assumenda veritatis numquam invento', 36, 15, '1998-01-09 04:37:17', 'Fugit ab aut accusantium alias. Non autem aut minus et quisquam consequatur quia accusamus. Quaerat perferendis maiores vitae dolores dignissimos et. Quibusdam dicta quasi ut unde nesciunt rerum. Non nam ratione alias pariatur odit laudantium deserunt.', 266);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (142, 'Voluptatum asperiores dicta qui.', 44, 13, '2013-08-06 20:42:27', 'Qui quasi magni est id ratione quia voluptate. Voluptatem iste eius nisi qui.\nSit eveniet perferendis architecto reiciendis vel. Dolores architecto voluptatum et sit quo fugiat ullam. Harum rem voluptas dolorem rerum modi voluptates.', 121);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (143, 'Ut dolor ut numquam quia.', 18, 7, '2000-01-23 18:31:20', 'Alias numquam earum aut ab. Reprehenderit praesentium quam temporibus velit eius qui labore. Molestiae consequatur enim consequatur ad ut ut.\nSunt provident qui vel aut deleniti itaque. Dolores doloribus consectetur omnis sit ex.', 222);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (144, 'Cupiditate esse ullam aut maxime facere.', 37, 14, '1993-04-11 13:41:18', 'Sint eligendi molestias deserunt quasi fugiat recusandae ad. Quasi unde modi qui ut at. At voluptatem reiciendis impedit sint dolorem laboriosam. Voluptas sint est nobis blanditiis voluptas architecto cupiditate molestiae.', 111);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (145, 'Consequatur ut omnis vitae tempore aperiam id', 38, 19, '2006-09-22 14:40:51', 'Molestiae molestiae natus harum vel perferendis. Non consequatur atque deserunt minima fugiat sint. Rem laudantium inventore laborum.', 164);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (146, 'At voluptates voluptas consequatur facere dol', 28, 18, '2004-03-02 09:40:45', 'Et incidunt placeat rerum. Recusandae non autem ut quam voluptas molestiae. Dolore qui quis quod. Culpa qui hic et occaecati inventore.\nNihil quas excepturi nostrum quidem iure omnis. Qui temporibus id porro nostrum. Ut qui tenetur quia voluptatibus nemo corrupti ipsa consectetur.', 121);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (147, 'Qui eveniet et cum est inventore voluptates.', 2, 7, '2004-02-15 22:23:58', 'Quas nam adipisci asperiores. Et aut possimus unde voluptatibus. Et tempora architecto consequatur ipsa. Aut numquam veritatis pariatur dolor voluptas culpa.\nEaque quis corporis labore. Assumenda a tempora id voluptas distinctio.', 180);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (148, 'Pariatur eum aut iure officia.', 31, 10, '1996-09-06 04:21:08', 'Ut rerum sapiente ipsa sit ipsam saepe. Et voluptatem quis vel voluptatum ut. Facere vero atque deleniti repudiandae architecto voluptas voluptatibus esse. Et blanditiis quasi nam laudantium architecto. Velit quo possimus quia sequi commodi eum ipsum.', 264);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (149, 'Inventore nemo et voluptas placeat.', 50, 17, '1993-11-03 18:06:46', 'Recusandae qui quia rerum voluptatem minus architecto minus. Occaecati dolore eum enim laudantium. Tenetur aliquam magni non numquam non tempore. Velit accusamus commodi vel quasi est enim ut.', 34);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (150, 'Nostrum sint sit minima laboriosam minima.', 10, 10, '2014-03-07 22:22:40', 'Ipsam cupiditate sit temporibus et itaque molestiae aliquid. Vel nihil et in voluptatem sint sed. Autem sit quidem atque cupiditate amet. Voluptas excepturi et voluptas.', 209);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (151, 'Qui alias ipsam dignissimos ullam cum.', 14, 4, '1972-02-04 15:41:45', 'Inventore dicta laboriosam quia quaerat non. Architecto odio consequatur sunt non praesentium eius non. Tenetur cum maiores id similique veritatis velit animi. Qui illo voluptas quas quis minus porro. Placeat molestias alias esse blanditiis dolor aut aut.', 73);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (152, 'Sit maxime nostrum accusamus facilis voluptat', 40, 1, '2002-09-08 07:47:09', 'Voluptatibus ratione et quia qui similique quibusdam illo. Non maxime et facere ullam aliquam tenetur. Iusto ratione corrupti ad ratione debitis. Voluptatem ut fuga molestias quas dolorem explicabo magnam.', 387);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (153, 'Suscipit eaque animi quod dolores cum corrupt', 2, 9, '1992-05-11 01:46:07', 'Excepturi omnis nisi dolores qui est dolorem omnis. Consequatur nam id consectetur deleniti rerum a dolor fuga. Ut reiciendis ut quae maiores harum aliquid dolores. Rem inventore numquam nobis nihil.', 52);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (154, 'Quas impedit possimus facere dolorem.', 25, 3, '2002-07-03 16:08:44', 'Debitis et qui itaque. Maiores est est nihil sint adipisci eum ab. Et cum quia et recusandae fugiat tempora voluptatem.\nCupiditate non mollitia et. Quisquam tempore omnis dolorem dolores. Explicabo quo qui inventore amet aut et praesentium.', 396);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (155, 'Enim fugiat tenetur ut quia reiciendis exerci', 36, 18, '2002-05-20 07:25:48', 'Incidunt et cumque qui dignissimos necessitatibus. Ullam et et vero tempora quibusdam quibusdam voluptas. Est minima aut rem quo quo. Delectus aliquid porro sunt molestiae dolor voluptates.', 351);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (156, 'Ut quis aliquid voluptatem.', 2, 9, '1997-05-16 13:05:34', 'Laborum doloribus maxime laudantium voluptatibus nesciunt sed. Consectetur unde ipsa ipsam quo quod incidunt optio. Veritatis inventore voluptatem qui voluptas qui.', 280);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (157, 'Et harum tenetur omnis reprehenderit ex corpo', 14, 9, '2009-06-14 20:21:08', 'Quo esse soluta non unde natus ut exercitationem. Debitis tenetur magni excepturi aut velit iusto aut. Quasi cumque laudantium aut ut qui adipisci voluptatem. Vel omnis quia qui totam.', 432);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (158, 'Veritatis explicabo aspernatur aut nisi tenet', 32, 1, '2005-07-14 00:51:58', 'Magnam ut atque voluptas vel labore sed. Sit id non aspernatur non eveniet.\nNostrum accusantium aperiam voluptatem voluptatem mollitia error id. Velit repellat quis doloribus ut ut.', 164);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (159, 'Est unde sunt officiis ad.', 8, 1, '1992-05-11 11:04:00', 'Atque ut voluptas ut dolorem. Aut enim veniam dolor eos dolore tempore et. Veritatis sit et qui numquam nostrum. Omnis qui debitis labore amet recusandae.', 73);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (160, 'Maxime omnis odio illum deleniti et.', 12, 5, '1973-04-12 09:37:26', 'Aut nostrum ut ullam dolores consequatur sed. Alias earum et amet assumenda. Alias ex voluptate blanditiis accusantium eum. Quaerat est error expedita nostrum. Eos quisquam et ut.', 300);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (161, 'Maxime officiis est omnis veritatis tenetur p', 32, 10, '1979-02-21 16:09:39', 'Et nemo soluta aut odit debitis laudantium mollitia. Explicabo occaecati voluptas totam quia eum incidunt sed. Quibusdam optio quibusdam est quibusdam minima deserunt earum. Illo veniam soluta nulla ipsam sint quo facere.', 383);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (162, 'Omnis dolores placeat hic.', 40, 6, '2019-04-19 12:23:23', 'Delectus tenetur inventore non nobis adipisci voluptatem a. Labore nulla rerum ut minus sed est. Eaque deserunt voluptatum laudantium consequatur sunt.\nFugit in assumenda incidunt id. Aut nam eligendi et ut qui. Id doloribus nihil quos.', 407);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (163, 'Cupiditate veniam qui et iusto facere.', 28, 7, '1993-05-09 23:45:57', 'Rerum accusamus cum qui amet. Accusantium rerum vel voluptatem ipsam porro et. Hic eos unde natus esse. Omnis dolore omnis qui vitae velit.\nReprehenderit maxime et qui. Consequatur ea ut sit eum similique officia. Ipsam minima quo et ut molestiae aperiam itaque.', 108);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (164, 'Sint occaecati rerum odio dignissimos labore ', 34, 16, '2015-05-07 09:05:55', 'Vitae porro eos aut consectetur. Tenetur dolores quidem esse dolores nemo consequatur quo. Ut quia sit error ducimus velit voluptate esse error. Eum omnis consectetur repellendus vero sed pariatur.', 169);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (165, 'Maiores minima ex similique quam.', 23, 10, '1991-03-17 11:14:56', 'Rerum est sit recusandae sint architecto. Placeat unde occaecati sit voluptatibus consequuntur ducimus adipisci quam. Non tempore necessitatibus at fugit iste optio. Sed omnis nihil fugit earum.', 108);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (166, 'Molestiae beatae tempora corporis sed.', 8, 11, '1975-07-12 06:42:09', 'Neque voluptatibus rem vero corporis. Accusamus esse sequi expedita voluptas. Nihil enim incidunt vero ex. Vero esse incidunt odit beatae a consectetur qui.', 318);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (167, 'Fuga ut provident vel.', 36, 16, '2000-08-31 06:55:28', 'At ea eum enim quas. Eaque magni ex dolorem explicabo aut ut. Ut alias sit quo tenetur animi. Voluptas aspernatur ipsam ut voluptas illo ducimus ut.\nConsequatur qui expedita quaerat exercitationem sit ea. Voluptatum omnis error iure illum iste. Atque perspiciatis odit molestias eveniet optio.', 40);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (168, 'Error a qui ut beatae omnis.', 29, 9, '1999-11-17 14:31:49', 'Molestiae nihil facere quidem numquam soluta illum. Iste eaque sed et commodi deleniti.\nNulla dolor et accusantium eos. Soluta aut voluptate et aut reprehenderit. Et nam voluptatem unde. Sed quia quia ut molestiae vel.', 64);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (169, 'Animi sit magni sunt ut doloremque non quo.', 46, 12, '1997-06-11 23:31:23', 'Facilis quisquam et fugiat consectetur asperiores qui. Veniam illo eaque sit molestias voluptatem omnis vel. Dolorum quae totam dolore. Perspiciatis non pariatur consequatur nemo laborum quidem dolor. Odit veritatis accusamus possimus modi aut ut.', 82);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (170, 'Deleniti hic velit et provident vitae.', 3, 17, '2006-08-16 02:51:51', 'Excepturi architecto sunt non ratione architecto fugit. Totam id qui dolor enim magnam aut voluptatem laudantium. Quia officiis consectetur error et.', 193);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (171, 'Quisquam a illum sed aspernatur.', 33, 9, '1996-12-31 08:52:46', 'Nihil aut odio mollitia voluptatem molestias tempore. Qui dolor itaque ut placeat quae dolor fugit. Perspiciatis doloribus sed enim eligendi eum impedit illo. Perspiciatis accusantium dolore nihil autem.', 435);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (172, 'Nemo occaecati ipsum enim.', 21, 5, '1988-08-01 17:52:08', 'Iste sint libero rerum voluptas tempora. Voluptatem nesciunt qui sunt qui dolores porro. Ipsa ex dolores nam provident.\nVoluptas vel voluptatem sit eligendi quis enim reiciendis. Eum quasi nostrum laborum sunt consequatur in qui. Consequatur sit aliquid reiciendis sint ut aut.', 75);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (173, 'Consequuntur a et pariatur sit quis earum omn', 12, 16, '1999-02-05 16:55:34', 'Porro autem rerum tempore est. Id consequatur tempore voluptas unde doloribus ab. Et maiores quod corrupti cum earum. Quas dolorem ea itaque et accusantium assumenda ut.', 234);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (174, 'Sint qui aut fugit culpa pariatur.', 22, 9, '1974-10-18 19:09:52', 'Officiis dolorum voluptatem error provident ipsam in harum. Eaque velit sit amet ab amet. Reiciendis vel dolorem possimus omnis ut dignissimos. Et rerum non maiores veritatis in nulla.', 134);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (175, 'Ut eos iste autem excepturi ea libero in.', 39, 18, '1977-05-08 00:44:57', 'Repellat nemo inventore sed perferendis est suscipit. Eum excepturi eos aut sed omnis cum. Neque aut animi dolor qui adipisci velit.\nNecessitatibus tempora ut facilis aut. Modi deleniti est dolores non vitae. Facilis delectus nihil qui voluptas. Voluptatem error laboriosam a aut sit.', 383);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (176, 'Et vel sit ut nam hic odit sit.', 50, 2, '2013-05-05 13:56:05', 'Et voluptatem tempore velit accusantium. Iste molestiae vitae maiores occaecati laborum et. Voluptatibus molestiae nihil quod perspiciatis provident ut. Optio aut neque adipisci quos.', 148);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (177, 'Sapiente cumque voluptatem accusantium dolore', 32, 16, '1995-06-15 15:57:59', 'Non enim cum similique veritatis inventore. Iure architecto maiores soluta nam. Nulla blanditiis aut saepe nesciunt tempora minima.\nTemporibus enim rerum ut et. Nulla qui quo ut. Eos omnis porro et est culpa aut qui veritatis.', 47);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (178, 'Maxime perspiciatis laudantium mollitia volup', 36, 7, '1972-08-29 11:52:58', 'Voluptatum distinctio modi ut autem. Sit tenetur quo et expedita maxime. Possimus rerum et labore id quis repellat blanditiis quos. Quibusdam id saepe culpa exercitationem id blanditiis sapiente.', 260);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (179, 'Harum sint consequatur pariatur reiciendis vo', 42, 5, '1995-08-17 06:45:18', 'Iure minima repellat vel sit. Dolore excepturi enim atque et illo doloremque occaecati. Tempore culpa accusantium expedita et voluptate. Enim optio harum reprehenderit eum. Sint voluptatem nulla quasi facere.', 52);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (180, 'Et beatae labore voluptatem deserunt id esse ', 50, 6, '2020-12-23 07:10:51', 'Quo omnis quaerat illum mollitia animi. Nobis vel inventore expedita velit atque dolorum. Incidunt excepturi sunt aspernatur sapiente. Delectus esse consequatur cum facere consequatur pariatur tenetur.', 455);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (181, 'Maiores dolore mollitia sed.', 19, 19, '1980-10-21 16:49:32', 'Veniam libero impedit aut vel voluptatem. Molestias et minus omnis consectetur cumque tempore aut et. Porro magni nihil molestias est et. Ullam consequatur vitae impedit illo.', 177);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (182, 'Ipsum labore rerum voluptatum sed sed.', 13, 7, '2010-10-24 06:19:09', 'Ullam reprehenderit ut ratione cupiditate accusamus. Aliquam et in voluptas. Explicabo enim dolore veritatis earum. Ut alias odio soluta ut officia reiciendis.', 292);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (183, 'Fugiat non ut et dicta.', 20, 12, '2001-10-19 09:27:46', 'Soluta facere et totam non quam. Animi iusto et sit id dolorem sit.\nQuis nisi rerum tempora repellendus reiciendis quis. Magni voluptate cum consequuntur ipsum eum consequuntur repudiandae. Voluptas dolore doloremque aut.\nQuidem aut magnam voluptates a. Earum sed magni alias rerum recusandae.', 186);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (184, 'Impedit quos sapiente odit consectetur in max', 44, 20, '1981-11-15 19:39:52', 'Alias et aliquam doloribus vel quisquam. Tempore voluptas ea voluptate. Illo omnis voluptate fugit est placeat minus aut. Fugit saepe ratione explicabo aliquam deleniti et mollitia.', 410);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (185, 'Iusto in debitis sunt nemo ut alias non deser', 7, 16, '1979-09-21 02:47:28', 'Aut aut tenetur dolores nemo. Autem temporibus accusantium aut. Quam nesciunt et beatae. Voluptas dolorem ut qui velit vel.\nAccusantium consequatur sit possimus. Ut accusantium commodi repellat et cumque occaecati nam. Ducimus quia exercitationem atque culpa rerum.', 360);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (186, 'Consequatur officiis nihil eum eligendi maxim', 45, 15, '1994-01-07 23:06:57', 'Est natus suscipit earum sed quia enim eum. Qui corporis nesciunt velit possimus. Impedit qui eum accusantium nihil sunt.', 385);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (187, 'Provident voluptas labore totam consequatur n', 10, 8, '1973-08-09 23:15:04', 'Accusamus cumque quis dolore enim veritatis. Consequatur qui quo harum aspernatur totam debitis qui necessitatibus. Voluptatem at aliquam repellat nisi ratione quibusdam. Delectus totam quia ut in.', 266);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (188, 'Quia atque assumenda vero consectetur minima ', 15, 2, '1998-06-20 00:10:16', 'Tempora alias et quos quo incidunt natus in voluptatem. Sed et quia eum ab. Omnis tempore eligendi placeat saepe error quod. Quia error et quaerat quaerat repellat repellat commodi et.', 433);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (189, 'Saepe magnam magni dignissimos voluptates sus', 41, 19, '1977-11-10 18:56:15', 'Reprehenderit culpa perferendis et voluptate perferendis laboriosam quia. Esse deleniti doloribus sit quia dolore.\nMinima qui sapiente repudiandae fuga delectus. Et sit ea nam assumenda. Qui sed autem minus et sunt.', 50);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (190, 'Et et et repellendus et.', 46, 19, '1976-07-26 19:47:16', 'Veritatis ut temporibus autem sint aut sit perferendis. Totam deserunt in animi nisi. Incidunt blanditiis cupiditate ipsum. Qui repellendus error tempore natus.\nOfficiis ducimus qui qui. Corporis et sint ut modi laudantium. Explicabo id optio et reiciendis.', 190);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (191, 'Est facilis minima dolor et quam minus saepe.', 41, 6, '1978-11-10 20:53:58', 'Et et harum provident esse minus non. Vero architecto doloribus est soluta veniam. Consequatur totam ab aut assumenda. Officiis accusantium est vero ea vel.', 150);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (192, 'Vel reiciendis quod sit velit dicta.', 9, 11, '2008-12-17 10:14:18', 'Voluptatem in quos et perferendis. Minus in vel voluptate tempora quos. Sint qui minima non laborum earum. Id cum est possimus atque. Hic modi enim ea quidem iusto aut.\nExercitationem porro a est consequatur fugit soluta minima. Cum amet voluptatem in sunt aut earum qui.', 315);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (193, 'Est quidem minus nisi ducimus incidunt.', 38, 19, '1998-09-09 13:42:17', 'Tempore quam harum possimus. Porro quas placeat omnis et vitae et porro. Aliquid cum nostrum possimus consequatur. Et aperiam voluptas quasi minus.', 91);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (194, 'Iure molestiae dolor reiciendis.', 7, 16, '1984-11-24 11:22:27', 'Voluptas et aliquid consectetur officia et. Necessitatibus recusandae asperiores eligendi iste quidem. Et repellendus qui repellendus. Sit vitae qui voluptatem libero rerum doloremque.', 84);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (195, 'Et odit quisquam harum quam exercitationem.', 48, 19, '1985-09-25 11:47:48', 'Earum impedit alias voluptatibus sequi voluptatum. Qui voluptatem facilis autem iure pariatur. Repellat eligendi quo libero delectus rerum repellendus officia. Aliquam id aut unde quo eligendi est neque. Omnis quisquam repellendus culpa et dolorum esse beatae perspiciatis.', 463);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (196, 'Doloremque dolor commodi iste impedit saepe i', 34, 17, '1981-05-01 10:54:00', 'Cumque natus vel veniam eius rerum. Sed qui qui eum assumenda provident reiciendis. Voluptatem est quo exercitationem odio. Omnis expedita dolorum harum voluptatum et adipisci est.', 337);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (197, 'Magni repellendus cumque eos nulla.', 22, 1, '2004-05-27 00:29:58', 'Ut neque consequatur explicabo voluptates ipsam. Aliquid blanditiis voluptatem sint. Qui alias in neque.', 23);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (198, 'Exercitationem nesciunt laborum incidunt odio', 49, 6, '2002-12-22 06:07:34', 'Aut necessitatibus voluptate inventore distinctio autem est iure enim. Reprehenderit consequatur quia est voluptatibus aut. Autem et est eaque omnis fuga sunt.\nVoluptates cum et blanditiis minus repellendus. Accusamus eum sed qui aperiam ad quasi ut.', 61);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (199, 'Sunt odio numquam sapiente nostrum est dolore', 42, 2, '1991-07-27 15:45:53', 'Nostrum rerum illum eos molestiae. Eos delectus voluptatem numquam est tenetur architecto. Qui deleniti sunt ducimus perferendis sint ut qui.', 14);
INSERT INTO `news` (`id`, `title`, `author_id`, `tournament_id`, `created_at`, `text`, `media_id`) VALUES (200, 'Eius quibusdam et velit est ad illum.', 47, 20, '2020-03-16 16:18:12', 'Nihil omnis rem odit. Fuga minus omnis illum aut. Et repellat tempora provident libero laboriosam exercitationem quis itaque.\nRepudiandae possimus voluptatem vero quia in. Debitis cum inventore cumque et quo. Eligendi iusto nam quam quam sunt velit.', 465);


#
# TABLE STRUCTURE FOR: sportsman
#

DROP TABLE IF EXISTS `sportsman`;

CREATE TABLE `sportsman` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('m','f') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday_date` datetime NOT NULL,
  `country` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_sport_id` int(10) unsigned NOT NULL,
  `team_id` int(10) unsigned DEFAULT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_sportsman_type_sport1_idx` (`type_sport_id`),
  KEY `fk_sportsman_team1_idx` (`team_id`),
  KEY `fk_sportsman_media1_idx` (`media_id`),
  CONSTRAINT `fk_sportsman_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sportsman_team1` FOREIGN KEY (`team_id`) REFERENCES `team` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_sportsman_type_sport1` FOREIGN KEY (`type_sport_id`) REFERENCES `type_sport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (1, 'Angelo', 'Lindgren', 'm', '2011-10-15 04:10:58', 'RU', 5, 76, 311);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (2, 'Martine', 'Pfeffer', 'f', '1998-01-24 10:45:58', 'GB', 1, 73, 370);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (3, 'Valentine', 'Oberbrunner', 'm', '1991-01-19 07:50:23', 'GB', 2, 79, 429);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (4, 'Jeffry', 'Williamson', 'f', '1976-05-03 18:52:44', 'ES', 2, 24, 499);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (5, 'George', 'Mayer', 'f', '1995-08-04 20:39:07', 'PT', 3, 62, 235);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (6, 'Bailee', 'Stanton', 'm', '1980-08-08 07:07:10', 'MX', 4, 18, 198);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (7, 'Evans', 'Powlowski', 'f', '1983-11-25 14:36:48', 'MX', 4, 18, 144);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (8, 'Emmie', 'Dicki', 'f', '1990-11-10 23:24:27', 'IT', 3, 39, 52);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (9, 'Dana', 'Nicolas', 'f', '2011-07-02 21:30:55', 'DE', 5, 61, 96);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (10, 'Tanner', 'Sawayn', 'm', '1982-04-06 05:24:14', 'US', 5, 18, 201);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (11, 'Ramiro', 'Aufderhar', 'm', '1985-06-29 15:02:52', 'IT', 3, 14, 174);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (12, 'Haskell', 'Spinka', 'm', '1998-04-13 18:08:10', 'RU', 1, 15, 128);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (13, 'Janiya', 'Spinka', 'f', '1995-12-08 03:02:03', 'DE', 5, 37, 121);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (14, 'Josiah', 'Beier', 'f', '2008-01-18 05:54:11', 'DE', 4, 66, 267);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (15, 'Tre', 'Koelpin', 'm', '2011-03-06 16:51:17', 'RU', 4, 31, 148);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (16, 'Leann', 'Denesik', 'm', '1981-11-10 10:49:13', 'FR', 1, 12, 258);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (17, 'Colleen', 'Bartoletti', 'f', '2001-05-15 06:00:42', 'FR', 3, 64, 367);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (18, 'Monica', 'Macejkovic', 'f', '1988-04-26 22:22:32', 'MX', 5, 18, 110);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (19, 'Aaron', 'Kling', 'm', '1972-11-01 15:38:55', 'CA', 5, 4, 489);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (20, 'Bo', 'Rodriguez', 'f', '1985-06-30 13:02:22', 'GB', 1, 4, 98);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (21, 'Antonette', 'Denesik', 'm', '1973-03-13 13:27:13', 'GB', 3, 45, 183);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (22, 'Santino', 'Kovacek', 'm', '1989-11-22 07:30:29', 'CA', 5, 56, 272);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (23, 'Ambrose', 'Glover', 'f', '1991-12-14 22:13:48', 'CN', 1, 46, 1);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (24, 'Myriam', 'Goyette', 'm', '1995-10-04 20:38:22', 'ES', 3, 24, 408);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (25, 'Jeromy', 'Davis', 'f', '1996-09-28 01:16:51', 'RU', 5, 2, 97);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (26, 'Thora', 'Muller', 'f', '1983-11-07 17:15:42', 'US', 2, 17, 169);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (27, 'Eryn', 'Emard', 'm', '1996-09-15 19:00:31', 'IN', 4, 65, 68);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (28, 'Antonia', 'Olson', 'm', '2008-12-30 21:10:52', 'IT', 3, 55, 176);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (29, 'Laura', 'Wyman', 'f', '2004-02-19 09:42:54', 'DE', 4, 53, 200);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (30, 'Shirley', 'Schmitt', 'm', '2006-04-08 09:05:37', 'DE', 4, 67, 224);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (31, 'Presley', 'Mayert', 'f', '1972-09-08 17:31:35', 'ES', 5, 32, 4);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (32, 'Mitchell', 'Langosh', 'm', '2004-03-16 21:56:00', 'IE', 2, 26, 350);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (33, 'Melvina', 'Turcotte', 'm', '2011-11-16 00:21:39', 'ES', 4, 40, 132);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (34, 'Spencer', 'Kshlerin', 'm', '1984-09-24 19:15:56', 'CA', 4, 73, 277);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (35, 'Marisol', 'Hayes', 'f', '1991-11-24 00:25:18', 'FR', 4, 69, 286);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (36, 'Jonatan', 'Huel', 'f', '2014-06-15 20:24:17', 'DE', 4, 8, 392);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (37, 'Lea', 'Keeling', 'f', '2005-05-03 22:09:14', 'IE', 1, 69, 293);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (38, 'Isabell', 'Conn', 'f', '1996-05-15 23:25:52', 'RU', 2, 28, 132);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (39, 'Rosina', 'Lebsack', 'f', '1977-02-02 23:37:33', 'CA', 4, 5, 460);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (40, 'Elfrieda', 'Kirlin', 'f', '1984-01-28 07:52:16', 'MX', 1, 60, 374);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (41, 'Magnus', 'Turcotte', 'f', '1976-08-05 04:37:25', 'CA', 3, 51, 73);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (42, 'Jayde', 'Schinner', 'f', '1976-02-07 23:17:48', 'IN', 3, 71, 231);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (43, 'Rosella', 'Steuber', 'm', '1988-03-18 21:59:40', 'IN', 1, 54, 477);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (44, 'Toni', 'Carter', 'm', '1995-05-29 08:03:32', 'PT', 3, 37, 430);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (45, 'Elijah', 'Rogahn', 'm', '1989-02-01 05:07:31', 'IE', 5, 6, 356);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (46, 'Leo', 'Keeling', 'f', '2003-12-15 11:26:48', 'DE', 3, 70, 405);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (47, 'Lois', 'Price', 'f', '2002-03-12 03:22:20', 'IN', 2, 1, 332);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (48, 'Angie', 'Mayert', 'f', '1996-11-05 04:37:25', 'DE', 5, 23, 5);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (49, 'Rhianna', 'O\'Connell', 'f', '1978-10-09 15:18:43', 'IT', 1, 72, 34);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (50, 'Vanessa', 'Murazik', 'f', '1985-06-27 17:12:59', 'IN', 1, 74, 407);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (51, 'Nakia', 'Ernser', 'm', '2017-05-31 06:46:53', 'CA', 5, 31, 222);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (52, 'Kasey', 'King', 'm', '1979-08-19 17:50:44', 'CA', 5, 69, 161);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (53, 'Jace', 'Harber', 'm', '1974-02-10 12:01:20', 'ES', 3, 3, 495);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (54, 'Meredith', 'Ziemann', 'f', '1979-04-12 20:58:58', 'PT', 3, 38, 226);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (55, 'Adrien', 'Dare', 'm', '2013-01-13 19:31:44', 'DE', 2, 37, 260);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (56, 'Chance', 'Corwin', 'f', '2020-08-09 04:13:02', 'ES', 5, 1, 195);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (57, 'Alberto', 'Mills', 'f', '2003-08-19 00:56:29', 'FR', 4, 29, 198);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (58, 'Eden', 'Botsford', 'f', '2012-05-02 23:29:47', 'DE', 3, 23, 336);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (59, 'Marilou', 'Bergstrom', 'm', '2012-04-09 17:52:59', 'MX', 3, 38, 286);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (60, 'Garnett', 'Greenfelder', 'm', '2005-06-25 08:45:24', 'RU', 3, 47, 246);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (61, 'Julianne', 'Oberbrunner', 'm', '1984-10-28 02:50:01', 'ES', 2, 35, 439);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (62, 'Amya', 'Lakin', 'm', '1993-05-30 00:27:47', 'GB', 4, 35, 369);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (63, 'Jerad', 'Smitham', 'f', '1980-08-25 01:38:03', 'PT', 1, 72, 385);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (64, 'Imogene', 'Hackett', 'f', '1972-05-06 15:21:00', 'MX', 1, 25, 117);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (65, 'Glenda', 'Cormier', 'f', '1972-08-18 21:16:54', 'US', 3, 47, 343);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (66, 'Aubrey', 'Schmitt', 'm', '1992-10-19 20:54:38', 'IE', 1, 46, 349);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (67, 'Andy', 'Corkery', 'f', '2012-11-12 20:14:29', 'US', 3, 29, 26);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (68, 'Amparo', 'Volkman', 'm', '1984-02-12 14:00:58', 'ES', 5, 66, 167);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (69, 'Sheridan', 'Green', 'f', '1977-07-13 05:23:03', 'IT', 3, 23, 403);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (70, 'Everette', 'Hilpert', 'm', '2004-02-03 12:16:05', 'IE', 1, 66, 194);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (71, 'Ruth', 'Jakubowski', 'f', '2012-08-23 17:42:41', 'US', 3, 13, 412);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (72, 'Jennings', 'Ziemann', 'f', '1991-02-25 11:02:32', 'DE', 3, 76, 130);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (73, 'Vivienne', 'Lehner', 'm', '2008-12-14 22:47:37', 'ES', 1, 5, 79);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (74, 'Polly', 'Beatty', 'f', '2020-07-10 11:52:55', 'PT', 5, 13, 234);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (75, 'Selena', 'Wilderman', 'm', '1994-08-21 07:11:22', 'IT', 2, 57, 26);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (76, 'Kadin', 'Weimann', 'f', '1971-06-20 08:27:07', 'IE', 5, 62, 310);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (77, 'Gilda', 'Lueilwitz', 'm', '2013-01-27 19:51:07', 'ES', 3, 18, 491);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (78, 'Thora', 'Smitham', 'f', '2000-04-02 22:31:08', 'US', 4, 6, 400);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (79, 'Reina', 'Rodriguez', 'm', '1975-01-31 11:49:43', 'IE', 5, 48, 41);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (80, 'Yvonne', 'Larson', 'f', '1995-08-29 02:44:12', 'FR', 4, 56, 448);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (81, 'Isidro', 'Kautzer', 'f', '1995-08-29 02:59:55', 'IT', 1, 22, 29);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (82, 'Karl', 'Wiegand', 'f', '2008-09-14 06:26:09', 'FR', 5, 59, 3);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (83, 'Marvin', 'Ratke', 'f', '1986-12-23 22:58:58', 'US', 2, 75, 31);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (84, 'Stefan', 'Hamill', 'f', '2008-08-15 18:52:51', 'GB', 2, 72, 107);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (85, 'Deja', 'Beer', 'f', '1984-12-03 22:30:02', 'IN', 5, 8, 458);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (86, 'Irving', 'Williamson', 'f', '1985-10-05 01:14:36', 'ES', 5, 79, 342);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (87, 'Alden', 'Schulist', 'm', '2005-07-18 21:27:28', 'IE', 3, 46, 454);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (88, 'Corbin', 'Bechtelar', 'm', '2010-01-19 06:43:04', 'RU', 3, 17, 491);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (89, 'Chaya', 'Conroy', 'm', '1996-10-06 13:10:27', 'ES', 2, 14, 289);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (90, 'Laurianne', 'Morissette', 'm', '2007-03-25 04:15:34', 'CA', 2, 76, 133);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (91, 'Emmett', 'Robel', 'm', '2002-03-17 08:59:30', 'PT', 2, 8, 269);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (92, 'Stewart', 'Larson', 'f', '2001-09-15 19:15:19', 'ES', 2, 7, 136);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (93, 'Maye', 'Jacobs', 'f', '2011-12-07 15:31:06', 'US', 2, 26, 101);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (94, 'Kristian', 'Kautzer', 'f', '1983-11-07 21:17:39', 'FR', 3, 58, 50);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (95, 'Lisa', 'McGlynn', 'm', '2010-03-17 22:01:09', 'GB', 4, 47, 99);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (96, 'Esther', 'Ruecker', 'f', '1972-03-20 21:34:13', 'IE', 3, 40, 91);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (97, 'Arlene', 'Satterfield', 'f', '2013-03-25 13:20:27', 'IT', 2, 3, 374);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (98, 'Michel', 'Bailey', 'f', '2012-07-24 17:51:29', 'IN', 1, 44, 474);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (99, 'Felicita', 'Bosco', 'f', '1989-02-05 01:21:11', 'MX', 1, 69, 58);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (100, 'Ernesto', 'O\'Kon', 'm', '1974-03-26 14:15:00', 'IN', 4, 21, 29);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (101, 'Crystal', 'Stanton', 'f', '1996-03-11 13:31:42', 'ES', 5, 44, 78);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (102, 'Mariela', 'Will', 'f', '2007-09-30 04:35:11', 'IT', 3, 72, 118);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (103, 'Ulices', 'White', 'm', '2016-03-23 04:16:27', 'GB', 4, 20, 278);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (104, 'Eliseo', 'Feeney', 'm', '1970-11-06 05:56:11', 'IT', 5, 53, 136);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (105, 'Yasmine', 'Dickens', 'm', '2019-01-17 23:16:58', 'RU', 1, 23, 426);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (106, 'Cassidy', 'Spinka', 'f', '1979-02-12 12:21:53', 'FR', 2, 66, 173);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (107, 'Elena', 'Kiehn', 'm', '1997-09-16 01:38:29', 'IT', 3, 4, 187);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (108, 'Sherwood', 'Lueilwitz', 'm', '2012-08-09 13:07:26', 'US', 1, 14, 460);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (109, 'Myles', 'Hudson', 'm', '1979-12-24 20:21:02', 'MX', 1, 23, 389);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (110, 'Tito', 'Leffler', 'f', '1997-10-04 07:28:57', 'FR', 2, 78, 16);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (111, 'Paige', 'Hoppe', 'f', '2000-08-13 14:21:42', 'US', 2, 75, 288);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (112, 'Judson', 'Ebert', 'm', '1991-07-05 05:34:20', 'US', 3, 34, 235);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (113, 'Dino', 'Cassin', 'f', '2008-10-11 01:02:55', 'FR', 4, 15, 356);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (114, 'Lucy', 'Daniel', 'f', '1999-04-04 01:47:50', 'PT', 2, 12, 184);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (115, 'Rubie', 'Harber', 'm', '2004-01-29 14:17:50', 'IN', 3, 17, 325);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (116, 'Coy', 'Windler', 'f', '2020-05-17 07:21:52', 'FR', 2, 37, 236);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (117, 'Courtney', 'Pollich', 'm', '1988-07-13 08:35:57', 'MX', 4, 72, 258);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (118, 'Diamond', 'Cremin', 'm', '1981-03-13 09:25:10', 'CA', 1, 7, 345);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (119, 'Mellie', 'Cassin', 'f', '1996-04-23 08:24:14', 'IE', 1, 18, 487);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (120, 'Ofelia', 'Abbott', 'f', '2013-10-03 20:24:53', 'RU', 4, 38, 473);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (121, 'Treva', 'Stehr', 'm', '1979-04-12 08:25:08', 'PT', 5, 62, 436);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (122, 'Shane', 'Bartell', 'f', '2008-02-02 01:05:20', 'PT', 2, 19, 144);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (123, 'Jarrod', 'Hahn', 'm', '2016-07-15 16:11:17', 'MX', 5, 75, 234);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (124, 'Chance', 'Thiel', 'm', '1970-10-19 13:19:45', 'FR', 3, 15, 305);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (125, 'Yasmine', 'Heidenreich', 'm', '1974-10-22 10:40:46', 'MX', 5, 57, 406);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (126, 'Otis', 'Bruen', 'f', '1972-06-17 10:00:36', 'GB', 3, 7, 137);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (127, 'Nannie', 'Dickinson', 'm', '1995-03-08 02:16:23', 'IN', 1, 65, 87);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (128, 'Astrid', 'Gislason', 'm', '2021-03-23 20:20:09', 'CA', 3, 72, 130);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (129, 'Katrina', 'O\'Reilly', 'm', '2005-06-15 16:38:12', 'DE', 2, 73, 239);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (130, 'Chyna', 'Altenwerth', 'm', '2013-05-31 09:26:49', 'IT', 2, 55, 474);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (131, 'Jimmie', 'Heidenreich', 'm', '2000-01-30 16:19:20', 'GB', 1, 41, 361);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (132, 'Adelbert', 'Haley', 'f', '1988-04-11 11:30:28', 'PT', 1, 72, 478);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (133, 'Camille', 'Kunze', 'm', '2000-01-24 16:07:01', 'GB', 2, 61, 445);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (134, 'Marquise', 'Little', 'f', '1995-03-20 09:58:50', 'DE', 5, 27, 37);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (135, 'Dandre', 'Dach', 'f', '1997-07-19 10:03:22', 'IN', 3, 22, 391);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (136, 'Felix', 'D\'Amore', 'f', '1990-05-25 18:01:57', 'GB', 2, 70, 432);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (137, 'Beatrice', 'Feeney', 'f', '1989-07-02 03:03:58', 'DE', 3, 75, 333);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (138, 'Shawn', 'Medhurst', 'f', '1979-04-16 04:42:48', 'US', 4, 41, 278);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (139, 'Carmine', 'Wintheiser', 'f', '2000-09-30 12:47:29', 'RU', 5, 62, 229);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (140, 'Euna', 'Kuphal', 'f', '1993-06-07 07:37:22', 'ES', 3, 1, 72);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (141, 'Dewayne', 'Fadel', 'f', '1974-01-19 19:54:10', 'CA', 2, 15, 324);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (142, 'April', 'Kozey', 'f', '1990-04-30 04:52:54', 'DE', 1, 19, 273);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (143, 'Maximilian', 'Heathcote', 'm', '2015-12-16 22:34:03', 'IN', 1, 47, 152);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (144, 'Valerie', 'Champlin', 'f', '1974-05-30 03:39:08', 'MX', 5, 31, 318);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (145, 'Payton', 'Wehner', 'm', '1996-12-28 09:35:37', 'PT', 5, 64, 455);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (146, 'Ernestine', 'Hagenes', 'f', '2012-10-06 13:29:45', 'PT', 4, 2, 387);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (147, 'Hassan', 'Nolan', 'm', '2002-08-05 14:00:22', 'IT', 4, 42, 350);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (148, 'Doyle', 'Hodkiewicz', 'f', '2002-03-25 15:27:22', 'GB', 2, 16, 101);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (149, 'Vada', 'Ferry', 'f', '1972-10-15 15:48:17', 'ES', 5, 11, 484);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (150, 'Estelle', 'Koepp', 'm', '1986-10-23 19:30:25', 'IN', 2, 43, 486);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (151, 'Nestor', 'Sporer', 'f', '2015-12-05 08:08:24', 'RU', 3, 72, 79);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (152, 'Horace', 'Baumbach', 'm', '1979-08-01 02:16:23', 'MX', 1, 77, 197);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (153, 'Rosendo', 'Deckow', 'm', '2007-05-03 19:04:43', 'US', 4, 80, 485);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (154, 'Dillan', 'Klein', 'f', '1981-01-22 13:15:20', 'RU', 5, 73, 176);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (155, 'Vivian', 'Pfeffer', 'f', '1986-07-19 19:41:27', 'IT', 3, 73, 75);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (156, 'Enoch', 'Koch', 'f', '2002-06-02 17:36:25', 'IT', 3, 55, 87);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (157, 'Devante', 'Schroeder', 'f', '1983-05-11 06:13:07', 'DE', 2, 26, 348);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (158, 'Hardy', 'Price', 'f', '1991-10-01 16:47:13', 'CN', 5, 50, 446);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (159, 'Stephen', 'Conn', 'f', '1983-02-19 15:45:57', 'IN', 1, 38, 8);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (160, 'Nelle', 'Kozey', 'm', '1977-10-13 06:01:02', 'IT', 1, 63, 275);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (161, 'Bridgette', 'Turcotte', 'm', '1978-07-01 07:43:54', 'ES', 1, 20, 219);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (162, 'Joanne', 'McGlynn', 'f', '2000-11-16 05:52:24', 'IE', 2, 28, 200);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (163, 'Arden', 'Frami', 'f', '1985-11-29 04:16:04', 'ES', 4, 80, 197);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (164, 'Kacie', 'Steuber', 'f', '1972-04-08 23:23:11', 'RU', 4, 76, 152);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (165, 'Graciela', 'Berge', 'f', '1996-05-16 23:59:50', 'ES', 5, 43, 104);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (166, 'Frederic', 'Crist', 'm', '2019-03-16 07:39:07', 'RU', 1, 3, 442);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (167, 'Adan', 'Ryan', 'f', '1981-11-12 17:24:46', 'PT', 2, 25, 99);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (168, 'Cole', 'Parker', 'f', '1999-12-19 06:35:27', 'GB', 5, 22, 407);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (169, 'Christa', 'Schoen', 'f', '1981-10-31 10:57:41', 'PT', 5, 36, 143);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (170, 'Juvenal', 'Huel', 'f', '1983-05-23 07:57:23', 'CA', 5, 47, 35);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (171, 'Gaetano', 'Connelly', 'm', '2001-03-31 00:42:19', 'DE', 3, 55, 156);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (172, 'Herminio', 'Mueller', 'm', '1985-12-18 13:11:01', 'RU', 5, 77, 329);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (173, 'Jeffery', 'Abshire', 'f', '2017-02-01 17:59:47', 'FR', 2, 49, 326);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (174, 'Dora', 'Weber', 'm', '1992-12-09 17:59:44', 'CN', 4, 20, 299);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (175, 'Trudie', 'Thiel', 'm', '1990-06-25 07:05:57', 'IT', 5, 18, 67);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (176, 'Kattie', 'Macejkovic', 'm', '1983-07-23 16:45:49', 'RU', 1, 29, 83);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (177, 'Uriel', 'Parker', 'm', '2008-01-27 02:19:42', 'PT', 1, 53, 235);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (178, 'Kelli', 'Block', 'm', '1977-03-28 13:30:35', 'GB', 2, 53, 371);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (179, 'Viviane', 'Zemlak', 'f', '1985-09-06 22:12:06', 'MX', 1, 44, 91);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (180, 'Flossie', 'Ferry', 'm', '1970-04-01 09:12:46', 'CA', 2, 36, 380);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (181, 'Stephany', 'Ullrich', 'f', '2000-01-14 20:41:20', 'CA', 3, 73, 224);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (182, 'Florida', 'Miller', 'f', '2016-07-27 05:53:19', 'RU', 4, 64, 200);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (183, 'Kristina', 'Rosenbaum', 'f', '2019-09-15 00:06:53', 'MX', 3, 7, 6);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (184, 'Kathryne', 'Gutkowski', 'm', '1970-06-14 18:13:17', 'IN', 1, 62, 127);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (185, 'Althea', 'Hettinger', 'f', '2007-03-11 21:40:34', 'CA', 4, 61, 239);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (186, 'Braden', 'Labadie', 'm', '1987-01-26 01:27:41', 'CN', 4, 76, 416);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (187, 'Brianne', 'Zboncak', 'f', '2008-07-26 10:01:05', 'CA', 5, 3, 245);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (188, 'Georgianna', 'Fay', 'm', '1972-04-13 01:05:13', 'FR', 3, 25, 73);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (189, 'Gus', 'Abbott', 'f', '1987-03-11 01:14:50', 'ES', 1, 32, 345);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (190, 'Blake', 'Gulgowski', 'f', '1987-06-13 18:57:54', 'IN', 2, 62, 69);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (191, 'Chauncey', 'Cummings', 'f', '2003-04-27 03:49:13', 'GB', 1, 17, 20);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (192, 'Fritz', 'Hettinger', 'f', '1993-09-14 04:13:41', 'IT', 3, 77, 417);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (193, 'Werner', 'Carroll', 'm', '1994-09-18 15:24:31', 'ES', 5, 30, 460);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (194, 'Gabe', 'Reynolds', 'm', '2001-06-01 08:06:43', 'PT', 5, 35, 344);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (195, 'Darwin', 'Kris', 'f', '1978-11-22 13:10:36', 'CA', 2, 7, 222);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (196, 'Guadalupe', 'Runte', 'm', '2006-08-20 20:02:54', 'GB', 4, 70, 197);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (197, 'Coralie', 'Huels', 'm', '1992-06-12 22:21:28', 'CN', 3, 67, 210);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (198, 'Josiane', 'Turcotte', 'm', '1981-03-01 16:21:51', 'IT', 1, 20, 362);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (199, 'Isobel', 'Herman', 'm', '1984-11-08 02:02:01', 'CN', 1, 34, 57);
INSERT INTO `sportsman` (`id`, `firstname`, `lastname`, `gender`, `birthday_date`, `country`, `type_sport_id`, `team_id`, `media_id`) VALUES (200, 'Levi', 'Koelpin', 'f', '2000-03-21 18:35:00', 'IN', 5, 61, 438);


#
# TABLE STRUCTURE FOR: status_game
#

DROP TABLE IF EXISTS `status_game`;

CREATE TABLE `status_game` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` enum('finished',' proceed','not started') COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `status_game` (`id`, `name`) VALUES (1, 'finished');
INSERT INTO `status_game` (`id`, `name`) VALUES (2, 'not started');
INSERT INTO `status_game` (`id`, `name`) VALUES (3, ' proceed');


#
# TABLE STRUCTURE FOR: team
#

DROP TABLE IF EXISTS `team`;

CREATE TABLE `team` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tournament_id` int(10) unsigned NOT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_team_media1_idx` (`media_id`),
  KEY `fk_team_tournament1_idx` (`tournament_id`),
  CONSTRAINT `fk_team_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_team_tournament1` FOREIGN KEY (`tournament_id`) REFERENCES `tournament` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=81 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (1, 'Kautzer, O\'Hara and Glover', 12, 35);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (2, 'Stamm Ltd', 4, 392);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (3, 'Jacobs PLC', 7, 94);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (4, 'VonRueden PLC', 15, 445);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (5, 'Aufderhar, Jacobson and Ryan', 13, 425);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (6, 'O\'Keefe-Harris', 3, 209);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (7, 'Bashirian LLC', 20, 35);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (8, 'Parisian-Anderson', 4, 32);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (9, 'Spencer-Williamson', 4, 369);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (10, 'Littel, Douglas and Pfannerstill', 17, 419);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (11, 'Mosciski-Borer', 9, 412);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (12, 'Kohler-Lindgren', 19, 76);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (13, 'Bashirian, Champlin and Schultz', 4, 50);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (14, 'Kling-Marquardt', 6, 298);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (15, 'Volkman, Lemke and Cartwright', 10, 372);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (16, 'Hintz Inc', 4, 7);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (17, 'VonRueden-Schiller', 17, 195);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (18, 'Lakin, Will and Zemlak', 16, 73);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (19, 'Jerde-Abshire', 12, 271);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (20, 'Huel Inc', 1, 98);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (21, 'Gorczany PLC', 8, 69);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (22, 'Luettgen, Kuhlman and Thompson', 13, 172);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (23, 'Feeney-Denesik', 5, 381);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (24, 'Lang, Grant and Blanda', 9, 193);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (25, 'Cremin and Sons', 10, 123);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (26, 'Ziemann Inc', 5, 451);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (27, 'Green, Paucek and Effertz', 2, 68);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (28, 'Hirthe Ltd', 2, 116);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (29, 'Boyle-Ritchie', 5, 153);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (30, 'Rutherford PLC', 17, 348);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (31, 'Dare-Wolff', 1, 10);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (32, 'Batz, Effertz and Batz', 15, 430);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (33, 'Schiller, Fahey and Hettinger', 9, 253);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (34, 'Conn and Sons', 1, 492);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (35, 'Marquardt Inc', 1, 18);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (36, 'Koss, Roob and Connelly', 4, 219);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (37, 'Walker, Johns and Bartoletti', 4, 395);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (38, 'Bradtke, Satterfield and Ullrich', 16, 190);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (39, 'Tremblay, Berge and Gottlieb', 11, 93);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (40, 'Schimmel-Schiller', 16, 24);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (41, 'Renner PLC', 9, 493);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (42, 'Hammes LLC', 19, 250);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (43, 'McKenzie, Ernser and Macejkovic', 3, 1);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (44, 'Bogisich, Kunde and Mraz', 15, 177);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (45, 'Hamill, Collier and Hudson', 7, 279);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (46, 'Denesik Inc', 1, 177);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (47, 'Ritchie, Langosh and Feeney', 12, 379);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (48, 'Ferry Group', 5, 492);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (49, 'Koss-Krajcik', 6, 107);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (50, 'Rippin LLC', 20, 154);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (51, 'Hermiston-Strosin', 5, 72);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (52, 'Carroll-Quigley', 15, 212);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (53, 'Olson Inc', 19, 263);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (54, 'Breitenberg Group', 17, 241);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (55, 'Schumm PLC', 15, 283);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (56, 'Stanton Inc', 11, 71);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (57, 'Wisozk Group', 11, 239);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (58, 'Wiza PLC', 13, 335);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (59, 'Raynor Group', 10, 186);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (60, 'Turcotte PLC', 1, 392);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (61, 'Kessler-Rowe', 19, 35);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (62, 'Powlowski, Bayer and Mraz', 3, 253);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (63, 'Kutch, Predovic and Tillman', 17, 174);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (64, 'Considine-Stark', 10, 43);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (65, 'Kirlin-Hoppe', 12, 227);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (66, 'Simonis, O\'Keefe and Thiel', 8, 405);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (67, 'Gislason LLC', 12, 69);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (68, 'Bailey, Miller and Kuhlman', 5, 264);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (69, 'Will-Boehm', 14, 17);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (70, 'Carter-Swift', 1, 187);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (71, 'Zemlak LLC', 12, 268);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (72, 'Cruickshank, Hoeger and Ritchie', 11, 75);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (73, 'Runte Ltd', 1, 78);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (74, 'Crona and Sons', 17, 245);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (75, 'Simonis LLC', 11, 419);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (76, 'Kemmer, Greenholt and Weber', 6, 229);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (77, 'Schmidt, Leannon and Buckridge', 19, 204);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (78, 'Kohler Ltd', 20, 366);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (79, 'Raynor Ltd', 16, 225);
INSERT INTO `team` (`id`, `title`, `tournament_id`, `media_id`) VALUES (80, 'Hoppe and Sons', 17, 157);


#
# TABLE STRUCTURE FOR: tournament
#

DROP TABLE IF EXISTS `tournament`;

CREATE TABLE `tournament` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_sport_id` int(10) unsigned NOT NULL,
  `media_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idtournaments_UNIQUE` (`id`),
  KEY `fk_tournaments_type_sport_idx` (`type_sport_id`),
  KEY `fk_tournament_media1_idx` (`media_id`),
  CONSTRAINT `fk_tournament_media1` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_tournaments_type_sport` FOREIGN KEY (`type_sport_id`) REFERENCES `type_sport` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (1, 'eius', 2, 118);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (2, 'eos', 5, 193);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (3, 'doloribus', 3, 163);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (4, 'alias', 2, 90);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (5, 'rem', 5, 131);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (6, 'deserunt', 3, 43);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (7, 'itaque', 5, 13);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (8, 'tempore', 1, 198);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (9, 'sunt', 3, 163);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (10, 'et', 1, 52);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (11, 'inventore', 4, 195);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (12, 'dolorem', 3, 24);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (13, 'at', 1, 82);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (14, 'explicabo', 4, 94);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (15, 'vel', 1, 58);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (16, 'architecto', 3, 82);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (17, 'beatae', 5, 78);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (18, 'id', 2, 60);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (19, 'tempora', 2, 117);
INSERT INTO `tournament` (`id`, `name`, `type_sport_id`, `media_id`) VALUES (20, 'maiores', 4, 41);


#
# TABLE STRUCTURE FOR: type_media
#

DROP TABLE IF EXISTS `type_media`;

CREATE TABLE `type_media` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `type_media` (`id`, `title`) VALUES (1, 'image');
INSERT INTO `type_media` (`id`, `title`) VALUES (2, ' music');
INSERT INTO `type_media` (`id`, `title`) VALUES (3, ' viedo');


#
# TABLE STRUCTURE FOR: type_sport
#

DROP TABLE IF EXISTS `type_sport`;

CREATE TABLE `type_sport` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `type_sport` (`id`, `name`) VALUES (1, ' hockey');
INSERT INTO `type_sport` (`id`, `name`) VALUES (2, ' basketball');
INSERT INTO `type_sport` (`id`, `name`) VALUES (3, ' auto');
INSERT INTO `type_sport` (`id`, `name`) VALUES (4, ' tennis');
INSERT INTO `type_sport` (`id`, `name`) VALUES (5, 'football');



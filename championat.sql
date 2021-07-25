-- MySQL Workbench Synchronization
-- Generated: 2021-07-25 12:53
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Jlex

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

ALTER SCHEMA `championat`  DEFAULT CHARACTER SET utf8  DEFAULT COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `championat`.`type_sport` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `championat`.`news` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `tournament_id` INT(10) UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `text` MEDIUMTEXT NOT NULL,
  `autor_id` INT(10) UNSIGNED NOT NULL,
  `media_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_news_tournaments1_idx` (`tournament_id` ASC) VISIBLE,
  INDEX `fk_news_autor1_idx` (`autor_id` ASC) VISIBLE,
  INDEX `fk_news_media1_idx` (`media_id` ASC) VISIBLE,
  CONSTRAINT `fk_news_tournaments1`
    FOREIGN KEY (`tournament_id`)
    REFERENCES `championat`.`tournament` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_news_autor1`
    FOREIGN KEY (`autor_id`)
    REFERENCES `championat`.`autor` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_news_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `championat`.`media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `championat`.`tournament` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `type_sport_id` INT(10) UNSIGNED NOT NULL,
  `team_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `sportsman_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `media_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idtournaments_UNIQUE` (`id` ASC) VISIBLE,
  INDEX `fk_tournaments_type_sport_idx` (`type_sport_id` ASC) VISIBLE,
  INDEX `fk_tournaments_team1_idx` (`team_id` ASC) VISIBLE,
  INDEX `fk_tournaments_sportsman1_idx` (`sportsman_id` ASC) VISIBLE,
  INDEX `fk_tournament_media1_idx` (`media_id` ASC) VISIBLE,
  CONSTRAINT `fk_tournaments_type_sport`
    FOREIGN KEY (`type_sport_id`)
    REFERENCES `championat`.`type_sport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tournaments_team1`
    FOREIGN KEY (`team_id`)
    REFERENCES `championat`.`team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tournaments_sportsman1`
    FOREIGN KEY (`sportsman_id`)
    REFERENCES `championat`.`sportsman` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tournament_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `championat`.`media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `championat`.`sportsman` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `gender` ENUM("m", "f") NOT NULL,
  `birthday_date` DATETIME NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `type_sport_id` INT(10) UNSIGNED NOT NULL,
  `team_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `media_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_sportsman_type_sport1_idx` (`type_sport_id` ASC) VISIBLE,
  INDEX `fk_sportsman_team1_idx` (`team_id` ASC) VISIBLE,
  INDEX `fk_sportsman_media1_idx` (`media_id` ASC) VISIBLE,
  CONSTRAINT `fk_sportsman_type_sport1`
    FOREIGN KEY (`type_sport_id`)
    REFERENCES `championat`.`type_sport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sportsman_team1`
    FOREIGN KEY (`team_id`)
    REFERENCES `championat`.`team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sportsman_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `championat`.`media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `championat`.`game-center` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tournament_id` INT(10) UNSIGNED NOT NULL,
  `date_game` DATETIME NOT NULL,
  `score` VARCHAR(10) NULL DEFAULT NULL,
  `status_game_id` INT(10) UNSIGNED NOT NULL,
  `team_1_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `team_2_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `sportsman_1_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  `sportsman_2_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_game-center_tournaments1_idx` (`tournament_id` ASC) VISIBLE,
  INDEX `fk_game-center_status_game1_idx` (`status_game_id` ASC) VISIBLE,
  INDEX `fk_game-center_team1_idx` (`team_1_id` ASC) VISIBLE,
  INDEX `fk_game-center_sportsman1_idx` (`sportsman_1_id` ASC) VISIBLE,
  INDEX `fk_game-center_team2_idx` (`team_2_id` ASC) VISIBLE,
  INDEX `fk_game-center_sportsman2_idx` (`sportsman_2_id` ASC) VISIBLE,
  UNIQUE INDEX `team_1_team_2` (`team_1_id` ASC, `team_2_id` ASC) INVISIBLE,
  UNIQUE INDEX `sportsman_1_sportsman_2` (`sportsman_1_id` ASC, `sportsman_2_id` ASC) VISIBLE,
  CONSTRAINT `fk_game-center_tournaments1`
    FOREIGN KEY (`tournament_id`)
    REFERENCES `championat`.`tournament` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_status_game1`
    FOREIGN KEY (`status_game_id`)
    REFERENCES `championat`.`status_game` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_team1`
    FOREIGN KEY (`team_1_id`)
    REFERENCES `championat`.`team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_sportsman1`
    FOREIGN KEY (`sportsman_1_id`)
    REFERENCES `championat`.`sportsman` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_team2`
    FOREIGN KEY (`team_2_id`)
    REFERENCES `championat`.`team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_sportsman2`
    FOREIGN KEY (`sportsman_2_id`)
    REFERENCES `championat`.`sportsman` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `championat`.`media` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_media` INT(10) UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `url` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_media_type_media1_idx` (`type_media` ASC) VISIBLE,
  CONSTRAINT `fk_media_type_media1`
    FOREIGN KEY (`type_media`)
    REFERENCES `championat`.`type_media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `championat`.`type_media` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `championat`.`autor` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `championat`.`status_game` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE TABLE IF NOT EXISTS `championat`.`team` (
  `id` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `sportsman_id` INT(10) UNSIGNED NOT NULL,
  `media_id` INT(10) UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_team_sportsman1_idx` (`sportsman_id` ASC) VISIBLE,
  INDEX `fk_team_media1_idx` (`media_id` ASC) VISIBLE,
  CONSTRAINT `fk_team_sportsman1`
    FOREIGN KEY (`sportsman_id`)
    REFERENCES `championat`.`sportsman` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_team_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `championat`.`media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

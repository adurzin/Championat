
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


CREATE TABLE IF NOT EXISTS `type_sport` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `type_media`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `type_media` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `media`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `media` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `type_media` INT UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `url` VARCHAR(200) NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_media_type_media1_idx` (`type_media` ASC),
  CONSTRAINT `fk_media_type_media1`
    FOREIGN KEY (`type_media`)
    REFERENCES `type_media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `sportsman` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  `gender` ENUM("m", "f") NOT NULL,
  `birthday_date` DATETIME NOT NULL,
  `country` VARCHAR(45) NOT NULL,
  `type_sport_id` INT UNSIGNED NOT NULL,
  `team_id` INT UNSIGNED NULL DEFAULT NULL,
  `media_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_sportsman_type_sport1_idx` (`type_sport_id` ASC),
  INDEX `fk_sportsman_team1_idx` (`team_id` ASC),
  INDEX `fk_sportsman_media1_idx` (`media_id` ASC),
  CONSTRAINT `fk_sportsman_type_sport1`
    FOREIGN KEY (`type_sport_id`)
    REFERENCES `type_sport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sportsman_team1`
    FOREIGN KEY (`team_id`)
    REFERENCES `team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_sportsman_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `team` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `sportsman_id` INT UNSIGNED NOT NULL,
  `media_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_team_sportsman1_idx` (`sportsman_id` ASC),
  INDEX `fk_team_media1_idx` (`media_id` ASC),
  CONSTRAINT `fk_team_sportsman1`
    FOREIGN KEY (`sportsman_id`)
    REFERENCES `sportsman` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_team_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `tournament` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NOT NULL,
  `type_sport_id` INT UNSIGNED NOT NULL,
  `team_id` INT UNSIGNED NULL DEFAULT NULL,
  `sportsman_id` INT UNSIGNED NULL DEFAULT NULL,
  `media_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `idtournaments_UNIQUE` (`id` ASC),
  INDEX `fk_tournaments_type_sport_idx` (`type_sport_id` ASC),
  INDEX `fk_tournaments_team1_idx` (`team_id` ASC),
  INDEX `fk_tournaments_sportsman1_idx` (`sportsman_id` ASC),
  INDEX `fk_tournament_media1_idx` (`media_id` ASC),
  CONSTRAINT `fk_tournaments_type_sport`
    FOREIGN KEY (`type_sport_id`)
    REFERENCES `type_sport` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tournaments_team1`
    FOREIGN KEY (`team_id`)
    REFERENCES `team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tournaments_sportsman1`
    FOREIGN KEY (`sportsman_id`)
    REFERENCES `sportsman` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_tournament_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `author` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` VARCHAR(45) NOT NULL,
  `lastname` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `news` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `tournament_id` INT UNSIGNED NOT NULL,
  `created_at` DATETIME NOT NULL DEFAULT NOW(),
  `text` MEDIUMTEXT NOT NULL,
  `media_id` INT UNSIGNED NULL DEFAULT NULL,
  `author_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_news_tournaments1_idx` (`tournament_id` ASC),
  INDEX `fk_news_media1_idx` (`media_id` ASC),
  INDEX `fk_news_author1_idx` (`author_id` ASC),
  CONSTRAINT `fk_news_tournaments1`
    FOREIGN KEY (`tournament_id`)
    REFERENCES `tournament` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_news_media1`
    FOREIGN KEY (`media_id`)
    REFERENCES `media` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_news_author1`
    FOREIGN KEY (`author_id`)
    REFERENCES `author` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `status_game` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` ENUM('finished', ' proceed', 'not started ') NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS `game-center` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `tournament_id` INT UNSIGNED NOT NULL,
  `date_game` DATETIME NOT NULL,
  `score` VARCHAR(10) NULL DEFAULT NULL,
  `status_game_id` INT UNSIGNED NOT NULL,
  `team_1_id` INT UNSIGNED NULL DEFAULT NULL,
  `team_2_id` INT UNSIGNED NULL DEFAULT NULL,
  `sportsman_1_id` INT UNSIGNED NULL DEFAULT NULL,
  `sportsman_2_id` INT UNSIGNED NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_game-center_tournaments1_idx` (`tournament_id` ASC),
  INDEX `fk_game-center_status_game1_idx` (`status_game_id` ASC),
  INDEX `fk_game-center_team1_idx` (`team_1_id` ASC),
  INDEX `fk_game-center_sportsman1_idx` (`sportsman_1_id` ASC),
  INDEX `fk_game-center_team2_idx` (`team_2_id` ASC),
  INDEX `fk_game-center_sportsman2_idx` (`sportsman_2_id` ASC),
  UNIQUE INDEX `team_1_team_2` (`team_1_id` ASC, `team_2_id` ASC),
  UNIQUE INDEX `sportsman_1_sportsman_2` (`sportsman_1_id` ASC, `sportsman_2_id` ASC),
  CONSTRAINT `fk_game-center_tournaments1`
    FOREIGN KEY (`tournament_id`)
    REFERENCES `tournament` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_status_game1`
    FOREIGN KEY (`status_game_id`)
    REFERENCES `status_game` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_team1`
    FOREIGN KEY (`team_1_id`)
    REFERENCES `team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_sportsman1`
    FOREIGN KEY (`sportsman_1_id`)
    REFERENCES `sportsman` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_team2`
    FOREIGN KEY (`team_2_id`)
    REFERENCES `team` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_game-center_sportsman2`
    FOREIGN KEY (`sportsman_2_id`)
    REFERENCES `sportsman` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema drillsdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `drillsdb` ;

-- -----------------------------------------------------
-- Schema drillsdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `drillsdb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `drillsdb` ;

-- -----------------------------------------------------
-- Table `drill`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drill` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `drill` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `max_points` DECIMAL(4,2) NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `description` MEDIUMTEXT NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `user` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `first_name` VARCHAR(45) NOT NULL,
  `last_name` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `classification` CHAR(1) NOT NULL,
  `division` CHAR(1) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `drill_data`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `drill_data` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `drill_data` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `time` DECIMAL(4,2) NOT NULL,
  `actual_points` VARCHAR(45) NOT NULL,
  `date` DATE NOT NULL,
  `drill_id` INT NOT NULL,
  `user_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_drill_data_drill1_idx` (`drill_id` ASC),
  INDEX `fk_drill_data_user1_idx` (`user_id` ASC),
  CONSTRAINT `fk_drill_data_drill1`
    FOREIGN KEY (`drill_id`)
    REFERENCES `drill` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_drill_data_user1`
    FOREIGN KEY (`user_id`)
    REFERENCES `user` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

SHOW WARNINGS;
SET SQL_MODE = '';
DROP USER IF EXISTS drilluser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SHOW WARNINGS;
CREATE USER 'drilluser'@'localhost' IDENTIFIED BY 'drilluser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'drilluser'@'localhost';
SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `drill`
-- -----------------------------------------------------
START TRANSACTION;
USE `drillsdb`;
INSERT INTO `drill` (`id`, `max_points`, `name`, `description`) VALUES (1, 30, 'Bill Drill', 'The classic 6 shots from draw on target at 7 yards');
INSERT INTO `drill` (`id`, `max_points`, `name`, `description`) VALUES (2, 20, 'Four Aces', 'Speed Drill: Fire 2, Reload, Fire 2 @ 7 Yards');
INSERT INTO `drill` (`id`, `max_points`, `name`, `description`) VALUES (3, 30, 'Transition Drill', 'Set up three targets at 7 yards, firing 2 shots into each A zone');
INSERT INTO `drill` (`id`, `max_points`, `name`, `description`) VALUES (4, 30, 'Distance Change Up', 'Set up 2 targets at 5 yards and a single partial target at 15 yards in the middle.');
INSERT INTO `drill` (`id`, `max_points`, `name`, `description`) VALUES (5, 40, 'Movement Drill', 'Set up four targets including a vision barrier requiring a visual transition from each array');
INSERT INTO `drill` (`id`, `max_points`, `name`, `description`) VALUES (6, 45, 'Shooting On The Move', 'Engaging targets on the move at 7 yards, set up an array containing 4 targets and a popper. Choose a direction of travel and engage all targets on the move. ');

COMMIT;


-- -----------------------------------------------------
-- Data for table `user`
-- -----------------------------------------------------
START TRANSACTION;
USE `drillsdb`;
INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `classification`, `division`) VALUES (1, 'Nolan', 'Urban', 'nolanurban@gmail.com', 'thenolan', 'B', 'C');
INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `classification`, `division`) VALUES (2, 'Jay', 'Anderson', 'ja@isterrible.org', 'jayanderson', 'C', 'C');
INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `classification`, `division`) VALUES (3, 'Jeff', 'King', 'jkrolling@nonexistant.org', 'jeffking', 'M', 'C');
INSERT INTO `user` (`id`, `first_name`, `last_name`, `email`, `password`, `classification`, `division`) VALUES (4, 'Joel', 'Park', 'jp@gmjp.org', 'joelpark', 'G', 'P');

COMMIT;


-- -----------------------------------------------------
-- Data for table `drill_data`
-- -----------------------------------------------------
START TRANSACTION;
USE `drillsdb`;
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (1, 3.1, '30', '2022-10-25', 1, 1);
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (2, 3.8, '30', '2019-09-15', 1, 2);
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (3, 2.7, '30', '2022-10-14', 1, 3);
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (4, 3.5, '28', '2022-10-13', 2, 1);
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (5, 6.2, '25', '2022-10-12', 2, 1);
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (6, 3.55, '28', '2022-10-11', 3, 1);
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (7, 4.5, '35', '2022-10-9', 4, 1);
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (8, 3.8, '35', '2022-10-17', 5, 1);
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (9, 4.4, '40', '2022-10-17', 6, 1);
INSERT INTO `drill_data` (`id`, `time`, `actual_points`, `date`, `drill_id`, `user_id`) VALUES (10, 1.89, '30', '2022-10-17', 2, 2);

COMMIT;


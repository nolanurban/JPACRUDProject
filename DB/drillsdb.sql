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
  `name` VARCHAR(45) NOT NULL,
  `points_actual` DECIMAL(4,2) ZEROFILL NOT NULL,
  `hit_factor` DECIMAL(4,2) NOT NULL,
  `points_total` DECIMAL(4,2) NOT NULL,
  `time` TIME NOT NULL,
  PRIMARY KEY (`id`))
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
INSERT INTO `drill` (`id`, `name`, `points_actual`, `hit_factor`, `points_total`, `time`) VALUES (1, 'Bill Drill', 30, 12, 30, '2.5');

COMMIT;


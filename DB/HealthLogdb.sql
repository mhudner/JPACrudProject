-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
-- -----------------------------------------------------
-- Schema healthdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `healthdb` ;

-- -----------------------------------------------------
-- Schema healthdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `healthdb` ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user` ;

CREATE TABLE IF NOT EXISTS `user` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


-- -----------------------------------------------------
-- Table `user_1`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_1` ;

CREATE TABLE IF NOT EXISTS `user_1` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);


-- -----------------------------------------------------
-- Table `user_2`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `user_2` ;

CREATE TABLE IF NOT EXISTS `user_2` (
  `username` VARCHAR(16) NOT NULL,
  `email` VARCHAR(255) NULL,
  `password` VARCHAR(32) NOT NULL,
  `create_time` TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP);

USE `healthdb` ;

-- -----------------------------------------------------
-- Table `health_log`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `health_log` ;

CREATE TABLE IF NOT EXISTS `health_log` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NULL,
  `log_date` DATETIME NULL,
  `total_steps` INT NULL,
  `sleep_minutes` INT NULL,
  `water_ounces` INT NULL,
  `mood` VARCHAR(1000) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS healthyMary;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'healthyMary' IDENTIFIED BY 'healthyMary';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'healthyMary';
GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'healthyMary';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `health_log`
-- -----------------------------------------------------
START TRANSACTION;
USE `healthdb`;
INSERT INTO `health_log` (`id`, `user_name`, `log_date`, `total_steps`, `sleep_minutes`, `water_ounces`, `mood`) VALUES (1, 'Mary', '2023-12-12', 7444, 137, 40, 'Slightly irritated and anxious, but fine overwell. ');
INSERT INTO `health_log` (`id`, `user_name`, `log_date`, `total_steps`, `sleep_minutes`, `water_ounces`, `mood`) VALUES (2, 'Mary', '2023-12-13', 6800, 158, 40, 'Slightly irritated and anxious, but fine overwell. ');

COMMIT;


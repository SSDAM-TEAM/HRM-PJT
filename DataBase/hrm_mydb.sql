-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`state`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`state` (
  `state_id` INT NOT NULL,
  `state_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`state_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`access_level`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`access_level` (
  `access_level` INT NOT NULL,
  `access_level_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`access_level`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`location`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`location` (
  `location_id` INT NOT NULL,
  `location_name` VARCHAR(45) NOT NULL,
  `location_address` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`location_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`department`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`department` (
  `department_id` INT NOT NULL,
  `department_name` VARCHAR(45) NOT NULL,
  `department_location_id` INT NOT NULL,
  PRIMARY KEY (`department_id`),
  INDEX `location_id_idx` (`department_location_id` ASC) VISIBLE,
  CONSTRAINT `location_id`
    FOREIGN KEY (`department_location_id`)
    REFERENCES `mydb`.`location` (`location_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`position`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`position` (
  `position_id` INT NOT NULL,
  `position_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`position_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee` (
  `employee_id` VARCHAR(15) NOT NULL,
  `employee_name` VARCHAR(45) NOT NULL,
  `employee_password` VARCHAR(20) NULL,
  `employee_department_id` INT NOT NULL,
  `employee_position_id` INT NOT NULL,
  `employee_phone_num` VARCHAR(45) NULL,
  `employee_address` VARCHAR(45) NULL,
  `employee_birth` VARCHAR(45) NOT NULL,
  `employee_profile` VARCHAR(45) NOT NULL,
  `employee_state` INT NOT NULL,
  `employee_access_level` INT NULL,
  `employee_refresh_token` VARCHAR(100) NULL,
  PRIMARY KEY (`employee_id`),
  INDEX `state_id_idx` (`employee_state` ASC) VISIBLE,
  INDEX `access_level_idx` (`employee_access_level` ASC) VISIBLE,
  INDEX `department_id_idx` (`employee_department_id` ASC) VISIBLE,
  INDEX `position_id_idx` (`employee_position_id` ASC) VISIBLE,
  CONSTRAINT `state_id`
    FOREIGN KEY (`employee_state`)
    REFERENCES `mydb`.`state` (`state_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `access_level`
    FOREIGN KEY (`employee_access_level`)
    REFERENCES `mydb`.`access_level` (`access_level`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `department_id`
    FOREIGN KEY (`employee_department_id`)
    REFERENCES `mydb`.`department` (`department_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `position_id`
    FOREIGN KEY (`employee_position_id`)
    REFERENCES `mydb`.`position` (`position_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`employee_timeline`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`employee_timeline` (
  `commute_history_id` INT NOT NULL AUTO_INCREMENT,
  `employee_id` VARCHAR(15) NOT NULL,
  `employee_timeline_timestamp` VARCHAR(45) NOT NULL,
  `employee_timeline_state` TINYINT NOT NULL,
  `employee_timeline_location` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`commute_history_id`),
  INDEX `employee_id_idx` (`employee_id` ASC) VISIBLE,
  CONSTRAINT `employee_id`
    FOREIGN KEY (`employee_id`)
    REFERENCES `mydb`.`employee` (`employee_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

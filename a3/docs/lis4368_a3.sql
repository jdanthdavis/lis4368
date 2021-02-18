-- MySQL Script generated by MySQL Workbench
-- Thu Feb 18 15:34:47 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema jd19z
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema jd19z
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jd19z` DEFAULT CHARACTER SET utf8 ;
USE `jd19z` ;

-- -----------------------------------------------------
-- Table `jd19z`.`petstore`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jd19z`.`petstore` (
  `pst_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_name` VARCHAR(30) NOT NULL,
  `pst_street` VARCHAR(30) NOT NULL,
  `pst_city` VARCHAR(30) NOT NULL,
  `pst_zip` CHAR(9) NOT NULL,
  `pst_phone` BIGINT UNSIGNED NOT NULL,
  `pst_email` VARCHAR(100) NOT NULL,
  `pst_url` VARCHAR(100) NOT NULL,
  `pst_ytd_sales` DECIMAL(10,2) UNSIGNED NOT NULL,
  `pst_notes` VARCHAR(100) NULL,
  PRIMARY KEY (`pst_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jd19z`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jd19z`.`customer` (
  `cus_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `cus_fname` VARCHAR(15) NOT NULL,
  `cus_lname` VARCHAR(30) NULL,
  `cus_street` VARCHAR(30) NOT NULL,
  `cus_city` VARCHAR(30) NOT NULL,
  `cus_zip` CHAR(9) NOT NULL,
  `cus_phone` BIGINT UNSIGNED NOT NULL,
  `cus_email` VARCHAR(100) NOT NULL,
  `cus_balance` DECIMAL(8,2) UNSIGNED NOT NULL,
  `cus_total_sales` DECIMAL(8,2) UNSIGNED NOT NULL,
  `cus_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`cus_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `jd19z`.`pet`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `jd19z`.`pet` (
  `pet_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_id` SMALLINT UNSIGNED NOT NULL,
  `cus_id` SMALLINT UNSIGNED NULL,
  `pet_type` VARCHAR(45) NOT NULL,
  `pet_sex` ENUM('m', 'f') NOT NULL,
  `pet_cost` DECIMAL(6,2) UNSIGNED NOT NULL,
  `pet_price` DECIMAL(6,2) UNSIGNED NOT NULL,
  `pet_age` TINYINT UNSIGNED NOT NULL,
  `pet_color` VARCHAR(30) NOT NULL,
  `pet_sale_date` DATE NULL,
  `pet_vaccine` ENUM('y', 'n') NOT NULL,
  `pet_neuter` ENUM('y', 'n') NOT NULL,
  `pet_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pet_id`),
  INDEX `fk_pet_petstore_idx` (`pst_id` ASC) VISIBLE,
  INDEX `fk_pet_customer1_idx` (`cus_id` ASC) VISIBLE,
  CONSTRAINT `fk_pet_petstore`
    FOREIGN KEY (`pst_id`)
    REFERENCES `jd19z`.`petstore` (`pst_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_pet_customer1`
    FOREIGN KEY (`cus_id`)
    REFERENCES `jd19z`.`customer` (`cus_id`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

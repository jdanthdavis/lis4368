-- MySQL Script generated by MySQL Workbench
-- Sat Mar 20 21:52:02 2021
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema jd19z
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `jd19z` ;

-- -----------------------------------------------------
-- Schema jd19z
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `jd19z` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `jd19z` ;

-- -----------------------------------------------------
-- Table `jd19z`.`petstore`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jd19z`.`petstore` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `jd19z`.`petstore` (
  `pst_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_name` VARCHAR(30) NOT NULL,
  `pst_street` VARCHAR(30) NOT NULL,
  `pst_city` VARCHAR(30) NOT NULL,
  `pst_state` CHAR(2) NOT NULL,
  `pst_zip` CHAR(9) NOT NULL,
  `pst_phone` BIGINT UNSIGNED NOT NULL,
  `pst_email` VARCHAR(100) NOT NULL,
  `pst_url` VARCHAR(100) NOT NULL,
  `pst_ytd_sales` DECIMAL(10,2) NOT NULL,
  `pst_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`pst_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `jd19z`.`customer`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jd19z`.`customer` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `jd19z`.`customer` (
  `cus_id` SMALLINT UNSIGNED NOT NULL,
  `cus_fname` VARCHAR(15) NOT NULL,
  `cus_lname` VARCHAR(30) NOT NULL,
  `cus_street` VARCHAR(30) NOT NULL,
  `cus_city` VARCHAR(30) NOT NULL,
  `cus_state` CHAR(2) NOT NULL,
  `cus_zip` CHAR(9) NOT NULL,
  `cus_phone` BIGINT UNSIGNED NOT NULL,
  `cus_email` VARCHAR(100) NOT NULL,
  `cus_balance` DECIMAL(6,2) NOT NULL,
  `cus_total_sales` DECIMAL(6,2) NOT NULL,
  `cus_notes` VARCHAR(255) NULL,
  PRIMARY KEY (`cus_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `jd19z`.`pet`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `jd19z`.`pet` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `jd19z`.`pet` (
  `pet_id` SMALLINT UNSIGNED NOT NULL AUTO_INCREMENT,
  `pst_id` SMALLINT UNSIGNED NOT NULL,
  `cus_id` SMALLINT UNSIGNED NULL,
  `pet_type` VARCHAR(45) NOT NULL,
  `pet_sex` ENUM('m', 'f') NOT NULL,
  `pet_cost` DECIMAL(6,2) NOT NULL,
  `pet_price` DECIMAL(6,2) NOT NULL,
  `pet_age` TINYINT NOT NULL,
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

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `jd19z`.`petstore`
-- -----------------------------------------------------
START TRANSACTION;
USE `jd19z`;
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Pet and Store', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.comfakeemail@gmail.com', 'https://www.petstore.com', 6500, NULL);
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Mean Pets', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.com', 'https://www.petstore.com', 7000, NULL);
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Dogs Only', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.com', 'https://www.petstore.com', 10000, NULL);
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Cats Only', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.com', 'https://www.petstore.com', 9999, NULL);
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Reptile Store', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.com', 'https://www.petstore.com', 12345, NULL);
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Cats Store', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.com', 'https://www.petstore.com', 2500, NULL);
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Bird Birches', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.com', 'https://www.petstore.com', 3200, NULL);
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Rat Store', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.com', 'https://www.petstore.com', 3333, NULL);
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Snakes Den', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.com', 'https://www.petstore.com', 6969, NULL);
INSERT INTO `jd19z`.`petstore` (`pst_id`, `pst_name`, `pst_street`, `pst_city`, `pst_state`, `pst_zip`, `pst_phone`, `pst_email`, `pst_url`, `pst_ytd_sales`, `pst_notes`) VALUES (DEFAULT, 'Pet Paradise', '123 Main St.', 'Tallahassee', 'FL', '323568978', 8795410254, 'fakeemail@gmail.com', 'https://www.petstore.com', 4200, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `jd19z`.`customer`
-- -----------------------------------------------------
START TRANSACTION;
USE `jd19z`;
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (1, 'Joel', 'Bill', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 200, 600, NULL);
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (2, 'John', 'Frank', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 3000, 5000, NULL);
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (3, 'Justin', 'John', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 12, 100, NULL);
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (4, 'Brandy', 'Bob', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 5858, 9000, NULL);
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (5, 'Nicole', 'Billy', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 6000, 6500, NULL);
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (6, 'Bob', 'Steve', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 121, 200, NULL);
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (7, 'Brandi', 'Steven', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 50, 60, NULL);
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (8, 'Frank', 'Stephen', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 69, 99, NULL);
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (9, 'Dan', 'Cat', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 420, 1000, NULL);
INSERT INTO `jd19z`.`customer` (`cus_id`, `cus_fname`, `cus_lname`, `cus_street`, `cus_city`, `cus_state`, `cus_zip`, `cus_phone`, `cus_email`, `cus_balance`, `cus_total_sales`, `cus_notes`) VALUES (10, 'Bill', 'Dog', '789 Loop Lane', 'Oregon', 'FL', '258745898', 5685478545, 'fakeemailpet@aol.com', 120, 500, NULL);

COMMIT;


-- -----------------------------------------------------
-- Data for table `jd19z`.`pet`
-- -----------------------------------------------------
START TRANSACTION;
USE `jd19z`;
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 1, 5, 'Dog', 'm', 250, 300, 52, 'white', NULL, 'y', 'n', NULL);
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, 2, 'Dog', 'm', 300, 250, 78, 'brown', NULL, 'y', 'n', NULL);
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 6, NULL, 'Dog', 'm', 3000, 100, 100, 'clear', NULL, 'y', 'n', NULL);
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 4, NULL, 'Dog', 'f', 120, 50, 5, 'purple', NULL, 'y', 'n', NULL);
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 8, NULL, 'Cat', 'f', 10, 65, 3, 'blue', NULL, 'y', 'y', NULL);
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 6, NULL, 'Bird', 'm', 50, 90, 6, 'orange', NULL, 'n', 'y', NULL);
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 5, NULL, 'Snake', 'f', 69, 100, 8, 'teal', NULL, 'n', 'y', NULL);
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 1, NULL, 'Fish', 'm', 532, 600, 7, 'rainbow', NULL, 'n', 'y', NULL);
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 8, NULL, 'Fish', 'f', 365, 900, 8, 'blue', NULL, 'n', 'y', NULL);
INSERT INTO `jd19z`.`pet` (`pet_id`, `pst_id`, `cus_id`, `pet_type`, `pet_sex`, `pet_cost`, `pet_price`, `pet_age`, `pet_color`, `pet_sale_date`, `pet_vaccine`, `pet_neuter`, `pet_notes`) VALUES (DEFAULT, 4, NULL, 'Lion', 'f', 121, 100, 9, 'blue', NULL, 'n', 'y', NULL);

COMMIT;


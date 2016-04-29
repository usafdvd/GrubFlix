-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema grubflix
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `grubflix` ;

-- -----------------------------------------------------
-- Schema grubflix
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `grubflix` DEFAULT CHARACTER SET utf8 ;
USE `grubflix` ;

-- -----------------------------------------------------
-- Table `grubflix`.`customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `grubflix`.`customers` ;

CREATE TABLE IF NOT EXISTS `grubflix`.`customers` (
  `email` VARCHAR(30) NOT NULL,
  `password` VARCHAR(15) NOT NULL,
  `access_level` INT NOT NULL,
  `birthdate` DATETIME NOT NULL,
  `firstname` VARCHAR(15) NOT NULL,
  `lastname` VARCHAR(15) NOT NULL,
  `gender` VARCHAR(1) NULL,
  `phone` INT NOT NULL,
  PRIMARY KEY (`email`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grubflix`.`address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `grubflix`.`address` ;

CREATE TABLE IF NOT EXISTS `grubflix`.`address` (
  `name` VARCHAR(10) NOT NULL,
  `customer_email` VARCHAR(30) NOT NULL,
  `streetaddress` VARCHAR(45) NOT NULL,
  `city` VARCHAR(45) NOT NULL,
  `state` VARCHAR(2) NOT NULL,
  `zip` INT NOT NULL,
  PRIMARY KEY (`name`, `customer_email`),
  CONSTRAINT `fk_address_customer_email`
    FOREIGN KEY (`customer_email`)
    REFERENCES `grubflix`.`customers` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_address_customer_email_idx` ON `grubflix`.`address` (`customer_email` ASC);


-- -----------------------------------------------------
-- Table `grubflix`.`customer_order`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `grubflix`.`customer_order` ;

CREATE TABLE IF NOT EXISTS `grubflix`.`customer_order` (
  `order_id` INT NOT NULL AUTO_INCREMENT,
  `customer_email` VARCHAR(30) NOT NULL,
  `dateorder` DATETIME NULL,
  `status` VARCHAR(15) NOT NULL,
  PRIMARY KEY (`order_id`),
  CONSTRAINT `fk_customerorder_customeremail`
    FOREIGN KEY (`customer_email`)
    REFERENCES `grubflix`.`customers` (`email`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_customerorder_customeremail_idx` ON `grubflix`.`customer_order` (`customer_email` ASC);


-- -----------------------------------------------------
-- Table `grubflix`.`dvds`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `grubflix`.`dvds` ;

CREATE TABLE IF NOT EXISTS `grubflix`.`dvds` (
  `dvd_title` VARCHAR(30) NOT NULL,
  `studio` VARCHAR(45) NULL,
  `released` DATETIME NULL,
  `status` VARCHAR(15) NULL,
  `sound` VARCHAR(20) NULL,
  `versions` VARCHAR(20) NULL,
  `price` DECIMAL(4,2) NULL,
  `rating` VARCHAR(5) NULL,
  `year` VARCHAR(4) NULL,
  `genreid` VARCHAR(25) NOT NULL,
  `aspect` VARCHAR(6) NULL,
  `upc` VARCHAR(15) NULL,
  `dvd_releasedate` DATETIME NULL,
  `id` INT NOT NULL AUTO_INCREMENT,
  `timestamp` DATETIME NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grubflix`.`order_details`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `grubflix`.`order_details` ;

CREATE TABLE IF NOT EXISTS `grubflix`.`order_details` (
  `dvdid` INT NOT NULL,
  `orderid` INT NOT NULL,
  PRIMARY KEY (`dvdid`, `orderid`),
  CONSTRAINT `fk_orderdetails_orderid`
    FOREIGN KEY (`orderid`)
    REFERENCES `grubflix`.`customer_order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_orderdetails_dvdsis`
    FOREIGN KEY (`dvdid`)
    REFERENCES `grubflix`.`dvds` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_orderdetails_orderid_idx` ON `grubflix`.`order_details` (`orderid` ASC);


-- -----------------------------------------------------
-- Table `grubflix`.`food`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `grubflix`.`food` ;

CREATE TABLE IF NOT EXISTS `grubflix`.`food` (
  `food_id` INT NOT NULL AUTO_INCREMENT,
  `type` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`food_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `grubflix`.`food_orders`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `grubflix`.`food_orders` ;

CREATE TABLE IF NOT EXISTS `grubflix`.`food_orders` (
  `foodid` INT NOT NULL,
  `orderid` INT NOT NULL,
  PRIMARY KEY (`foodid`, `orderid`),
  CONSTRAINT `fk_foodorders_foodid`
    FOREIGN KEY (`foodid`)
    REFERENCES `grubflix`.`food` (`food_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_foodorders_orderid`
    FOREIGN KEY (`orderid`)
    REFERENCES `grubflix`.`customer_order` (`order_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE INDEX `fk_foodorders_orderid_idx` ON `grubflix`.`food_orders` (`orderid` ASC);


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `grubflix`.`dvds`
-- -----------------------------------------------------
START TRANSACTION;
USE `grubflix`;
INSERT INTO `grubflix`.`dvds` (`dvd_title`, `studio`, `released`, `status`, `sound`, `versions`, `price`, `rating`, `year`, `genreid`, `aspect`, `upc`, `dvd_releasedate`, `id`, `timestamp`) VALUES ('I Am Batman', NULL, NULL, NULL, NULL, NULL, 25.99, 'R', '2015', 'Action/Adventure', NULL, '123456789', '2015-09-24', 1, NULL);
INSERT INTO `grubflix`.`dvds` (`dvd_title`, `studio`, `released`, `status`, `sound`, `versions`, `price`, `rating`, `year`, `genreid`, `aspect`, `upc`, `dvd_releasedate`, `id`, `timestamp`) VALUES ('I Am Batman', NULL, NULL, NULL, NULL, NULL, 25.99, 'R', '2015', 'Action/Adventure', NULL, '103949545', '2015-09-26', DEFAULT, NULL);

COMMIT;


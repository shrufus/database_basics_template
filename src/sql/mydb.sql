
SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Users` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(200) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `E-Mail` VARCHAR(45) NOT NULL,
  `Telephone` VARCHAR(20) NOT NULL,
  `Role` VARCHAR(20) NOT NULL,
  `role_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `id_UNIQUE` (`id` ASC))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Orders` (
  `user_id` INT NOT NULL,
  `id` INT NOT NULL ,
  `description` VARCHAR(20) NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  UNIQUE INDEX `user_id_UNIQUE` (`user_id` ASC),
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_Order_User`
    FOREIGN KEY (`user_id`)
    REFERENCES `mydb`.`Users` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Access`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Access` (
  `user_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `Role` VARCHAR(20) NOT NULL,
  `role_id` INT NOT NULL,
  UNIQUE INDEX `order_id_UNIQUE` (`order_id` ASC),
  PRIMARY KEY (`order_id`),
  CONSTRAINT `fk_Access_User`
    FOREIGN KEY (`role_id`)
    REFERENCES `mydb`.`Orders` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
  
ENGINE = InnoDB;

-- -----------------------------------------------------
-- Table `mydb`.`Answer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Answers` (
  `user_id` INT NOT NULL,
  `order_id` INT NOT NULL,
  `id` INT NOT NULL,
  `description` VARCHAR(20) NOT NULL,
  `name` VARCHAR(20) NOT NULL,
  `answer_id` INT NOT NULL AUTO_INCREMENT,
  UNIQUE INDEX `answer_id_UNIQUE` (`answer_id` ASC),
  PRIMARY KEY (`answer_id`),
  CONSTRAINT `fk_Answer_User`
    FOREIGN KEY (`order_id`)
    REFERENCES `mydb`.`Orders` (`user_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;




SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`User`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Users` (`id`, `name`, `Password`, `E-Mail`, `Telephone`, `Role`, `role_id`) VALUES (0, 'Igrid Johns', 'pass', 'info@mail.mail', '12345678901', 'Administrator',0);

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Order`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Orders` (`user_id`, `id`,`Description`, `Name`) VALUES (0, 0,'TEST', 'Test');

COMMIT;


-- -----------------------------------------------------
-- Data for table `mydb`.`Access`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`Access` (`user_id`, `order_id`, `Role`, `role_id`) VALUES (0, 0, 'Administratot', 0);

COMMIT;




COMMIT;
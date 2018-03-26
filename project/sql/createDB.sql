CREATE SCHEMA `eshop` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin ;

USE `eshop`;

CREATE TABLE `eshop`.`user` (
  `iduser` INT NOT NULL,
  `username` VARCHAR(255) NULL,
  `password` VARCHAR(255) NULL,
  `userFullName` VARCHAR(255) NULL,
  PRIMARY KEY (`iduser`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;

CREATE TABLE `eshop`.`articles` (
  `idarticles` INT NOT NULL,
  `name` VARCHAR(255) NULL,
  `description` TEXT NULL,
  `image` BLOB NULL,
  PRIMARY KEY (`idarticles`)
)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_bin;
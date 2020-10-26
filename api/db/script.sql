CREATE SCHEMA IF NOT EXISTS `produtos`;
USE `produtos` ;

CREATE TABLE IF NOT EXISTS `produtos`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(250) NOT NULL,
  `price` DECIMAL(10,3),
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO `produtos`.`products` (nome, price) values ('IPHONE X', 3500);
INSERT INTO `produtos`.`products` (nome, price) value ('SANSUNG GALAX', 2700);
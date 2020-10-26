CREATE SCHEMA IF NOT EXISTS `produtos`;
USE `produtos` ;

CREATE TABLE IF NOT EXISTS `produtos`.`products` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nome` VARCHAR(250) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

INSERT INTO (name, price) values ('IPHONE X' 3500),
INSERT INTO (name, price) value ('SANSUNG GALAX', 2700),
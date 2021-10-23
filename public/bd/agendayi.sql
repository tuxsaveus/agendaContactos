CREATE SCHEMA `agendayi` DEFAULT CHARACTER SET utf8mb4;
use agendayi;

CREATE TABLE `agendayi`.`t_categorias` (
  `id_categoria` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(255) NULL,
  `descripcion` TEXT NULL,
  `fechaInsert` DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (`id_categoria`));

  CREATE TABLE `agendayi`.`t_contactos` (
  `id_contacto` INT NOT NULL AUTO_INCREMENT,
  `id_categoria` INT NOT NULL,
  `nombre` VARCHAR(255) NULL,
  `paterno` VARCHAR(255) NULL,
  `materno` VARCHAR(255) NULL,
  `telefono` VARCHAR(255) NULL,
  `email` VARCHAR(255) NULL,
  `fechaInsert` DATETIME NOT NULL DEFAULT now(),
  PRIMARY KEY (`id_contacto`));

ALTER TABLE `agendayi`.`t_contactos`
ADD INDEX `fkContactoCategoria_idx` (`id_categoria` ASC);
;
ALTER TABLE `agendayi`.`t_contactos`
ADD CONSTRAINT `fkContactoCategoria`
  FOREIGN KEY (`id_categoria`)
  REFERENCES `agendayi`.`t_categorias` (`id_categoria`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
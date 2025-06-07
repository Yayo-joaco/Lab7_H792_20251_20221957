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
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`proveedores`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`proveedores` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `razon_social` VARCHAR(100) NOT NULL,
  `nombre_comercial` VARCHAR(100) NOT NULL,
  `ruc` INT(11) NOT NULL,
  `telefono` INT(9) NOT NULL,
  `correo_electronico` VARCHAR(100) NOT NULL,
  `sito_web` VARCHAR(255) NOT NULL,
  `direccion_fisica` VARCHAR(150) NOT NULL,
  `pais` VARCHAR(50) NOT NULL,
  `representante_legal` VARCHAR(150) NOT NULL,
  `dni_representante_legal` INT(8) NOT NULL,
  `tipo_proveedor` ENUM('Nacional', 'Internacional') NOT NULL,
  `categoria` ENUM('Servicios', 'Productos', 'Tecnologia', 'Otros') NOT NULL,
  `facturacion_anual_dolares` DECIMAL NOT NULL,
  `fecha_registro` DATETIME NOT NULL,
  `ultima_actualizacion` DATETIME NOT NULL,
  `estado` TINYINT NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE INDEX `ruc_UNIQUE` (`ruc` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

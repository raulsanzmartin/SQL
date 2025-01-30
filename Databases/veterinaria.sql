
DROP SCHEMA IF EXISTS `veterinaria` ;

-- -----------------------------------------------------
-- Schema veterinaria
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `veterinaria`;
USE `veterinaria` ;

-- -----------------------------------------------------
-- Table `veterinaria`.`clientes`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `veterinaria`.`clientes` ;

CREATE TABLE IF NOT EXISTS `veterinaria`.`clientes` (
  `dni` VARCHAR(9),
  `nombre` VARCHAR(50),
  `direccion` VARCHAR(60),
  PRIMARY KEY (`dni`))
;


-- -----------------------------------------------------
-- Table `veterinaria`.`mascotas`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `veterinaria`.`mascotas` ;

CREATE TABLE IF NOT EXISTS `veterinaria`.`mascotas` (
  `codigo` INT(11) NOT NULL,
  `nombre` VARCHAR(50),
  `raza` VARCHAR(50),
  `cliente` VARCHAR(9),
  PRIMARY KEY (`codigo`),
  CONSTRAINT `mascotas_ibfk_1`
    FOREIGN KEY (`cliente`)
    REFERENCES `veterinaria`.`clientes` (`dni`)
    ON DELETE CASCADE
	ON UPDATE CASCADE)
;


INSERT INTO `clientes` VALUES ('12345678A','Ana Silva','Rosales 54, 3A'),('12456789B','Raúl García','Sol 16, 3C'),('12567891C','Marta Gómez','Alcalá 12, 4E'),('12678912D','Andrés Pastrana','Maldonado 12, 4E'),('12789123F','Clara Sevilla','Sotosancho 11, 2F');
INSERT INTO `mascotas` VALUES (1,'Mascota1 CL1','Raza 1','12345678A'),(2,'Mascota2 CL1','Raza 2','12345678A'),(3,'Mascota3 CL1','Raza 3','12345678A'),(4,'Mascota1 CL2','Raza 4','12456789B'),(5,'Mascota2 CL2','Raza 5','12456789B'),(6,'Mascota3 CL2','Raza 6','12456789B'),(7,'Mascota1 CL3','Raza 7','12567891C'),(8,'Mascota2 CL3','Raza 8','12567891C'),(9,'Mascota3 CL3','Raza 9','12567891C'),(10,'Mascota1 CL4','Raza 10','12678912D'),(11,'Mascota2 CL4','Raza 11','12678912D'),(12,'Mascota3 CL4','Raza 12','12678912D'),(13,'Mascota1 CL5','Raza 13','12789123F'),(14,'Mascota2 CL5','Raza 14','12789123F'),(15,'Mascota3 CL5','Raza 15','12789123F');
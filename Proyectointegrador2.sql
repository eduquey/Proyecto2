CREATE TABLE `proyecto2`.`animales`(
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Genero` varchar(20) NOT NULL,
  `Raza` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
  );  
INSERT INTO `proyecto2`.`animales`(ID, Nombre, genero, raza)
VALUES(1,'tony','macho','bulldog'),(2,'luna','hembra','labrador'),(3,'mateo','macho','husky'),(4,'sol','macho','beagle');
CREATE TABLE `proyecto2`.`personas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Edad` int(3) not NULL,
  `Cedula` int(15) not NULL,
  PRIMARY KEY (`id`)
  );
INSERT INTO `proyecto2`.`personas`(ID, Nombre, apellido, edad, cedula)
VALUES(1,'emmanuel','duque',27,'1216720289'),(2,'gloria','garcia',45,'43514430'),(3,'fabio','lopez',50,'1216720289'),(4,'Paulina','Yarce',20,'1000414230');
CREATE TABLE `proyecto2`.`veterinaria`(
  `id` int NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(50) NOT NULL,
  `Direccion` varchar(100) NOT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`id`)
  );
INSERT INTO `proyecto2`.`veterinaria`(ID, Nombre, direccion, telefono)
VALUES(1,'CatDog','calle 84 # 74-145','6042576696'),(2,'Poopy','calle 32 # 45-156','6048257843'),(3,'Frendlypet','carrera 54 # 12-155','6048347894'),(4,'evolution','carrera 94 # 34-166','6048949995');
CREATE TABLE `proyecto2`.`servicios`(
`id` int NOT NULL AUTO_INCREMENT,
`clienteID` INT(2) NOT NULL,
`pacienteID` INT(2) NOT NULL,
`veterinariaID` INT(2) NOT NULL,
`servicio` varchar(100),
`fechaservicio` date,
FOREIGN KEY (ClienteID) REFERENCES personas(id),
FOREIGN KEY (pacienteID) REFERENCES animales(id),
FOREIGN KEY (veterinariaID) REFERENCES veterinaria(id),
PRIMARY KEY (`id`)
   );
INSERT INTO `proyecto2`.`servicios`(id, clienteID, pacienteID, veterinariaID, servicio, fechaservicio)
VALUES(1, 2, 1, 3, 'peluqueria', '2024-01-19'),(2, 1, 2, 1, 'desparacitacion', '2024-01-17'),(3, 3, 3, 2, 'cirugia', '2024-01-14');

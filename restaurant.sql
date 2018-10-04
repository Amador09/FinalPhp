
CREATE DATABASE IF NOT EXISTS `restaurant`;
USE `restaurant`;


CREATE TABLE IF NOT EXISTS `categorias` (
  `idcategoria` INT(11) NOT NULL AUTO_INCREMENT,
  `nombrecategoria` VARCHAR(150) NOT NULL,
  PRIMARY KEY (`idcategoria`)
) ENGINE=INNODB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;


INSERT INTO `categorias` (`idcategoria`, `nombrecategoria`) VALUES
	(8, 'POSTRES '),
	(9, 'VERDULERIAS  '),
	(13, 'CARNE'),
	(14, 'POLLO'),
	(15, 'PESCADO'),
	(17, 'BEBIDAS '),
	(18, 'PANIFICACIÓN'),
	(19, 'SERVICIO DE MESA'),
	(20, 'PIZZERIA');



CREATE TABLE IF NOT EXISTS `detalles` (
  `iddetalle` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` INT(11) NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`iddetalle`),
  KEY `FK__productos` (`idproducto`),
  KEY `FK_detalles_usuarios` (`idusuario`),
  CONSTRAINT `FK__productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_detalles_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;



INSERT INTO `detalles` (`iddetalle`, `idproducto`, `precio`, `fecha`, `idusuario`, `mesa`) VALUES
	(2, 11, 10, '23-01-2017', 1, 'MESA 1'),
	(3, 19, 117, '19-01-2017', 1, 'MESA 3');


CREATE TABLE IF NOT EXISTS `mesa1` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 1',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa1_productos` (`idproducto`),
  KEY `FK_mesa1_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa1_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa1_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;



INSERT INTO `mesa1` (`idmesa`, `idproducto`, `precio`, `fecha`, `idusuario`, `mesa`) VALUES
	(4, 14, 43, '23-01-2017', 3, 'MESA 1'),
	(5, 18, 40, '24-01-2017', 3, 'MESA 1');

CREATE TABLE IF NOT EXISTS `mesa10` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 10',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mase10_productos` (`idproducto`),
  KEY `FK_mesa10_usuarios` (`idusuario`),
  CONSTRAINT `FK_mase10_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa10_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mesa2` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 2',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa2_productos` (`idproducto`),
  KEY `FK_mesa2_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa2_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa2_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mesa3` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 3',
  PRIMARY KEY (`idmesa`),
  KEY `idproducto` (`idproducto`),
  KEY `FK_mesa3_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa3_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa3_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;




CREATE TABLE IF NOT EXISTS `mesa4` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 4',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa4_productos` (`idproducto`),
  CONSTRAINT `FK_mesa4_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mesa5` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 5',
  PRIMARY KEY (`idmesa`),
  KEY `idproducto` (`idproducto`),
  KEY `FK_mesa5_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa5_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa5_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mesa6` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 6',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa6_productos` (`idproducto`),
  KEY `FK_mesa6_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa6_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa6_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mesa7` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 7',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa7_productos` (`idproducto`),
  KEY `FK_mesa7_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa7_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa7_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`)
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mesa8` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 8',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa8_productos` (`idproducto`),
  KEY `FK_mesa8_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa8_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa8_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `mesa9` (
  `idmesa` INT(11) NOT NULL AUTO_INCREMENT,
  `idproducto` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `fecha` VARCHAR(50) NOT NULL,
  `idusuario` INT(11) NOT NULL,
  `mesa` VARCHAR(50) NOT NULL DEFAULT 'MESA 9',
  PRIMARY KEY (`idmesa`),
  KEY `FK_mesa9_productos` (`idproducto`),
  KEY `FK_mesa9_usuarios` (`idusuario`),
  CONSTRAINT `FK_mesa9_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_mesa9_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `productos` (
  `idproducto` INT(11) NOT NULL AUTO_INCREMENT,
  `nombreproducto` TEXT NOT NULL,
  `idcategoria` INT(11) NOT NULL,
  `precio` DOUBLE NOT NULL,
  `idusuario` INT(11) NOT NULL,
  PRIMARY KEY (`idproducto`),
  KEY `FK_productos_categorias` (`idcategoria`),
  KEY `FK_productos_usuarios` (`idusuario`),
  CONSTRAINT `FK_productos_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_productos_usuarios` FOREIGN KEY (`idusuario`) REFERENCES `usuarios` (`idusuario`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;


INSERT INTO `productos` (`idproducto`, `nombreproducto`, `idcategoria`, `precio`, `idusuario`) VALUES
	(11, 'AGUA C/GAS', 17, 10, 1),
	(12, 'COCA COLA 500CM', 17, 33, 1),
	(13, 'VINO LA CASONA MALBEC', 17, 128, 1),
	(14, 'ENSALADA C/ RÚCULA', 9, 43, 1),
	(15, 'ENSALADA MIXTA', 9, 29, 1),
	(16, 'SODA 500 CM', 17, 17, 1),
	(18, 'HELADOS 2 BOCHAS', 8, 40, 1),
	(19, 'MILANESA C/ FRITAS', 13, 117, 1),
	(20, 'VINO VALDEROBLE TINTO', 17, 100, 1),
	(21, 'FLAN', 8, 40, 1),
	(23, 'COLITA DE CUADRIL', 13, 130, 1),
	(24, '1 SERVICIO DE MESA ', 19, 20, 3),
	(25, '2 SERVICIO DE MESAS', 19, 40, 1),
	(26, '3  SERVICIO DE MESAS', 19, 60, 1),
	(27, '4  SERVICIO DE MESAS', 19, 80, 1),
	(28, '5 SERVICIO DE MESAS', 19, 100, 1),
	(29, '6 SERVICIO DE MESAS', 19, 120, 1),
	(30, '7 SERVICIO DE MESAS', 19, 140, 1),
	(31, '8 SERVICIO DE MESAS', 19, 160, 1),
	(32, '9 SERVICIO DE MESAS', 19, 180, 1),
	(33, '10 SERVICIO DE MESAS', 19, 200, 1);

CREATE TABLE IF NOT EXISTS `proveedores` (
  `idproveedor` INT(11) NOT NULL AUTO_INCREMENT,
  `nombreproveedor` VARCHAR(150) NOT NULL,
  `idcategoria` INT(11) NOT NULL,
  `idproducto` INT(11) NOT NULL,
  PRIMARY KEY (`idproveedor`),
  KEY `idcategoria` (`idcategoria`),
  KEY `idproducto` (`idproducto`),
  CONSTRAINT `FK_proveedores_categorias` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`idcategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_proveedores_productos` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idproducto`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=INNODB DEFAULT CHARSET=latin1;


CREATE TABLE IF NOT EXISTS `reservas` (
  `idreserva` INT(11) NOT NULL AUTO_INCREMENT,
  `nombrecliente` VARCHAR(150) NOT NULL,
  `cantidadpersonas` VARCHAR(150) NOT NULL,
  `telefono` VARCHAR(150) NOT NULL,
  `diallegada` DATE NOT NULL,
  `horallegada` TEXT NOT NULL,
  `observaciones` TEXT NOT NULL,
  PRIMARY KEY (`idreserva`)
) ENGINE=INNODB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;


INSERT INTO `reservas` (`idreserva`, `nombrecliente`, `cantidadpersonas`, `telefono`, `diallegada`, `horallegada`, `observaciones`) VALUES
	(3, 'CARLOS ALVARES', '12', '12345678', '04/10/2018', '10:00', 'LIBRE MESA'),
	(12, 'BIANCA ANIDUZZI', '22', '4584463', '02/10/2018', '22:00', 'Sin Restricciones'),
	(16, 'DIEGO PENNISI', '13', '23455677', '03/10/2018', '20:45', 'VINO GRAN RESERVA\r\n'),
	(17, 'DIEGO PENNISI', '22', '3414584463', '03/10/2018', '21:30', 'SIN PAN'),
	(19, 'BIANCA ANIDUZZI', '14', '153693019', '03/10/2018', '22:00', 'MOZO JULIA\r\n');

CREATE TABLE IF NOT EXISTS `usuarios` (
  `idusuario` INT(11) NOT NULL AUTO_INCREMENT,
  `nombreusuario` VARCHAR(150) NOT NULL,
  `password` VARCHAR(150) NOT NULL,
  `fechacreado` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`idusuario`)
) ENGINE=INNODB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;


INSERT INTO `usuarios` (`idusuario`, `nombreusuario`, `password`, `fechacreado`) VALUES
	(1, 'administrador', '1234', '2016-12-21 21:59:29'),
	(2, 'amador', '123456', '2017-01-23 22:47:34'),
	(3, 'ronal', '12345', '2017-01-23 22:53:00');

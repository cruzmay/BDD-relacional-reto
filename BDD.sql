DROP DATABASE IF EXISTS preciosProductos;

CREATE DATABASE preciosProductos;
USE preciosProductos;

CREATE TABLE `proveedores` (
  `proveedor_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre_proveedor` varchar(100) NOT NULL,
  `pais_origen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`proveedor_id`),
  UNIQUE KEY `uniq_proveedor` (`nombre_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO proveedores VALUES(1,'Coca-Cola','USA'),
(2,'Bimbo','MEX'),
(3,'Corona','MEX'),
(4,'NESCAFE','USA'),
(5,'CAFE-COLOMBIANO','COL'),

CREATE TABLE `productos` (
  `producto_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `producto` varchar(100) NOT NULL,
  `informacion_producto` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`producto_id`),
  UNIQUE KEY `uniq_producto` (`producto`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO productos VALUES(1,'Coca-Cola','Refresco'),
(2,'Pan Blanco','Pan Blanco de mesa'),
(3,'Cerveza Corona','Cerveza amarilla'),
(4,'Cafe Nescafe','Café soluble'),
(5,'Café en grano colombiano','Café en grano'),

CREATE TABLE `precio_USD` (
  `precioUSD_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `precio_USD` int(100) NOT NULL,
  PRIMARY KEY (`precioUSD_id`),
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO precio_USD VALUES(1,2),
(2,3),
(3,3),
(4,2),
(5,1),

CREATE TABLE `precio_MEX` (
  `precioMEX_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `precio_USD` int(100) NOT NULL,
  PRIMARY KEY (`precioMEX_id`),
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO precio_USD VALUES(1,20),
(2,20),
(3,40),
(4,30),
(5,60),

CREATE TABLE `precio_COL` (
  `precioCOL_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `precio_COL` int(100) NOT NULL,
  PRIMARY KEY (`precioCOL_id`),
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

INSERT INTO precio_USD VALUES(1,20),
(2,20),
(3,40),
(4,30),
(5,60),
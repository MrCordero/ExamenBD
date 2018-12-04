DROP DATABASE IF EXISTS bd_ventaVehiculos ;
CREATE DATABASE bd_ventaVehiculos;
USE bd_ventaVehiculos;

CREATE TABLE colorVehiculo(
	id INT AUTO_INCREMENT,
	nombre VARCHAR(30),
	
	PRIMARY KEY(id)
);

INSERT INTO colorVehiculo VALUES(NULL,'verde');
INSERT INTO colorVehiculo VALUES(NULL,'rojo');
INSERT INTO colorVehiculo VALUES(NULL,'negro');
INSERT INTO colorVehiculo VALUES(NULL,'blanco');
INSERT INTO colorVehiculo VALUES(NULL,'gris');
INSERT INTO colorVehiculo VALUES(NULL,'azul');

CREATE TABLE marcaVehiculo(
	id INT AUTO_INCREMENT,
	nombre VARCHAR(30),
	
	PRIMARY KEY(id)
); 

INSERT INTO marcaVehiculo VALUES(NULL,'Audi');
INSERT INTO marcaVehiculo VALUES(NULL,'Chevrolet');
INSERT INTO marcaVehiculo VALUES(NULL,'Honda');
INSERT INTO marcaVehiculo VALUES(NULL,'Suzuki');
INSERT INTO marcaVehiculo VALUES(NULL,'Toyota');

CREATE TABLE vehiculo(
	id INT AUTO_INCREMENT,
	matricula VARCHAR(20),
	marca_id_fk INT,
	modelo VARCHAR(30),
	color_id_fk INT,
	precio INT,
	
	PRIMARY KEY(id),
	UNIQUE(matricula),
	FOREIGN KEY(marca_id_fk) REFERENCES marcaVehiculo(id),
	FOREIGN KEY(color_id_fk) REFERENCES colorVehiculo(id)	
);

INSERT INTO vehiculo VALUES(NULL,'AABB-21',5,'A159',5,1225505);
INSERT INTO vehiculo VALUES(NULL,'AADF-45',4,'MUR41',2,122550);
INSERT INTO vehiculo VALUES(NULL,'ATRB-12',3,'AFEX',4,1990000);
INSERT INTO vehiculo VALUES(NULL,'AAFA-42',2,'HS345',1,2225505);
INSERT INTO vehiculo VALUES(NULL,'DSAG-58',1,'JED56',3,5487505);
INSERT INTO vehiculo VALUES(NULL,'ASFA-67',3,'JED56',3,5487505);
INSERT INTO vehiculo VALUES(NULL,'HAFA-55',5,'JED56',3,5487505);
INSERT INTO vehiculo VALUES(NULL,'AFHD-72',2,'JED56',3,5487505);
INSERT INTO vehiculo VALUES(NULL,'BCAD-57',5,'JED56',3,4234514);
INSERT INTO vehiculo VALUES(NULL,'ASDG-33',2,'JED56',3,1234523);
INSERT INTO vehiculo VALUES(NULL,'NOOB-38',3,'JED56',3,2345135);
INSERT INTO vehiculo VALUES(NULL,'DRAH-56',4,'JED56',3,3413415);   
INSERT INTO vehiculo VALUES(NULL,'GAFS-45',1,'JED56',3,3125135);
INSERT INTO vehiculo VALUES(NULL,'ASGG-23',5,'JED56',3,1241514);
INSERT INTO vehiculo VALUES(NULL,'ADFA-13',3,'JED56',3,5423255);
INSERT INTO vehiculo VALUES(NULL,'DERR-51',5,'JED56',3,13535315);
INSERT INTO vehiculo VALUES(NULL,'AFGG-14',2,'JED56',3,5135135);
INSERT INTO vehiculo VALUES(NULL,'DADF-57',1,'JED56',3,1341355);
INSERT INTO vehiculo VALUES(NULL,'GAGA-37',5,'JED56',3,13453532);
INSERT INTO vehiculo VALUES(NULL,'SGAG-27',3,'JED56',3,124134314);
INSERT INTO vehiculo VALUES(NULL,'DASD-47',4,'JED56',3,5134134);

CREATE TABLE cliente(
	id INT AUTO_INCREMENT,
	rut VARCHAR(26),
	nombre VARCHAR(30),
	direccion VARCHAR(30),
	ciudad VARCHAR(22),
	telefono VARCHAR(20),
	
	PRIMARY KEY(id),
	UNIQUE(rut)
);

INSERT INTO cliente VALUES(NULL,'864-8','Isaac','alvares #1983','Rancagua','+56978645321');
INSERT INTO cliente VALUES(NULL,'123-2','Esteban','el salto #1763','Rancagua','+56978852887');
INSERT INTO cliente VALUES(NULL,'142-5','Florencia','la granja #1873','Rancagua','+56978645333');
INSERT INTO cliente VALUES(NULL,'111-1','Mila','juan strane #1085','Santiago','+56978452255');
INSERT INTO cliente VALUES(NULL,'234-2','Constanza','juan strane #1085','Santiago','+56945874587');
INSERT INTO cliente VALUES(NULL,'333-3','Luis','San Francisco #3442','Rancagua','+56986754854');
INSERT INTO cliente VALUES(NULL,'444-4','Ismael','juan strane #1085','Santiago','+56987541287');
INSERT INTO cliente VALUES(NULL,'555-5','Antonio','Santa Isabel#1123','Santiago','+56945874587');
INSERT INTO cliente VALUES(NULL,'222-2','Andres','Manuel Montt #1585','Rancagua','+56987354324');
INSERT INTO cliente VALUES(NULL,'215-2','Juan','Hola #1324','Santiago','+56968724745');

CREATE TABLE venta(
	id INT AUTO_INCREMENT,
	vehiculo_id_fk INT,
	cliente_id_fk INT,
	fecha DATETIME,
	detalle TEXT,
	
	PRIMARY KEY(id),
	FOREIGN KEY (vehiculo_id_fk) REFERENCES vehiculo(id),
	FOREIGN KEY (cliente_id_fk) REFERENCES cliente(id)
);
INSERT INTO venta VALUES(NULL,4,4,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,1,5,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,3,7,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,9,7,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,8,7,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,2,1,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,21,3,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,5,10,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,6,9,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,7,8,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,15,5,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,16,5,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,14,4,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,10,6,NOW(),'Cliente pago el auto en su totalidad al contado');
INSERT INTO venta VALUES(NULL,11,8,NOW(),'Cliente pago el auto en su totalidad al contado');

	
CREATE TABLE revision(
	id INT AUTO_INCREMENT,
	cliente_id_fk INT,
	vehiculo_id_fk INT,	
	cambio_filtro BOOLEAN,
	cambio_aceite BOOLEAN,
	cambio_freno BOOLEAN,
	revisiones_extras TEXT,
	
	PRIMARY KEY(id),
	FOREIGN KEY (cliente_id_fk) REFERENCES cliente(id),		
	FOREIGN KEY (vehiculo_id_fk) REFERENCES vehiculo(id)
);

INSERT INTO revision VALUES(NULL,4,4,0,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,4,4,1,0,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,7,3,1,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,5,1,0,0,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,5,15,1,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,4,14,0,1,0,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,5,16,0,1,0,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,9,6,1,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,10,5,1,0,0,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,7,9,0,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,8,11,0,0,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,6,10,0,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,3,21,1,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,4,4,1,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,7,8,0,0,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,1,5,1,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,1,2,0,0,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,4,14,1,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,1,2,0,1,0,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,10,5,1,1,1,'no se hizo ningun otro tipo de revision');
INSERT INTO revision VALUES(NULL,5,16,1,1,1,'no se hizo ningun otro tipo de revision');


	




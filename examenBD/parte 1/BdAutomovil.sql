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
INSERT INTO vehiculo VALUES(NULL,'AADF-45',4,'MUR',2,122550);
INSERT INTO vehiculo VALUES(NULL,'ATRB-12',3,'AFEX',4,1990000);
INSERT INTO vehiculo VALUES(NULL,'AAFA-42',2,'HS345',1,2225505);
INSERT INTO vehiculo VALUES(NULL,'DSAG-58',1,'JED56',3,5487505);

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
INSERT INTO cliente VALUES(NULL,'111-1','Mila','Santa cruz #1343','Rancagua','+56978452255');
INSERT INTO cliente VALUES(NULL,'222-2','Constanza','juan strane #1085','Rancagua','+56945874587');

--CREATE TABLE venta(
	--id INT AUTO_INCREMENT,

--);

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










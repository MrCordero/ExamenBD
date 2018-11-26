CREATE DATABASE bd_ventaVehiculos;
USE bd_ventaVehiculos;

CREATE TABLE colorVehiculo(
	id INT AUTO_INCREMENT,
	nombre VARCHAR(30),
	
	PRIMARY KEY(id)
);


CREATE TABLE marcaVehiculo(
	id INT AUTO_INCREMENT,
	nombre VARCHAR(30),
	
	PRIMARY KEY(id)
); 

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
CREATE TABLE venta(
	id INT AUTO_INCREMENT,

);

CREATE TABLE revision(
	id INT AUTO_INCREMENT,
	cliente_id_fk INT,
	vehiculo_id_fk INT,
	cambio_filtro BOOLEAN,
	cambio_aceite BOOLEAN,
	cambio_freno BOOLEAN,
	reviiones_extras TEXT,
	
	PRIMARY KEY(id),
	FOREIGN KEY (cliente_id_fk) REFERENCES cliente(id),
	FOREIGN KEY (vehiculo_id_fk) REFERENCES vehiculo(id)
);










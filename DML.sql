DELETE FROM empleado;
DELETE FROM gerente;
--GERENTE
INSERT INTO gerente
VALUES(
		'12345678P',
		10000,
		'Desarrollo de aplicaciones Web'
	),
	(
		'12345679P',
		10500,
		'Desarrollo de aplicaciones Multiplataforma'
	),
	(
		'12345679W',
		11000,
		'Administracion y Direccion de Empresas'
	),
	(
		'62345679P',
		21000,
		'Gestion de Ventas Internacionales'
	),
	(
		'92345679P',
		30000,
		'Direccion de Empresas'
	),
	(
		'12345678A',
		10000,
		'Desarrollo de aplicaciones Web'
	),
	(
		'12345679B',
		10500,
		'Desarrollo de aplicaciones Multiplataforma'
	),
	(
		'12345679J',
		11000,
		'Administracion y Direccion de Empresas'
	),
	(
		'62345679K',
		21000,
		'Gestion de Ventas Internacionales'
	),
	(
		'92345679Z',
		30000,
		'Direccion de Empresas'
	);
--EMPLEADO
/*
 CREATE TABLE empleado(
 dni VARCHAR(9),
 sueldo MONEY,
 dni_Gerente VARCHAR(9),
 CONSTRAINT PK_Empleado PRIMARY KEY(dni),
 CONSTRAINT FK_Empleado_Gerente FOREIGN KEY(dni_Gerente) REFERENCES gerente(dni)
 );*/
INSERT INTO empleado --CREO que la carnilidad esta invertida
VALUES('9876543P', 900, '12345678P'),
	('9876543J', 900, '12345679P'),
	('9876543W', 900, '12345679W');
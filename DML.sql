DELETE FROM empleado;
DELETE FROM gerente;
--GERENTE
INSERT INTO gerente(dni, sueldoAnual, estudios)
VALUES('', 10000, 'Desarrollo Web'),
	('', 10500, 'Control de Sistemas'),
	('', 11000, 'Direccion de Empresas'),
	('', 21000, 'Gestion de Ventas'),
	('', 30000, 'Direccion de Empresas'),
	('', 10000, 'Desarrollo Web'),
	('', 10500, 'Control de Sistemas'),
	('', 11000, 'Direccion de Empresas'),
	('', 21000, 'Gestion de Ventas'),
	('', 30000, 'Direccion de Empresas'),
	('', 30000, 'Desarrollo Web');
--EMPLEADO
INSERT INTO empleado(dni, nombre, sueldo, dni_Gerente) --CREO que la carnilidad esta invertida
VALUES
	/*Cajeros*/
	('2876543P', 'Juan Sanchis', 900, '12345678P'),
	('2876543X', 'Felipe Sanchez', 900, '12345679P'),
	('2876543W', 'Lorena Lopez', 900, '12345679P'),
	('2876543Y', 'Cristina Sanchez', 900, '12345679P'),
	('2876543J', 'Ramon Williams', 900, '12345679P'),
	('2876543Q', 'Pepe Tamarit', 900, '12345679P'),
	('2876543Z', 'Ana Campayo', 900, '12345679P'),
	('2876543M', 'Felipe Carbonell', 900, '12345679P'),
	('2876543E', 'Juana Sanchez', 900, '12345679P'),
	('2876543W', 'Ipatia Sanchis', 900, '12345679W'),
	('2876542Q', 'Manuel Tamarit', 900, '12345679P'),
	('2876542Z', 'Roberto Lunares', 900, '12345679P'),
	('2876541M', 'Veronica Lopez', 900, '12345679P'),
	('2876541E', 'Ipatia Sanchez', 900, '12345679P'),
	('2876541W', 'David Sanchis', 900, '12345679W'),
	/*Cocineros*/
	('5876543P', 'David Sanchis', 1000, '12345678P'),
	('5876543X', 'Juan Sanchez', 1000, '12345679P'),
	('5876543W', 'Felipe Lopez', 1000, '12345679P'),
	('5876543Y', 'Lorena Sanchez', 1000, '12345679P'),
	('5876543J', 'Cristina Bush', 1000, '12345679P'),
	('5876543Q', 'Ramon Tamarit', 1000, '12345679P'),
	('5876543Z', 'Pepe Campayo', 1000, '12345679P'),
	('5876543M', 'Ana Carbonell', 1000, '12345679P'),
	('5876543E', 'Felipe Sanchez', 1000, '12345679P'),
	('5876543W', 'Juana Sanchis', 1000, '12345679W'),
	('5876542Q', 'Ipatia Tamarit', 1000, '12345679P'),
	('5876542Z', 'Manuel Lunares', 1000, '12345679P'),
	('5876541M', 'Roberto Lopez', 1000, '12345679P'),
	('5876541E', 'Rosa Noel', 1000, '12345679P'),
	('5876541W', 'Ipatia Sanchis', 1000, '12345679W'),
	/*Moteros*/
	('9876543P', 'Felipe Sanchis', 950, '12345678P'),
	('9876543X', 'Lorena Sanchez', 950, '12345679P'),
	('9876543W', 'Cristina Lopez', 950, '12345679P'),
	('9876543Y', 'Ramon Sanchez', 950, '12345679P'),
	('9876543J', 'Pepe Williams', 950, '12345679P'),
	('9876543Q', 'Ana Tamarit', 950, '12345679P'),
	('9876543Z', 'Felipe Campayo', 950, '12345679P'),
	('9876543M', 'Juana Carbonell', 950, '12345679P'),
	('9876543E', 'Ipatia Sanchez', 950, '12345679P'),
	('9876543W', 'Manuel Sanchis', 950, '12345679W'),
	('9876542Q', 'Roberto Tamarit', 950, '12345679P'),
	('9876542Z', 'Veronica Lunares', 950, '12345679P'),
	('9876541M', 'Ipatia Lopez', 950, '12345679P'),
	('9876541E', 'David Sanchez', 950, '12345679P'),
	('9876541W', 'Jonh Sanchis', 950, '12345679W');
--CAJERO
INSERT INTO cajero(dni_Empleado, idiomas)
VALUES('2876541W', 'Español'),
	('2876543P', 'Español'),
	('2876543X', 'Español, Ingles, Aleman'),
	('2876541E', 'Español, Ingles, Aleman'),
	('2876541M', 'Español, Ingles'),
	('2876543W', 'Español, Ingles'),
	('2876543Y', 'Español, Ingles'),
	('2876543J', 'Español, Ingles'),
	('2876543Q', 'Español, Ingles'),
	('2876543Z', 'Español, Aleman'),
	('2876542Z', 'Español, Aleman'),
	('2876543M', 'Español, Aleman'),
	('2876543E', 'Español, Ingles'),
	('2876542Q', 'Español, Ingles'),
	('2876543W', 'Español, Ingles');
--COCINERO
INSERT INTO cocinero(dni_Empleado, antiguedad)
VALUES('5876543P', '01-02-0001'),
	('5876543X', '01-02-0001'),
	('5876543W', '01-02-0001'),
	('5876543Y', '01-02-0001'),
	('5876543J', '01-02-0001'),
	('5876543Q', '01-02-0001'),
	('5876543Z', '10-02-0001'),
	('5876543M', '01-03-0002'),
	('5876543E', '01-03-0002'),
	('5876543W', '01-02-0002'),
	('5876542Q', '11-02-0002'),
	('5876542Z', '01-03-0002'),
	('5876541M', '12-02-0002'),
	('5876541E', '01-03-0002'),
	('5876541W', '01-02-0002');
--MOTERO
INSERT INTO motero(dni_Empleado, tipoCarnet)
VALUES('9876543P', 'A1'),
	('9876543X', 'A1'),
	('9876543W', 'B'),
	('9876543Y', 'B'),
	('9876543J', 'A1'),
	('9876543Q', 'A1'),
	('9876543Z', 'B'),
	('9876543M', 'A1'),
	('9876543E', 'C'),
	('9876543W', 'C'),
	('9876542Q', 'A1'),
	('9876542Z', 'A1'),
	('9876541M', 'A1'),
	('9876541E', 'B'),
	('9876541W', 'A1');
--CONDUCIR
INSERT INTO conducir(
		dni_Empleado,
		tipoCarnet,
		matricula,
		ultimaRevision
	)
VALUES('9876543P', 'A1', '98765-XP', '01-03-2021'),
	('9876543X', 'A1', '88765-XP', '01-01-2021'),
	('9876543W', 'B', '78765-XP', '01-03-2021'),
	('9876543Y', 'B', '68765-XP', '01-01-2021'),
	('9876543J', 'A1', '58765-XP', '01-01-2021'),
	('9876543Q', 'A1', '48765-XP', '01-01-2021'),
	('9876543Z', 'B', '38765-XP', '01-03-2021'),
	('9876543M', 'A1', '28765-XP', '01-01-2021'),
	('9876543E', 'C', '18765-XP', '01-01-2021'),
	('9876543W', 'C', '08765-XP', '01-03-2021'),
	('9876542Q', 'A1', '99765-XP', '01-01-2021'),
	('9876542Z', 'A1', '97765-XP', '01-01-2021'),
	('9876541M', 'A1', '96765-XP', '01-03-2021'),
	('9876541E', 'B', '95765-XP', '01-01-2021'),
	('9876541W', 'A1', '94765-XP', '01-01-2021');
--producto
INSERT INTO producto(nombre, disponibilidad, precio)
VALUES('Aracheesema', true, 07.50),
	('Champiñonisima', true, 04.50),
	('Hawaiana', true, 10.50),
	('Luccia', true, 05.50),
	('Avocato', true, 05.50),
	('Bigotona', true, 03.00),
	('Mar & Tierra', true, 09.50),
	('Canadian', true, 02.50),
	('Cheese Burger', false, 06.50),
	('Cheese Burger Especial', true, 11.50),
	('Cheese Chicken', true, 02.50),
	('Cheese Chicken Especial', true, 08.50),
	('California', false, 10.50),
	('San Sebastián', false, 04.50),
	('Chili Dog', true, 05.50);
--cocinar
INSERT INTO cocinar(id_Producto, dni_Empleado)
VALUES(1, '5876543P'),
	(1, '5876543X'),
	(2, '5876543W'),
	(3, '5876543Y'),
	(10, '5876543P'),
	(11, '5876543P'),
	(12, '5876543Z'),
	(13, '5876543P'),
	(3, '5876543E'),
	(4, '5876543W'),
	(5, '5876542Q'),
	(6, '5876542Z'),
	(7, '5876541M'),
	(10, '5876541E'),
	(1, '5876541W');
--ingrediente
INSERT INTO ingrediente(calorias, caducidad)
VALUES(257, '01-06-2021'),
	(302, '01-06-2021'),
	(201, '01-06-2021'),
	(197, '01-06-2021'),
	(252, '01-06-2021'),
	(273, '01-06-2021'),
	(284, '01-12-2021'),
	(295, '01-06-2021'),
	(256, '15-10-2021'),
	(307, '15-10-2021'),
	(357, '15-10-2021'),
	(258, '15-10-2021'),
	(450, '15-09-2021'),
	(351, '15-09-2021'),
	(357, '15-09-2021');
--tener_Ingrediente
INSERT INTO tener_Ingrediente(id_Producto, id_Ingrediente)
VALUES(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10),
	(11, 11),
	(12, 12),
	(13, 13),
	(14, 14),
	(15, 15);
--producto_Compuesto
INSERT INTO producto_Compuesto(id_Producto1, id_Producto2, fechaFin)
VALUES(1, 1, '2021-06-30'),
	(2, 2, '2021-12-31'),
	(3, 3, '2021-12-31'),
	(4, 4, '2021-12-31'),
	(5, 5, '2021-12-31'),
	(6, 6, '2021-12-31'),
	(7, 7, '2021-12-31'),
	(8, 8, '2021-12-31'),
	(9, 9, '2021-12-31'),
	(10, 10, '2021-06-15'),
	(11, 11, '2021-06-15'),
	(12, 12, '2021-06-15'),
	(13, 13, '2021-06-15'),
	(14, 14, '2021-06-15'),
	(15, 15, '2021-06-15');
--cliente
INSERT INTO cliente(id)
VALUES
	/*Local*/
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	/*Casa*/
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT),
	(DEFAULT);
--cliente_Local
INSERT INTO cliente_Local(id_Cliente, via)
VALUES(1, 'KIOSKO'),
	(2, 'CAJERO'),
	(3, 'CAJERO'),
	(4, 'CAJERO'),
	(5, 'CAJERO'),
	(6, 'KIOSKO'),
	(7, 'KIOSKO'),
	(8, 'KIOSKO'),
	(9, 'KIOSKO'),
	(10, 'CAJERO'),
	(11, 'CAJERO'),
	(12, 'CAJERO'),
	(13, 'COCHE'),
	(14, 'COCHE'),
	(15, 'COCHE');
--cliente_Casa
INSERT INTO cliente_Casa(id_Cliente, direccion)
VALUES(16, 'Calle Suiza 2'),
	(17, 'Calle Suiza 2'),
	(18, 'Calle Suiza 2'),
	(19, 'Calle Suiza 2'),
	(20, 'Calle Suiza 2'),
	(21, 'Calle Suiza 2'),
	(22, 'Calle Suiza 2'),
	(23, 'Calle Suiza 2'),
	(24, 'Calle Suiza 2'),
	(25, 'Calle Suiza 2'),
	(26, 'Calle Suiza 2'),
	(27, 'Calle Suiza 2'),
	(28, 'Calle Suiza 2'),
	(29, 'Calle Suiza 2'),
	(30, 'Calle Suiza 2');
--pedido
INSERT INTO pedido(estado, fechaCompletado)
VALUES
	/*EN LOCAL*/
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	/*EN CASA*/
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10'),
	('EN PREPARACION', '2021-06-10');
--factura
INSERT INTO factura(
		fecha,
		modoPago,
		id_Cliente,
		id_Reclamacion
	)
VALUES --CREO QUE LA CARDINALIDAD ESTA INVERTIDA Y POR ESO ME OBLIGA A QUE TENGA RECLAMACION
	('10-06-2021', 'EFECTIVO', 1, 1);
--reclamacion
INSERT INTO reclamacion(descripcion)
VALUES('Productos frios'),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	(''),
	('');
SELECT *
FROM factura;
--caja
INSERT INTO caja(id, saldo, id_Cliente, dni_Empleado) --CREO QUE LA CARDINALIDAD ESTA INVERTIDA Y POR ESO ME OBLIGA A QUE TENGA CLIENTE
VALUES(250.15, X, '2876543P'),
	(20.01, X, '2876543X'),
	(00.00, X, '2876543W'),
	(100.00, X, '2876543Y'),
	(100.00, X, '2876543J'),
	(100.00, X, '2876543Q'),
	(100.00, X, '2876543Z'),
	(00.00, X, '2876543M'),
	(35.01, X, '2876543E'),
	(270.53, X, '2876543W'),
	(60.04, X, '2876542Q'),
	(100.00, X, '2876542Z'),
	(100.00, X, '2876541M'),
	(100.00, X, '2876541E'),
	(00.00, X, '2876541W');
--corresponder
INSERT INTO corresponder(
		id_Pedido,
		estado,
		fechaCompletado,
		totalProducto,
		id_Factura,
		fecha,
		total,
		modoPago
	)
VALUES();
--entrega_Local
INSERT INTO entrega_Local(id_Cliente, id_Pedido, dni_Empleado)
VALUES(1, 1, '2876541W'),
	(1, 1, '2876543P'),
	(1, 1, '2876543X'),
	(1, 1, '2876541E'),
	(1, 1, '2876541M'),
	(1, 1, '2876543W'),
	(1, 1, '2876543Y'),
	(1, 1, '2876543J'),
	(1, 1, '2876543Q'),
	(1, 1, '2876543Z'),
	(1, 1, '2876542Z'),
	(1, 1, '2876543M'),
	(1, 1, '2876543E'),
	(1, 1, '2876542Q'),
	(1, 1, '2876543W');
--entrega_Casa
INSERT INTO entrega_Casa(id_Cliente, id_Pedido, dni_Empleado)
VALUES(16, 16, '9876543P'),
	(17, 17, '9876543X'),
	(18, 18, '9876543W'),
	(19, 19, '9876543Y'),
	(20, 20, '9876543J'),
	(21, 21, '9876543Q'),
	(22, 22, '9876543Z'),
	(23, 23, '9876543M'),
	(24, 24, '9876543E'),
	(25, 25, '9876543W'),
	(26, 26, '9876542Q'),
	(27, 27, '9876542Z'),
	(28, 28, '9876541M'),
	(29, 29, '9876541E'),
	(30, 30, '9876541W');
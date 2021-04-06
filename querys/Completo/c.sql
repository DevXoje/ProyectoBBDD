/* 3 Select (2 tablas) */
--HECHO
--1
SELECT empleado.nombre
FROM empleado,
	conducir
WHERE empleado.dni = conducir.dni_empleado
	AND TO_CHAR(AGE(NOW(), conducir.ultimaRevision), 'YY') > '01';
--2
SELECT motero.*
FROM motero,
	conducir
WHERE conducir.dni_empleado = motero.dni_empleado;
--3
SELECT motero.dni_empleado,
	cliente_casa.id_Cliente
FROM motero,
	cliente_casa,
	pedido,
	entrega_casa
WHERE entrega_casa.dni_empleado = motero.dni_empleado
	AND entrega_casa.id_cliente = cliente_casa.id_Cliente
	AND entrega_casa.id_pedido = pedido.id;
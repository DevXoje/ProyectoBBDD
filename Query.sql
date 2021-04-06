/* 5 Select */
--HECHO
--1
SELECT *
FROM caja
WHERE caja.saldo IN (0, 100);
--2
SELECT *
FROM producto
WHERE producto.precio < 5;
--3
SELECT *
FROM ingrediente
WHERE ingrediente.calorias > 250;
--4
SELECT *
FROM factura
WHERE factura.modopago = 'EFECTIVO';
--5
SELECT *
FROM pedido
WHERE NOT pedido.estado = 'EN PREPARACION';
/* 2 Update */
--HECHO
--1
UPDATE producto
SET precio = precio + 1
WHERE producto.id IN (
		(
			SELECT producto_Compuesto.id_Producto1
			FROM producto_Compuesto
			WHERE producto_Compuesto.id_Producto1 = producto.id
		),
		(
			SELECT producto_Compuesto.id_Producto2
			FROM producto_Compuesto
			WHERE producto_Compuesto.id_Producto2 = producto.id
		)
	);
--2
UPDATE empleado
SET sueldo = 941
WHERE empleado.sueldo::NUMERIC < 940;
/* 2 Remove */
--HECHO
--1
DELETE FROM producto_compuesto
WHERE producto_compuesto.fechafin < NOW();
--2
DELETE FROM empleado
WHERE empleado.sueldo::NUMERIC > 1000;
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
/* 3 Select (con function) */
--HECHO
--1
SELECT AVG(pedido.totalProductos)
FROM pedido;
--2
SELECT MAX(factura.fecha)
FROM factura;
--3
SELECT *
FROM cocinero
WHERE TO_CHAR(AGE(NOW(), cocinero.antiguedad), 'YY') > '01';
/* 2 Select (Group by) */
--HECHO
--1
SELECT gerente.estudios,
	AVG(gerente.sueldoAnual::numeric)
FROM gerente
GROUP BY gerente.estudios;
-- 2
/*Ingredientes->cantidadProductoQueLoTienen*/
SELECT ingrediente.id,
	SUM(producto.id)
FROM tener_ingrediente,
	producto,
	ingrediente
WHERE tener_ingrediente.id_ingrediente = ingrediente.id
	AND tener_ingrediente.id_producto = producto.id
GROUP BY ingrediente.id;
/* 2 Select (SubConsulta) */
--Hecho
--1
SELECT *
FROM cliente
WHERE cliente.id !=(
		SELECT cliente_casa.id_cliente
		FROM motero,
			cliente_casa,
			pedido,
			entrega_casa
		WHERE entrega_casa.dni_empleado = motero.dni_empleado
			AND entrega_casa.id_cliente = cliente_casa.id_Cliente
			AND entrega_casa.id_pedido = pedido.id
			AND pedido.fechacompletado < '01-01-2021'
	);
--2
SELECT *
FROM empleado
WHERE empleado.sueldo::NUMERIC < 1000
	AND empleado.dni =(
		SELECT cocinero.dni_Empleado
		FROM cocinero
		WHERE TO_CHAR(AGE(NOW(), cocinero.antiguedad), 'YY') > '02'
	);
/* 2 Select (Group by y Having) */
--HECHO
--1
SELECT cliente.id,
	COUNT(factura.id)
FROM cliente,
	factura
WHERE factura.id_cliente = cliente.id
GROUP BY cliente.id
HAVING COUNT(factura.id) > 5;
--2
SELECT producto.nombre,
	COUNT(pedido.id)
FROM pedido,
	producto,
	componer
WHERE componer.id_pedido = pedido.id
	AND componer.id_producto = producto.id
GROUP BY producto.nombre
HAVING COUNT(pedido.id) < 5;
/* 3 Select (SubConsulta con Where y Set) */
--HECHO
--1
UPDATE empleado
SET sueldo = empleado.sueldo::NUMERIC + 150
WHERE empleado.dni =(
		SELECT cajero.dni_empleado
		FROM cajero
		WHERE cajero.idiomas LIKE '%INGLES%'
	);
--2
UPDATE factura
SET modoPago = 'CryptoCurrence'
WHERE factura.id =(
		SELECT factura.id
		FROM factura,
			cliente_local
		WHERE factura.id_Cliente = cliente_local.id_Cliente
	);
--3
UPDATE conducir
SET ultimaRevision = NOW()
WHERE conducir.dni_empleado =(
		SELECT motero.dni_empleado
		FROM motero
		WHERE motero.tipocarnet = 'A1'
	);
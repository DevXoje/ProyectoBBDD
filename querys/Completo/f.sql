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
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
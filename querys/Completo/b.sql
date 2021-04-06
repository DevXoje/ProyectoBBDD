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
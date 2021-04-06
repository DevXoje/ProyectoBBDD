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
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
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
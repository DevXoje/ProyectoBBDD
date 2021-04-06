/* 5 Select */
--HECHO
--1
SELECT *
FROM caja
WHERE caja.saldo IN (0, 100);
--2
SELECT *
FROM motero
WHERE motero.tipocarnet = 'A1';
--3
SELECT *
FROM producto
WHERE producto.precio < 5;
--4
SELECT *
FROM ingrediente
WHERE ingrediente.calorias > 250;
--5
SELECT *
FROM factura
WHERE factura.modopago = 'EFECTIVO';
--6
SELECT *
FROM pedido
WHERE NOT pedido.estado = 'EN PREPARACION';
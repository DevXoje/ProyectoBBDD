DROP TABLE entrega_casa;
DROP TABLE entrega_local;
DROP TABLE corresponder;
DROP TABLE componer;
DROP TABLE caja;
DROP TABLE factura;
DROP TABLE pedido;
DROP TABLE reclamacion;
DROP TABLE cliente_casa;
DROP TABLE cliente_local;
DROP TABLE cliente;
DROP TABLE producto_compuesto;
DROP TABLE tener_ingrediente;
DROP TABLE ingrediente;
DROP TABLE cocinar;
DROP TABLE producto;
DROP TABLE conducir;
DROP TABLE cajero;
DROP TABLE cocinero;
DROP TABLE motero;
DROP TABLE empleado;
DROP TABLE gerente;
CREATE TABLE gerente(
	dni VARCHAR(9),
	sueldoAnual MONEY,
	estudios VARCHAR(60),
	CONSTRAINT PK_Gerente PRIMARY KEY(dni)
);
CREATE TABLE empleado(
	dni VARCHAR(9),
	nombre VARCHAR(30),
	sueldo MONEY,
	dni_Gerente VARCHAR(9),
	CONSTRAINT PK_Empleado PRIMARY KEY(dni),
	CONSTRAINT FK_Empleado_Gerente FOREIGN KEY(dni_Gerente) REFERENCES gerente(dni)
);
CREATE TABLE cajero(
	dni_Empleado VARCHAR(9),
	idiomas VARCHAR(30),
	CONSTRAINT PK_Cajero PRIMARY KEY(dni_Empleado),
	CONSTRAINT FK_Cajero_Empleado FOREIGN KEY(dni_Empleado) REFERENCES empleado(dni)
);
CREATE TABLE cocinero(
	dni_Empleado VARCHAR(9),
	antiguedad DATE,
	CONSTRAINT PK_Cocinero PRIMARY KEY(dni_Empleado),
	CONSTRAINT FK_Cocinero_Empleado FOREIGN KEY(dni_Empleado) REFERENCES empleado(dni)
);
CREATE TABLE motero(
	dni_Empleado VARCHAR(9),
	tipoCarnet VARCHAR(5),
	CONSTRAINT PK_Motero PRIMARY KEY(dni_Empleado),
	CONSTRAINT FK_Motero_Empleado FOREIGN KEY(dni_Empleado) REFERENCES empleado(dni)
);
CREATE TABLE conducir(
	dni_Empleado VARCHAR(9),
	tipoCarnet VARCHAR(30),
	matricula VARCHAR(9) UNIQUE NOT NULL,
	ultimaRevision DATE,
	CONSTRAINT PK_Conducir PRIMARY KEY(dni_Empleado)
);
CREATE TABLE producto(
	id Serial,
	nombre VARCHAR(30),
	disponibilidad BOOLEAN,
	precio DECIMAL(4, 2),
	CONSTRAINT PK_producto PRIMARY KEY(id)
);
CREATE TABLE cocinar(
	id_Producto SERIAL,
	dni_Empleado VARCHAR(9),
	CONSTRAINT PK_Cocinar PRIMARY KEY (id_Producto, dni_Empleado),
	CONSTRAINT FK_Cocinar_Producto FOREIGN KEY(id_Producto) REFERENCES producto(id),
	CONSTRAINT FK_Cocinar_Empleado FOREIGN KEY(dni_Empleado) REFERENCES Cocinero(dni_Empleado)
);
CREATE TABLE ingrediente(
	id SERIAL,
	calorias SMALLINT,
	caducidad DATE,
	CONSTRAINT PK_Ingrediente PRIMARY KEY(id)
);
CREATE TABLE tener_Ingrediente(
	id_Producto SERIAL,
	id_Ingrediente SERIAL,
	CONSTRAINT PK_tener_Ingrediente PRIMARY KEY(id_Producto, id_Ingrediente),
	CONSTRAINT FK_tener_Ingrediente_Producto FOREIGN KEY(id_Producto) REFERENCES producto(id),
	CONSTRAINT FK_tener_Ingrediente_Ingrediente FOREIGN KEY(id_Ingrediente) REFERENCES ingrediente(id)
);
CREATE TABLE producto_Compuesto(
	id_Producto1 SERIAL,
	id_Producto2 SERIAL,
	fechaFin DATE,
	CONSTRAINT PK_producto_Compuesto PRIMARY KEY(id_Producto1, id_Producto2),
	CONSTRAINT FK_producto_Compuesto_Producto1 FOREIGN KEY(id_Producto1) REFERENCES producto(id),
	CONSTRAINT FK_producto_Compuesto_Producto2 FOREIGN KEY(id_Producto2) REFERENCES producto(id)
);
CREATE TABLE cliente(
	id SERIAL,
	CONSTRAINT PK_Cliente PRIMARY KEY(id)
);
CREATE TABLE cliente_Local(
	id_Cliente SERIAL,
	via VARCHAR(30) UNIQUE NOT NULL,
	CONSTRAINT PK_Cliente_Local PRIMARY KEY(id_Cliente)
);
CREATE TABLE cliente_Casa(
	id_Cliente SERIAL,
	direccion VARCHAR(100) UNIQUE NOT NULL,
	CONSTRAINT PK_Cliente_Casa PRIMARY KEY(id_Cliente)
);
CREATE TABLE reclamacion(
	id SERIAL,
	descripcion TEXT,
	CONSTRAINT PK_Reclamacion PRIMARY KEY(id)
);
CREATE TABLE pedido(
	id SERIAL,
	estado VARCHAR(20),
	fechaCompletado DATE,
	totalProductos SMALLINT,
	CONSTRAINT PK_Pedido PRIMARY KEY(id)
);
CREATE TABLE factura(
	id SERIAL,
	fecha DATE,
	modoPago VARCHAR(20),
	id_Cliente SERIAL NOT NULL,
	id_Reclamacion SERIAL,
	CONSTRAINT PK_Factura PRIMARY KEY(id),
	CONSTRAINT FK_Factura_Cliente FOREIGN KEY(id_Cliente) REFERENCES cliente(id),
	CONSTRAINT FK_Factura_Reclamacion FOREIGN KEY(id_Reclamacion) REFERENCES reclamacion(id)
);
CREATE TABLE caja(
	id SERIAL,
	saldo SMALLINT,
	id_Cliente SERIAL NOT NULL,
	dni_Empleado VARCHAR(9),
	CONSTRAINT PK_Caja PRIMARY KEY(id),
	CONSTRAINT FK_Caja_Cliente FOREIGN KEY(id_Cliente) REFERENCES cliente(id),
	CONSTRAINT FK_Caja_Empleado FOREIGN KEY(dni_Empleado) REFERENCES cajero(dni_Empleado)
);
CREATE TABLE corresponder(
	id_Pedido SERIAL,
	estado VARCHAR(20),
	fechaCompletado DATE,
	totalProducto SMALLINT,
	id_Factura SERIAL UNIQUE NOT NULL,
	fecha DATE,
	total SMALLINT,
	modoPago VARCHAR(20),
	CONSTRAINT PK_Corresponder PRIMARY KEY(id_Pedido)
);
CREATE TABLE componer(
	id_Pedido SERIAL,
	id_Producto SERIAL,
	cantidad SMALLINT,
	CONSTRAINT PK_Componer PRIMARY KEY(id_Pedido, id_Producto),
	CONSTRAINT FK_Componer_Pedido FOREIGN KEY(id_Pedido) REFERENCES pedido(id),
	CONSTRAINT FK_Componer_Producto FOREIGN KEY(id_Producto) REFERENCES producto(id)
);
CREATE TABLE entrega_Local(
	id_Cliente SERIAL,
	id_Pedido SERIAL NOT NULL,
	dni_Empleado VARCHAR(9) NOT NULL,
	CONSTRAINT PK_Entrega_Local PRIMARY KEY(id_Cliente, dni_Empleado),
	CONSTRAINT FK_Entrega_Local_Local FOREIGN KEY(id_Cliente) REFERENCES cliente_Local(id_Cliente),
	CONSTRAINT FK_Entrega_Local_Pedido FOREIGN KEY(id_Pedido) REFERENCES pedido(id),
	CONSTRAINT FK_Entrega_Local_Cajero FOREIGN KEY(dni_Empleado) REFERENCES cajero(dni_Empleado),
	UNIQUE(id_Pedido, dni_Empleado)
);
CREATE TABLE entrega_Casa(
	id_Cliente SERIAL,
	id_Pedido SERIAL NOT NULL,
	dni_Empleado VARCHAR(9) NOT NULL,
	CONSTRAINT PK_Entrega_Casa PRIMARY KEY(id_Cliente, dni_Empleado),
	CONSTRAINT FK_Entrega_Casa_Casa FOREIGN KEY(id_Cliente) REFERENCES cliente_Casa(id_Cliente),
	CONSTRAINT FK_Entrega_Casa_Pedido FOREIGN KEY(id_Pedido) REFERENCES pedido(id),
	CONSTRAINT FK_Entrega_Casa_Motero FOREIGN KEY(dni_Empleado) REFERENCES motero(dni_Empleado),
	UNIQUE(id_Pedido, dni_Empleado)
);
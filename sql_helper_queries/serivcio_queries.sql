INSERT INTO centroDeServicio(idCentro, nombre, direccion) VALUES (10072004, 'Epic Solutions', 'Rio Hondo, ITAM');

-- PERMISO ID=10 --> ADMIN
INSERT INTO usuario (idUsuario, idCentro, nombre, telefono, correo, hashedPassword) VALUES (1, 10072004, 'Gerardo Obeid Guzm�n','5510070655', 'obeidgerardo@gmail.com', 'admin');
INSERT INTO permiso (idUsuario, idPermiso) VALUES (1, 10);
SELECT * FROM usuario INNER JOIN permiso ON usuario.idUsuario=permiso.idUsuario

INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (1, 10072004, 'Lupita Gutierrez','5554344342', 'lupisgut@gmail.com', 'Coyoacan esquina con Iglesia #13', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (2, 10072004, 'Juan Armando Ruiz','5554344342', 'ruizarmado@gmail.com', 'Coyoacan Cerro del Agua #23', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (5, 10072004, 'Samuel Ordu�a','5554344342', 'samord@gmail.com', '�lvaro Obreg�n Iglesia #30', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (6, 10072004, 'Plutarco Calles','5554344342', 'placall@gmail.com', '�lvaro Obreg�n Cincinati  #25', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (7, 10072004, 'Mariana L�pez','5554344342', 'mariana@gmail.com', 'Coyoacan Calle Principal #17', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (8, 10072004, 'Eduardo Ram�rez','5554344342', 'eduram@gmail.com', '�lvaro Obreg�n Plaza Principal #22', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (9, 10072004, 'Carolina S�nchez','5554344342', 'carosan@gmail.com', 'Coyoacan Jard�n Central #35', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10, 10072004, 'Alejandro Rodr�guez','5554344342', 'alerod@gmail.com', '�lvaro Obreg�n Avenida Principal #40', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (11, 10072004, 'Valeria Mendoza','5554344342', 'valemen@gmail.com', 'Coyoacan Calle del Sol #11', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (12, 10072004, 'Javier P�rez','5554344342', 'javperez@gmail.com', '�lvaro Obreg�n Avenida de las Flores #18', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (13, 10072004, 'Lorena Garc�a','5554344342', 'loregar@gmail.com', 'Coyoacan Paseo de la Luna #23', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (14, 10072004, 'Ricardo Hern�ndez','5554344342', 'ricardo@gmail.com', '�lvaro Obreg�n Calle del R�o #30', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (15, 10072004, 'Patricia Soto','5554344342', 'patriso@gmail.com', 'Coyoacan Avenida de los P�jaros #14', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (16, 10072004, 'Manuel G�mez','5554344342', 'mangom@gmail.com', '�lvaro Obreg�n Calle de las Estrellas #21', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (17, 10072004, 'Sof�a Torres','5554344342', 'softor@gmail.com', 'Coyoacan Avenida de los Sue�os #27', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (18, 10072004, 'Andr�s Mart�nez','5554344342', 'andmart@gmail.com', '�lvaro Obreg�n Calle de los Deseos #33', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (19, 10072004, 'Fernanda Vargas','5554344342', 'fervar@gmail.com', 'Coyoacan Calle de la Alegr�a #9', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (20, 10072004, 'Joaqu�n Salazar','5554344342', 'joasal@gmail.com', '�lvaro Obreg�n Avenida de la Paz #16', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (21, 10072004, 'Elena Ram�rez','5554344342', 'elenara@gmail.com', 'Coyoacan Calle de la Esperanza #22', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (22, 10072004, 'Pedro Garc�a','5554344342', 'pedrogar@gmail.com', '�lvaro Obreg�n Avenida de la Libertad #29', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (23, 10072004, 'Ana Mart�nez','5554344342', 'anamar@gmail.com', 'Coyoacan Calle de la Victoria #35', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (24, 10072004, 'H�ctor S�nchez','5554344342', 'hecsan@gmail.com', '�lvaro Obreg�n Avenida de los H�roes #12', 0, 'prueba');


INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (10, 1, 'Tamales la Lupita','5554344342', 'Centro de Coyoacan con Iglesia #13', 'comida');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (20, 2, 'Globos Ruise�or','5554344342', 'Oasis Coyoacan', 'fiestas');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (40, 4, 'Dulces Sabrositos','5554344342', 'Coyoacan Plaza de los Sabores #7', 'dulces');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (50, 5, 'Decoraciones FiestaLoca','5554344342', '�lvaro Obreg�n Calle de las Decoraciones #14', 'fiestas');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (60, 6, 'PizzaRica','5554344342','�lvaro Obreg�n Calle de las Decoraciones #43', 'fiestas');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (70, 7, 'Caf� Arom�tico','5554344342', 'Coyoacan Caf� Central #21', 'bebidas');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (80, 8, 'Dulcer�a Felicidad','5554344342', '�lvaro Obreg�n Calle de la Dulzura #28', 'dulces');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (90, 9, 'Fotograf�a Estudio Creativo','5554344342', 'Coyoacan Estudio Fotogr�fico #35', 'fotograf�a');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (100, 10, 'Tacos al Pastor','5554344342', '�lvaro Obreg�n Taquer�a #12', 'comida');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (110, 11, 'Dise�o de Invitaciones','5554344342', 'Coyoacan Dise�os Creativos #19', 'invitaciones');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (120, 12, 'Reposter�a Delicias','5554344342', '�lvaro Obreg�n Reposter�a #26', 'reposter�a');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (130, 13, 'Flores Frescas','5554344342', 'Coyoacan Florer�a #33', 'flores');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (140, 14, 'Entretenimiento Magia','5554344342', '�lvaro Obreg�n Show de Magia #40', 'entretenimiento');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (150, 15, 'Luces y Sonido Eventos','5554344342', 'Coyoacan Luces y Sonido #15', 'eventos');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (160, 16, 'Decoraci�n Globos','5554344342', '�lvaro Obreg�n Decoraciones con Globos #22', 'decoraci�n');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (170, 17, 'M�sica en Vivo','5554344342', 'Coyoacan Escenario Musical #29', 'm�sica');

INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (1, 'Tamal Verde', 20, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (2, 'Tamal Rojo', 20, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (3, 'Atole de Chocolate', 18, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (4, 'Tamales de Pollo', 15, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (5, 'Tamales de Cerdo', 15, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (6, 'Tamales Vegetarianos', 15, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (7, 'Tamales de Elote', 12, 1, 10, 'producto');
-- Proveedor 20 - Globos Ruise�or (�rea: Fiestas)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (8, 'Globos de Colores', 5.99, 1, 20, 'producto'),
       (9, 'Decoraci�n de Globos', 12.99, 1, 20, 'servicio');

-- Proveedor 40 - Dulces Sabrositos (�rea: Dulces)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (10, 'Paletas de Caramelo', 0.99, 1, 40, 'producto'),
       (11, 'Bolsas de Chocolates', 8.99, 1, 40, 'producto'),
       (12, 'Distribuci�n de Dulces', 25.99, 1, 40, 'servicio');

-- Proveedor 50 - Decoraciones FiestaLoca (�rea: Fiestas)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (13, 'Globos de Fiesta', 3.99, 1, 50, 'producto'),
       (14, 'Decoraci�n de Mesas', 15.99, 1, 50, 'servicio');

-- Proveedor 60 - PizzaRica (�rea: Fiestas)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (15, 'Pizza de Pepperoni', 10.99, 1, 60, 'producto'),
       (16, 'Pizza de Vegetales', 11.99, 1, 60, 'producto');

-- Proveedor 70 - Caf� Arom�tico (�rea: Bebidas)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (17, 'Caf� Americano', 3.49, 1, 70, 'producto'),
       (18, 'Caf� Espresso', 4.99, 1, 70, 'producto');

-- Proveedor 80 - Dulcer�a Felicidad (�rea: Dulces)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (19, 'Chocolates Variados', 2.99, 1, 80, 'producto'),
       (20, 'Cajas de Bombones', 6.99, 1, 80, 'producto');

-- Proveedor 90 - Fotograf�a Estudio Creativo (�rea: Fotograf�a)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (21, 'Sesi�n de Retratos', 99.99, 1, 90, 'servicio'),
       (22, 'Fotograf�a de Eventos', 199.99, 1, 90, 'servicio');

-- Proveedor 100 - Tacos al Pastor (�rea: Comida)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (23, 'Tacos al Pastor', 1.99, 1, 100, 'producto'),
       (24, 'Salsas Variadas', 0.99, 1, 100, 'producto');

-- Proveedor 110 - Dise�o de Invitaciones (�rea: Invitaciones)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (25, 'Invitaciones Personalizadas', 9.99, 1, 110, 'producto'),
       (26, 'Dise�o Gr�fico', 49.99, 1, 110, 'servicio');

-- Proveedor 120 - Reposter�a Delicias (�rea: Reposter�a)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (27, 'Pasteles Decorativos', 29.99, 1, 120, 'producto'),
       (28, 'Cupcakes Variados', 2.49, 1, 120, 'producto');

-- Proveedor 130 - Flores Frescas (�rea: Flores)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (29, 'Ramos de Flores', 19.99, 1, 130, 'producto'),
       (30, 'Decoraci�n Floral', 39.99, 1, 130, 'servicio');

-- Proveedor 140 - Entretenimiento Magia (�rea: Entretenimiento)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (31, 'Show de Magia en Vivo', 99.99, 1, 140, 'servicio');

-- Proveedor 150 - Luces y Sonido Eventos (�rea: Eventos)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (32, 'Equipo de Sonido', 49.99, 1, 150, 'servicio');

-- Proveedor 160 - Decoraci�n Globos (�rea: Decoraci�n)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (33, 'Decoraciones con Globos', 7.99, 1, 160, 'producto'),
       (34, 'Globos Especiales', 2.99, 1, 160, 'producto');

-- Proveedor 170 - M�sica en Vivo (�rea: M�sica)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (35, 'Grupo Musical en Vivo', 199.99, 1, 170, 'servicio');
-----------------------------------------------------------------------------------------------------------
-- Pedidos para Cliente 18
INSERT INTO pedido (idPedido, fecha_creacion, fecha_entrega, claveBien, idProveedor, idCliente)
VALUES (1, '2023-10-16', '2023-10-20', 8, 20, 18),
       (2, '2023-10-16', '2023-10-19', 9, 20, 18),
       (3, '2023-10-16', '2023-10-18', 15, 60, 18);

-- Pedidos para Cliente 19
INSERT INTO pedido (idPedido, fecha_creacion, fecha_entrega, claveBien, idProveedor, idCliente)
VALUES (4, '2023-10-16', '2023-10-20', 11, 40, 19),
       (5, '2023-10-16', '2023-10-19', 13, 50, 19),
       (6, '2023-10-16', '2023-10-18', 21, 90, 19);

-- Pedidos para Cliente 20
INSERT INTO pedido (idPedido, fecha_creacion, fecha_entrega, claveBien, idProveedor, idCliente)
VALUES (7, '2023-10-16', '2023-10-20', 23, 100, 20),
       (8, '2023-10-16', '2023-10-19', 25, 110, 20),
       (9, '2023-10-16', '2023-10-18', 31, 140, 20);

-- Pedidos para Cliente 21
INSERT INTO pedido (idPedido, fecha_creacion, fecha_entrega, claveBien, idProveedor, idCliente)
VALUES (10, '2023-10-16', '2023-10-20', 10, 40, 21),
       (11, '2023-10-16', '2023-10-19', 12, 40, 21),
       (12, '2023-10-16', '2023-10-18', 32, 150, 21);

-- Pedidos para Cliente 22
INSERT INTO pedido (idPedido, fecha_creacion, fecha_entrega, claveBien, idProveedor, idCliente)
VALUES (13, '2023-10-16', '2023-10-20', 17, 70, 22),
       (14, '2023-10-16', '2023-10-19', 19, 80, 22),
       (15, '2023-10-16', '2023-10-18', 33, 160, 22);

-- Pedidos para Cliente 23
INSERT INTO pedido (idPedido, fecha_creacion, fecha_entrega, claveBien, idProveedor, idCliente)
VALUES (16, '2023-10-16', '2023-10-20', 8, 20, 23),
       (17, '2023-10-16', '2023-10-19', 9, 20, 23),
       (18, '2023-10-16', '2023-10-18', 15, 60, 23);

-- Pedidos para Cliente 24
INSERT INTO pedido (idPedido, fecha_creacion, fecha_entrega, claveBien, idProveedor, idCliente)
VALUES (19, '2023-10-16', '2023-10-20', 11, 40, 24),
       (20, '2023-10-16', '2023-10-19', 13, 50, 24),
       (21, '2023-10-16', '2023-10-18', 21, 90, 24);


SELECT * FROM pedido WHERE fecha_entrega >= GETDATE()
SELECT TOP 8 area AS XProperty, COUNT(*) AS YProperty FROM pedido ped INNER JOIN proveedor p ON p.idProveedor = ped.idProveedor GROUP BY area ORDER BY YProperty desc
select * from proveedor p inner join bien c on p.idProveedor=c.idProveedor inner join producto prod on prod.clave=c.clave where p.idCliente=(SELECT idCliente FROM cliente WHERE nombre = 'Lupita Gutierrez');

SELECT ped.idPedido as ID Pedido,ped.fecha_creacion as Fecha Creacion,
                ped.fecha_entrega as Fecha Entrega, ped.monto as Monto, ped.cantidad as Cantidad, ped.comentarios as Comentarios,
                 c.nombre as Nombre Cliente, b.nombre as Nombre Bien
                FROM pedido ped INNER JOIN bien b ON b.clave=ped.claveBien 
                INNER JOIN cliente c on c.idCliente=ped.idCliente
                WHERE fecha_entrega >= GETDATE()

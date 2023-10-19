INSERT INTO centroDeServicio(idCentro, nombre, direccion) VALUES (10072004, 'Epic Solutions', 'Rio Hondo, ITAM');

-- PERMISO ID=10 --> ADMIN
INSERT INTO usuario (idUsuario, idCentro, nombre, telefono, correo, hashedPassword) VALUES (1, 10072004, 'Gerardo Obeid Guzmán','5510070655', 'obeidgerardo@gmail.com', 'admin');
INSERT INTO permiso (idUsuario, idPermiso) VALUES (1, 10);
SELECT * FROM usuario INNER JOIN permiso ON usuario.idUsuario=permiso.idUsuario

INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (1, 10072004, 'Lupita Gutierrez','5554344342', 'lupisgut@gmail.com', 'Coyoacan esquina con Iglesia #13', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (2, 10072004, 'Juan Armando Ruiz','5554344342', 'ruizarmado@gmail.com', 'Coyoacan Cerro del Agua #23', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (5, 10072004, 'Samuel Orduña','5554344342', 'samord@gmail.com', 'Álvaro Obregón Iglesia #30', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (6, 10072004, 'Plutarco Calles','5554344342', 'placall@gmail.com', 'Álvaro Obregón Cincinati  #25', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (7, 10072004, 'Mariana López','5554344342', 'mariana@gmail.com', 'Coyoacan Calle Principal #17', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (8, 10072004, 'Eduardo Ramírez','5554344342', 'eduram@gmail.com', 'Álvaro Obregón Plaza Principal #22', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (9, 10072004, 'Carolina Sánchez','5554344342', 'carosan@gmail.com', 'Coyoacan Jardín Central #35', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10, 10072004, 'Alejandro Rodríguez','5554344342', 'alerod@gmail.com', 'Álvaro Obregón Avenida Principal #40', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (11, 10072004, 'Valeria Mendoza','5554344342', 'valemen@gmail.com', 'Coyoacan Calle del Sol #11', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (12, 10072004, 'Javier Pérez','5554344342', 'javperez@gmail.com', 'Álvaro Obregón Avenida de las Flores #18', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (13, 10072004, 'Lorena García','5554344342', 'loregar@gmail.com', 'Coyoacan Paseo de la Luna #23', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (14, 10072004, 'Ricardo Hernández','5554344342', 'ricardo@gmail.com', 'Álvaro Obregón Calle del Río #30', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (15, 10072004, 'Patricia Soto','5554344342', 'patriso@gmail.com', 'Coyoacan Avenida de los Pájaros #14', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (16, 10072004, 'Manuel Gómez','5554344342', 'mangom@gmail.com', 'Álvaro Obregón Calle de las Estrellas #21', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (17, 10072004, 'Sofía Torres','5554344342', 'softor@gmail.com', 'Coyoacan Avenida de los Sueños #27', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (18, 10072004, 'Andrés Martínez','5554344342', 'andmart@gmail.com', 'Álvaro Obregón Calle de los Deseos #33', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (19, 10072004, 'Fernanda Vargas','5554344342', 'fervar@gmail.com', 'Coyoacan Calle de la Alegría #9', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (20, 10072004, 'Joaquín Salazar','5554344342', 'joasal@gmail.com', 'Álvaro Obregón Avenida de la Paz #16', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (21, 10072004, 'Elena Ramírez','5554344342', 'elenara@gmail.com', 'Coyoacan Calle de la Esperanza #22', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (22, 10072004, 'Pedro García','5554344342', 'pedrogar@gmail.com', 'Álvaro Obregón Avenida de la Libertad #29', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (23, 10072004, 'Ana Martínez','5554344342', 'anamar@gmail.com', 'Coyoacan Calle de la Victoria #35', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (24, 10072004, 'Héctor Sánchez','5554344342', 'hecsan@gmail.com', 'Álvaro Obregón Avenida de los Héroes #12', 0, 'prueba');


INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (10, 1, 'Tamales la Lupita','5554344342', 'Centro de Coyoacan con Iglesia #13', 'comida');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (20, 2, 'Globos Ruiseñor','5554344342', 'Oasis Coyoacan', 'fiestas');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (40, 4, 'Dulces Sabrositos','5554344342', 'Coyoacan Plaza de los Sabores #7', 'dulces');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (50, 5, 'Decoraciones FiestaLoca','5554344342', 'Álvaro Obregón Calle de las Decoraciones #14', 'fiestas');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (60, 6, 'PizzaRica','5554344342','Álvaro Obregón Calle de las Decoraciones #43', 'fiestas');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (70, 7, 'Café Aromático','5554344342', 'Coyoacan Café Central #21', 'bebidas');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (80, 8, 'Dulcería Felicidad','5554344342', 'Álvaro Obregón Calle de la Dulzura #28', 'dulces');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (90, 9, 'Fotografía Estudio Creativo','5554344342', 'Coyoacan Estudio Fotográfico #35', 'fotografía');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (100, 10, 'Tacos al Pastor','5554344342', 'Álvaro Obregón Taquería #12', 'comida');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (110, 11, 'Diseño de Invitaciones','5554344342', 'Coyoacan Diseños Creativos #19', 'invitaciones');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (120, 12, 'Repostería Delicias','5554344342', 'Álvaro Obregón Repostería #26', 'repostería');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (130, 13, 'Flores Frescas','5554344342', 'Coyoacan Florería #33', 'flores');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (140, 14, 'Entretenimiento Magia','5554344342', 'Álvaro Obregón Show de Magia #40', 'entretenimiento');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (150, 15, 'Luces y Sonido Eventos','5554344342', 'Coyoacan Luces y Sonido #15', 'eventos');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (160, 16, 'Decoración Globos','5554344342', 'Álvaro Obregón Decoraciones con Globos #22', 'decoración');
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (170, 17, 'Música en Vivo','5554344342', 'Coyoacan Escenario Musical #29', 'música');

INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (1, 'Tamal Verde', 20, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (2, 'Tamal Rojo', 20, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (3, 'Atole de Chocolate', 18, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (4, 'Tamales de Pollo', 15, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (5, 'Tamales de Cerdo', 15, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (6, 'Tamales Vegetarianos', 15, 1, 10, 'producto');
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo) VALUES (7, 'Tamales de Elote', 12, 1, 10, 'producto');
-- Proveedor 20 - Globos Ruiseñor (Área: Fiestas)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (8, 'Globos de Colores', 5.99, 1, 20, 'producto'),
       (9, 'Decoración de Globos', 12.99, 1, 20, 'servicio');

-- Proveedor 40 - Dulces Sabrositos (Área: Dulces)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (10, 'Paletas de Caramelo', 0.99, 1, 40, 'producto'),
       (11, 'Bolsas de Chocolates', 8.99, 1, 40, 'producto'),
       (12, 'Distribución de Dulces', 25.99, 1, 40, 'servicio');

-- Proveedor 50 - Decoraciones FiestaLoca (Área: Fiestas)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (13, 'Globos de Fiesta', 3.99, 1, 50, 'producto'),
       (14, 'Decoración de Mesas', 15.99, 1, 50, 'servicio');

-- Proveedor 60 - PizzaRica (Área: Fiestas)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (15, 'Pizza de Pepperoni', 10.99, 1, 60, 'producto'),
       (16, 'Pizza de Vegetales', 11.99, 1, 60, 'producto');

-- Proveedor 70 - Café Aromático (Área: Bebidas)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (17, 'Café Americano', 3.49, 1, 70, 'producto'),
       (18, 'Café Espresso', 4.99, 1, 70, 'producto');

-- Proveedor 80 - Dulcería Felicidad (Área: Dulces)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (19, 'Chocolates Variados', 2.99, 1, 80, 'producto'),
       (20, 'Cajas de Bombones', 6.99, 1, 80, 'producto');

-- Proveedor 90 - Fotografía Estudio Creativo (Área: Fotografía)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (21, 'Sesión de Retratos', 99.99, 1, 90, 'servicio'),
       (22, 'Fotografía de Eventos', 199.99, 1, 90, 'servicio');

-- Proveedor 100 - Tacos al Pastor (Área: Comida)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (23, 'Tacos al Pastor', 1.99, 1, 100, 'producto'),
       (24, 'Salsas Variadas', 0.99, 1, 100, 'producto');

-- Proveedor 110 - Diseño de Invitaciones (Área: Invitaciones)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (25, 'Invitaciones Personalizadas', 9.99, 1, 110, 'producto'),
       (26, 'Diseño Gráfico', 49.99, 1, 110, 'servicio');

-- Proveedor 120 - Repostería Delicias (Área: Repostería)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (27, 'Pasteles Decorativos', 29.99, 1, 120, 'producto'),
       (28, 'Cupcakes Variados', 2.49, 1, 120, 'producto');

-- Proveedor 130 - Flores Frescas (Área: Flores)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (29, 'Ramos de Flores', 19.99, 1, 130, 'producto'),
       (30, 'Decoración Floral', 39.99, 1, 130, 'servicio');

-- Proveedor 140 - Entretenimiento Magia (Área: Entretenimiento)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (31, 'Show de Magia en Vivo', 99.99, 1, 140, 'servicio');

-- Proveedor 150 - Luces y Sonido Eventos (Área: Eventos)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (32, 'Equipo de Sonido', 49.99, 1, 150, 'servicio');

-- Proveedor 160 - Decoración Globos (Área: Decoración)
INSERT INTO bien (clave, nombre, precio, aprobado, idProveedor, tipo)
VALUES (33, 'Decoraciones con Globos', 7.99, 1, 160, 'producto'),
       (34, 'Globos Especiales', 2.99, 1, 160, 'producto');

-- Proveedor 170 - Música en Vivo (Área: Música)
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

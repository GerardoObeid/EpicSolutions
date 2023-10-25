INSERT INTO centroDeServicio(idCentro, nombre, direccion) VALUES (10072004, 'Epic Solutions', 'Rio Hondo, ITAM');

USE db_EpicSolutions


INSERT INTO usuario (nomUsuario, idCentro, nombre, telefono, correo, hashedPassword, tempPassword) VALUES ('GerardoObeid', 10072004, 'Gerardo Obeid Guzmán','5510070655', 'obeidgerardo@gmail.com', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918',0);
INSERT INTO permiso (nomUsuario, idPermiso) VALUES 
	('GerardoObeid', 0),
	('GerardoObeid', 1),
	('GerardoObeid', 2);
update cliente set hashedPassword='8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918'

INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Lupita Gutierrez','5554344342', 'lupisgut@gmail.com', 'Coyoacan esquina con Iglesia #13', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Juan Armando Ruiz','5554344342', 'ruizarmado@gmail.com', 'Coyoacan Cerro del Agua #23', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Samuel Orduña','5554344342', 'samord@gmail.com', 'Álvaro Obregón Iglesia #30', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Plutarco Calles','5554344342', 'placall@gmail.com', 'Álvaro Obregón Cincinati  #25', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Mariana López','5554344342', 'mariana@gmail.com', 'Coyoacan Calle Principal #17', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Eduardo Ramírez','5554344342', 'eduram@gmail.com', 'Álvaro Obregón Plaza Principal #22', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Carolina Sánchez','5554344342', 'carosan@gmail.com', 'Coyoacan Jardín Central #35', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Alejandro Rodríguez','5554344342', 'alerod@gmail.com', 'Álvaro Obregón Avenida Principal #40', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Valeria Mendoza','5554344342', 'valemen@gmail.com', 'Coyoacan Calle del Sol #11', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Javier Pérez','5554344342', 'javperez@gmail.com', 'Álvaro Obregón Avenida de las Flores #18', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (10072004, 'Lorena García','5554344342', 'loregar@gmail.com', 'Coyoacan Paseo de la Luna #23', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Ricardo Hernández','5554344342', 'ricardo@gmail.com', 'Álvaro Obregón Calle del Río #30', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Patricia Soto','5554344342', 'patriso@gmail.com', 'Coyoacan Avenida de los Pájaros #14', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Manuel Gómez','5554344342', 'mangom@gmail.com', 'Álvaro Obregón Calle de las Estrellas #21', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Sofía Torres','5554344342', 'softor@gmail.com', 'Coyoacan Avenida de los Sueños #27', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Andrés Martínez','5554344342', 'andmart@gmail.com', 'Álvaro Obregón Calle de los Deseos #33', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Fernanda Vargas','5554344342', 'fervar@gmail.com', 'Coyoacan Calle de la Alegría #9', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Joaquín Salazar','5554344342', 'joasal@gmail.com', 'Álvaro Obregón Avenida de la Paz #16', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Elena Ramírez','5554344342', 'elenara@gmail.com', 'Coyoacan Calle de la Esperanza #22', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Pedro García','5554344342', 'pedrogar@gmail.com', 'Álvaro Obregón Avenida de la Libertad #29', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Ana Martínez','5554344342', 'anamar@gmail.com', 'Coyoacan Calle de la Victoria #35', 0, 'prueba');
INSERT INTO cliente (IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES ( 10072004, 'Héctor Sánchez','5554344342', 'hecsan@gmail.com', 'Álvaro Obregón Avenida de los Héroes #12', 0, 'prueba');


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



INSERT INTO bien ( nombre, precio,  idProveedor, tipo)
VALUES 
		( 'Tamal Verde', 20,  10, 'producto'),
		 ( 'Tamal Rojo', 20,  10, 'producto'),
		 ( 'Atole de Chocolate', 18,  10, 'producto'),
		 ( 'Tamales de Pollo', 15,  10, 'producto'),
		 ( 'Tamales de Cerdo', 15,  10, 'producto'),
		 ( 'Tamales Vegetarianos', 15, 10, 'producto'),
		 ( 'Tamales de Elote', 12,  10, 'producto'),
		 ( 'Globos de Colores', 5.99,  20, 'producto'),
       ( 'Decoración de Globos', 12.99,  20, 'servicio'),
	   ('Paletas de Caramelo', 0.99,  40, 'producto'),
       ( 'Bolsas de Chocolates', 8.99,  40, 'producto'),
       ( 'Distribución de Dulces', 25.99,  40, 'servicio'),
	   ( 'Globos de Fiesta', 3.99,  50, 'producto'),
       ( 'Decoración de Mesas', 15.99, 50, 'servicio'),
	   ( 'Pizza de Pepperoni', 10.99, 60, 'producto'),
       ( 'Pizza de Vegetales', 11.99,  60, 'producto'),
	   ( 'Café Americano', 3.49,  70, 'producto'),
       ( 'Café Espresso', 4.99,  70, 'producto'),
	   ( 'Chocolates Variados', 2.99,  80, 'producto'),
       ('Cajas de Bombones', 6.99,  80, 'producto'),
	   ( 'Sesión de Retratos', 99.99,  90, 'servicio'),
       ( 'Fotografía de Eventos', 199.99,  90, 'servicio'),
	   ( 'Tacos al Pastor', 1.99,  100, 'producto'),
       ( 'Salsas Variadas', 0.99,  100, 'producto'),
	   ( 'Invitaciones Personalizadas', 9.99,  110, 'producto'),
       ( 'Diseño Gráfico', 49.99,  110, 'servicio'),
	   ( 'Pasteles Decorativos', 29.99,  120, 'producto'),
       ( 'Cupcakes Variados', 2.49,  120, 'producto'),
	   ( 'Ramos de Flores', 19.99,  130, 'producto'),
       ( 'Decoración Floral', 39.99,  130, 'servicio'),
	   ( 'Show de Magia en Vivo', 99.99,  140, 'servicio'),
		( 'Equipo de Sonido', 49.99, 150, 'servicio'),
		( 'Decoraciones con Globos', 7.99,  160, 'producto'),
       ( 'Globos Especiales', 2.99,  160, 'producto'),
	   ( 'Grupo Musical en Vivo', 199.99,  170, 'servicio');
-----------------------------------------------------------------------------------------------------------


-- Pedidos para Cliente 18
INSERT INTO pedido (fecha_creacion, fecha_entrega, claveBien, idProveedor, idCliente, monto, cantidad, comentarios)
VALUES 
('2023-10-16', '2023-10-20', 8, 20, 18, 100.00, 5, 'Entrega estándar'),
('2023-10-16', '2023-10-19', 9, 20, 18, 75.50, 3, 'Entrega urgente requerida'),
('2023-10-16', '2023-10-18', 15, 60, 18, 200.25, 10, 'Necesita manejo especial'),
('2023-10-16', '2023-10-20', 11, 40, 19, 150.00, 6, 'Entrega prioritaria'),
('2023-10-16', '2023-10-19', 13, 50, 19, 85.25, 4, 'Instrucciones de entrega especiales'),
('2023-10-16', '2023-10-18', 21, 90, 19, 220.50, 8, 'Embalaje especial requerido'),
('2023-10-16', '2023-10-20', 23, 100, 20, 175.00, 7, 'Entrega a horario'),
('2023-10-16', '2023-10-19', 25, 110, 20, 95.75, 5, 'Necesita factura impresa'),
('2023-10-16', '2023-10-18', 31, 140, 20, 240.75, 11, 'Atención al cliente prioritaria'),
('2023-10-16', '2023-10-20', 10, 40, 21, 120.00, 4, 'Entrega sin contacto'),
('2023-10-16', '2023-10-19', 12, 40, 21, 82.50, 3, 'Entrega con notificación previa'),
('2023-10-16', '2023-10-18', 32, 150, 21, 255.00, 9, 'Embalaje resistente'),
('2023-10-16', '2023-10-20', 17, 70, 22, 210.00, 6, 'Entrega con firma requerida'),
('2023-10-16', '2023-10-19', 19, 80, 22, 115.50, 4, 'Entrega con precaución'),
('2023-10-16', '2023-10-18', 33, 160, 22, 275.25, 12, 'Embalaje a prueba de agua'),
('2023-10-16', '2023-10-20', 8, 20, 11, 100.00, 5, 'Entrega programada'),
('2023-10-16', '2023-10-19', 9, 20, 11, 75.50, 3, 'Entrega con instrucciones especiales'),
('2023-10-16', '2023-10-18', 15, 60, 11, 200.25, 10, 'Entrega con atención personalizada'),
('2023-10-16', '2023-10-20', 11, 40, 11, 150.00, 6, 'Entrega con factura electrónica'),
('2023-10-16', '2023-10-19', 13, 50, 13, 85.25, 4, 'Entrega con notificación de SMS'),
('2023-10-16', '2023-10-18', 21, 90, 13, 220.50, 8, 'Entrega con seguimiento en línea');

UPDATE pedido SET fecha_entrega = DATEADD(day, 10, fecha_entrega);

SELECT * FROM pedido WHERE fecha_entrega >= GETDATE()
SELECT TOP 8 area AS XProperty, COUNT(*) AS YProperty FROM pedido ped INNER JOIN proveedor p ON p.idProveedor = ped.idProveedor GROUP BY area ORDER BY YProperty desc
select * from proveedor p inner join bien c on p.idProveedor=c.idProveedor inner join producto prod on prod.clave=c.clave where p.idCliente=(SELECT idCliente FROM cliente WHERE nombre = 'Lupita Gutierrez');

SELECT ped.idPedido as ID_Pedido,ped.fecha_creacion as Fecha_Creación,
                ped.fecha_entrega as Fecha_Entrega, ped.monto as Monto, ped.cantidad as Cantidad, ped.comentarios as Comentarios,
                 c.nombre as Nombre_Cliente, b.nombre as Nombre_Bien
                FROM pedido ped INNER JOIN bien b ON b.clave=ped.claveBien 
                INNER JOIN cliente c on c.idCliente=ped.idCliente
                WHERE fecha_entrega >= GETDATE()

select * from cliente c inner join proveedor p on p.idCliente=c.idCliente;
DBCC CHECKIDENT ('bien', RESEED, 36);
select * from fotos
select * from cliente
use db_EpicSolutions
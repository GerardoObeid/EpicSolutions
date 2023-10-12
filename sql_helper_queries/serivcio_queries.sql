INSERT INTO centroDeServicio(idCentro, nombre, direccion) VALUES (10072004, 'Epic Solutions', 'Rio Hondo, ITAM');

-- PERMISO ID=10 --> ADMIN
INSERT INTO usuario (idUsuario, idCentro, nombre, telefono, correo, hashedPassword) VALUES (1, 10072004, 'Gerardo Obeid Guzm�n','5510070655', 'obeidgerardo@gmail.com', 'admin');
INSERT INTO permiso (idUsuario, idPermiso) VALUES (1, 10);
SELECT * FROM usuario INNER JOIN permiso ON usuario.idUsuario=permiso.idUsuario

INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (1, 10072004, 'Lupita Gutierrez','5554344342', 'lupisgut@gmail.com', 'Coyoacan esquina con Iglesia #13', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (2, 10072004, 'Juan Armando Ruiz','5554344342', 'ruizarmado@gmail.com', 'Coyoacan Cerro del Agua #23', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (3, 10072004, 'Benito Camelo','5554344342', 'camel@gmail.com', 'Coyoacan Cerro del Aire #30', 0, 'prueba');
INSERT INTO cliente (idCliente, IdCentro, nombre, telefono, correo, direccion, beneficio, hashedPassword) VALUES (4, 10072004, 'Larry Marriata','5554344342', 'marriata@gmail.com', 'Coyoacan Cerro del Hombre #25', 0, 'prueba');
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
INSERT INTO proveedor(idProveedor, idCliente, nombre, telefono, direccion, area) VALUES (30, 3, 'Tacos el Camello','5554344342', 'Oxxo Miguel Angel de Quevedo', 'comida');

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

select * from proveedor p right join cliente c  on c.idCliente=p.idCliente;
select * from cliente;
use db_servicio
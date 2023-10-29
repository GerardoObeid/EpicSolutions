-- Creación de la tabla centroDeServicio
CREATE TABLE centroDeServicio (
    idCentro INT PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255)
);

-- Creación de la tabla cliente
CREATE TABLE cliente (
    idCliente INT  IDENTITY(1, 1) PRIMARY KEY,
    IdCentro INT,
    nombre VARCHAR(255),
    telefono VARCHAR(15),
    correo VARCHAR(255),
    direccion VARCHAR(500),
    beneficio INT,
	hashedPassword VARCHAR(255),
    FOREIGN KEY (IdCentro) REFERENCES centroDeServicio(idCentro)
);

-- Creación de la tabla proveedor
CREATE TABLE proveedor (
    idProveedor INT PRIMARY KEY,
	idCliente INT,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(15),
	area VARCHAR(50),
	FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

-- Creación de la tabla bien
CREATE TABLE bien (
    clave INT IDENTITY(1, 1) PRIMARY KEY,
    nombre VARCHAR(255),
    precio DECIMAL(10, 2),
    idProveedor INT,
    tipo VARCHAR(50),
    FOREIGN KEY (idProveedor) REFERENCES proveedor(idProveedor)
);
-- Creación de la tabla fotos
CREATE TABLE fotos (
    fotos VARBINARY(MAX),
    clave INT,
    FOREIGN KEY (clave) REFERENCES bien(clave)
);


-- Creación de la tabla usuario
CREATE TABLE usuario (
    nomUsuario VARCHAR(55) PRIMARY KEY,
    idCentro INT,
    nombre VARCHAR(255),
    telefono VARCHAR(15),
    correo VARCHAR(255),
	hashedPassword VARCHAR(255),
	tempPassword SMALLINT,
    FOREIGN KEY (idCentro) REFERENCES centroDeServicio(idCentro)
);

-- Creación de la tabla permiso
CREATE TABLE permiso (
    idPermiso INT,
    nomUsuario VARCHAR(55),
    FOREIGN KEY (nomUsuario) REFERENCES usuario(nomUsuario)
);


-- Creación de la tabla pedido
CREATE TABLE pedido (
    idPedido INT IDENTITY(1, 1) PRIMARY KEY,
    fecha_creacion DATE,
	fecha_entrega DATE,
    claveBien INT,
    idProveedor INT,
    idCliente INT,
	monto INT,
	cantidad INT,
	comentarios varchar(100),
    FOREIGN KEY (claveBien) REFERENCES bien(clave),
    FOREIGN KEY (idProveedor) REFERENCES proveedor(idProveedor),
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

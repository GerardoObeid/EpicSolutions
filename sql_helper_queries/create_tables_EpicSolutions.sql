-- Creación de la tabla centroDeServicio
CREATE TABLE centroDeServicio (
    idCentro INT PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255)
);

-- Creación de la tabla cliente
CREATE TABLE cliente (
    idCliente INT PRIMARY KEY,
    IdCentro INT,
    nombre VARCHAR(255),
    telefono VARCHAR(15),
    correo VARCHAR(255),
    direccion VARCHAR(500),
    beneficio INT,
	hashedPassword VARCHAR(255),
    FOREIGN KEY (IdCentro) REFERENCES centroDeServicio(idCentro)
);

-- Creación de la tabla telefono
CREATE TABLE telefono (
    telefono VARCHAR(15) PRIMARY KEY,
    idCliente INT,
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);


-- Creación de la tabla bien
CREATE TABLE bien (
    clave INT PRIMARY KEY,
    nombre VARCHAR(255),
    precio DECIMAL(10, 2),
    aprobado SMALLINT
);

-- Creación de la tabla fotos
CREATE TABLE fotos (
    fotos VARCHAR(255) PRIMARY KEY,
    clave INT,
    FOREIGN KEY (clave) REFERENCES bien(clave)
);

-- Creación de la tabla servicio
CREATE TABLE servicio (
    clave INT,
    idServicio INT PRIMARY KEY,
    giro VARCHAR(255),
    disponibilidad smallint,
    descripcion TEXT,
    FOREIGN KEY (clave) REFERENCES bien(clave)
);

-- Creación de la tabla producto
CREATE TABLE producto (
    clave INT,
    idProducto INT PRIMARY KEY,
    descripcion TEXT,
    capacidadProductiva INT,
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
    FOREIGN KEY (idCentro) REFERENCES centroDeServicio(idCentro)
);

-- Creación de la tabla permiso
CREATE TABLE permiso (
    idPermiso INT PRIMARY KEY,
    nomUsuario VARCHAR(55),
    FOREIGN KEY (nomUsuario) REFERENCES usuario(nomUsuario)
);


-- Creación de la tabla proveedor
CREATE TABLE proveedor (
    idProveedor INT PRIMARY KEY,
    nombre VARCHAR(255),
    direccion VARCHAR(255),
    telefono VARCHAR(15),
	hashedPassword VARCHAR(255),
);

-- Creación de la tabla pedido
CREATE TABLE pedido (
    idPedido INT PRIMARY KEY,
    fecha_creacion DATE,
	fecha_entrega DATE,
    claveBien INT,
    idProveedor INT,
    idCliente INT,
    FOREIGN KEY (claveBien) REFERENCES bien(clave),
    FOREIGN KEY (idProveedor) REFERENCES proveedor(idProveedor),
    FOREIGN KEY (idCliente) REFERENCES cliente(idCliente)
);

CREATE DATABASE turnero;

USE turnero;

CREATE TABLE IF NOT EXISTS rol (
    idRol INT,
    descripcion VARCHAR (45),
    PRIMARY KEY (idRol)
)ENGINE = InnoDB;


CREATE TABLE IF NOT EXISTS usuario (
    idUsuario INT NOT NULL AUTO_INCREMENT,
    idRol INT,
    nombre VARCHAR(45),
    apellido VARCHAR(45),
    dni INT,
    edad INT,
    telefono INTEGER UNSIGNED,
    mail VARCHAR(255),
    PRIMARY KEY (idUsuario),
    FOREIGN KEY (idRol) REFERENCES rol(idRol)

)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS direccion (
    idDireccion INT NOT NULL AUTO_INCREMENT,
    idUsuario INT,
    calle VARCHAR (50),
    numero INT,
    departamento VARCHAR (10),
    ciudad VARCHAR (50),
    provincia VARCHAR (50),
    pais VARCHAR (50),
    PRIMARY KEY (idDireccion),
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS perfilComercial (
    idPerfilComercial INT NOT NULL AUTO_INCREMENT,
    idUsuario INT,
    nombre VARCHAR (45),
    tipo VARCHAR(30),
    telefono INTEGER UNSIGNED,
    mail VARCHAR(255),
    logoURL VARCHAR (255),
    bannerURL VARCHAR (255),
    PRIMARY KEY (idPerfilComercial),
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario)

)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS turnero (
    idTurnero INT NOT NULL AUTO_INCREMENT,
    idPerfilComercial INT,
    horaApertura1 TIME,
    horaCierre1 TIME,
    horaApertura2 TIME,
    horaCierre2 TIME,
    PRIMARY KEY (idTurnero),
    FOREIGN KEY (idPerfilComercial) REFERENCES perfilComercial(idPerfilComercial)

)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS detalleTurnero (
    idDetalleTurnero INT NOT NULL AUTO_INCREMENT,
    idTurnero INT,
    duracionTurno INT,
    capacidad INT,
    descripcion VARCHAR (80),
    lunes INT,
    martes INT,
    miercoles INT,
    jueves INT,
    viernes INT,
    sabado INT,
    domingo INT,
    PRIMARY KEY (idDetalleTurnero),
    FOREIGN KEY (idTurnero) REFERENCES turnero(idTurnero)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS estadoTurno (
    idEstadoTurno INT NOT NULL AUTO_INCREMENT,
    descripcion VARCHAR (30),
    PRIMARY KEY (idEstadoTurno)
)ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS turno (
    idTurno INT NOT NULL AUTO_INCREMENT,
    idEstadoTurno INT,
    idUsuario INT,
    idPerfilComercial INT,
    idDetalleTurnero INT,
    fechaTurno DATE,
    horaTurno TIME,
    duracion INT,
    cantidad INT,
    PRIMARY KEY (idTurno),
    FOREIGN KEY (idEstadoTurno) REFERENCES estadoTurno(idEstadoTurno),
    FOREIGN KEY (idDetalleTurnero) REFERENCES detalleturnero(idDetalleTurnero),
    FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario),
    FOREIGN KEY (idPerfilComercial) REFERENCES perfilComercial(idPerfilComercial)

)ENGINE = InnoDB;

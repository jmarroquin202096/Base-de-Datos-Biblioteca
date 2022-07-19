CREATE DATABASE IF NOT EXISTS Biblioteca ;

USE Biblioteca;

CREATE TABLE Autor (
	idAutor INT NOT NULL AUTO_INCREMENT,
	NombreAutor VARCHAR(60) NOT NULL,
	PRIMARY KEY (idAutor)
);

CREATE TABLE Editorial (
	idEditorial INT NOT NULL AUTO_INCREMENT,
	NombreEditorial VARCHAR(30) NOT NULL,
	Direccion VARCHAR (100) NOT NULL,
	Telefono VARCHAR (15) NOT NULL, 
 	PRIMARY KEY (idEditorial)
);

CREATE TABLE Tema (
	idTema INT NOT NULL AUTO_INCREMENT,
	NombreTema VARCHAR(30) NOT NULL,
	PRIMARY KEY (idTema)
);

CREATE TABLE Socio (
	idSocio INT NOT NULL AUTO_INCREMENT,
	NombreCompleto VARCHAR(60) NOT NULL,
	Direccion VARCHAR(100) NOT NULL,
	Correo VARCHAR(25) NULL,
	Telefono VARCHAR(15) NOT NULL,
	Foto VARCHAR(20) NOT NULL,
	PRIMARY KEY (idSocio)
);

CREATE TABLE Libro (
	idLibro INT NOT NULL AUTO_INCREMENT,
	ISBN VARCHAR(20) NOT NULL UNIQUE,
	Titulolibrolibro VARCHAR(65) NOT NULL,
	NumeroEjemplares TINYINT NOT NULL,
	idAutor INT NOT NULL,
	idEditorial INT NOT NULL,
	idTema INT NOT NULL,
	PRIMARY KEY (idLibro),
    CONSTRAINT fk_idAutor_has_idEditorial_has_idTema_Autor
	FOREIGN KEY (idAutor) REFERENCES Autor (idAutor),
    CONSTRAINT fk_idAutor_has_idEditorial_has_idTema_Editorial
	FOREIGN KEY (idEditorial) REFERENCES Editorial (idEditorial),
    CONSTRAINT fk_idAutor_has_idEditorial_has_idTema_Tema
	FOREIGN KEY (idTema) REFERENCES Tema (idTema)
);

CREATE TABLE Prestamo (
	idPrestamo INT NOT NULL AUTO_INCREMENT,
	FechaPrestamo DATE NOT NULL,
	FechaEntrega DATE NOT NULL,
	idSocio INT NOT NULL,
	idLibro INT NOT NULL,
	PRIMARY KEY (idPrestamo),
    CONSTRAINT fk_idSocio_has_idLibro_Socio
	FOREIGN KEY (idSocio) REFERENCES Socio (idSocio),
    CONSTRAINT fk_idSocio_has_idLibro_Libro
	FOREIGN KEY (idLibro) REFERENCES Libro (idLibro)
);

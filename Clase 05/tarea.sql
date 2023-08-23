USE henry;
DROP DATABASE henry;
CREATE DATABASE henry;

USE henry;
CREATE TABLE carrera (
    ID INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID)
);
CREATE TABLE instructor (
  ID INT NOT NULL AUTO_INCREMENT,
  cedulaIdentidad VARCHAR (30) NOT NULL,
  nombre VARCHAR(40),
  apellido VARCHAR (40),
  fechaNacimiento DATE,
  fechaIncorporacion DATE,
  PRIMARY KEY (ID)
);
CREATE TABLE cohorte (
  idCohorte INT NOT NULL AUTO_INCREMENT,
  codigo VARCHAR(30),
  IdCarrera VARCHAR(30),
  IdInstructor INT NOT NULL,
  fechaInicio DATE,
  fechaFinalizacion DATE,
  PRIMARY KEY (idCohorte),
  foreign key(IDInstructor) references instructor(ID)
);
CREATE TABLE alumno (
  IdAlumno INT NOT NULL AUTO_INCREMENT,
  cedulaIdentidad VARCHAR (30) NOT NULL,
  nombre VARCHAR(50),
  apellido VARCHAR (50),
  fechaNacimiento DATE,
  fechaIngreso DATE,
  idCohorte INT,
  PRIMARY KEY (IdAlumno),
  FOREIGN KEY (idCohorte) REFERENCES cohorte(idCohorte)
);
DESC cohorte



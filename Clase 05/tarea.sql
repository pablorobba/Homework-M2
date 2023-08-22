USE henry;
DROP DATABASE henry;
CREATE DATABASE henry;

USE henry;
CREATE TABLE carrera (
    ID INT NOT NULL AUTO_INCREMENT,
	nombre VARCHAR(50),
    PRIMARY KEY (ID)
);
CREATE TABLE instructores (
  ID INT NOT NULL AUTO_INCREMENT,
  cedulaDeIdentidad INT NOT NULL,
  nombre VARCHAR(20),
  apellido VARCHAR (20),
  fechaNacimiento DATE,
  fechaIncorporacion DATE,
  PRIMARY KEY (ID)
);
CREATE TABLE alumnos (
  ID INT NOT NULL AUTO_INCREMENT,
  cedulaDeIdentidad INT NOT NULL,
  nombre VARCHAR(20),
  apellido VARCHAR (20),
  fechaNacimiento DATE,
  fechaIngreso DATE,
  IDCohorte VARCHAR (20),
  PRIMARY KEY (ID)
);
CREATE TABLE cohorte (
  ID INT NOT NULL AUTO_INCREMENT,
  IDInstructores INT NOT NULL,
  IDAlumnos INT NOT NULL,
  IDCarrera INT NOT NULL,
  codigo VARCHAR(20),
  carrera VARCHAR(20),
  instructor VARCHAR (20),
  fechaInicio DATE,
  fechaFinalización DATE,
  PRIMARY KEY (ID),
  foreign key(IDAlumnos) references alumnos(ID),
  foreign key(IDInstructores) references instructores(ID),
  foreign key(IDCarrera) references carrera(ID)
);
DESC cohorte

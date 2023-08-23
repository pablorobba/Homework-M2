use henry;
-- Inserto datos en las tablas

INSERT INTO carrera (nombre)
VALUES('Data Science');

INSERT INTO instructor
VALUES (NULL, 'A3145', 'John', 'Rambo', '1955-05-12', '2023-01-01'),
		(NULL, 'B5641', 'Ana', 'Gonzalez', '1998-07-10', '2023-02-01');

INSERT INTO cohorte
VALUES (NULL, 'DSFT02', 1, 1, '2023-05-02', '2023-08-01'),
	(NULL, 'DSFT04', 1, 2, '2023-04-02', '2023-07-01'),
    (NULL, 'DSFT05', 1, 1, '2023-07-12', '2023-11-01');

INSERT INTO alumno
VALUES (NULL, 'A1248', 'Juan', 'Ramirez', '1975-05-12', '2023-01-05', 1),
		(NULL, 'B3548', 'Jimena', 'Harrington', '1999-06-22', '2023-03-05', 1),
        (NULL, 'C2248', 'Pedro', 'Sostes', '2002-07-18', '2023-02-05', 1);
-- Actualizar        
UPDATE alumno
SET idCohorte = 2
WHERE idAlumno = 3;

UPDATE instructor
SET nombre = 'Ana María'
WHERE idInstructor = 2;

-- Borrar
DELETE FROM alumno
WHERE idAlumno = 3;

-- Consultas a la base de datos
SELECT idAlumno, idAlumno * 3 AS alumno_por_3, apellido, nombre, idCohorte
FROM alumno
#WHERE idAlumno = 1
#WHERE idAlumno >= 2
#WHERE idAlumno != 3
#WHERE fechaNacimiento = '1975-05-12' AND nombre = 'Juan';
#WHERE nombre LIKE 'J%' -- Lo que comienza con J
#WHERE nombre LIKE '%o' -- Lo que termina en o
#WHERE nombre LIKE '%ro%'
#WHERE fechaNacimiento BETWEEN '1999-01-01' AND '1999-12-31'
#WHERE nombre NOT IN ('Juan', 'Jimena', 'Rodrigo');
WHERE nombre BETWEEN 'J%' AND 'O%';

-- INNER JOIN
SELECT a.nombre, a.apellido, c.fechaInicio, c.idCohorte
FROM alumno a
JOIN cohorte c ON (a.idCohorte = c.idCohorte);








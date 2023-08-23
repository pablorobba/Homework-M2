SELECT a.nombre, a.apellido, a.fechaNacimiento, ca.nombre AS nombre_carrera
FROM alumno a
JOIN cohorte c ON (c.idCohorte = a.idCohorte)
JOIN carrera ca ON (c.idCarrera = ca.idCarrera)
WHERE ca.nombre LIKE '%Full Stack%'
ORDER BY fechaNacimiento DESC, apellido ASC
-- LIMIT 5, 10;
LIMIT 10 OFFSET 5;

SELECT count(*) as cantidad_alumnos
FROM alumno;

SELECT count(*) as cantidad_alumnos_ds
FROM alumno a
JOIN cohorte c ON (c.idCohorte = a.idCohorte)
JOIN carrera ca ON (c.idCarrera = ca.idCarrera)
WHERE ca.nombre LIKE '%Data%';

SELECT sum(idInstructor)
FROM instructor;

SELECT round(avg(year(curdate()) - year(fechaNacimiento)), 2) as edad_promedio
FROM alumno;
-- con outlier 32.96
-- sin outlier 22.96

SELECT fechaNacimiento, idAlumno, year(curdate()) - year(fechaNacimiento) as edad
FROM alumno
ORDER BY fechaNacimiento;

UPDATE alumno
SET fechaNacimiento = '2002-01-02'
WHERE idAlumno = 127;

SELECT idCarrera, count(*) as cantidad_cohortes
FROM cohorte
GROUP BY idCarrera
HAVING cantidad_cohortes >= 1
ORDER BY cantidad_cohortes DESC;



-- PARTE 1: CREAR Y SELECCIONAR LA BASE DE DATOS

CREATE DATABASE IF NOT EXISTS taller_bdd;
USE taller_bdd;


-- PARTE 2: CREAR LA TABLA ESTUDIANTES

CREATE TABLE IF NOT EXISTS estudiantes (
    id_estudiante INT PRIMARY KEY,
    nombres VARCHAR(50),
    apellidos VARCHAR(50),
    edad INT,
    curso VARCHAR(50),
    fecha_registro VARCHAR(10)
);


-- PARTE 3: INSERTAR 15 ESTUDIANTES
-- INSERT IGNORE evita duplicar las claves primarias existentes.

INSERT IGNORE INTO estudiantes
(id_estudiante, nombres, apellidos, edad, curso, fecha_registro)
VALUES
(1, 'Juan', 'Perez', 20, 'Programacion', '2026-01-10'),
(2, 'Lucia', 'Vega', 18, 'Programacion', '2026-02-01'),
(3, 'Sofia', 'Castro', 16, 'Redes', '2026-05-05'),
(4, 'Diego', 'Ruiz', 24, 'Inteligencia Artificial', '2026-04-10'),
(5, 'Ana', 'Lopez', 22, 'Base de Datos', '2026-03-15'),
(6, 'Carlos', 'Mora', 19, 'Base de Datos', '2026-02-20'),
(7, 'Maria', 'Torres', 27, 'Redes', '2026-01-25'),
(8, 'Pedro', 'Sanchez', 21, 'Programacion', '2026-03-05'),
(9, 'Elena', 'Flores', 30, 'Base de Datos', '2026-04-15'),
(10, 'Andres', 'Vera', 17, 'Redes', '2026-02-10'),
(11, 'Juan', 'Perez', 20, 'Base de Datos', '2026-03-20'),
(12, 'Camila', 'Rojas', 25, 'Inteligencia Artificial', '2026-04-25'),
(13, 'Daniel', 'Paz', 18, 'Programacion', '2026-05-10'),
(14, 'Valeria', 'Leon', 23, 'Base de Datos', '2026-01-30'),
(15, 'Mateo', 'Cruz', 26, 'Inteligencia Artificial', '2026-03-15');



-- PARTE 4: CONSULTAR TODOS LOS ESTUDIANTES

SELECT * FROM estudiantes;


-- PARTE 5: MOSTRAR NOMBRES Y CURSOS

SELECT nombres, curso
FROM estudiantes;


-- PARTE 6: ESTUDIANTES MAYORES DE 18 AÑOS

SELECT *
FROM estudiantes
WHERE edad > 18;


-- PARTE 7: ESTUDIANTES ENTRE 18 Y 25 AÑOS

SELECT *
FROM estudiantes
WHERE edad BETWEEN 18 AND 25;


-- PARTE 8: ESTUDIANTES DE BASE DE DATOS

SELECT *
FROM estudiantes
WHERE curso = 'Base de Datos';


-- PARTE 9: REGISTROS POSTERIORES AL 1 DE MARZO DE 2026

SELECT *
FROM estudiantes
WHERE fecha_registro > '2026-03-01';


-- PARTE 10: ACTUALIZAR LA INFORMACION DE UN ESTUDIANTE

UPDATE estudiantes
SET edad = 19
WHERE id_estudiante = 1;


-- PARTE 11: ACTUALIZAR EL CURSO DE UN ESTUDIANTE

UPDATE estudiantes
SET curso = 'Base de Datos'
WHERE id_estudiante = 3;


-- PARTE 12: CONSULTAR EL RESULTADO DE LAS ACTUALIZACIONES

SELECT *
FROM estudiantes
WHERE id_estudiante IN (1, 3);


-- PARTE 13: CONTAR LOS ESTUDIANTES REGISTRADOS

SELECT COUNT(*) AS total_estudiantes
FROM estudiantes;


-- PARTE 14: ORDENAR LOS ESTUDIANTES POR APELLIDO

SELECT *
FROM estudiantes
ORDER BY apellidos ASC;


-- PARTE 15: BUSCAR ESTUDIANTES POR FECHA DE REGISTRO

SELECT nombres, apellidos, fecha_registro
FROM estudiantes
WHERE fecha_registro BETWEEN '2026-03-01' AND '2026-05-31'
ORDER BY fecha_registro;


-- PARTE 16: EJEMPLO DE DELETE

SELECT *
FROM estudiantes
WHERE id_estudiante = 15;


 
-- PARTE 17: VERIFICACION FINAL

SELECT * FROM estudiantes
ORDER BY id_estudiante;

SELECT COUNT(*) AS total_estudiantes
FROM estudiantes;


SELECT * FROM estudiantes;
SELECT COUNT(*) AS total_estudiantes
FROM estudiantes;
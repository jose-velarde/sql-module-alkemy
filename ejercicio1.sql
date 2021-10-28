-- Tested with SQL Server
-- Exercise #1.1
DROP TABLE IF EXISTS CURSO;
CREATE TABLE CURSO (
  codigo INT PRIMARY KEY,
  nombre VARCHAR(255) NOT NULL,
  descripcion VARCHAR(255),
  turno VARCHAR(255)
);
-- Exercise #1.2
ALTER TABLE CURSO
ADD cupo INTEGER DEFAULT 20;
-- Exercise #2
INSERT INTO CURSO (codigo, nombre, descripcion, turno, cupo)
VALUES (
    101,
    'Algoritmos',
    'Algoritmos y Estructuras de Datos',
    'Mañana',
    35
  ),
  (102, 'Matemática Discreta', '', 'Tarde', 30);
-- Exercise #3
-- (3, NULL, NULL, 'Tarde', 45),
-- Exercise #4
-- (102, 'Quimica', '', 'Noche', 20);
-- Exercise #5
UPDATE CURSO
SET cupo = 25;
-- Exercise #6
DELETE FROM CURSO
WHERE nombre = 'Algoritmos';
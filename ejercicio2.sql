DROP TABLE IF EXISTS curso;
DROP TABLE IF EXISTS CURSO;
DROP TABLE IF EXISTS profesor;
CREATE TABLE profesor (
  id INT,
  Nombre VARCHAR(255),
  Apellido VARCHAR(255),
  fecha_nacimiento DATE,
  salario INT,
  PRIMARY KEY (id)
);
CREATE TABLE curso (
  codigo INT NOT NULL,
  nombre VARCHAR(255) NOT NULL,
  descripcion VARCHAR(255),
  cupo INT DEFAULT 20,
  turno VARCHAR(255),
  PROFESOR_id INT,
  PRIMARY KEY (codigo),
  FOREIGN KEY (PROFESOR_id) REFERENCES profesor(id)
);
INSERT INTO profesor (id, Nombre, Apellido, fecha_nacimiento, salario)
VALUES (1, 'Juan', 'Pérez', '1990-06-06', 55000),
  (2, 'María Emilia', 'Paz', '1984-07-15', 72000),
  (3, 'Martín', 'Correa', '1987-12-07', 63000),
  (4, 'Lucía', 'Díaz', '1991-02-24', 45000),
  (5, 'Raúl', 'Martínez', '1980-10-15', 85000),
  (6, 'Mabel', 'Ríos', '1980-06-12', 83000);
INSERT INTO curso (
    codigo,
    nombre,
    descripcion,
    cupo,
    turno,
    PROFESOR_id
  )
VALUES (
    101,
    'Algoritmos',
    'Algoritmos y Estructuras de Datos',
    20,
    'Mañana',
    1
  ),
  (102, 'Matemática Discreta', '', 20, 'Tarde', 2),
  (
    103,
    'Programación Java',
    'Poo en Java',
    35,
    'Noche',
    4
  ),
  (104, 'Programación Web', '', 35, 'Noche', 5),
  (
    105,
    'Programación C#',
    '.NET, Visual Studio 2019',
    30,
    'Noche',
    6
  );
SELECT profesor.Apellido , curso.Nombre AS 'Curso', curso.turno
FROM profesor LEFT JOIN curso ON profesor.id = curso.PROFESOR_id;
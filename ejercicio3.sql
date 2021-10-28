-- 1)
SELECT Nombre,
  Apellido,
  fecha_nacimiento
FROM profesor
ORDER BY fecha_nacimiento;
-- 2)
SELECT *
FROM profesor
WHERE salario >= 65000;
-- 3)
SELECT *
FROM profesor
WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31';
-- 4) using TOP 5 instead of LIMIT 5 becaue I'm using SQL Server
SELECT TOP 5 *
FROM profesor;
-- 5)
SELECT * FROM profesor WHERE Apellido LIKE 'P%';
-- 6)
SELECT *
FROM profesor
WHERE fecha_nacimiento BETWEEN '1980-01-01' AND '1989-12-31'
AND salario >= 80000;

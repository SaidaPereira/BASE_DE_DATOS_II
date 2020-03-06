-- Ejercicio 2
-- Problema 1


-- 1
CREATE TABLE /agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

-- 2
CREATE TABLE agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

-- 3
CREATE TABLE agenda(
	apellido varchar(30),
	nombre varchar(20),
	domicilio varchar(30),
	telefono varchar(11)
);

-- 4
SELECT table_name,column_name,udt_name,character_maximum_length 
  FROM information_schema.columns 
  WHERE table_name = 'agenda';
 
 -- 5
 DROP TABLE agenda;
 
 -- 6
 DROP TABLE agenda;
 
 
 -- Problema 2
 
 -- 1
 CREATE TABLE libros(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(15)
);

-- 2
CREATE TABLE libros(
	titulo varchar(20),
	autor varchar(30),
	editorial varchar(15)
);
 
-- 3
 select table_name,column_name,udt_name,character_maximum_length from information_schema.columns 
 where table_name = 'libros';
 
-- 4
DROP TABLE libros;

--5

DROP TABLE libros; 

-- Ejercicio 3
-- Problema 1

drop table if exists agenda;

-- 1
 create table agenda(
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

-- 2
 select table_name,column_name,udt_name,character_maximum_length from information_schema.columns 
  where table_name = 'agenda';

-- 3
 insert into agenda (apellido, nombre, domicilio, telefono)
  values ('Moreno','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre, domicilio, telefono)
  values ('Torres','Juan','Avellaneda 135','4458787');

-- 4
 select * from agenda;

-- 5
 drop table agenda;

-- 6 
 drop table agenda;
 
-- Problema 2

drop table if exists libros;

-- 1
 create table libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

-- 2
 select table_name,column_name,udt_name,character_maximum_length  from information_schema.columns 
  where table_name = 'agenda';

-- 3
 insert into libros (titulo,autor,editorial)
  values ('El aleph','Borges','Planeta');
 insert into libros (titulo,autor,editorial) 
  values ('Martin Fierro','Jose Hernandez','Emece');
 insert into libros (titulo,autor,editorial)
  values ('Aprenda PHP','Mario Molina','Emece');

-- 4
 select * from libros;

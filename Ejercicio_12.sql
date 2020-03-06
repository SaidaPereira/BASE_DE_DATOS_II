-- Ejercicio 12
-- Problema 1


drop table if exists libros;

-- 1
 create table libros(
  codigo int not null,
  titulo varchar(40) not null,
  autor varchar(20),
  editorial varchar(15),
  primary key(codigo)
 );


-- 2
 insert into libros (codigo,titulo,autor,editorial)
  values (1,'El aleph','Borges','Emece');
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Martin Fierro','Jose Hernandez','Planeta');
 insert into libros (codigo,titulo,autor,editorial)
  values (3,'Aprenda PHP','Mario Molina','Nuevo Siglo');

-- 3
 insert into libros (codigo,titulo,autor,editorial)
  values (2,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

-- 4
 insert into libros (codigo,titulo,autor,editorial)
  values (null,'Alicia en el pais de las maravillas','Lewis Carroll','Planeta');

-- 5
 update libros set codigo=1
  where titulo='Martin Fierro';


-- Problema 2
drop table if exists alumnos;


-- 1
 create table alumnos(
  legajo varchar(4) not null,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento),
  primary key(legajo)
 );


-- 2
 create table alumnos(
  legajo varchar(4) not null,
  documento varchar(8),
  nombre varchar(30),
  domicilio varchar(30),
  primary key(documento)
 );

-- 3
 select table_name,column_name,udt_name,character_maximum_length,is_nullable  from information_schema.columns 
  where table_name = 'alumnos';

-- 4
 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A233','22345345','Perez Mariana','Colon 234');
 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A567','23545345','Morales Marcos','Avellaneda 348');

-- 5
 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A642','23545345','Gonzalez Analia','Caseros 444');

-- 6
 insert into alumnos (legajo,documento,nombre,domicilio)
  values('A685',null,'Miranda Carmen','Uspallata 999');
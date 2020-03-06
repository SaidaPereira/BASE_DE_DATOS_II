-- Ejercicio 6
-- Problema 1

drop table if exists agenda;

-- 1
 create table agenda (
  apellido varchar(30),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar(11)
 );

-- 2
 select table_name,column_name,udt_name,character_maximum_length  from information_schema.columns 
  where table_name = 'agenda';

-- 3
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Acosta', 'Ana', 'Colon 123', '4234567');
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Bustamante', 'Betina', 'Avellaneda 135', '4458787');
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Hector', 'Salta 545', '4887788'); 
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Luis', 'Urquiza 333', '4545454');
 insert into agenda(apellido,nombre,domicilio,telefono) values
  ('Lopez', 'Marisa', 'Urquiza 333', '4545454');


-- 4
 select * from agenda;

-- 5
 select * from agenda where nombre='Marisa';

-- 6
 select nombre,domicilio from agenda where apellido='Lopez';

 -- 7
 select nombre from agenda where telefono='4545454';


-- Problema 2

 drop table if exists libros;


-- 1
 create table libros (
  titulo varchar(20),
  autor varchar(30),
  editorial varchar(15)
 );

-- 2
 select table_name,column_name,udt_name,character_maximum_length from information_schema.columns 
  where table_name = 'libros';

-- 3
 insert into libros(titulo,autor,editorial) values
  ('El aleph','Borges','Emece');
 insert into libros(titulo,autor,editorial) values
  ('Martin Fierro','Jose Hernandez','Emece');
 insert into libros(titulo,autor,editorial) values
  ('Martin Fierro','Jose Hernandez','Planeta');
 insert into libros(titulo,autor,editorial) values
  ('Aprenda PHP','Mario Molina','Siglo XXI');

-- 4
 select * from libros where autor='Borges';


-- 5
 select titulo from libros where editorial='Emece';


-- 6
 select editorial from libros where titulo='Martin Fierro';
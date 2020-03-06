-- Ejercicio 5
-- Problema 1

drop table if exists peliculas;

-- 1

 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );

-- 2
select table_name,column_name,udt_name,character_maximum_length from information_schema.columns 
  where table_name = 'peliculas';

-- 3
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',180,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',190,2);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia Roberts',118,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',110,2);

-- 4
 select titulo,actor from peliculas;

-- 5
 select titulo,duracion from peliculas;

-- 6
 select titulo,cantidad from peliculas;

-- Problema 2

drop table if exists empleados;

-- 1
 create table empleados(
  nombre varchar(20),
  documento varchar(8), 
  sexo varchar(1),
  domicilio varchar(30),
  sueldobasico float
 );

-- 2
 select table_name,column_name,udt_name,character_maximum_length from information_schema.columns 
  where table_name = 'empleados';

-- 3
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Juan Juarez','22333444','m','Sarmiento 123',500);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Ana Acosta','27888999','f','Colon 134',700);
 insert into empleados (nombre, documento, sexo, domicilio, sueldobasico)
  values ('Carlos Caseres','31222333','m','Urquiza 479',850);

-- 4
 select * from empleados;

-- 5
 select nombre,documento,domicilio from empleados;

-- 6
 select documento,sexo,sueldobasico from empleados;
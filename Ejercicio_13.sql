-- Ejercicio 13
-- Problema 1
drop table if exists medicamentos;

-- 1
 create table medicamentos(
  codigo serial,
  nombre varchar(20),
  laboratorio varchar(20),
  precio float,
  cantidad integer,
  primary key (codigo)
);

-- 2
 select table_name,column_name,udt_name,character_maximum_length,is_nullable from information_schema.columns 
  where table_name = 'medicamentos';

-- 3
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
   values('Sertal','Roche',5.2,100);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Buscapina','Roche',4.10,200);
 insert into medicamentos (nombre, laboratorio,precio,cantidad)
  values('Amoxidal 500','Bayer',15.60,100);

-- 4
 select * from medicamentos;



-- Problema 2

drop table if exists peliculas;

-- 1
create table peliculas (
  codigo serial,
  titulo varchar(40),
  actor varchar(20),
  duracion int,
  primary key (codigo)
 );


-- 2
 select table_name,column_name,udt_name,character_maximum_length,is_nullable  from information_schema.columns 
  where table_name = 'peliculas';

-- 3
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la piedra filosofal','xxx',180);
 insert into peliculas (titulo,actor,duracion)
  values('Harry Potter y la camara secreta','xxx',190);
 insert into peliculas (titulo,actor,duracion)
  values('Mision imposible 2','Tom Cruise',120);
 insert into peliculas (titulo,actor,duracion)
  values('La vida es bella','zzz',220);

-- 4
 select * from peliculas;

-- 5
 update peliculas set actor='Daniel R.' where codigo=3;

-- 6
 delete from peliculas where titulo='La vida es bella';

-- 7
 delete from peliculas where duracion=120;

-- 8
 select * from peliculas;

-- 9
 insert into peliculas (titulo,actor,duracion)
  values('Mujer bonita','Richard Gere',120);
 select * from peliculas;
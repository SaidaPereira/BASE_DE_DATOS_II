-- Ejercicio 11
-- Problema 1

drop table if exists medicamentos;

-- 1
 create table medicamentos(
  codigo integer not null,
  nombre varchar(20) not null,
  laboratorio varchar(20),
  precio float,
  cantidad integer not null
 );

-- 2
 select table_name,column_name,udt_name,character_maximum_length,is_nullable  from information_schema.columns 
  where table_name = 'medicamentos';

-- 3
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(1,'Sertal gotas',null,null,100); 
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(2,'Sertal compuesto',null,8.90,150);
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(3,'Buscapina','Roche',null,200);

-- 4
 select * from medicamentos;

-- 5
 insert into medicamentos (codigo,nombre, laboratorio,precio,cantidad)
  values(4,'Bayaspirina','',0,150);

-- 6
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(0,'','Bayer',15.60,0);

-- 7
 select * from medicamentos;


-- 8
 insert into medicamentos (codigo,nombre,laboratorio,precio,cantidad)
  values(null,'Amoxidal jarabe','Bayer',25,120);


-- 9
 select * from medicamentos where laboratorio is null;

 select * from medicamentos where laboratorio='';

-- 10
 select * from medicamentos where precio is null;

 select * from medicamentos where precio=0;


-- 11
 select * from medicamentos where laboratorio<>'';

 select * from medicamentos where laboratorio is not null;

-- 12
 select * from medicamentos where precio<>0;

 select * from medicamentos where precio is not null;

-- Problema 2

drop table if exists peliculas;

-- 1
 create table peliculas(
  codigo int not null,
  titulo varchar(40) not null,
  actor varchar(20),
  duracion int
 );

-- 2
 select table_name,column_name,udt_name,character_maximum_length,is_nullable from information_schema.columns 
  where table_name = 'peliculas';


-- 3
 insert into peliculas (codigo,titulo,actor,duracion)
  values(1,'Mision imposible','Tom Cruise',120);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(2,'Harry Potter y la piedra filosofal',null,180);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(3,'Harry Potter y la camara secreta','Daniel R.',null);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(0,'Mision imposible 2','',150);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(4,'','L. Di Caprio',220);
 insert into peliculas (codigo,titulo,actor,duracion)
  values(5,'Mujer bonita','R. Gere-J. Roberts',0);

-- 4
 select * from peliculas;


-- 5
 insert into peliculas (codigo,titulo,actor,duracion)
  values(null,'Mujer bonita','R. Gere-J. Roberts',190);

-- 6
 select * from peliculas where actor is null;

-- 7
 update peliculas set duracion=120 where duracion is null;
 
 -- 8

 update peliculas set actor='Desconocido'
  where actor='';

-- 9
  select * from peliculas;

-- 10
 delete from peliculas where titulo='';

 select * from peliculas;
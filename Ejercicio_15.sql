-- Ejercicio 15
-- Problema 1

drop table if exists autos;


-- 1
 create table autos(
  patente char(6),
  marca varchar(20),
  modelo char(4),
  precio float,
  primary key (patente)
 );

-- 2
 insert into autos
  values('ACD123','Fiat 128','1970',15000);
 insert into autos
  values('ACG234','Renault 11','1990',40000);
 insert into autos
  values('BCD333','Peugeot 505','1990',80000);
 insert into autos
  values('GCD123','Renault Clio','1990',70000);
 insert into autos
  values('BCC333','Renault Megane','1998',95000);
 insert into autos
  values('BVF543','Fiat 128','1975',20000);

-- 3
 select * from autos
  where modelo='1990';

-- 4
 drop table autos;

-- 5
 create table autos(
  patente character(6),
  marca character varying(20),
  modelo character(4),
  precio float,
  primary key (patente)
 );

-- 6
 insert into autos
  values('ACD123','Fiat 128','1970',15000);

-- 7
 select * from autos;

-- Problema 2

drop table if exists clientes;

-- 1
 create table clientes(
  documento char(8),
  apellido varchar(20),
  nombre varchar(20),
  domicilio varchar(30),
  telefono varchar (11)
 );

-- 3
 insert into clientes
  values('2233344','Perez','Juan','Sarmiento 980','4342345');
 insert into clientes (documento,apellido,nombre,domicilio)
  values('2333344','Perez','Ana','Colon 234');
 insert into clientes
  values('2433344','Garcia','Luis','Avellaneda 1454','4558877');
 insert into clientes
  values('2533344','Juarez','Ana','Urquiza 444','4789900');


-- 4
 select * from clientes
  where apellido='Perez';
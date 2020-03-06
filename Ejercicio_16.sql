-- Ejercicio 16
-- Problema 1

drop table if exists cuentas;

-- 1
 create table cuentas(
  numero int not null,
  documento char(8) not null,
  nombre varchar(30),
  saldo decimal(15,2),
  primary key (numero)
 );

-- 2
 insert into cuentas(numero,documento,nombre,saldo)
  values('1234','25666777','Pedro Perez',500000.60);
 insert into cuentas(numero,documento,nombre,saldo)
  values('2234','27888999','Juan Lopez',-250000);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3344','27888999','Juan Lopez',4000.50);
 insert into cuentas(numero,documento,nombre,saldo)
  values('3346','32111222','Susana Molina',1000);

-- 3
 select * from cuentas where saldo<4000;

-- 4
 select numero,saldo from cuentas where nombre='Juan Lopez';

-- 5
 select * from cuentas where saldo<0;

 -- 6
 select * from cuentas where numero>=3000;

-- Problema 2

drop table if exists empleados;

-- 1
 create table empleados(
  nombre varchar(30),
  documento char(8),
  sexo char(1),
  domicilio varchar(30),
  sueldobasico decimal(7,2),--máximo estimado 99999.99
  cantidadhijos smallint --no superará los 255
 );

-- 2
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Juan Perez','22333444','m','Sarmiento 123',500,2);
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Ana Acosta','24555666','f','Colon 134',850,0);
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Bartolome Barrios','27888999','m','Urquiza 479',10000.80,4);

-- 3
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Susana Molina','29000555','f','Salta 876',800.888,3);


-- 4
 insert into empleados (nombre,documento,sexo,domicilio,sueldobasico,cantidadhijos)
  values ('Marta Juarez','32444555','f','Sucre 1086',5000000,2);

-- 5
 select * from empleados where sueldobasico>=900;


-- 6
 select * from empleados where cantidadhijos>0;
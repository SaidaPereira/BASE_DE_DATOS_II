-- Ejercicio 17
-- Problema 1

drop table if exists alumnos;

-- 1
 create table alumnos(
  apellido varchar(30),
  nombre varchar(30),
  documento char(8),
  domicilio varchar(30),
  fechaingreso date,
  fechanacimiento date
 );

-- 2
 set datestyle to 'European';

-- 3
 insert into alumnos values('Gonzalez','Ana','22222222','Colon 123','10-08-1990','15/02/1972');

-- 4
 insert into alumnos values('Juarez','Bernardo','25555555','Sucre 456','03-03-1991','15/02/1972');


-- 5
 insert into alumnos values('Perez','Laura','26666666','Bulnes 345','03-03-91',null);

-- 6
 insert into alumnos values('Lopez','Carlos','27777777','Sarmiento 1254','03-15-1990',null);

-- 7
 select * from alumnos where fechaingreso<'1-1-91';

-- 8
 select * from alumnos where fechanacimiento is null;
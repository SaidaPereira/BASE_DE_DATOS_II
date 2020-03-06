-- Ejercicio 9
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
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Acosta','Alberto','Colon 123','4234567');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Juarez','Juan','Avellaneda 135','4458787');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Maria','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Lopez','Jose','Urquiza 333','4545454');
 insert into agenda (apellido,nombre,domicilio,telefono)
  values ('Suarez','Susana','Gral. Paz 1234','4123456');

-- 3
 select * from agenda;

-- 4
 update agenda set nombre='Juan Jose' where nombre='Juan';
 select * from agenda;

-- 5
 update agenda set telefono='4445566' where telefono='4545454';

 select * from agenda;

-- 6
 update agenda set nombre='Juan Jose' where nombre='Juan';

 select * from agenda;

-- Problema 2

drop table if exists libros;


-- 1
 create table libros (
  titulo varchar(30),
  autor varchar(20),
  editorial varchar(15),
  precio float
 );


-- 2
 insert into libros (titulo, autor, editorial, precio)
  values ('El aleph','Borges','Emece',25.00);
 insert into libros (titulo, autor, editorial, precio)
  values ('Martin Fierro','Jose Hernandez','Planeta',35.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Aprenda PHP','Mario Molina','Emece',45.50);
 insert into libros (titulo, autor, editorial, precio)
  values ('Cervantes y el quijote','Borges','Emece',25);
 insert into libros (titulo, autor, editorial, precio)
  values ('Matematica estas ahi','Paenza','Siglo XXI',15);

-- 3
 select * from libros;

-- 4
 update libros set autor='Adrian Paenza' where autor='Paenza';

 select * from libros;

-- 5
 update libros set autor='Adrian Paenza' where autor='Paenza';

 select * from libros;

-- 6
 update libros set precio=27 where autor='Mario Molina';

 select * from libros;

-- 7
 update libros set editorial='Emece S.A.' where editorial='Emece';

 select * from libros;

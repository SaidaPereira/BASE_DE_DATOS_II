-- Ejercicio 7
-- Problema 1

drop table if exists articulos;

-- 1
 create table articulos(
  codigo integer,
  nombre varchar(20),
  descripcion varchar(30),
  precio float,
  cantidad integer
 );

-- 2
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (1,'impresora','Epson Stylus C45',400.80,20);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (2,'impresora','Epson Stylus C85',500,30);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (3,'monitor','Samsung 14',800,10);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (4,'teclado','ingles Biswal',100,50);
 insert into articulos (codigo, nombre, descripcion, precio,cantidad)
  values (5,'teclado','español Biswal',90,50);

-- 3
 select * from articulos where nombre='impresora';

-- 4
 select * from articulos where precio>=400;

-- 5
 select codigo,nombre from articulos where cantidad<30;

-- 6
 select nombre, descripcion from articulos where precio<>100;

-- Problema 2

 drop table if exists peliculas;

-- 1
 create table peliculas(
  titulo varchar(20),
  actor varchar(20),
  duracion integer,
  cantidad integer
 );


-- 2
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible','Tom Cruise',120,3);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mision imposible 2','Tom Cruise',180,4);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Mujer bonita','Julia R.',90,1);
 insert into peliculas (titulo, actor, duracion, cantidad)
  values ('Elsa y Fred','China Zorrilla',80,2);


-- 3
 select * from peliculas where duracion<=90;


-- 4
 select * from peliculas where actor<>'Tom Cruise';

-- 5
 select titulo,actor,cantidad from peliculas where cantidad >2;

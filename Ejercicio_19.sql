-- Ejercicio 19
-- Problema 1

drop table if exists articulos;

-- 1
 create table articulos(
  codigo serial,
  nombre varchar(20),
  descripcion varchar(30),
  precio decimal(9,2),
  cantidad smallint default 0,
  primary key (codigo)
 );

-- 2
 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('impresora','Epson Stylus C45',400.80,20);
 insert into articulos (nombre, descripcion, precio)
  values ('impresora','Epson Stylus C85',500);
 insert into articulos (nombre, descripcion, precio)
  values ('monitor','Samsung 14',800);
 insert into articulos (nombre, descripcion, precio,cantidad)
  values ('teclado','ingles Biswal',100,50);

-- 3
 update articulos set precio=precio+(precio*0.15);

-- 4
 select * from articulos;

-- 5
 select nombre||','||descripcion from articulos;

-- 6
 update articulos set cantidad=cantidad-5 where nombre='teclado';

 select * from articulos;

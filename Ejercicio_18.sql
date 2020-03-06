-- Ejercicio 18
-- Problema 1

drop table if exists visitantes;

-- 1
 create table visitantes(
  nombre varchar(30),
  edad smallint,
  sexo char(1) default 'f',
  domicilio varchar(30),
  ciudad varchar(20) default 'Cordoba',
  telefono varchar(11),
  mail varchar(30) default 'no tiene',
  montocompra decimal (6,2)
 );

-- 2
 select * from information_schema.columns  where table_name = 'visitantes';

-- 3
 insert into visitantes (nombre, domicilio, montocompra)
  values ('Susana Molina','Colon 123',59.80);
 insert into visitantes (nombre, edad, ciudad, mail)
  values ('Marcos Torres',29,'Carlos Paz','marcostorres@hotmail.com');

 select * from visitantes;

-- 4
 insert into visitantes values ('Marcelo Morales',38,default,default,default,'4255232','marcelomorales@hotmail.com',default);

-- 5
 insert into visitantes default values;

 select * from visitantes;

-- Problema 2

drop table if exists prestamos;

-- 1
 create table prestamos(
  titulo varchar(40) not null,
  documento char(8) not null,
  fechaprestamo date not null,
  fechadevolucion date,
  devuelto char(1) default 'n'
 );


-- 2
 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  values ('Manual de 1 grado','23456789','2006-12-15','2006-12-18');
 insert into prestamos (titulo,documento,fechaprestamo)
  values ('Alicia en el pais de las maravillas','23456789','2006-12-16');
 insert into prestamos (titulo,documento,fechaprestamo,fechadevolucion)
  values ('El aleph','22543987','2006-12-16','2006-08-19');
 insert into prestamos (titulo,documento,fechaprestamo,devuelto)
  values ('Manual de geografia 5 grado','25555666','2006-12-18','s');

-- 3
 select *from prestamos;

-- 4
 insert into prestamos values('Manual de historia','32555666','2006-10-25',default,default);
 
 select *from prestamos;

-- 5
 insert into prestamos default values;
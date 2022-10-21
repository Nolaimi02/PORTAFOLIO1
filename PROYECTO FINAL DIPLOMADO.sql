--CREANDO LA BASE DE DATOS
create database Bookcase

--TABLA LIBROS
create table Libro (
Nombre nvarchar (50),
ID_libro int primary key,
Genero nvarchar (30),
Stock nvarchar (30),
Autor nvarchar (50),
);

--TABLA EMPLEADOS
create table Empleados(
Nombre_empleado nvarchar (50),
ID_empleado int primary key,
Puesto_empleado nvarchar (40),
);

--TABLA VENTAS
create table Ventas(
Nombre_libro nvarchar(50),
ID_libro int primary key,
precio int,
Numero_venta int,
nombre_cliente nvarchar (50)
);

--TABLA CLIENTE
create table Cliente(
Nombre_cliente nvarchar(50),
ID_cliente int primary key,
Numero_compra int,
Numero_membrecia int,
Tipo_membrecia nvarchar (50),
);

-- TABLA MEMBRECIA
create table Membrecias(
Numero_membrecia int,
precio int primary key,
tipo_membrecia nvarchar(50),
);
 
--TABLA CUENTA PARA LAS TRANSACCIONES
create table compras(
ID_cuenta int primary key,
Precio int,
tipo_membrecia nvarchar (50),
);

-- LOS INSERT PARA LIBROS 10
insert into Libro values ('Lascivia','1','Darck Romance','En stock','Eva Muñoz')
insert into Libro values ('The German Way','6','Darck Romance','En stock','Mar Vernof')
insert into Libro values ('Al estilo Emma','8','Romance juvenil','En stock','Anahi')
insert into Libro values ('Lascivia 2','2','Darck Romance','En stock','Eva Muñoz')
insert into Libro values ('Sonrie','3','young adult','En stock','Sugar Curls')
insert into Libro values ('Boss','5','Darck Romance','En stock','Eva Muñoz')
insert into Libro values ('Queen','7','Darck Romance','En stock','Eva Muñoz')
insert into Libro values ('Matices','10','young adult','En stock','Sugar Curls')
insert into Libro values ('The Right way','15','Darck Romance','En stock','Mar Vernof')
insert into Libro values ('Una Mariposa para Lulu','16','Darck Romance','En stock','Mar Vernof')

--INSERT PARA EMPLEADOS
insert into Empleados values ('Maria Hernandez','3','Cajera')
insert into Empleados values ('Jose Hernandez','4','Cajero')
insert into Empleados values ('Nolaimi Marte','5','Administradora')
insert into Empleados values ('Ana Perez','1','Encargada de Limpieza')
insert into Empleados values ('Albert Paz','2','Community Manager')
insert into Empleados values ('Iranna Ozuna','6','Contadora')
insert into Empleados values ('Jenifer Rijo','7','Portera')
insert into Empleados values ('Carmen Losano','10','Community Manager')
insert into Empleados values ('Yessica Rivas','11','Cajera')
insert into Empleados values ('Moraima Marte','12','Copropietaria')
select * from Cliente
--INSERT PARA LAS VENTAS
insert into Ventas values ('Lascivia','1','1500','15','Moraima Marte') 
insert into Ventas values ('Lascivia 2','2','1500','16','Yenifer Rijo') 
insert into Ventas values ('Boss','5','1600','17','Yenifer Rijo')
insert into Ventas values ('Queen','7','1600','18','Iranna Ozuna')
insert into Ventas values ('Sonrie','3','1300','25','Moraima Marte')
insert into Ventas values ('Al estilo Emma','8','700','30','Yenifer Rijo')
insert into Ventas values ('The German Way','6','2000','40','Moraima Marte')
insert into Ventas values ('The Right Way','15','3000','41','Barbara Santos')
insert into Ventas values ('Matices','10','4000','42','Barbara Santos')
insert into Ventas values ('Una Mariposa para Lulu','16','1200','32','Esther Marte')

--insert para la tabla cliente
insert into Cliente values ('Barbara Santos','24','15','10','Premium')
insert into Cliente values ('Barbara Santos','25','16','10','Premium')
insert into Cliente values ('Iranna Ozuna','28','18','9','Premium')
insert into Cliente values ('Esther Marte','30','17','8','Platinum')
insert into Cliente values ('Moraima Marte','02','25','7','Platinum')
insert into Cliente values ('Moraima Marte','03','30','6','Platinum')
insert into Cliente values ('Moraima Marte','04','41','5','Platinum')
insert into Cliente values ('Moraima Marte','05','42','4','Platinum')
insert into Cliente values ('Yenifer Rijo','06','32','3','Gold')
insert into Cliente values ('Yenifer Rijo','07','16','3','Gold')
insert into Cliente values ('Moraima Marte','09','43','4','Platinum')

 -- INSERT PARA LA TABLA MEMBRECIA
  insert into Membrecias values ('10','3000','Premium')
  insert into Membrecias values ('7','1000','Platinum')
  insert into Membrecias values ('3','2000','Gold')
  insert into Membrecias values ('4','1000','Platinum')
  insert into Membrecias values ('5','4000','Gold')
  insert into Membrecias values ('9','5000','Premium')
  insert into Membrecias values ('8','6000','Platinum')
  insert into Membrecias values ('10','7000','Premium')
  insert into Membrecias values ('3','8000','Gold')
  insert into Membrecias values ('3','9000','Gold')

  --TENGO PROBLMAS PARA ARREGLAR ESTE INSERT PORQUE NO SE QUIERE LLENAR Y ELIMINO LA FK QUE 
--TENGO Y AUN ASI NO SE ME QUIERE LLENAR Y BUSQUE EL ERROR EN INTERNET PERO NO ENTOENDO BIEN
--COMO ARREGLARLO SI HASTA CAMBIEN LAS TABLAS Y PUSE CAMPOS Y QUITE CAMPOS Y AUN NO SE.
 -- INSERT PARA LA TABLA MEMBRECIA
 --POR FAVOR REVISA ESTA TABLA BIEN ORQUE NO ENTIENDO EL LIO QUE HICE.
 --PERO A QUE COSTO. NO ENTIENDO QUE HICE. SEGURAMENTE FUE LA PK QUE COMO SE LA PUSE A PRECIO
 --ESTE NO PUEDE REPERTIR EL VALOR Y AL CAMBIAR EL VALOR DE CUANTO CUESTA LA MEMBRECIA SE ARREGLO
 --Y ASI SE PUDO HACER EL INSERT PERO YO NO LO QUIERO ASI ASI QUE TAL VEN LA PK SE LA PONGA 
 --EN OTRA PARTE DE ESA TABLA. CONSEJO O ARREGLO PLIS.


 --AQUI ESTOY CREANDO VISTA DE PRODUCTOS CON CAMPOS ESPECIFICOS
 --INFORMACION DE EMPLEADOS(SI APLICA)

 create view empleados1 
 as
 select ID_empleado, Nombre_empleado, Puesto_empleado from Empleados 
 select * from empleados1

 --INFORMACION DE CLIENTES
create view cliente1
as
select Nombre_cliente, ID_cliente, Tipo_membrecia from Cliente
select * from cliente1
 select * from Ventas
 --LISTAR ORDENES CON SU DETALLE
 select Nombre_libro,ID_libro, precio, Numero_venta from Ventas
 
--INSERTAR PRODUCTO
exec SP_INS_LIBRO 'Encantada',28,'Juvenil','Sin Stock','Sugar Curls'
 create PROC  SP_INS_LIBRO(
@Nombre nvarchar(50),
@ID_libro int,	
@genero nvarchar (30),
@Stock nvarchar (30),
@Autor nvarchar (50)
)
as
insert INTO lIBRO Values (@Nombre, @ID_libro, @Genero, @Stock, @Autor)
 
 --INSERTAR EMPLEADO
 EXEC SP_INS_EMPLEADO 'Alfonso Cuevas',13,'Cajero'
 create proc SP_INS_EMPLEADO(
 @Nombre_empleado nvarchar (50),
 @ID_empleado int,
 @Puesto_empleado nvarchar (40)
 )
 as
 insert into Empleados values(@Nombre_empleado,@ID_empleado,@Puesto_empleado)

--INSERTAR REGISTRO DE VENTA
 exec SP_INS_VENTAS 'La Flor',17,300,75,'Esther Marte'
 create proc SP_INS_VENTAS (
 @Nombre_libro nvarchar(50),
 @ID_libro int,
 @precio int,
 @Numero_venta int,
 @nombre_cliente nvarchar (50)
 )
 as
 insert into Ventas values(@Nombre_libro,@ID_libro,@precio,@Numero_venta,@nombre_cliente)

 --ACTUALIZAR CANTIDAD EN EXISTENCIA DE UN PRODUCTO CON REGISTRO EN TABLA
--MODIFICACIONES DE QUIEN FUE QUE LO MODIFICO.
SELECT * FROM Ventas 
exec SP_ACT_VENTAS 
create proc SP_ACT_VENTAS(
@Nombre_libro nvarchar(50),
@ID_libro int,
@precio int,
@Numero_venta int,
@nombre_cliente nvarchar(50)
)
as
update Ventas 
set Nombre_libro=@Nombre_libro,
ID_libro=@ID_libro,
precio=@precio,
Numero_venta=@Numero_venta,
nombre_cliente=@nombre_cliente
where ID_libro=@ID_libro

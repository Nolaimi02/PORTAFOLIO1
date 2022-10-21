--CREANDO LA BASE DE DATOS
create database Libreria

--TABLA LIBROS
create table Libro (
Nombre nvarchar (50),
ID_libro int primary key,
Genero nvarchar (30),
Autor nvarchar (50),
);
 
--CREANDO TABLA INVENTARIO
create table inventarios(
ID_inventario int primary key, 
Stock nvarchar (50),
ID_libro int ,
Precio_compra int,
precio_venta int,
ID_proveedor int,
);

--TABLA EMPLEADOS
create table empleados(
Nombre nvarchar (50),
Apellido nvarchar (50),
ID_empleado int primary key,
Puesto_empleado nvarchar (40),
Direccion nvarchar (40),
);

--TABLA VENTAS
create table ventass(
ID_libro int,
ID_ventas int identity primary key,
ID_Cliente int,
ID_empleado int,
precio_venta int,
Numero_venta int,
cantidad int,
Fecha_venta datetime 
);

--TABLA CLIENTE
create table Clientess(
Nombre_cliente nvarchar(50),
ID_cliente int primary key,
Numero_compra int,
ID_membrecia int,
Numero_cuenta int,
ciudad nvarchar(70)
);

-- TABLA MEMBRECIA
create table Membrecias(
Numero_membrecia int,
ID_membrecia int primary key,
precio money,
tipo_membrecia nvarchar(50),
);

create table Proveedor(
ID_proveedor int,
Nombre_proveedor nvarchar (50),
);


--------------------------------------------------------------------------------------

--INSERT DE LA TABLA PROVEEDOR
insert into Proveedor values ('3456','Cosmo Editorial','Libros')
insert into Proveedor values ('8910','Penguin Random House','Libros')
insert into Proveedor values ('1425','Editorial puck','Libros')
insert into Proveedor values ('3456','Planta Libros','Libros')
----------------------------------------------------------------------------------------------
-- LOS INSERT PARA LIBROS 10
insert into Libro values ('Lascivia',1,'Darck Romance','Eva Muñoz')
insert into Libro values ('The German Way','6','Darck Romance','Mar Vernof')
insert into Libro values ('Al estilo Emma','8','Romance juvenil','Anahi')
insert into Libro values ('Fraccion','2','Darck Romance','Eva Muñoz')
insert into Libro values ('Sonrie','3','young adult','Sugar Curls')
insert into Libro values ('Boss','5','Darck Romance','Eva Muñoz')
insert into Libro values ('Queen','7','Darck Romance','Eva Muñoz')
insert into Libro values ('Matices','10','young adult','Sugar Curls')
insert into Libro values ('The Right way','15','Darck Romance','Mar Vernof')
insert into Libro values ('Una Mariposa para Lulu','16','Darck Romance','Mar Vernof')
--------------------------------------------------------------------------------------------
--INSERT PARA EMPLEADOS
insert into empleados values ('Maria','Hernandez','3','Cajera','27 de febrero')
insert into empleados values ('Jose', 'Hernandez','4','Cajero','Churchil')
insert into empleados values ('Nolaimi', 'Marte','5','Administradora','Azua de compostela')
insert into empleados values ('Ana', 'Perez','1','Encargada de Limpieza','La romana')
insert into empleados values ('Albert', 'Paz','2','Community Manager','Azua de comostela')
-------------------------------------------------------------------------------------------
--insert para ventas
--TABLA DE DEMOSTRACION DE CLAVE FORANEA
select id_ventas, empleados.Nombre,Clientess.Nombre_cliente,libro.Nombre, precio_venta, numero_venta, cantidad, fecha_venta 
from ventass
inner join libro on libro.id_libro = ventass.ID_libro
inner join Clientess on Clientess.ID_cliente = ventass.ID_cliente
inner join empleados on empleados.ID_empleado = ventass.ID_empleado

--insert para ventas
insert into ventass values ('1','02','3','1500','15','5','5/09/2022') 
insert into ventass values ('1','06','1','1500','16','5','5/09/2022') 
insert into ventass values ('5','07','2','1600','17','7','5/09/2022')
insert into ventass values ('7','28','3','1600','18','2','5/09/2022')
insert into ventass values ('3','09','4','1300','25','1','5/09/2022')
insert into ventass values ('8','06','5','700','30','3','5/09/2022')
insert into ventass values ('6','02','2','2000','40','2','5/09/2022')
insert into ventass values ('15','25','2','3000','41','10','5/09/2022')
insert into ventass values ('10','25','3','4000','42','12','5/09/2022')
insert into ventass values ('16','30','5','1200','32','15','5/09/2022')
----------------------------------------------------------------------------------------
--Insert para clientes 
insert into Clientess values ('Barbara Santos','24','15','1','Premium','Azua')
insert into Clientess values ('Barbara Santos','25','16','10','Premium','Azua')
insert into Clientess values ('Iranna Ozuna','28','18','9','Premium','Azua')
insert into Clientess values ('Esther Marte','30','17','8','Platinum','La Romana')
insert into Clientess values ('Moraima Marte','02','25','7','Platinum','La Romana')
insert into Clientess values ('Moraima Marte','03','30','6','Platinum','La Romana')
insert into Clientess values ('Moraima Marte','04','41','5','Platinum','Santo Domingo')
insert into Clientess values ('Moraima Marte','05','42','4','Platinum','Santo Domingo')
insert into Clientess values ('Yenifer Rijo','06','32','3','Gold','Santo Domingo')
insert into Clientess values ('Yenifer Rijo','07','16','3','Gold','San Pedro')
insert into Clientess values ('Moraima Marte','09','43','4','Platinum','San Pedro')
---------------------------------------------------------------------------------------------
-- INSERT PARA LA TABLA MEMBRECIA
  insert into Membrecias values ('10','3000','Premium','001')
  insert into Membrecias values ('7','1000','Platinum','002')
  insert into Membrecias values ('3','2000','Gold','003')
  insert into Membrecias values ('4','1000','Platinum','004')
  insert into Membrecias values ('5','4000','Gold','005')
  insert into Membrecias values ('9','5000','Premium','006')
  insert into Membrecias values ('8','6000','Platinum','007')
  insert into Membrecias values ('10','7000','Premium','008')
  insert into Membrecias values ('3','8000','Gold','009')
  insert into Membrecias values ('3','9000','Gold','010')
  -------------------------------------------------------------------------------------------
  --INSERT DE INVENTARIO
insert into inventarios values ('0012','En stock','1','1000','1500','15')
insert into inventarios values ('0013','Sin stock','2','1000','1500','16')
insert into inventarios values ('0014','En stock','8','800','700','30')
insert into inventarios values ('0015','Sin stock','3','900','1300','25')
insert into inventarios values ('0016','En stock','6','1000','1600','17')
insert into inventarios values ('0017','En stock','7','1000','16000','18')
insert into inventarios values ('0018','Sin Stock','10','3000','4000','42')
insert into inventarios values ('0019','Sin Stock','15','500','700','34')
select * from 
-------------------------------------------------------------------------------------------
--AQUI ESTOY CREANDO VISTA DE PRODUCTOS CON CAMPOS ESPECIFICOS
 --INFORMACION DE EMPLEADOS(SI APLICA)

 create view empleados1 
 as
 select ID_empleado, Nombre, Apellido, Puesto_empleado from empleados 
 select * from empleados1

 --INFORMACION DE CLIENTES
create view Cliente1
as
select Nombre_cliente, ID_cliente, Tipo_membrecia from Clientess
select * from cliente1
 ------------------------------------------------------------------------------------------
 --LISTAR ORDENES CON SU DETALLE
 create view detalles1
 as
 select Nombre_libro,ID_libro, precio_venta, Numero_venta from ventass
 select * from detalles1
 -------------------------------------------------------------------------------------------
--INSERTAR PRODUCTO
exec SP_INS_libros 'Encantada',28,'Juvenil','Sin Stock','Sugar Curls'
 create PROC  SP_INS_libros(
@Nombre nvarchar(50),
@ID_libro int,	
@genero nvarchar (30),
@Autor nvarchar (50)
)
as
insert INTO Libro Values (@Nombre, @ID_libro, @Genero, @Autor)
--LISTAR ORDENES CON SU DETALLE
select Nombre, ID_libro, Genero, Autor from Libro
-- CLIENTES CON MAS PEDIDOS
select max(Numero_compra), max(Nombre_cliente) from Clientess
------------------------------------------------------------------------------------------
 --INSERTAR EMPLEADO
 exec SP_INS_empleadoo'Alfonso Cuevas',13,'Cajero'

 create proc SP_INS_emleadoo(
 @Nombre_empleado nvarchar (50),
 @ID_empleado int,
 @Puesto_empleado nvarchar (40),
 @Direccion nvarchar(40)
 )
 as
 insert into empleadoo values(@Nombre_empleado,@ID_empleado,@Puesto_empleado, @Direccion)
 ----------------------------------------------------------------------------------------
--INSERTAR REGISTRO DE VENTA
 exec SP_INS_ventasSP_INS_ventass'La Flor',17,300,75,'Esther Marte'
 create proc SP_INS_ventass (
 @Nombre_libro nvarchar(50),
 @ID_libro int,
 @precio_venta int,
 @Numero_venta int,
 @nombre_cliente nvarchar (50)
 )
 as
 insert into ventass values(@Nombre_libro,@ID_libro,@precio_venta,@Numero_venta,@nombre_cliente)
 ---------------------------------------------------------------------------------------------

 --ACTUALIZAR CANTIDAD EN EXISTENCIA DE UN PRODUCTO CON REGISTRO EN TABLA
--MODIFICACIONES DE QUIEN FUE QUE LO MODIFICO.

exec SP_ACT_VENTAS 
create proc SP_ACT_VENTAS(
@Nombre_libro nvarchar(50),
@ID_libro int,
@precio int,
@Numero_venta int,
@nombre_cliente nvarchar(50)
)
as
update ventass 
set Nombre_libro=@Nombre_libro,
ID_libro=@ID_libro,
precio_venta=@precio,
Numero_venta=@Numero_venta,
nombre_cliente=@nombre_cliente
where ID_libro=@ID_libro
select * from ventass
select * from Clientess
---------------------------------------------------------------------------------------
--FILTRAR CLIENTE POR CIUDAD.
select  distinct Nombre_cliente, Direccion from Clientess
where Nombre_cliente= 'Moraima Marte' and Direccion ='La Romana'
------------------------------------------------------------------------------------------
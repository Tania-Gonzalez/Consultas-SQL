
create procedure InsertarProducto @NombreProducto nvarchar(40),@PrecioUnidad money, @Cantidad smallint

as
insert into Products(ProductName, UnitPrice, UnitsInStock) values (@NombreProducto, @PrecioUnidad, @Cantidad)
go

InsertarProducto 'Atún', 60.54, 25

select*from Products

create procedure ActualizarProducto @NombreProducto nvarchar(40), @PrecioUnidad money, @Cantidad smallint, @ID int

as
update Products set ProductName = @NombreProducto, UnitPrice = @PrecioUnidad, UnitsInStock = @Cantidad where ProductID = @ID

go

ActualizarProducto 'Cereal', 60.89,30,78



create procedure EliminarProducto @ID int

as
delete from Products where ProductID = @ID
go

EliminarProducto 78

create procedure LeerProducto 
as
select*from Products
go

leerProductos
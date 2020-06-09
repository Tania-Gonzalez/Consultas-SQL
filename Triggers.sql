ALTER TRIGGER StockUpdate
ON [Order Details]
FOR INSERT
AS
BEGIN
	DECLARE @Cantidad smallint, @ProductoID int, @Stock smallint
	SELECT @Cantidad = Quantity, @ProductoID = ProductID FROM inserted
	SELECT @Stock = UnitsInStock FROM Products WHERE ProductID = @ProductoID
	UPDATE Products SET UnitsInStock = @Stock - @Cantidad WHERE ProductID = @ProductoID
END

INSERT INTO [Order Details](OrderID, ProductID,Quantity) VALUES(10256,02,16)

SELECT * FROM [Products]
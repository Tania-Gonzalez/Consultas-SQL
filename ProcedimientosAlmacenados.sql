ALTER PROCEDURE CustomerCountry
AS
	SELECT * FROM Customers WHERE Country = 'UK'
GO

EXECUTE CustomerCountry

SELECT * FROM Customers




--Procedimiento almacenado que inserte un nuevo cliente a la tabla de customers en el caso de que ya
-- exista actualizala
CREATE PROCEDURE InsertUpdate_Customer @CustomerID nchar(5),
									   @CompanyName nchar (40),
									   @ReturnID nchar(5) OUTPUT 
AS
BEGIN
INSERT INTO	Customers(CustomerID, CompanyName) VALUES (@CustomerID, @CompanyName)
	IF(@@ERROR <> 0)
		BEGIN
			UPDATE Customers
			SET Customers.CustomerID = @CustomerID,
				Customers.CompanyName = @CompanyName
			WHERE Customers.CustomerID = @CustomerID
			PRINT('Se realizó un UPDATE')
		END
		ELSE
		BEGIN 
			PRINT('Se realizó un INSERT')
		END
		SELECT @ReturnID = CustomerID FROM Customers WHERE Customers.CustomerID = @CustomerID
END

DECLARE @back nchar(5)
EXECUTE InsertUpdate_Customer 'DGDG', 'Puzzle', @back OUTPUT
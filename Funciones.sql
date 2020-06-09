
--Función escalar
CREATE FUNCTION CalcularIVA(@Price money) RETURNS money
AS
BEGIN
	DECLARE @IVA money
	SET @IVA = @Price*1.16
	RETURN @IVA
END

SELECT ProductID, ProductName, UnitPrice, dbo.CalcularIVA(UnitPrice) AS IVA FROM Products



--Función en línea
CREATE FUNCTION CountryCustomers(@Country nvarchar(15)) RETURNS table
RETURN (SELECT CustomerID, CompanyName, Country FROM Customers WHERE Country = @Country)

SELECT * FROM dbo.CountryCustomers('Mexico')

--Función en línea de multiples sentencias

CREATE FUNCTION CountryCustomers2 (@Country nvarchar(15))
RETURNS @TableCountry table(CustomerID nchar(5),
							CompanyName nvarchar(40),
							ContactName nvarchar(30), 
							Country nvarchar(15))
BEGIN
	INSERT INTO @TableCountry
	SELECT CustomerID, CompanyName, ContactName, Country FROM Customers WHERE Country = @Country
	RETURN
END

SELECT * FROM dbo.CountryCustomers2('Argentina')

CREATE FUNCTION Ejemplo()RETURNS
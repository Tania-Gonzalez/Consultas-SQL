BEGIN TRANSACTION  
	UPDATE Customers SET PostalCode = '06450' WHERE CustomerID = 'AAAAA'
	INSERT INTO Customers(CustomerID, CompanyName) VALUES ('AAAA1','Manzana')
	IF (@@ERROR <> 0)
		BEGIN
		ROLLBACK
		PRINT('ERROR')
		END
	ELSE
		BEGIN 
		COMMIT
		PRINT('BIEN')
		END


SELECT * FROM Customers
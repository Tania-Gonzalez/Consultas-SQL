BEGIN TRANSACTION 
	INSERT INTO HumanResources.Employee(BusinessEntityID , NationalIDNumber, LoginID)VALUES(291,1654654,'adventure-work\tania1')
	IF(@@ERROR <> 0)
		BEGIN
		ROLLBACK 
		PRINT ('ERROR')
		END
	ELSE
		BEGIN
		COMMIT
		PRINT('BIEN')
		END

	SELECT * FROM HumanResources.Employee
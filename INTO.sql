
IF OBJECT_ID ('CustumerCopy') IS NOT NULL
BEGIN
	DROP TABLE CustumerCopy
END

SELECT CustomerID,CompanyName INTO CustumerCopy FROM Customers

SELECT * FROM CustumerCopy
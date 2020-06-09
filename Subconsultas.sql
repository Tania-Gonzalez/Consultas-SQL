SELECT [Order Details].ProductID, Products.ProductName FROM [Order Details]
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
WHERE 'USA' IN (SELECT Country FROM Suppliers
WHERE Products.SupplierID = Suppliers.SupplierID) 
AND ProductName LIKE 'S%'


SELECT [Order Details].ProductID, Products.ProductName FROM [Order Details]
INNER JOIN Orders ON [Order Details].OrderID = Orders.OrderID
INNER JOIN Products ON [Order Details].ProductID = Products.ProductID
WHERE OrderDate >= '1996-07-04' AND OrderDate <= '1996-09-01'
ORDER BY [Order Details].ProductID

Select OrderDate From Orders
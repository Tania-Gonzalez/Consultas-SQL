

SELECT RegionDescription, CategoryName, SUM([Order Details].UnitPrice * [Order Details].Quantity) AS Total
FROM Region, Territories, EmployeeTerritories, Employees,Orders, [Order Details], Products, Categories
WHERE Region.RegionID = Territories.RegionID
AND Territories.TerritoryID = EmployeeTerritories.TerritoryID
AND EmployeeTerritories.EmployeeID = Employees.EmployeeID
AND Employees.EmployeeID = Orders.EmployeeID
AND Orders.OrderID = [Order Details].OrderID
AND [Order Details].ProductID = Products.ProductID
AND Products.CategoryID = Categories.CategoryID
GROUP BY RegionDescription, CategoryName ORDER BY RegionDescription
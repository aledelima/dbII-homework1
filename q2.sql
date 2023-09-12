SELECT E.EmployeeID, E.LastName, E.FirstName, ROUND(SUM(OD.Quantity * P.Price), 2) AS TotalSales
FROM Employees E
INNER JOIN Orders O ON E.EmployeeID = O.EmployeeID
INNER JOIN OrderDetails OD ON O.OrderID = OD.OrderID
INNER JOIN Products P ON OD.ProductID = P.ProductID
GROUP BY E.EmployeeID, E.LastName, E.FirstName
ORDER BY TotalSales DESC
LIMIT 1, 4

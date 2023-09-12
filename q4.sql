SELECT OD.ProductID, P.ProductName, SUM(OD.Quantity) AS TotalQuantity
FROM OrderDetails OD
INNER JOIN Products P ON P.ProductID = OD.ProductID
GROUP BY OD.ProductID
ORDER BY TotalQuantity DESC
Limit 5

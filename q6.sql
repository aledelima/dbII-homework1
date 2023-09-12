SELECT S.SupplierID, S.SupplierName, ROUND(SUM(P.Price * OD.Quantity),2) AS TotalOrders
FROM Suppliers S
INNER JOIN Products P ON P.SupplierID = S.SupplierID 
INNER JOIN OrderDetails OD ON OD.ProductID = P.ProductID
INNER JOIN Orders O ON O.OrderID = OD.OrderID
WHERE O.OrderDate BETWEEN "1997-01-01" AND "1997-12-31"
GROUP BY S.SupplierID, S.SupplierName
ORDER BY TotalOrders DESC
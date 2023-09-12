SELECT C.CategoryName, Cr.CustomerName, ROUND(SUM(P.Price * OD.Quantity),2) AS TotalOrders
FROM Categories C
INNER JOIN Products P ON P.CategoryID = C.CategoryID 
INNER JOIN OrderDetails OD ON OD.ProductID = P.ProductID
INNER JOIN Orders O ON O.OrderID = OD.OrderID
INNER JOIN Customers Cr ON O.CustomerID = Cr.CustomerID
GROUP BY C.CategoryName, Cr.CustomerName
ORDER BY TotalOrders DESC
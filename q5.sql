SELECT S.SupplierID, S.SupplierName, COUNT(P.SupplierID) AS ItemsSupplied
FROM Suppliers S
INNER JOIN Products P ON P.SupplierID = S.SupplierID
GROUP BY S.SupplierID
ORDER BY ItemsSupplied DESC, S.SupplierName;
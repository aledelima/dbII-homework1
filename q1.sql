SELECT S.ShipperID, S.ShipperName, COUNT(O.OrderID) as OrderShipped
FROM Shippers S
INNER JOIN Orders O ON S.ShipperID = O.ShipperID
GROUP BY S.ShipperID, S.ShipperName
ORDER BY OrderShipped DESC
Limit 1

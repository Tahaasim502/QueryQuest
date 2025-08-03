SELECT o.EmployeeID, o.OrderID, p.ProductName, od.Quantity
FROM orders AS o
JOIN orderdetails AS od ON od.OrderID = o.OrderID
JOIN products AS p ON od.ProductID = p.ProductID
ORDER BY o.OrderID ASC, p.ProductID;
SELECT customers.CustomerID, orders.OrderID
FROM customers
LEFT JOIN orders ON orders.CustomerID = customers.CustomerID
WHERE orders.CustomerID IS NULL and orders.EmployeeID = 4;
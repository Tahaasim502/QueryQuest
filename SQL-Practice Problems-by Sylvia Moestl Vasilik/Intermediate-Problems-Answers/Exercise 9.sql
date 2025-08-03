SELECT customers.CustomerID, orders.OrderID 
FROM customers, orders
WHERE customers.CustomerID IS  NULL;
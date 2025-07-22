SELECT OrderID, CustomerID, ShipCountry FROM orders
WHERE ShipCountry IN ("France", "Belgium");
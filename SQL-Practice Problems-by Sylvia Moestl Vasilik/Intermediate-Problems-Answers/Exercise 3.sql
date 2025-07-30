SELECT UnitsInStock, ReorderLevel FROM products
WHERE UnitsInStock < ReorderLevel
ORDER BY productID;
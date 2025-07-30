SELECT Country, City, COUNT(CustomerID) AS TotalCustomers FROM customers
GROUP BY Country, City;
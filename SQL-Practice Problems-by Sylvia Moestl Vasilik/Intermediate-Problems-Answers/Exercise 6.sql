SELECT ShipCountry, ROUND(AVG(Freight), 4) AS Highest_Freight FROM orders
GROUP BY ShipCountry
ORDER BY Highest_Freight DESC
LIMIT 3;
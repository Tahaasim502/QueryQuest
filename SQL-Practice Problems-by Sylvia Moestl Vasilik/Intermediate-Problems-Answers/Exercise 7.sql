SELECT ShipCountry, ROUND(AVG(Freight), 4) AS Highest_Freight FROM orders
WHERE ShippedDate BETWEEN '2015-01-01' AND '2015-12-31'
GROUP BY ShipCountry
ORDER BY Highest_Freight DESC
LIMIT 3;
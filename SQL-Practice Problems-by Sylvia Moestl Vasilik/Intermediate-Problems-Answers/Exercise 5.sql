SELECT CustomerID, CompanyName, Region FROM customers
ORDER BY 
CASE WHEN Region IS NULL THEN 1 ELSE 0 END,
Region ASC,
CustomerID ASC;`
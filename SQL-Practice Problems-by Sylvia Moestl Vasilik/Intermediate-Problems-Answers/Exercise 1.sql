SELECT CategoryName, count(ProductID) AS totalProducts
FROM categories inner join products
ON categories.CategoryID = products.CategoryID
group by CategoryName
ORDER BY totalProducts DESC;
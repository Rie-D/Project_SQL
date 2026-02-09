#Top products
SELECT
	p.ProductName,
    round(SUM(s.Quantity * p.Price),2) AS total_sales
FROM sales s
JOIN products p
ON s.ProductID = p.ProductID
GROUP BY p.ProductName
ORDER BY total_sales DESC
LIMIT 10;
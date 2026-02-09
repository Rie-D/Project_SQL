#Top customers
SELECT 
	s.CustomerID,
    ROUND(SUM(s.Quantity * p.Price),2) AS total_spent
FROM sales s
JOIN customers c
ON s.CustomerID = c.CustomerID
JOIN products p
ON s.ProductID = p.ProductID
GROUP BY s.CustomerID
ORDER BY total_spent DESC
LIMIT 10;
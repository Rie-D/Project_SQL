#Revenue by month
SELECT
	DATE_FORMAT(SalesDate,'%Y-%m') AS month,
    ROUND(SUM(s.Quantity * p.Price),2) AS total_sales
FROM sales s
JOIN products p
ON s.ProductID = p.ProductID
GROUP BY month
ORDER BY month;
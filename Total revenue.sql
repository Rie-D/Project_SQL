#Total revenue
SELECT
    round(SUM(s.Quantity * p.Price),2) AS total_sales
FROM sales s
JOIN products p
ON s.ProductID = p.ProductID


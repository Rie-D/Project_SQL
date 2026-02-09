#Average order value
SELECT 
	AVG(total_sales) AS avg_order_value
FROM (
	SELECT
		s.SalesID,
		round(SUM(s.Quantity * p.Price),2) AS total_sales
	FROM sales s
	JOIN products p
	ON s.ProductID = p.ProductID	
    GROUP BY s.SalesID
) AS order_totals;
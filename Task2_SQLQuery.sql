// Query for list of customers and their spendings.
SELECT 
		customerName,
		SUM(price)
FROM factSales
GROUP BY customerName
ORDER BY SUM(price) DESC;

//Query for top 3 Manufacturer order by number of sales made.
SELECT TOP 3
		manufacturerName
		COUNT(salesID)
FROM factSales
WHERE 
	(YEAR(dateofSale) = YEAR(getdate())
AND
	Month(dateofSale) = Month(getdate())) 
GROUP BY manufacturerName
ORDER BY COUNT(salesID) DESC;
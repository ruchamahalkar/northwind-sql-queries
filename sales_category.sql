-- Classify products based on their sales volume such that TotalQuantity > 1000 Then SalesCategory as ‘High Sales’. If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’

SELECT product_name, SUM(quantity) AS TotalOrderedAmount,
( CASE WHEN SUM(quantity) > 1000 THEN 'High Sales' 
       WHEN SUM(quantity) > 500 THEN 'Medium Sales' 
	   ELSE 'Low Sales' END ) 
       AS SalesCategory
FROM order_details od
JOIN products p ON p.product_id= od.product_id
GROUP By product_name;
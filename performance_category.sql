-- Classify employees based on the number of orders they have processed such that NumberOfOrders > 100 Then PerformanceCategory as ‘High Performing’. If NumberOfOrders>50 Then ‘Medium Performing’ and else ‘Lower Performing’

SELECT  first_name, last_name, COUNT(order_id) AS NumberOfOrders ,
( CASE WHEN COUNT(order_id) > 100 THEN 'High Performing' 
       WHEN COUNT(order_id)> 50 THEN 'Medium Performing' 
	   ELSE 'Low Performing' END ) 
       AS PerformanceCategory
FROM orders o 
JOIN employees e ON e.employee_id=o.employee_id
GROUP BY e.employee_id 
ORDER BY first_name;
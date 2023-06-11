-- List the top 5 employees who have processed the most orders

SELECT  employee_id , COUNT(order_id) AS od 
FROM orders 
GROUP BY employee_id 
ORDER BY od DESC LIMIT 5 ;

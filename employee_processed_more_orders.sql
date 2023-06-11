-- Find the employees who have processed more than 100 orders

SELECT  employee_id , COUNT(order_id) AS total_orders FROM orders GROUP BY employee_id HAVING total_orders>100 ;

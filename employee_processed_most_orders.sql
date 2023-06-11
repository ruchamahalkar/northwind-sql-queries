-- Find the employee who processed the most orders in August 2016

SELECT  employee_id  , COUNT(order_id) AS total_orders FROM orders
WHERE order_date BETWEEN '2016-08-01' AND '2016-08-31'
GROUP BY employee_id  order by total_orders DESC LIMIT 1;
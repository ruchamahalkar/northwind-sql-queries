/*List the employees and the number of orders each employee has taken*/

SELECT employee_id , COUNT(order_id) 
FROM orders GROUP BY employee_id;
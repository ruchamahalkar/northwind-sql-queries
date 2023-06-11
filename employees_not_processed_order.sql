-- Find the employees who have not processed any orders

SELECT e.employee_id, o.order_id FROM employees e
LEFT JOIN orders o ON e.employee_id = o.employee_id
WHERE o.order_id IS NULL ;

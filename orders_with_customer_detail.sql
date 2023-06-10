/*List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it*/

SELECT o.order_id , c.customer_id,c.company_name, c.contact_name,c.address, e.employee_id
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id 
JOIN employees e ON o.employee_id = e.employee_id
WHERE e.employee_id IS NOT null;
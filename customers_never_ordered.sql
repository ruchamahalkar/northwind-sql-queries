/*Find the customers who have not placed any orders*/

SELECT c.customer_id , o.order_id FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_id Is null;
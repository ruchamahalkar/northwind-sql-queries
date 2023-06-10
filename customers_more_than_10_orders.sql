/*Get the customers who have placed more than 10 orders*/

SELECT customer_id , count(order_id)  AS total_order FROM orders GROUP BY customer_id HAVING total_order>10 ;
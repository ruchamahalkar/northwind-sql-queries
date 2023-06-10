/*Get the total number of orders placed by each customer*/
SELECT customer_id,count(order_id) FROM orders GROUP BY customer_id;
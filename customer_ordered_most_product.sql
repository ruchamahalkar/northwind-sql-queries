-- Find the top 3 customers who have ordered the most products

SELECT  customer_id  , COUNT(order_id) AS total_orders
FROM orders  GROUP BY customer_id  ORDER BY total_orders DESC LIMIT 3;


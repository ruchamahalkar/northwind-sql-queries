-- Find the most common shipping country
SELECT ship_country , COUNT(order_id)  AS total_shipping FROM orders
GROUP BY ship_country ORDER BY total_shipping DESC  LIMIT 1;
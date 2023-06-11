-- Find the top 3 most popular categories of products ordered

SELECT category_id, COUNT(order_id) AS total_orders FROM products p
JOIN order_details od ON p.product_id=od.product_id
GROUP BY category_id ORDER BY total_orders DESC LIMIT 3 ;

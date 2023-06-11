-- Find the customers who have ordered products from all categories

SELECT customer_id FROM order_details od
JOIN  orders o ON o.order_id = od.order_id
JOIN products p ON p.product_id = od.product_id
GROUP BY o.order_id HAVING COUNT (DISTINCT(category_id))>7 ;

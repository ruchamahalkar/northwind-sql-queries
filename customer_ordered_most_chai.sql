-- Find the customer who has ordered the most ‘Chai’ product

SELECT  customer_id , COUNT(o.order_id) AS no_orders
FROM order_details  od
JOIN orders o ON o.order_id = od.order_id 
JOIN products p ON od.product_id = p.product_id
WHERE product_name = 'Chai'
GROUP BY customer_id ORDER BY no_orders DESC LIMIT 1;
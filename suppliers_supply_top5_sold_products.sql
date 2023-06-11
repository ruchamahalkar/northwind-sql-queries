-- Find the suppliers who supply the top 5 most sold products
SELECT   supplier_id FROM order_details od
JOIN products p ON p.product_id = od.product_id
GROUP BY od.product_id ORDER BY quantity DESC LIMIT 5;
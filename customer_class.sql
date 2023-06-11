-- Classify customers based on their total order amounts such that total order amounts > 5000 should be classified as ‘High Value’, if > 1000 then as ‘Medium Value’ and otherwise as ‘Low Value’

SELECT company_name, SUM(unit_price*quantity) as sales,
( CASE WHEN SUM(unit_price*quantity) > 5000 THEN 'High Value' 
 WHEN SUM(unit_price*quantity) > 1000 THEN 'Medium Value' ELSE 'Low Value' END ) AS CustomerClass

FROM orders o 
JOIN order_details od ON od.order_id=o.order_id
JOIN customers c ON c.customer_id= o.customer_id
GROUP BY o.customer_id;

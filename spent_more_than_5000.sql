-- Find the customers who have spent more than $5000 in total

SELECT  customer_id,  SUM(unit_price* quantity )   AS sales 
FROM order_details od
JOIN orders o ON od.order_id = o.order_id
GROUP BY customer_id HAVING sales> 5000;

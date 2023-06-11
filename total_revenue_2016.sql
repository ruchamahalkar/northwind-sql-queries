-- Find the total revenue for the year 2016

SELECT YEAR(order_date) AS year_order, SUM(quantity*unit_price) AS revenue  
FROM order_details od 
JOIN orders o ON od.order_id = o.order_id
WHERE year_order = 2016;

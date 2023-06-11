-- Find the month in the year 2016 with the highest total sales
SELECT MONTH(order_date) AS month_order, SUM(quantity*unit_price) AS sales  
FROM order_details od 
JOIN orders o ON od.order_id = o.order_id WHERE YEAR(order_date)  IS 2016
ORDER BY sales DESC LIMIT 1;
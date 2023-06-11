-- Find the total sales for each year
SELECT  YEAR(order_date ) AS order_year , SUM(quantity*unit_price) AS sales  
FROM order_details od JOIN orders o ON od.order_id = o.order_id
GROUP BY YEAR(order_date) ;

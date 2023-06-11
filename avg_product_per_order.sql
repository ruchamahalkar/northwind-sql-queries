-- Find the average quantity of products ordered in each order

SELECT order_id, avg(quantity) AS average FROM order_details  GROUP BY  order_id;
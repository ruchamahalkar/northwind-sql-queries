-- Get the list of customers who have ordered ‘Chai’ product

SELECT  customer_id  FROM order_details  od
JOIN orders o ON o.order_id = od.order_id 
JOIN products p ON od.product_id = p.product_id
WHERE product_name = 'Chai';
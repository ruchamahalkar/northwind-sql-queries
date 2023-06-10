/* Find the products that have never been ordered*/

SELECT p.product_id touch
FROM products p
LEFT JOIN order_details  o ON p.product_id=o.product_id 
WHERE order_id is null;
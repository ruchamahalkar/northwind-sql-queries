/*Calculate the average product price by category*/

SELECT  category_id, AVG(unit_price) FROM products GROUP BY category_id;
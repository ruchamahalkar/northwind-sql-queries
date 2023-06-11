-- Find the most expensive product in each category


SELECT category_id , MAX(unit_price) as expensive_products FROM products GROUP BY category_id;

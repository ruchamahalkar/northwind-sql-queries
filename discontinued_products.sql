-- List all products that are discontinued


SELECT product_id FROM products WHERE discontinued IS NOT '0';

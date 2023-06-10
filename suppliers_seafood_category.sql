/* Find all suppliers who provide products in the ‘Seafood’ category*/
SELECT s.supplier_id, s.company_name FROM products p
JOIN categories c ON p.category_id =c.category_id
JOIN suppliers s ON p.supplier_id = s.supplier_id
WHERE c.category_name = 'Seafood';
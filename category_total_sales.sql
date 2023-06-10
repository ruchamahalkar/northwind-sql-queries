
/*  Find the total sales (Quantity*Unit_Price) for each category of products */

SELECT category_id, quantity_per_unit *  unit_price AS total_sales 
 FROM products GROUP BY category_id;




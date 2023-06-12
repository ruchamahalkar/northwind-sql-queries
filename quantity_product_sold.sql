/*Get the total quantity of each product sold*/

SELECT product_id , sum(quantity) as total_quantity FROM order_details GROUP By product_id;

/*Get the top 5 most sold products*/

SELECT product_id, sum(quantity) FROM order_details GROUP BY product_id ORDER BY quantity DESC LIMIT 5







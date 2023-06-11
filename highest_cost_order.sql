-- Find the order with the highest total cost

SELECT order_id , (unit_price* quantity) - (unit_price* quantity*discount) AS total_cost
FROM order_details ORDER BY total_cost desc LIMIT 1;
-- CTE Example
WITH sales_cte AS (
    SELECT customer_id, SUM(order_amount) as total_sales
    FROM orders
    GROUP BY customer_id
)
SELECT *
FROM sales_cte
WHERE total_sales > 1000;

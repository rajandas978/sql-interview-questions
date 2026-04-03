-- Total orders and revenue by customer
SELECT customer_id,
       COUNT(*) AS total_orders,
       SUM(order_amount) AS total_revenue
FROM orders
GROUP BY customer_id;

-- Monthly revenue summary
SELECT DATE_TRUNC('month', order_date) AS month_start,
       COUNT(*) AS order_count,
       SUM(order_amount) AS monthly_revenue,
       AVG(order_amount) AS avg_order_value
FROM orders
GROUP BY DATE_TRUNC('month', order_date)
ORDER BY month_start;

-- Customers with more than 5 orders
SELECT customer_id,
       COUNT(*) AS total_orders
FROM orders
GROUP BY customer_id
HAVING COUNT(*) > 5;

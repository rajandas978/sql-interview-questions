SELECT customer_id,
       SUM(order_amount) AS total_spend,
       CASE
           WHEN SUM(order_amount) >= 5000 THEN 'High Value'
           WHEN SUM(order_amount) >= 2000 THEN 'Medium Value'
           ELSE 'Low Value'
       END AS customer_segment
FROM orders
GROUP BY customer_id;

-- Classify order status from shipped and delivered dates
SELECT order_id,
       order_date,
       shipped_date,
       delivered_date,
       CASE
           WHEN delivered_date IS NOT NULL THEN 'Delivered'
           WHEN shipped_date IS NOT NULL THEN 'Shipped'
           ELSE 'Pending'
       END AS order_status
FROM orders;

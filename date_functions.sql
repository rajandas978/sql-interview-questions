-- Extract year, month, day from order date
SELECT order_id,
       order_date,
       EXTRACT(YEAR FROM order_date) AS order_year,
       EXTRACT(MONTH FROM order_date) AS order_month,
       EXTRACT(DAY FROM order_date) AS order_day
FROM orders;

-- Days between order and delivery
SELECT order_id,
       order_date,
       delivered_date,
       (delivered_date - order_date) AS delivery_days
FROM orders
WHERE delivered_date IS NOT NULL;

-- Orders placed in the last 30 days
SELECT order_id, customer_id, order_date, order_amount
FROM orders
WHERE order_date >= CURRENT_DATE - INTERVAL '30 day';

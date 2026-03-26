-- ROW_NUMBER
SELECT customer_id, order_amount,
ROW_NUMBER() OVER(PARTITION BY customer_id ORDER BY order_amount DESC) as rn
FROM orders;

-- RANK
SELECT customer_id, order_amount,
RANK() OVER(ORDER BY order_amount DESC) as rank_no
FROM orders;

-- DENSE_RANK
SELECT customer_id, order_amount,
DENSE_RANK() OVER(ORDER BY order_amount DESC) as dense_rank_no
FROM orders;

-- LAG
SELECT order_date, sales,
LAG(sales) OVER(ORDER BY order_date) as previous_day_sales
FROM sales;

-- LEAD
SELECT order_date, sales,
LEAD(sales) OVER(ORDER BY order_date) as next_day_sales
FROM sales;

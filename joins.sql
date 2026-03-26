-- INNER JOIN
SELECT a.order_id, a.customer_id, b.customer_name
FROM orders a
INNER JOIN customers b
ON a.customer_id = b.customer_id;

-- LEFT JOIN
SELECT a.order_id, a.customer_id, b.customer_name
FROM orders a
LEFT JOIN customers b
ON a.customer_id = b.customer_id;

-- RIGHT JOIN
SELECT a.order_id, a.customer_id, b.customer_name
FROM orders a
RIGHT JOIN customers b
ON a.customer_id = b.customer_id;

-- FULL OUTER JOIN
SELECT a.order_id, a.customer_id, b.customer_name
FROM orders a
FULL OUTER JOIN customers b
ON a.customer_id = b.customer_id;

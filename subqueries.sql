-- Scalar Subquery: Compare each employee salary to average salary
SELECT employee_id, employee_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);

-- Correlated Subquery: Get customers with above-average order amount
SELECT o.customer_id, o.order_id, o.order_amount
FROM orders o
WHERE o.order_amount > (
    SELECT AVG(o2.order_amount)
    FROM orders o2
    WHERE o2.customer_id = o.customer_id
);

-- IN Subquery: Customers who placed orders in 2025
SELECT customer_id, customer_name
FROM customers
WHERE customer_id IN (
    SELECT DISTINCT customer_id
    FROM orders
    WHERE order_date >= '2025-01-01'
      AND order_date < '2026-01-01'
);

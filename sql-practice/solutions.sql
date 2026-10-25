-- 1. Completed orders worth at least 1,000, largest first.
SELECT order_id, customer_id, amount
FROM orders
WHERE status = 'completed' AND amount >= 1000
ORDER BY amount DESC, order_id;

-- 2. Completed revenue and order count by month.
SELECT SUBSTR(CAST(order_date AS TEXT), 1, 7) AS order_month,
       COUNT(*) AS completed_orders, SUM(amount) AS revenue
FROM orders
WHERE status = 'completed'
GROUP BY SUBSTR(CAST(order_date AS TEXT), 1, 7)
ORDER BY order_month;

-- 3. Lifetime spend for every customer, including those with zero spend.
SELECT c.customer_id, c.customer_name, COALESCE(SUM(o.amount), 0) AS spend
FROM customers AS c
LEFT JOIN orders AS o
  ON o.customer_id = c.customer_id AND o.status = 'completed'
GROUP BY c.customer_id, c.customer_name
ORDER BY spend DESC, c.customer_id;

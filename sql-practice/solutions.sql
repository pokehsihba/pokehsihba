-- 1. Completed orders worth at least 1,000, largest first.
SELECT order_id, customer_id, amount
FROM orders
WHERE status = 'completed' AND amount >= 1000
ORDER BY amount DESC, order_id;

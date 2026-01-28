-- Payment Behavior Analysis
SELECT p.payment_type,
       EXTRACT(MONTH FROM o.order_purchase_timestamp) AS month,
       COUNT(o.order_id) AS total_orders
FROM Project_01.payments p
JOIN Project_01.orders o ON p.order_id = o.order_id
GROUP BY p.payment_type, month
ORDER BY p.payment_type, month;

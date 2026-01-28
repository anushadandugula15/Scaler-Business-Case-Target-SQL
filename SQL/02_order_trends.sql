-- Order Trend Analysis
SELECT EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
       COUNT(order_id) AS total_orders
FROM Project_01.orders
GROUP BY year
ORDER BY year;

SELECT EXTRACT(YEAR FROM order_purchase_timestamp) AS year,
       EXTRACT(MONTH FROM order_purchase_timestamp) AS month,
       COUNT(order_id) AS total_orders
FROM Project_01.orders
GROUP BY year, month
ORDER BY year, month;

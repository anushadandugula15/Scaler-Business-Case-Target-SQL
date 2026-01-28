-- Schema & Data Exploration
SELECT MIN(order_purchase_timestamp) AS first_order_date,
       MAX(order_purchase_timestamp) AS last_order_date
FROM Project_01.orders;

SELECT DISTINCT customer_city, customer_state
FROM Project_01.customers;

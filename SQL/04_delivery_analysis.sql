-- Delivery & Logistics Analysis
SELECT order_id,
       DATE_DIFF(order_delivered_customer_date, order_purchase_timestamp, DAY) AS actual_delivery_days,
       DATE_DIFF(order_estimated_delivery_date, order_delivered_customer_date, DAY) AS estimated_vs_actual_diff
FROM Project_01.orders;

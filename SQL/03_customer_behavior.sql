-- Customer Purchase Behavior
SELECT CASE
         WHEN EXTRACT(TIME FROM order_purchase_timestamp) BETWEEN '05:00:00' AND '07:00:00' THEN 'Dawn'
         WHEN EXTRACT(TIME FROM order_purchase_timestamp) BETWEEN '07:00:00' AND '12:00:00' THEN 'Morning'
         WHEN EXTRACT(TIME FROM order_purchase_timestamp) BETWEEN '12:00:00' AND '16:00:00' THEN 'Afternoon'
         WHEN EXTRACT(TIME FROM order_purchase_timestamp) BETWEEN '16:00:00' AND '23:59:59' THEN 'Night'
         ELSE 'Late Night'
       END AS purchase_time,
       COUNT(order_id) AS order_count
FROM Project_01.orders
GROUP BY purchase_time
ORDER BY order_count DESC;

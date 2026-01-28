-- Business-Level Insights
WITH yearly_revenue AS (
    SELECT EXTRACT(YEAR FROM o.order_purchase_timestamp) AS year,
           SUM(p.payment_value) AS total_revenue
    FROM Project_01.orders o
    JOIN Project_01.payments p ON o.order_id = p.order_id
    WHERE EXTRACT(YEAR FROM o.order_purchase_timestamp) IN (2017, 2018)
    GROUP BY year
)
SELECT year, total_revenue
FROM yearly_revenue
ORDER BY year;

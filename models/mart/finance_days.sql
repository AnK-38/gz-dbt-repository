select
operational.date_date,
COUNT(operational.orders_id) AS Number_Transaction,
ROUND(AVG(operational.revenue),2) AS panier_moyen,
ROUND(SUM (operational.revenue),2) AS Total_revenue,
ROUND(SUM(operational.operational_margin),2) AS Operational_margin,
ROUND(SUM(operational.purchase_cost),2) AS total_purchase_cost,
ROUND(SUM(operational.shipping_fees),2) AS total_shipping_fees,
ROUND(SUM(operational.log_cost),2) AS Total_log_cost,
ROUND(SUM(operational.quantity),2) AS Total_quantity_sold

FROM {{ ref('int_orders_operational') }} as operational
GROUP BY date_date
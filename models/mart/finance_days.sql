select
operational.date_date,
COUNT(operational.orders_id) AS Number_Transaction,
SUM (revenue) AS Total_revenue,
SUM(Operational_margin) AS Operational_margin,
SUM(purchase_cost) AS total_purchase_cost,
SUM(shipping_fee) AS total_shipping_fees,
SUM(logcost) AS Total_log_cost,
SUM(quantity) AS Total_quantity_sold

FROM {{ ref('int_orders_operational') }} as operational
GROUP BY date_date
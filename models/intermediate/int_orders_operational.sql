SELECT
order_margin.orders_id AS orders_id,
order_margin.date_date AS date_date,
ROUND(order_margin.revenue,2) AS revenue,
order_margin.quantity AS quantity,
ROUND(order_margin.margin,2) AS margin,
ROUND(order_margin.purchase_cost,2) AS purchase_cost,
ROUND(ship.shipping_fee,2) AS shipping_fees,
ROUND(ship.logcost,2) AS log_cost,
ROUND(order_margin.margin+ship.shipping_fee-ship.logcost-ship.ship_cost,2) AS Operational_margin
FROM {{ ref('int_orders_margin') }} AS order_margin
INNER JOIN {{ ref('stg_raw__ship') }} AS ship
USING(orders_id)
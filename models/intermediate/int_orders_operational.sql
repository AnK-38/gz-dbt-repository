SELECT
order_margin.orders_id AS orders_id,
order_margin.date_date AS date_date,
order_margin.margin AS margin,
order_margin.purchase_cost AS purchase_cost,
order_margin.margin+ship.shipping_fee-ship.logcost-ship.ship_cost AS Operational_margin
FROM {{ ref('int_orders_margin') }} AS order_margin
INNER JOIN {{ ref('stg_raw__ship') }} AS ship
USING(orders_id)
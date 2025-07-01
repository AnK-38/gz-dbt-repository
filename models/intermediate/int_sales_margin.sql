
SELECT
sales.orders_id,
sales.date_date,
sales.products_id,
sales.quantity*table_products.purchase_price AS purchase_cost,
sales.revenue-(sales.quantity*table_products.purchase_price) AS margin

FROM {{ref("stg_raw__sales")}} AS sales
JOIN{{ref("stg_raw__product")}} AS table_products
USING(products_id)


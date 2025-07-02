
SELECT
EXTRACT(month FROM date_date)  AS month_2021,
ROUND(SUM(ads_margin),2) AS ads_margin,
ROUND(AVG(average_basket),2) AS average_basket,
ROUND(SUM(operational_margin),2) AS operational_margin,
ROUND(SUM(ads_cost),2) AS ads_cost,
ROUND(SUM(ads_impression),2) AS ads_impression,
ROUND(SUM(ads_clicks),2) AS ads_clicks,
ROUND(SUM(quantity),2) AS quantity,
ROUND(SUM(revenue),2) AS revenue,
ROUND(SUM(purchase_cost),2) AS purchase_cost,
ROUND(SUM(shipping_fee),2) AS shipping_fee,
ROUND(SUM(log_cost),2) AS log_cost

FROM {{ ref('finance_campaigns_day') }}
GROUP BY EXTRACT(month FROM date_date)
ORDER BY EXTRACT(month FROM date_date) DESC
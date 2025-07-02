SELECT
EXTRACT(month FROM date_date) AS month_month,
SUM(ads_cost) AS ads_cost,
SUM(impression) AS impression,
SUM(click) AS click
FROM {{ ref('int_campaigns') }}
GROUP BY EXTRACT(month FROM date_date)
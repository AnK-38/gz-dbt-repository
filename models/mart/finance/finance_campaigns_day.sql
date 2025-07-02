SELECT
finance_days.date_date  AS date_date,
finance_days.Operational_margin-campagne_jours.ads_cost AS ads_margin,
finance_days.panier_moyen AS average_basket,
finance_days.Operational_margin AS operational_margin,
campagne_jours.ads_cost AS ads_cost,
campagne_jours.impressions AS ads_impression,
campagne_jours.clicks AS ads_clicks,
finance_days.Total_quantity_sold AS quantity,
finance_days.Total_revenue AS revenue,
finance_days.purchase_cost AS purchase_cost,
finance_days.margin AS margin,
finance_days.shipping_fees AS shipping_fee,
finance_days.Total_log_cost AS log_cost,
finance_days.ship_cost AS ship_cost
FROM {{ ref('finance_days') }} AS finance_days
INNER JOIN {{ ref('in_campagne_jours') }} as campagne_jours
USING(date_date)
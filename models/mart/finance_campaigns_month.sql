select
DATE_TRUNC(date_date, Month) AS date_month,
SUM(average_basket) as avg_basket,
SUM(operational_margin) as ops_margin,
SUM(ad_cost) as ad_cost,
SUM(ads_impression) as ad_impression,
SUM(ads_click) as click,
SUM(quantity) as qty,
SUM(revenue) as revenue,
SUM(purchase_cost) as purchase_cost,
SUM(margin) as margin,
SUM(shipping_fee) as shipping_fee,
SUM(logcost) as logcost,
SUM(ship_cost) as ship_cost,
FROM {{ref("finance_campaigns_day")}}  
GROUP by date_month
order by date_month
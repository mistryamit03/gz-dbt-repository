select 
cd.date_date,
fd.average_basket,
fd.operational_margin,
cd.ad_cost,
cd.ads_impression,
cd.ads_click,
fd.quantity,
fd.revenue,
fd.purchase_cost,
fd.margin,
fd.shipping_fee,
fd.logcost,
fd.ship_cost,
(operational_margin - ad_cost) as ads_margin 
FROM {{ref("int_campaigns_day")}} as cd
JOIN {{ref("finance_days")}} as fd
USING(date_date)


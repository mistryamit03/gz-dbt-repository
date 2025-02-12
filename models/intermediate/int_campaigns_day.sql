select 
date_date,
SUM(ad_cost) as ad_cost,
SUM(impression) as ads_impression,
SUM(click) as ads_click,
from {{ref('int_campaigns')}} 
GROUP BY date_date
ORDER by date_date
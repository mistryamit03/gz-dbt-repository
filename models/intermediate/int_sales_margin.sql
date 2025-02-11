SELECT 
quantity * purchase_cost AS purchase_cost,
revenue - (quantity * purchase_cost) as margin
from {{ref('stg_raw__sales')}}
JOIN
{{ref('stg_raw__product')}}
using (products_id)



select *
from {{ref('stg_raw__adwords')}}
UNION ALL
select *
from {{ref('stg_raw__bing')}}
union ALL
select *
from {{ref('stg_raw__criteo')}}
union ALL
select *
from {{ref('stg_raw__facebook')}}


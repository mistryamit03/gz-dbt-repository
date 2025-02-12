SELECT
    m.orders_id,
    m.total_margin,
    m.date_date,
    m.total_revenue,
    m.total_purchase_cost,
    sh.shipping_fee,
    sh.logcost,
    sh.ship_cost,
    m.total_quantity,
    m.total_margin + sh.shipping_fee - sh.logcost - CAST(sh.ship_cost AS FLOAT64) AS operational_margin
FROM {{ref("int_orders_margin")}} AS m
JOIN {{ref("stg_raw__ship")}} AS sh
USING (orders_id) 
select
    order_date,
    geo_id,
    product_id,
    revenue_jpy
from {{ ref('stg_fact_sales') }}
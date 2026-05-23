select
    parse_date('%Y%m%d', cast(order_date as string)) as order_date,
    geo_id,
    product_id,
    revenue_jpy

from {{ source('analytics_dev', 'fact_sales') }}
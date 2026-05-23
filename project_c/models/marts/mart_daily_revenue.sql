{{ config(
    materialized='table'
) }}

select
    order_date,
    sum(revenue_jpy) as daily_revenue,
    count(*) as total_orders

from {{ ref('int_sales_metrics') }}

group by order_date
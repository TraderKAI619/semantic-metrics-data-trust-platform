with source_data as (

    select
        sum(revenue_jpy) as source_revenue
    from {{ ref('stg_fact_sales') }}

),

mart_data as (

    select
        sum(daily_revenue) as mart_revenue
    from {{ ref('mart_daily_revenue') }}

)

select
    source_revenue,
    mart_revenue,
    source_revenue - mart_revenue as revenue_diff
from source_data
cross join mart_data
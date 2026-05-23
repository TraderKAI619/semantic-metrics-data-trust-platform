{{ config(
    materialized='incremental',
    unique_key='order_date',
    partition_by={
      "field": "order_date",
      "data_type": "date"
    }
) }}

select
    order_date,
    sum(revenue_jpy) as daily_revenue,
    count(*) as total_orders
from {{ ref('int_sales_metrics') }}

{% if is_incremental() %}

where order_date >
    (
        select max(order_date)
        from {{ this }}
    )

{% endif %}

group by order_date
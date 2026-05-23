{{ config(
    materialized='view'
) }}

with daily_metrics as (

    select *
    from {{ ref('mart_daily_revenue') }}

),

baseline as (

    select
        avg(daily_revenue) as avg_revenue,
        stddev(daily_revenue) as stddev_revenue
    from daily_metrics

)

select
    d.order_date,
    d.daily_revenue,
    b.avg_revenue,
    b.stddev_revenue,

    case
        when d.daily_revenue > b.avg_revenue + (2 * b.stddev_revenue)
            then 'HIGH_ANOMALY'

        when d.daily_revenue < b.avg_revenue - (2 * b.stddev_revenue)
            then 'LOW_ANOMALY'

        else 'NORMAL'
    end as anomaly_status

from daily_metrics d
cross join baseline b
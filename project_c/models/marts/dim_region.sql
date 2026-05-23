select
    geo_id,

    case
        when geo_id = '13' then 'Tokyo'
        when geo_id = '27' then 'Osaka'
        else 'Other'
    end as region_name

from (
    select distinct geo_id
    from {{ ref('stg_fact_sales') }}
)
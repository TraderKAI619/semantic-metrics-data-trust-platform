select distinct
    geo_id
from {{ ref('stg_fact_sales') }}
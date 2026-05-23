{% snapshot snapshot_dim_region %}

{{
    config(
        target_schema='snapshots',
        unique_key='geo_id',
        strategy='check',
        check_cols=['region_name']
    )
}}

select
    geo_id,
    region_name

from {{ ref('dim_region') }}

{% endsnapshot %}
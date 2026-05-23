select

    current_timestamp() as generated_at,

    count(*) as total_records,

    countif(revenue_jpy is null) as missing_revenue_rows,

    round(
        100 * (
            1 - countif(revenue_jpy is null) / count(*)
        ),
        2
    ) as trust_score

from {{ ref('int_sales_metrics') }}
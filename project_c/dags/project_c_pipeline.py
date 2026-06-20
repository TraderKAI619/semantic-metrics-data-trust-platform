from airflow import DAG
from airflow.operators.empty import EmptyOperator
from datetime import datetime

with DAG(
    dag_id="project_c_pipeline",
    start_date=datetime(2025, 1, 1),
    schedule="@daily",
    catchup=False,
    tags=["dbt", "analytics-engineering", "project-c"],
) as dag:

    stg_fact_sales = EmptyOperator(
        task_id="stg_fact_sales"
    )

    int_sales_metrics = EmptyOperator(
        task_id="int_sales_metrics"
    )

    mart_daily_revenue = EmptyOperator(
        task_id="mart_daily_revenue"
    )

    mart_reconciliation_check = EmptyOperator(
        task_id="mart_reconciliation_check"
    )

    mart_anomaly_detection = EmptyOperator(
        task_id="mart_anomaly_detection"
    )

    mart_data_trust_score = EmptyOperator(
        task_id="mart_data_trust_score"
    )

    dbt_tests = EmptyOperator(
        task_id="dbt_tests"
    )

    (
        stg_fact_sales
        >> int_sales_metrics
        >> mart_daily_revenue
        >> mart_reconciliation_check
        >> mart_anomaly_detection
        >> mart_data_trust_score
        >> dbt_tests
    )

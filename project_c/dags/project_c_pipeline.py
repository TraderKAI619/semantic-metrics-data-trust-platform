from airflow import DAG
from airflow.operators.bash import BashOperator
from datetime import datetime

with DAG(
    dag_id="project_c_pipeline",
    start_date=datetime(2025, 1, 1),
    schedule="@daily",
    catchup=False,
    tags=["dbt", "analytics-engineering", "project-c"],
) as dag:

    stg_fact_sales = BashOperator(
        task_id="stg_fact_sales",
        bash_command="cd project_c && dbt run --select stg_fact_sales"
    )

    int_sales_metrics = BashOperator(
        task_id="int_sales_metrics",
        bash_command="cd project_c && dbt run --select int_sales_metrics"
    )

    mart_daily_revenue = BashOperator(
        task_id="mart_daily_revenue",
        bash_command="cd project_c && dbt run --select mart_daily_revenue"
    )

    mart_reconciliation_check = BashOperator(
        task_id="mart_reconciliation_check",
        bash_command="cd project_c && dbt run --select mart_reconciliation_check"
    )

    mart_anomaly_detection = BashOperator(
        task_id="mart_anomaly_detection",
        bash_command="cd project_c && dbt run --select mart_anomaly_detection"
    )

    mart_data_trust_score = BashOperator(
        task_id="mart_data_trust_score",
        bash_command="cd project_c && dbt run --select mart_data_trust_score"
    )

    dbt_tests = BashOperator(
        task_id="dbt_tests",
        bash_command="cd project_c && dbt test"
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

# Project C — Semantic Metrics & Data Trust Platform

Modern Analytics Engineering project built with BigQuery, dbt, and Airflow.

This project demonstrates:

* Incremental data modeling
* Data quality validation
* Relationship testing
* Analytics marts
* Data reconciliation
* Anomaly detection
* Trust score generation
* Airflow orchestration
* dbt lineage documentation
* Trusted analytics workflows

**Goal**

Build a production-style semantic analytics layer with trusted business metrics, automated validation, and orchestration workflows aligned with modern Analytics Engineering best practices.

---

## Architecture

Raw Source Data

↓

Staging Layer (`stg_fact_sales`)

↓

Intermediate Layer (`int_sales_metrics`)

↓

Analytics Mart Layer (`mart_daily_revenue`)

↓

Data Quality Layer (`mart_reconciliation_check`)

↓

Anomaly Detection Layer (`mart_anomaly_detection`)

↓

Trust Layer (`mart_data_trust_score`)

↓

dbt Tests

The architecture follows a modern Analytics Engineering workflow with clear separation of responsibilities across each layer.

---

## Technology Stack

* BigQuery
* dbt
* Airflow
* Incremental Models
* Data Quality Tests
* Relationship Validation
* dbt Snapshots
* GitHub Actions CI/CD
* dbt Docs Lineage

---

## Current Models

### Staging

* stg_fact_sales

### Intermediate

* int_sales_metrics

### Marts

* mart_daily_revenue
* mart_reconciliation_check
* mart_anomaly_detection
* mart_data_trust_score
* dim_region

---

## Airflow Orchestration Layer

This project includes an Airflow DAG that orchestrates the analytics workflow.

Pipeline Flow:

stg_fact_sales

→ int_sales_metrics

→ mart_daily_revenue

→ mart_reconciliation_check

→ mart_anomaly_detection

→ mart_data_trust_score

→ dbt_tests

The Airflow orchestration layer manages task dependencies and execution order across the pipeline.

This DAG defines the orchestration logic and task dependencies; it represents the design pattern used in production-style Airflow deployments.

This design ensures that reconciliation checks, anomaly detection, and trust score calculations are completed before trusted business metrics are published.

---

## Data Trust Features

### Data Quality Tests

* not_null tests
* unique tests
* relationship tests

### Reconciliation Checks

* Source-to-Mart revenue validation
* Revenue difference monitoring

### Anomaly Detection

* Statistical anomaly detection using daily revenue baselines
* High anomaly and low anomaly classification

### Trust Score Framework

* Missing value monitoring
* Data completeness scoring
* Trust score calculation

---

## Historical Tracking

dbt Snapshots are used to track Slowly Changing Dimensions (SCD).

Example:

* snapshot_dim_region

This enables historical tracking of dimensional changes over time.

---

## CI/CD

GitHub Actions automatically validates the project on every push to the main branch by executing:

* dbt run
* dbt test

The CI pipeline helps ensure model integrity and data quality throughout development.

---

## Key Analytics Engineering Concepts Demonstrated

* Dimensional Modeling
* Data Quality Validation
* Relationship Testing
* Reconciliation Frameworks
* Data Trust Measurement
* Incremental Processing
* Historical Tracking (SCD)
* CI/CD for Analytics Engineering
* Airflow Orchestration Design
* Semantic Analytics Layers

---

## Future Enhancements

Potential future improvements include:

* Production Airflow deployment
* Automated alerting and monitoring
* Advanced anomaly detection models
* Data observability integration

---

## Repository Purpose

This project was created to demonstrate modern Analytics Engineering practices, including data modeling, data quality management, orchestration design, and trusted business metric generation using dbt and BigQuery.

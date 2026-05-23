# Project C — Semantic Metrics & Data Trust Platform

Modern Analytics Engineering project built with BigQuery + dbt.

---

## Goal

This project demonstrates how modern analytics teams can build:

- Trusted analytics workflows
- Data quality validation
- Relationship testing
- Incremental data modeling
- Semantic metric layers
- Analytics marts
- Data trust scoring systems

---

## Architecture

Raw → Staging → Intermediate → Mart

---

## Stack

- BigQuery
- dbt
- SQL
- Incremental Models
- Data Quality Tests
- Relationship Validation
- dbt Docs Lineage

---

## Implemented Models

### Staging

- `stg_fact_sales`

### Intermediate

- `int_sales_metrics`

### Mart Layer

- `mart_daily_revenue`
- `mart_reconciliation_check`
- `mart_anomaly_detection`
- `mart_data_trust_score`
- `dim_region`

---

## Data Trust Features

### Relationship Testing

Validated:

- geo_id relationships
- dimensional consistency
- mart integrity

### Data Quality Validation

Implemented:

- not_null tests
- unique tests
- relationship tests

### Data Trust Scoring

Calculated:

- missing record ratios
- trust score
- total record validation

---

## dbt Lineage

The project includes complete dbt lineage documentation for model dependency tracking and analytics observability.

---

## Example Workflow

Source Data
→ Staging Layer
→ Intermediate Metrics
→ Trusted Mart Layer
→ Analytics Consumption

---

## Future Improvements

- Freshness monitoring
- Snapshot/SCD2 support
- Semantic KPI layer
- CI/CD orchestration
- Automated anomaly alerting
- dbt exposures
- Production-grade observability

---

## Author

LIU CHUNKAI

Tokyo, Japan

Analytics Engineering / Data Trust / Modern Data Stack
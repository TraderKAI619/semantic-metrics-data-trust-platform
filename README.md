# Project C — Semantic Metrics & Data Trust Platform

Modern Analytics Engineering project built with BigQuery + dbt.

This project demonstrates:

- Incremental data modeling
- Data quality validation
- Relationship testing
- Analytics marts
- dbt lineage documentation
- Trusted analytics workflow

---

## Architecture

Raw → Staging → Intermediate → Mart

### Stack

- BigQuery
- dbt
- Incremental Models
- Data Quality Tests
- Relationship Validation
- dbt Docs Lineage

---

## Current Models

### staging
- stg_fact_sales

### intermediate
- int_sales_metrics

### marts
- mart_daily_revenue
- mart_reconciliation_check
- dim_region

---

## Data Trust Features

- not_null tests
- unique tests
- relationship tests
- reconciliation checks

---

## Goal

Build a production-style semantic analytics layer with trusted business metrics.
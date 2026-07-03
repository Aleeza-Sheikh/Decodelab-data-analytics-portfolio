# 📊 Project 1: E-Commerce Data Audit & Cleaning

A structured data quality audit on a raw transactional dataset, simulating
A real-world data governance workflow with formal change tracking.

## 🎯 Business Problem

Raw transactional data is rarely analysis-ready. Missing values, duplicate
orders, inconsistent text formatting, and non-standard date/numeric formats
can silently corrupt downstream reporting and lead to flawed business
decisions. This project simulates an internal data audit to bring a raw
dataset up to a trusted, analysis-ready standard — with every change
Formally logged for auditability.

## 🛠️ Tools & Skills

Python · Pandas · Jupyter Notebook · Data Cleaning · Data Quality Auditing ·
Change Management Documentation

## 🔍 Audit Process

| ID | Issue Identified | Resolution | Result |
|----|-------------------|------------|--------|
| CR001 | Missing values in CouponCode | Imputed with `'NO_COUPON'` instead of dropping rows | Preserved full dataset integrity |
| CR002 | Missing numerical values | Imputed using column median | Avoided outlier bias from mean imputation |
| CR003 | Duplicate transactions | Deduplicated on OrderID | 0% duplicate rate achieved |
| CR004 | Inconsistent text (whitespace, casing) | Applied `.str.strip()` + title casing | Removed hidden formatting errors |
| CR005 | Inconsistent date formats | Standardized to ISO 8601 (YYYY-MM-DD) | 0% date format error rate |
| CR006 | Inconsistent decimal precision | Rounded financial fields to 2 decimals | Fully standardized float values |

## ✅ Results

- Achieved a 0% duplicate transaction rate and 0% date formatting error rate
  post-audit
- Resolved all 6 identified data quality issues, fully documented in a
  formal change log
- Delivered a clean, standardized dataset ready for downstream EDA and
  reporting

## 💡 Key Takeaways

- Applied context-aware imputation strategies (categorical fill vs. median)
  Instead of defaulting to row deletion, preserving sample size
- Practiced enterprise-style data governance by maintaining a formal change
  log — a habit that makes analysis auditable and reproducible
- Reinforced that "clean data" isn't one fix but a checklist: completeness,
  uniqueness, formatting consistency, and numeric precision

## 📁 Repository Contents

- `Project-1-Data-Audit/` — cleaning notebook
- `DecodesLabs-ChangeLog.pdf` — formal audit change log

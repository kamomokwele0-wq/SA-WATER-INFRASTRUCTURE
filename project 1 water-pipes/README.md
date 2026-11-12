# Project 1: Municipal Water Pipe Asset Valuation (PostgreSQL/PostGIS)

## Business Objective
To transition manual QGIS asset management into an enterprise spatial database. The goal is to allow a municipality to quickly filter high-risk assets and generate automated financial reports without needing to export data to Excel.

## Skills Demonstrated
* SQL Filtering (`WHERE` clauses)
* Data Aggregation (`GROUP BY`, `SUM`, `COUNT`)
* Financial Reporting in spatial databases
* Database management using PostgreSQL and pgAdmin

## Queries Executed

### 1. Filtering Low-Value Assets
Finds all water pipes with a book value below R30,000 to identify low-value infrastructure.
```sql
SELECT "ASSET ID ", "BOOK VALUE ", "CONDITION "
FROM public."water-pipes"
WHERE "BOOK VALUE " < 30000;
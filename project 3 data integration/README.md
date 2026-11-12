

markdown
# Project 3: Infrastructure Data Integration (PostgreSQL)

## Business Objective
To integrate isolated asset valuation data (Excel) with physical infrastructure maps (PostGIS) to create a unified Master Asset Register. This allows asset managers to view financial liabilities and physical pipe materials in a single view.

## Skills Demonstrated
*   Relational Data Modeling
*   Table Joins (`JOIN ... ON`)
*   Cross-platform data integration (Excel to PostGIS)
*   Handling messy, real-world data (dealing with trailing spaces in schema columns)

## The Query
This query zips together the spatial pipe layer and the non-spatial Excel register using the common unique identifier (`ASSET ID`).
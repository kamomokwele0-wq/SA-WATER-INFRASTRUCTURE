# SA Water Infrastructure Database

This repository contains the database backend and mapping portfolio for the SA Water Infrastructure project. It handles the spatial data for our municipal water networks and connects directly to our Python automation scripts and the interactive Leaflet web map.

The goal of this portfolio is to demonstrate the transition from manual desktop GIS workflows (shapefiles and Excel) to an enterprise spatial database. By using SQL and PostGIS, we can query, filter, and analyze municipal assets directly at the database level in milliseconds.

## 🌐 Live Web Map
🔗 **[Click here to view the interactive Leaflet Web Map) https://kamomokwele0-wq.github.io/SA-WATER-INFRASTRUCTURE/ **

## 🛠️ Tech Stack
*   **PostgreSQL & PostGIS** - For spatial data storage and querying
*   **QGIS** - For visual data checks, database management, and cartography
*   **Python (pyQGIS)** - For workflow automation
*   **Leaflet** - For the interactive web map frontend
*   **pgAdmin 4** - For database administration

---

## 📁 Project Breakdown

Each project folder contains the raw SQL code, the exported CSV data, a screenshot of the output, the final PDF map output, and the QGIS project file.

### [Project 1: Asset Valuation Filtering](./project%201%20water-pipes)
**Goal:** Find low-value or high-risk water pipes.
We used SQL `WHERE` clauses to instantly filter pipes based on their book value. This allows us to generate financial risk reports without ever exporting data to Excel. We also used `GROUP BY` to generate a total asset value summary for each pipe condition.
*   **Key SQL skills used:** `WHERE`, `GROUP BY`, `SUM`, `COUNT`

### [Project 2: Spatial Proximity (Buffer Analysis)](./project%202%20spatial-proximity)
**Goal:** Find water pipes that are within a certain distance of historical roads.
This required a spatial join between the pipes table and the historical roads table. Because they were imported in different coordinate systems (SRIDs), we used `ST_Transform` to align them on the fly before running the distance check.
*   **Key SQL skills used:** `ST_DWithin`, `ST_Transform`, `JOIN`

### [Project 3: Excel to PostGIS Data Integration](./project%203%20data%20integration)
**Goal:** Connect the physical map pipes to the financial Excel register.
We imported a raw Excel spreadsheet into the database and wrote a relational join. We matched the `ASSET ID` from the map layer with the `ASSET ID` from the spreadsheet, creating a master table that shows both the physical material and the financial value of every pipe.
*   **Key SQL skills used:** `JOIN ... ON` (including handling real-world messy data, such as trailing spaces in column names)

---

## 📖 How to Review This Repository

If you are a hiring manager or recruiter reviewing my work, please look inside the specific project folders. Every folder contains:
*   The exact `.sql` files I wrote.
*   The `.csv` data outputs.
*   The `.pdf` cartographic maps.
*   The `.qgz` QGIS project files.
*   A `README.md` explaining the business logic behind the queries.

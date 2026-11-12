# Project 2: Spatial Proximity Analysis (PostGIS)

## Business Objective
To identify which water infrastructure assets are located dangerously close to historical road networks. By combining two separate spatial layers (pipes and roads) that use different coordinate reference systems (SRIDs), we can analyze physical proximity for urban planning and risk management.

## Skills Demonstrated
*   Spatial Joins (`JOIN` on spatial conditions)
*   Coordinate Reference System (CRS) Transformation (`ST_Transform`)
*   Distance Calculation (`ST_DWithin`)
*   Spatial Database Management (PostGIS)

## The Query
This query finds water pipes within 4,000 meters of a historical road. It transforms the road geometry (SRID 2053) to match the pipe geometry (SRID 32644) on the fly.
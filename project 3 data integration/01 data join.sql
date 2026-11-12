

sql
SELECT p."ASSET ID", p."MATERIAL", e."BOOK VALUE ", e."CONDITION "
FROM public."water-pipes-v3" p
JOIN public."pipe asset register" e ON p."ASSET ID" = e."ASSET ID ";
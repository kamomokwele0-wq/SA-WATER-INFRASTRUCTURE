SELECT p."ASSET ID", p."MATERIAL", p."CONDITION", r."road-name "
FROM public."water-pipes-v3" p
JOIN public."historical roads 2" r ON ST_DWithin(p.geom, ST_Transform(r.geom, 32644), 4000);
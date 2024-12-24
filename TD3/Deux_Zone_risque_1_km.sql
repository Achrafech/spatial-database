SELECT *
FROM public."Parcels"
WHERE ST_DWithin(
    geom,
    (SELECT ST_Centroid(geom) FROM public."Parcels" WHERE id = 462273),
    1000) OR  ST_DWithin(
    geom,
    (SELECT ST_Centroid(geom) FROM public."Parcels" WHERE id = 460957),
    1000) ;

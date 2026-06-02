/*  TOTAL DE REGISTROS -------------------------------------------------

SELECT COUNT(*)
FROM `analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`;
------------------------------------------------------------------------ */

/*  DUPLICADOS -------------------------------------------------

SELECT
COUNT(*) - COUNT(DISTINCT ride_id) AS duplicate_rows
FROM `analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`;
------------------------------------------------------------------------ */

-- PROMEDIO Y DURACION MINIMA Y MAXIMA
SELECT
MIN(ride_length),
MAX(ride_length),
AVG(ride_length)
FROM `analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`;


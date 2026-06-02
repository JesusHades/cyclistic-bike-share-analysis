/*------------------------------------------------------------------

SELECT
    member_casual,
    COUNT(*) AS total_rides,
    AVG(ride_length) AS avg_ride_length
FROM
`analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`
GROUP BY member_casual;
------------------------------------------------------------------ */


-- % de Participacion
SELECT
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(COUNT(*) * 100.0 / SUM(COUNT(*)) OVER(), 2) AS percentage
FROM
`analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`
GROUP BY member_casual;
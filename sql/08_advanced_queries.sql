/* Hora de uso por tipo de usuario

 WITH hourly_rides AS (

SELECT
    member_casual,
    hour_of_start,
    COUNT(*) AS total_rides

FROM
`analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`

GROUP BY
    member_casual,
    hour_of_start
)

SELECT *
FROM hourly_rides
ORDER BY total_rides DESC;

*/


-- Ranking de dias

SELECT
    member_casual,
    day_of_week,
    COUNT(*) AS total_rides,
    RANK() OVER(PARTITION BY member_casual ORDER BY COUNT(*) DESC) AS day_rank

FROM
`analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`

GROUP BY
    member_casual,
    day_of_week;
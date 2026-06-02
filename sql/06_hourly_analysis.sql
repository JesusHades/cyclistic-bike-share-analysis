-- CSV rides_by_hour

SELECT
    member_casual,
    hour_of_start,
    COUNT(*) AS total_rides,
    AVG(ride_length) AS avg_ride_length
FROM
`analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`
GROUP BY
    member_casual,
    hour_of_start
ORDER BY
    hour_of_start;
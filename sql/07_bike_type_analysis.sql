-- CSV bike_type_usage

SELECT
    member_casual,
    rideable_type,
    COUNT(*) AS total_rides,
    AVG(ride_length) AS avg_ride_length
FROM
`analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`
GROUP BY
    member_casual,
    rideable_type
ORDER BY
    total_rides DESC;
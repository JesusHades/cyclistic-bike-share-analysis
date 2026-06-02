-- CSV rides_by_day

SELECT
    member_casual,
    day_of_week,
    COUNT(*) AS total_rides
FROM
`analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata`
GROUP BY
    member_casual,
    day_of_week
ORDER BY
    day_of_week;
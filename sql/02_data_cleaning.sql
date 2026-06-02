CREATE OR REPLACE TABLE
`analisis-cyclistic.cyclistic_tripdata.cleaned_full_tripdata` AS

SELECT
    ride_id,
    member_casual,
    rideable_type,
    started_at,
    ended_at,

    FORMAT_DATE('%A', DATE(started_at)) AS day_of_week,

    EXTRACT(HOUR FROM started_at) AS hour_of_start,

    TIMESTAMP_DIFF(ended_at, started_at, MINUTE) AS ride_length

FROM
`analisis-cyclistic.cyclistic_tripdata.full_tripdata`

WHERE TIMESTAMP_DIFF(ended_at, started_at, MINUTE) BETWEEN 5 AND 300;
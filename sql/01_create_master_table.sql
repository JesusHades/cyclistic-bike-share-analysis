CREATE OR REPLACE TABLE
`analisis-cyclistic.cyclistic_tripdata.full_tripdata` AS

SELECT * FROM `analisis-cyclistic.cyclistic_tripdata.tripdata_202511`
UNION ALL
SELECT * FROM `analisis-cyclistic.cyclistic_tripdata.tripdata_202512`
UNION ALL
SELECT * FROM `analisis-cyclistic.cyclistic_tripdata.tripdata_202601`
UNION ALL
SELECT * FROM `analisis-cyclistic.cyclistic_tripdata.tripdata_202602`
UNION ALL
SELECT * FROM `analisis-cyclistic.cyclistic_tripdata.tripdata_202603`
UNION ALL
SELECT * FROM `analisis-cyclistic.cyclistic_tripdata.tripdata_202604`;
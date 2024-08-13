
-- Check the number of empty values in each column

SELECT 	COUNT(rideable_type) AS rideable_type,
		COUNT(started_at) AS started_at,
        COUNT(ended_at) AS ended_at,
        COUNT(start_station_name) AS start_station_name,
        COUNT(end_station_name) AS end_station_name,
		COUNT(member_casual) AS member_casual
FROM users 
WHERE rideable_type <> ''
	AND started_at <> 0
	AND ended_at <> 0
	AND start_station_name <> '' 
	AND end_station_name <> '' 
	AND member_casual <> '' 
-- 578.164 values in start_station_name and 549.886 valUes in end_station_name ae NULL

-- Explore data one by one from left column to right column
	
-- 2) rideable_type: determine the type of bikes 
SELECT rideable_type
FROM `2022_divvy_trip_data.cyclistic_data`
GROUP BY rideable_type;
-- there are three types of bike: classic, electric and docked 

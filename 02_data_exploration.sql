
-- 1) Check the number of empty values in each column

SELECT 	COUNT(NULLIF(rideable_type, '')) AS rideable_type,
	COUNT(started_at) AS started_at,
	COUNT(ended_at) AS ended_at,
	COUNT(NULLIF(start_station_name, '')) AS start_station_name,
	COUNT(NULLIF(end_station_name, '')) AS end_station_name,
	COUNT(NULLIF(start_lat, '')) AS start_lat,
	COUNT(NULLIF(start_lng, '')) AS start_lng,
	COUNT(NULLIF(end_lat, '')) AS end_lat,
	COUNT(NULLIF(end_lng, '')) AS end_lng,
	COUNT(NULLIF(member_casual, '')) AS member_casual
FROM cyclistic_users
-- 908,003 values in start_station_name and 980,556 in end_station_name are NULL. The rest of the columns have all the values.

-- Explore data one by one from left column to right column

-- 2) rider_id: the length of the rider id should be uniform 
SELECT LENGTH(ride_id) as rider_id_length
FROM cyclistic_users
GROUP BY LENGTH(ride_id);
-- the ride_id is consistent with 16 characters.

-- 3) rideable_type: determine the type of bikes 
SELECT rideable_type
FROM cyclistic_users
GROUP BY rideable_type;
-- there are three types of bike: classic, electric and docked.

-- 4) started_at, ended_at: ride duration
SELECT ride_id, started_at, ended_at
FROM cyclistic_users	
WHERE 
TIMESTAMPDIFF(MINUTE, ended_at, started_at) <= 1 OR
TIMESTAMPDIFF(MINUTE, ended_at, started_at) >= 1440;
-- check if the ride time is less than a minute or longer than a day. 
-- the end time is behind the start time.
-- There are 5,730,879 rows meeting the condition.

-- 5) name & id of start_station and end_station

SELECT start_station_id, end_station_id,
    COUNT(*) - COUNT(NULLIF(start_station_id, '')) AS null_start_station_count,
    COUNT(*) - COUNT(NULLIF(end_station_id, '')) AS null_end_station_count
FROM cyclistic_users
GROUP BY start_station_id, end_station_id
HAVING start_station_id = '' OR end_station_id = '';
-- 489,243 null values observed. 
-- the string lengths of station id are inconsistent. however, it will be ignored as the station id is not important in our analysis.

-- 6) lat & lng of start and end
SELECT * 
FROM `2022_divvy_trip_data.cyclistic_data`
WHERE
start_lat IS NULL OR
start_lng IS NULL OR
end_lat IS NULL OR
end_lng IS NULL;
-- No NULL values are observed.

-- 7) member_casual: type of membership 
SELECT member_casual, COUNT(*) as membership_count
FROM cyclistic_user
GROUP BY member_casual;
-- Only two types: member and causal. 
-- There is only 1 value out of the types of membership.

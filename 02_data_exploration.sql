--Check the number of empty values in each column

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

  
4568467
4596919

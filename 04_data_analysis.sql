-- 1. I downloaded the file in CVS to be exported to Power BI
SELECT * INTO OUTFILE 'C:\\ProgramData\\MySQL\\MySQL Server 8.0\\Uploads\\cyclistic_cleaned' 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
FROM nombre_de_tu_tabla;

-- CHECK QUERIES

-- 2. Total rides from July 2023 to June 2024
Select member_casual, count(member_casual) AS count
from cyclistic.cyclistic_cleaned
Group by member_casual

-- 3. Types of bike per type of user  
SELECT rideable_type, member_casual, count(rideable_type) AS rideable_count
FROM cyclistic.cyclistic_cleaned
group by rideable_type, member_casual

-- 4. Average of rides length in minutes
select member_casual, AVG(ride_length_in_mins) AS average_ride
from cyclistic.cyclistic_cleaned
group by member_casual

-- 5. Trips per month
SELECT member_casual, month, 
COUNT(*) AS total_rides_per_month
FROM cyclistic.cyclistic_cleaned
GROUP BY member_casual, month
ORDER BY member_casual;

-- 6. Average of trips per month  
SELECT member_casual, month, 
AVG(ride_length_in_mins) AS average_ride,
COUNT(*) AS total_rides_per_month
FROM cyclistic.cyclistic_cleaned
GROUP BY member_casual, month
ORDER BY member_casual;

-- 7. Trips per day of week
SELECT member_casual, day_of_week, 
COUNT(*) AS total_rides_per_week
FROM cyclistic.cyclistic_cleaned
GROUP BY member_casual, day_of_week
ORDER BY member_casual;

-- 8. Average of trips per day of week
SELECT member_casual, day_of_week, 
AVG(ride_length_in_mins) AS average_ride,
COUNT(*) AS total_rides_per_month
FROM cyclistic.cyclistic_cleaned
GROUP BY member_casual, day_of_week
ORDER BY member_casual;

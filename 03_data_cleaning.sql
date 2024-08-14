-- Create the columns 'month' and 'day_of week' 
-- Determine the ride length in minutes 
-- Remove rows with null values

CREATE TABLE cyclistic_cleaned AS (
  SELECT 
    t1.ride_id, 
    t1.rideable_type,
    t1.started_at,
    t1.ended_at,
    t2.ride_length_in_mins,
    CASE 
      EXTRACT(MONTH FROM t1.started_at)
        WHEN 1 THEN 'January'
        WHEN 2 THEN 'February'
        WHEN 3 THEN 'March'
        WHEN 4 THEN 'April'
        WHEN 5 THEN 'May'      
        WHEN 6 THEN 'June'
        WHEN 7 THEN 'July'
        WHEN 8 THEN 'August'
        WHEN 9 THEN 'September'
        WHEN 10 THEN 'October'      
        WHEN 11 THEN 'November'
        WHEN 12 THEN 'December'
    END AS month,
    CASE DAYOFWEEK(t1.started_at)
      WHEN 1 THEN 'Sunday'
      WHEN 2 THEN 'Monday'
      WHEN 3 THEN 'Tuesday'
      WHEN 4 THEN 'Wednesday'
      WHEN 5 THEN 'Thursday'
      WHEN 6 THEN 'Friday'
      WHEN 7 THEN 'Saturday'    
    END AS day_of_week,
    t1.start_station_name,
    t1.start_station_id,
    t1.end_station_name,
    t1.end_station_id,
    t1.start_lat,
    t1.start_lng,
    t1.end_lat,
    t1.end_lng,
    t1.member_casual
  FROM 
    cyclistic_users AS t1
  JOIN 
    (SELECT 
        ride_id,
        TIMESTAMPDIFF(MINUTE, started_at, ended_at) AS ride_length_in_mins
     FROM 
        cyclistic_users
    ) AS t2
  USING (ride_id)
  WHERE 
    t2.ride_length_in_mins > 1 
    AND t2.ride_length_in_mins < 1440 
    AND t1.start_station_name IS NOT NULL 
    AND t1.start_station_id IS NOT NULL 
    AND t1.end_station_name IS NOT NULL 
    AND t1.end_station_id IS NOT NULL 
    AND t1.start_lat IS NOT NULL 
    AND t1.start_lng IS NOT NULL 
    AND t1.end_lat IS NOT NULL 
    AND t1.end_lng IS NOT NULL
);

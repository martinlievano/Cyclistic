--The first step was to create the database and the table before upload the datasets

create database cyclistic

create table cyclistic_users (
ride_id varchar (50),
rideable_type varchar (100),
started_at datetime,
ended_at datetime,
start_station_name varchar (100),
start_station_id varchar (50),
end_station_name varchar (100),
end_station_id varchar (50),
start_lat float,
start_lng	float,
end_lat float,
end_lng	float,
member_casual text (20)
);

--Then, we continue uploading de .csv files in the Command Line, one time for each file.

load data local infile 'C:\\Users\\nicli\\OneDrive\\Documentos\\Cyclistic\\FILENAME.csv' 
into table cyclistic_users
fields terminated by ';'
optionally enclosed by ' '
lines terminated by '\n'
ignore 1 rows;

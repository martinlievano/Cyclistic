# CYCLISTIC

## Introduction

These datasets are used for the case study as the capstone project in Google Data Analytics course on Coursera.

For the purposes of this case study, the datasets are appropriate and will enable you to answer the business questions. The data has been made available by Motivate International Inc. under this license and Cyclistic is a fictional company located in Chicago, USA.

With this public data you can explore how different customer types are using Cyclistic bikes. But for data-privacy issues is prohibited use riders’ personally identifiable information.

Cyclistic, a bike-share program that features more than 5,800 bicycles and 600 docking stations. Cyclistic sets itself apart by also o ering reclining bikes, hand tricycles, and cargo bikes, making bike-share more inclusive to people with disabilities and riders who can’t use a standard two-wheeled bike. The majority of riders opt for traditional bikes; about 8% of riders use the assistive options. Cyclistic users are more likely to ride for leisure, but about 30% use the bikes to commute to work each day.

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime. Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One approach that helped make these things possible was the exibility of its pricing plans: single-ride passes, fu l-day passes, and annual memberships. Customers whopurchase single-ride or ful-day passes are referred to as casual riders. Customers whopurchase annual memberships are Cyclistic members. Cyclistic’s nance analysts have concluded that annual members are much more pro table than casual riders. 

You are ajunior data analyst working on the marketing analyst team at Cyclistic. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed upwith compeling data insights and professional data visualizations.

**You wil produce a report with the folowing deliverables:**
1. A clear statement of the business task
2. A description of al data sources used
3. Documentation of any cleaning or manipulation of data
4. A summary of your analysis
5. Supporting visualizations and key findings
6. Your top three recommendations based on your analysis

## Analysis Process

### 1. ASK

Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the team needs to be er understand how annual members andcasual riders differ, why casual riders would buy a membership, and how digital media could a ect their marketing tactics.

**Three questions wil guide the future marketing program:** 
1. How do annual members and casual riders use Cyclistic bikes differently?
2. Why would casual riders buy Cyclistic annual memberships?
3. How can Cyclistic use digital media to influence casual riders to become members?

### 2. PREPARE

**Links**

* [Data Source](https://divvy-tripdata.s3.amazonaws.com/index.html)
[Note that the data has been made available by Motivate International Inc. under this [license](https://divvybikes.com/data-license-agreement).]
* These are the 12 [datasets](https://www.kaggle.com/datasets/martinlievano/cyclistic) used for this analysis.

**Tools**

- Data cleaning & processing - MySQL
- Data visualization - Power BI

### 3. PROCESS

The basis for this analysis is 2023-2024 data and the steps for processing the data are as follow:

+ [Data Combining](https://github.com/martinlievano/Cyclistic/blob/main/01_data_combinig.sql)
+ [Data Exploration](https://github.com/martinlievano/Cyclistic/blob/main/02_data_exploration.sql)
+ [Data Cleaning](https://github.com/martinlievano/Cyclistic/blob/main/03_data_cleaning.sql)
+ [Data Analysis](https://github.com/martinlievano/Cyclistic/blob/main/04_data_analysis.sql)

**Data Combining**

The 12 tables from July 2023 to June 2024 were stacked and combined into a single table. The table consists of 5,731,032 rows.

**Data Exploration**

I ran the queries for each column from left to right in order to determine the data type and to uncover any missing values, outliers, inconsistencies, and errors within the dataset.

The data set consists of 13 variables, as shown in the following with the data type:

| No.|      Variable 	    |                 Description                 |   Type   |   Mode    |
|----|--------------------|---------------------------------------------|----------|-----------|
|1   |ride_id             |ID number assigned to each ride              |Varchar   |Nullable   |
|2	  |rideable_type	      |Electric bike, Classic bike and, Docked bike |Varchar   |Nullable   |
|3   |started_at	         |Date and time at the start of trip           |Timestamp |Nullable   |
|4	  |ended_at	           |Date and time at the end of trip             |Timestamp |Nullable   |
|5	  |start_station_name	 |Name of the station where the ride started   |Varchar   |Nullable   |
|6	  |start_station_id	   |ID of the station where the ride started     |Varchar   |Nullable   |
|7	  |end_station_name	   |Name of the station where the ride ended     |Varchar   |Nullable   |
|8 	 |end_station_id	     |ID of the station where the ride ended       |Varchar   |Nullable   |
|9	  |start_lat	          |Latitude of starting station                 |Float     |Nullable   |
|10	 |start_lng	          |Longitude of starting station                |Float     |Nullable   |
|11	 |end_lat	            |Latitude of ending station                   |Float     |Nullable   |
|12	 |end_lng	            |Longitude of ending station                  |Float     |Nullable   |
|13	 |member_casual	      |Type of membership of each rider             |Tinytext  |Nullable   |

**Data Cleaning**

Before analyzing the data, the dataset was cleaned by:

+ Removing the trips with null or empty values.
+ Adding 2 new columns: 'ride_length' and 'day_of_week'.
+ Exclusing the rides with duration less than a minute or longer than a day.

In total, 5,479,974 rows were returned, which means 251,058 rows were removed.

### 4. ANALYZE

The analysis question is:

How do annual members and casual riders use Cyclistic bikes differently?

The cleaned data is imported into Power BI for analysis and the figures plotted are displayed in the following.

- Total Rides in 2023-2024
The figure below shows the total number of rides carried out by Cyclistic members and casual riders in the period July 2023 - JUne 2024.

![1](https://github.com/user-attachments/assets/5c752ea2-84ba-43e9-9d13-aa979e2c947a)

Cyclistic members recorded a greater bicycle activity than casual riders. The total rides for Cyclistic members are 3,520.159 while 1,959,814 trips for casual riders.
Cyclistic members accounted for about 64% of total rides whereas casual riders made up 36% of total rides in the period analyzed.

- Types of Bikes
The types of bicycles used for the trips are displayed as following

![2](https://github.com/user-attachments/assets/1a5d1404-a423-45de-8706-4141dd1b21b3)

There are three types of bicycles: classic, electric and docked bikes.
Cyclistic members and casual riders prefer show a higher preference for classic bicycles 2,759,235 over electric bicycles 2,687,571.
Casual riders have also used the docked bicycles 33,168 times.

- Average Ride Duration
The average ride length is plotted against the type of users (member vs. casual):

![3](https://github.com/user-attachments/assets/152ef948-7e58-437a-83cd-90ce19800ebe)

Cyclistic members can ride on the bicycles for about 12.3 minutes on average whereas casual riders have an average ride length of 21.6 minutes. Hence, the ride duration of Cyclistic members are approximately two times smalelr than casual riders.

- Trips Taken in a Month
The preference of cycling activity can be determined by drawing the graph of trips taken against month from July 2023 to June 2024.

 ![4](https://github.com/user-attachments/assets/0c3d7a53-b2fe-4d05-b06c-7ffb55489bf2)

Both Cyclistic members and casual riders had the lowest activity, 113,015 rides and 23,185 rides respectively in January 2024.
The highest activity (738,825 rides) was in August 2023, with 440,305 rides for members and 298,520 rides for casuals, but the month with the highest activity for casuals was July 2023 with 316,965 rides.

- Average Ride Length in a Month
The mean trip duration is depicted in the line graph below.

![5](https://github.com/user-attachments/assets/ca55eff0-d949-4ea6-bb57-7fa2b6f7a958)

The monthly average ride duration for Cyclistic members is the highest in August 2023 (13.23 minutes).
For casual riders, the highest mean trip duration is in May (24.11 minutes).


- Trips Taken in a Week
The bar chart below is used to study the daily user activity over a week.

![6](https://github.com/user-attachments/assets/6b16709c-c751-4727-8a6d-fe316905d8fd)


Generally, bike rides are most frequented on Saturdays.
Cyclistic members have the highest activity (565,654 rides) on Wednesdays while the lowest activity (405,234 rides) on Sundays.
Casual riders have the greatest activity (398,855 rides) on Saturdays while the least activity (227,049 rides) on Mondays.

- Average Ride Length in a Week
The mean ride duration across the week is displayed as follow.

![7](https://github.com/user-attachments/assets/b8ae7b87-60ee-4fdf-ad5d-0bfeb5c2f3ce)

Cyclistic members cycled the longest on Saturday with an average ride length of 13,9 minutes.
On the other hand, casual riders cycled the longest on Saturday with a mean trip duration of 25.3 minutes.

[Public Power BI visualization](https://uexternadoedu-my.sharepoint.com/:u:/g/personal/martin_lievano_est_uexternado_edu_co/EQ01lQI9bV9DhNEgVgNaWEsBiZaN-C2JLp6hkgHtBG1msg?e=PoaUd8)

The similiarities and differences between Cyclistic members and casual riders were drawn from the dashboard above.

**Similarities:**

+ Weather is an important factor. Spring and summer are the seasons with the most rides in the observed months, while falla and winter have the lowest ammount of rides. This may be due to change of season in which the weather temperature drops and becomes uncomfortable for rides.
+ Classic rules. Both Cyclistic members and casual riders prefer classic bicycles over electric bicycles. However, the use of electric bikes is reaching out the the use of classic bikes.
+ Wekends are funnier: Both Cyclistic members and casual riders have higher average ride duration on weekends as compared to on weekdays.

**Differences:**

+ Cyclistic members are more active than casual riders having the highest number of rides.
+ Cyclistic members have smaller average ride length than casual riders. This may suggest that the Cyclistic members take the bicycles for short trips or short distance travel, for example to go to work everyday and, while casuals may be tourists.
+ Cyclistic members show consistent rides throughout the weekwith small changes in the average length while casual riders have the busiest activites on weekends and lowest activities during weekdays.

 ### 5. ACT
 
Recommendations

From the analysis above, we can design marketing strategies to convert casual riders to Cyclistic members. Here are my suggested approach:
Membership for smaller periods Provide a range of smaller periods than a year: monthly, weekly and daily. Users will be able to choose their membership type according to their own preferences and needs. By introducing shorter-term membership plans with appropriate pricing, we can cater the needs of riders who might not need an annual membership.

Group Membership Discounts Offer discounted plans for friends, students, and families can encourage collective memberships. Furthermore, it encourages users to cycle together and strengthen the bonds between people.

Membership Rewards Program Implement a membership rewards program system for users to collect points for each ride or discounts such as membership discount based on the number of points collected or rides made. This will encourage riders to use the service more frequently, driving engagement and loyalty.

Member-Exclusive Events Organize member-exclusive events such as group rides, urban exploration challenges, or themed cycling events. This approach not only encourages more rides from current members but also entices casual riders to join as members to participate in these unique experiences.

Seasonal Campaigns Launch seasonal campaigns by offering limited-time discounts, special weekdays offers, or extended ride durations for members during these seasons to help in making the service more sustainable and manageable.

Social Media Campaigns Utilize social media platforms to engage with both casual riders and potential members. Share success stories, testimonials, and user-generated content from Cyclistic members who have benefited from the membership. Create visually appealing content showcasing the joy of cycling during different seasons and scenarios, enticing casual riders to become members.

### Conclusion

In short, this analysis provides valuable insights into the preferences and behaviors of Cyclistic members and casual riders. By tailoring strategies to the identified differences and preferences, Cyclistic can effectively convert casual riders into portential members.

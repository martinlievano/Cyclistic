# CYCLISTIC

## Introduction

These datasets are used for the case study as the capstone project in Google Data Analytics course on Coursera

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
+ [Data Exploration]
+ [Data Cleaning]
+ [Data Analysis]

**Data Combining**

The 12 tables from July 2023 to June 2024 were stacked and combined into a single table. The table consists of 5,731,032 rows.

**Data Exploration**

I ran the queries for each column from left to right in order to determine the data type and to uncover any missing values, outliers, inconsistencies, and errors within the dataset.

The data set consists of 13 variables, as shown in the following with the data type:

| No.|      Variable 	    |                 Description                 |   Type   |   Mode    |
|----|--------------------|---------------------------------------------|----------|-----------|
|1   |ride_id             |ID number assigned to each ride              |String    |Nullable   |
|2	  |rideable_type	      |Electric bike, Classic bike and, Docked bike |String    |Nullable   |
|3   |started_at	         |Date and time at the start of trip           |Timestamp |Nullable   |
|4	  |ended_at	           |Date and time at the end of trip             |Timestamp |Nullable   |
|5	  |start_station_name	 |Name of the station where the ride started   |String    |Nullable   |
|6	  |start_station_id	   |ID of the station where the ride started     |String    |Nullable   |
|7	  |end_station_name	   |Name of the station where the ride ended     |String    |Nullable   |
|8 	 |end_station_id	     |ID of the station where the ride ended       |String    |Nullable   |
|9	  |start_lat	          |Latitude of starting station                 |Float     |Nullable   |
|10	 |start_lng	          |Longitude of starting station                |Float     |Nullable   |
|11	 |end_lat	            |Latitude of ending station                   |Float     |Nullable   |
|12	 |end_lng	            |Longitude of ending station                  |Float     |Nullable   |
|13	 |member_casual	      |Type of membership of each rider             |String    |Nullable   |

**Data Cleaning**

Before analyzing the data, the dataset was cleaned by:

+ Removing the trips with null or empty values.
+ Adding 2 new columns: 'ride_length' and 'day_of_week'.
+ Exclusing the rides with duration less than a minute or longer than a day.

In total, 4,224,062 rows were returned, which means 1,443,655 rows were removed.

4. Analyze
Data Analysis
The analysis question is:

How do annual members and casual riders use Cyclistic bikes differently?

The cleaned data is imported into Tableau for analysis and the figures plotted are displayed in the following.

- Total Rides in 2022
The figure below shows the total number of rides carried out by Cyclistic members and casual riders in 2022.

IMG1

Cyclistic members recorded a greater bicycle activity than casual riders. The total rides for Cyclistic members are 2,511,003 while 1,713,059 trips for casual riders.
Cyclistic members accounted for about 59.4% of total rides whereas casual riders made up 40.6% of total rides in 2022.

- Types of Bikes
The types of bicycles used for the trips are displayed as follo

IMG2

There are three types of bicycles: classic, electric and docked bikes.
Cyclistic members and casual riders prefer show a higher preference for classic bicycles over electric bicycles.
Casual riders have also used the docked bicycles.

- Average Ride Duration
The average ride length is plotted against the type of users (member vs. casual):

IMG3

Cyclistic members can ride on the bicycles for about 12.41 minutes on average whereas casual riders have an average ride length of 23.82 minutes. Hence, the ride duration of Cyclistic members are approximately two times smalelr than casual riders.

 Trips Taken in a Month
The preference of cycling activity can be determined by drawing the graph of trips taken against month from January to December 2022.

IMG4

Both Cyclistic members and casual riders have the lowest activity, 65,051 rides and 12,355 rides respectively in January 2022.
Cyclistic members have the highest activity (323,073 rides) in August 2022.
Casual riders have the greatest activity (303,273 rides) in July 2022.

- Average Ride Length in a Month
The mean trip duration is depicted in the line graph below.

IMG5

The monthly average ride duration for Cyclistic members is the highest in June (13.65 minutes).
For casual riders, the highest mean trip duration is in May (27.75 minutes).


- Trips Taken in a Week
The bar chart below is used to study the daily user activity over a week.

IMG6

Generally, bike rides are most frequented on Saturdays.
Cyclistic members have the highest activity (399,863 rides) on Thursdays while the lowest activity (286,128 rides) on Mondays.
Casual riders have the greatest activity (357,781rides) on Saturdays while the least activity (191,467 rides) on Tuesdays.

- Average Ride Length in a Week
The mean ride duration across the week is displayed as follow.

IMG7

Cyclistic members cycled the longest on Saturday with an average ride length of 14.01 minutes.
On the other hand, casual riders cycled the longest on Sunday with a mean trip duration of 27.18 minutes.

The similiarities and differences between Cyclistic members and casual riders were drawn from the dashboard above.

Similarities:

Both Cyclistic members and casual riders prefer riding bicycles in the spring and summer seasons (from May to September). However, the number of rides decrease since September. This may be due to change of season in which the weather temperature drops and becomes uncomfortable for rides.
Both Cyclistic members and casual riders prefer classic bicycles over electric bicycles.
Both Cyclistic members and casual riders have higher average ride duration on weekends as compared to on weekdays.
Differences:

Cyclistic members go on more rides than casual riders.
Cyclistic members have smaller average ride length (12.41 minutes) than casual riders (23.82 minutes). Hence, this may suggest that the Cyclistic members take the bicycles for short trips or short distance travel.
Cyclistic members show consistent rides throughout the week while casual riders have the busiest activites on weekends and lowest activities during weekdays. This may indicate that the Cyclistic members use the bicycles for *purpose-oriented rides such as work or errands while the casual riders use bicycles for leisure or recreational activities.
6. Act
Recommendations
From the analysis above, we can design marketing strategies to convert casual riders to Cyclistic members. Here are my suggested approach:

Membership Personalisation
Provide a range of membership personalizations: yearly, monthly and daily. For example, $365/year, $45/month, $3/day. Users will be able to choose their membership type according to their own preferences. By introducing shorter-term membership plans with appropriate pricing, we can cater the needs of riders who might not need an annual membership.

Group Membership Discounts
Offerdiscounted plans for friends, students, and families can encourage collective memberships. Furthermore, it encourages users to cycle together and strengthen the bonds between people.

Membership Loyalty Points System
Implement a membership loyalty points system for users to collect points for each ride. Rewards such as membership discount will be given based on the number of points collected. This will encourage riders to use the service more frequently, driving engagement and loyalty.

Member-Exclusive Events
Organize member-exclusive events such as group rides, urban exploration challenges, or themed cycling events. This approach not only encourages more rides from current members but also entices casual riders to join as members to participate in these unique experiences.

Seasonal campaigns
Launch seasonal campaigns by offering limited-time discounts, special weekdays offers, or extended ride durations for members during these seasons to help in making the service more sustainable and manageable.

Social Media Engagement
Utilize digital media, including social media platforms, to engage with both casual riders and potential members. Share success stories, testimonials, and user-generated content from Cyclistic members who have benefited from the membership. Create visually appealing content showcasing the joy of cycling during different seasons and scenarios, enticing casual riders to become members.

🔮 Conclusion
In short, this analysis provides valuable insights into the preferences and behaviors of Cyclistic members and casual riders. By tailoring strategies to the identified differences and preferences, Cyclistic can effectively convert casual riders into portential members.

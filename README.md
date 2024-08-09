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

- Data cleaning & processing - SQL on Google Big Query
- Data visualization - Power BI

### 3. PROCESS

The basis for this analysis is 2023-2024 data and the steps for processing the data are as follow:

+ [Data Combining]
+ [Data Exploration]
+ [Data Cleaning]
+ [Data Analysis]

**Data Combining**

The 12 tables from July 2023 to June 2024 were stacked and combined into a single table. The table consists of 5,146,805 rows.

**Data Exploration**

I ran the queries for each column from left to right in order to determine the data type and to uncover any missing values, outliers, inconsistencies, and errors within the dataset.

The data set consists of 13 variables, as shown in the following with the data type:

| No.|      Variable 	    |                 Description                 |   Type   |   Mode    |
|----|--------------------|---------------------------------------------|----------|-----------|
|1   |ride_id             |ID number assigned to each ride              |String    |Nullable   |
|2	 |rideable_type	      |Electric bike, Classic bike and, Docked bike |String    |Nullable   |
|3   |started_at	        |Date and time at the start of trip           |Timestamp |Nullable   |
|4	 |ended_at	          |Date and time at the end of trip             |Timestamp |Nullable   |
|5	 |start_station_name	|Name of the station where the ride started   |String    |Nullable   |
|6	 |start_station_id	  |ID of the station where the ride started     |String    |Nullable   |
|7	 |end_station_name	  |Name of the station where the ride ended     |String    |Nullable   |
|8	 |end_station_id	    |ID of the station where the ride ended       |String    |Nullable   |
|9	 |start_lat	          |Latitude of starting station                 |Float     |Nullable   |
|10	 |start_lng	          |Longitude of starting station                |Float     |Nullable   |
|11	 |end_lat	            |Latitude of ending station                   |Float     |Nullable   |
|12	 |end_lng	            |Longitude of ending station                  |Float     |Nullable   |
|13	 |member_casual	      |Type of membership of each rider             |String    |Nullable   |

Data Cleaning
Before analyzing the data, the dataset was cleaned by:

Removing the trips with null values.
Adding 3 columns: 'ride_length_in_mins', 'day_of_week' and 'month'.
Exclusing the rides with duration less than a minute or longer than a day.
In total, 4,224,062 rows were returned, which means 1,443,655 rows were removed.

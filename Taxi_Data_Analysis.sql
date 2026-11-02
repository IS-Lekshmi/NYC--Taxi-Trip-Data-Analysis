CREATE DATABASE IF NOT EXISTS taxi_data_analytics;
USE taxi_data_analytics;

####

#Inspecting the importe
describe taxi_trip_cleaned;
select count(*) as taxi_trip_count from taxi_trip_cleaned;
select * from taxi_trip_cleaned;
#Earliest and Late pickup
select min(pickup_datetime) as Earliest_pickup,
max(pickup_datetime) as Latest_Pickup from taxi_trip_cleaned;
#select maximum,minimum and average distance
select min(trip_distance) as Minimum_distance,
max(trip_distance) as Maximum_distance,round(avg(trip_distance),3) as Average_distance 
from taxi_trip_cleaned;

#Inspecting the imported zone data
describe taxi_zone_geo;
select count(*) as taxi_zone_count from taxi_zone_geo;
select * from taxi_zone_geo;

#Total recorded revenue
select sum(total_amount) as total_revenue from taxi_trip_cleaned;

#Average trip duration
select round(avg(trip_duration_minutes),3) as average_trip_duration
from taxi_trip_cleaned;

#Minimum and maximum amount
select min(total_amount)  as minimum_amount, max(total_amount) as maximum_amount
from taxi_trip_cleaned;

#Trips by payment type
select payment_type,count(*) as total_trips
from taxi_trip_cleaned
group by payment_type
order by total_trips desc;

#Revenue by payment method
select payment_type,round(sum(total_amount),4) as revenue
from taxi_trip_cleaned
group by payment_type
order by revenue desc;

#Trips by year

select pickup_year,count(*) as total_trips
from taxi_trip_cleaned
group by pickup_year
order by pickup_year;

#Trips by month
select pickup_year,pickup_month,monthname(pickup_date) as month_name ,
count(*) as total_trips
from taxi_trip_cleaned
group by pickup_year,pickup_month,month_name
order by pickup_year,pickup_month;

#Monthly revenue
SELECT pickup_year,pickup_month,monthname(pickup_date) as month_name,
count(*) as total_trips,sum(total_amount) as total_revenue_per_trip,
avg(total_amount) as Average_revenue_per_trip
from taxi_trip_cleaned
group by pickup_year,pickup_month,month_name
order by pickup_year,pickup_month;

#trip by hour
select pickup_hour,count(*) as total_trips
from taxi_trip_cleaned
group by pickup_hour
order by pickup_hour;

#Find the busiest hour

select pickup_hour,count(*) as total_trips
from taxi_trip_cleaned
group by pickup_hour
order by total_trips desc
limit 1;

#Trips by day of week
select day_of_week,count(*) as total_trips
from taxi_trip_cleaned
group by day_of_week
order by total_trips desc;

#Vendor analysis

select vendor_id,count(*) as total_trips,
sum(total_amount) as total_revenue,
avg(total_amount) as average_revenue_per_trip,
avg(trip_distance) as average_distance,
avg(trip_duration_minutes) as average_duration
from taxi_trip_cleaned
group by vendor_id
order by total_trips desc;

##Top 10 pickup_zones

select z.zone_name,z.borough,count(*) as total_trips
from taxi_trip_cleaned t 
INNER JOIN taxi_zone_geo z
on t.pickup_location_id=z.zone_id
group by z.zone_id,z.zone_name,z.borough
order by total_trips desc
limit 10;
 
## Top 10 dropoff_zones
select z.zone_name,z.borough,count(*) as total_trips
from taxi_trip_cleaned t 
inner JOIN taxi_zone_geo z
on t.dropoff_location_id=z.zone_id
group by z.zone_id,z.zone_name,z.borough
order by total_trips desc
limit 10;

#pickup borough analysis
select z.borough,count(*) as total_trips,
sum(t.total_amount) as total_revenue,
avg(t.total_amount) as average_revenue_per_trip
from taxi_trip_cleaned t inner join taxi_zone_geo z
on t.pickup_location_id=z.zone_id
group by z.borough
order by total_trips desc;

#Revenue by hour
select pickup_hour,count(*) as total_trips,
sum(total_amount) as total_revenue,avg(total_amount) as  average_revenue_per_trip
from taxi_trip_cleaned
group by pickup_hour
order by pickup_hour;

##Revenue efficiency
select pickup_hour,avg(fare_per_mile) as average_fare_per_mile,
avg(revenue_per_minute) as average_revenue_per_minute
from taxi_trip_cleaned
group by pickup_hour
order by pickup_hour;

##Trip distance analysis
SELECT
    CASE
        WHEN trip_distance < 1 THEN '< 1 mile'
        WHEN trip_distance < 3 THEN '1–3 miles'
        WHEN trip_distance < 5 THEN '3–5 miles'
        WHEN trip_distance < 10 THEN '5–10 miles'
        ELSE '10+ miles'
    END AS distance_band,

    COUNT(*) AS total_trips,

    AVG(total_amount) AS average_revenue,

    SUM(total_amount) AS total_revenue

FROM taxi_trip_cleaned

GROUP BY distance_band;

##Passenger analysis

select passenger_count,count(*) as total_trips,
avg(trip_distance) as average_distance,
avg(total_amount) as average_revenue
from taxi_trip_cleaned
group by passenger_count
order by passenger_count;

#Tip analysis
select payment_type,count(*) as total_trips,
sum(tip_amount) as total_tip,avg(tip_amount) as average_tip
from taxi_trip_cleaned
group by payment_type
order by total_tip desc;

####ADAVNCED SQL#######
#Ranks months by revenue 
WITH monthly_summary as(
select pickup_year,pickup_month,count(*) as total_trips,sum(total_amount) as total_revenue
from taxi_trip_cleaned
group by pickup_year,pickup_month
)
select * from monthly_summary
order by total_revenue desc;

#calculate monthltyrunning revenue


WITH monthly_summary AS (

    SELECT
        pickup_year,
        pickup_month,
        COUNT(*) AS total_trips,
        SUM(total_amount) AS total_revenue

    FROM taxi_trip_cleaned

    GROUP BY
        pickup_year,
        pickup_month
)

SELECT *
FROM monthly_summary;

##	Rank pickup zones

with zone_summary as(
	select z.zone_id,z.zone_name,z.borough,count(*) as total_trips
    from taxi_trip_cleaned t join taxi_zone_geo z
    on t.pickup_location_id=z.zone_id
    group by z.zone_id,z.zone_name,z.borough
    
)
select zone_name,borough,total_trips,
rank()over(order by total_trips desc) as zone_rank
from zone_summary
order by zone_rank;


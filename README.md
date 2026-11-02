# 🚕 NYC Taxi Trip Data Analytics | Python • MySQL • Power BI

## 📌 Project Overview

The NYC Taxi Trip Data Analytics Project focuses on analyzing New York City taxi trip data to understand transportation demand, revenue patterns, payment preferences, and geographical trends.

The project uses Python for data cleaning and exploratory data analysis, MySQL for querying and extracting business insights, and Power BI for developing an interactive dashboard.

The primary objective is to transform raw taxi trip data into meaningful insights that help understand trip patterns, identify high-demand locations, analyze revenue performance, and support data-driven operational decisions.

Dataset Link: https://www.kaggle.com/datasets/neilclack/nyc-taxi-trip-data-google-public-data

---

## 🎯 Business Objectives

- Analyze overall taxi trip volume and recorded revenue.
- Identify the busiest pickup hours, days, and months.
- Understand payment method preferences.
- Identify the top pickup and drop-off zones.
- Analyze trip distribution across NYC boroughs.
- Understand trip distance and duration patterns.
- Evaluate vendor performance.
- Identify frequently travelled routes.
- Develop an interactive dashboard for business reporting.

---

## 🛠️ Tools & Technologies

- **Python:** Data cleaning and exploratory data analysis.
- **Pandas:** Data manipulation and transformation.
- **NumPy:** Numerical operations.
- **Matplotlib:** Data visualization.
- **Seaborn:** Statistical visualization.
- **MySQL:** Data storage, querying, aggregation, and analysis.
- **SQL:** Business analysis and data extraction.
- **Power BI:** Interactive dashboard development.

---

## 📂 Project Workflow

The project follows a structured data analytics workflow:

### 1. Data Cleaning & Exploratory Data Analysis – Python

Python was used to inspect, clean, transform, and explore the taxi trip dataset.

**Data Preparation Activities:**

- Inspected dataset dimensions, column names, and data types.
- Processed large datasets using chunk processing (200,000 rows per batch).
- Identified missing values and duplicate records.
- Checked invalid and inconsistent data.
- Validated trip distance and duration.
- Converted pickup and drop-off timestamps into datetime format.
- Calculated trip duration in minutes.
- Examined financial values and trip characteristics.
- Prepared the cleaned dataset for further analysis.

**Exploratory Data Analysis:**

- Analyzed trips by hour, day, and month.
- Examined revenue patterns across different time periods.
- Analyzed payment method distribution.
- Identified popular pickup and drop-off zones.
- Compared trip activity across boroughs.
- Explored trip distance and passenger count.
- Analyzed vendor performance and frequently travelled routes.
- Created visualizations using Matplotlib and Seaborn.

### 2. SQL Analysis – MySQL

The cleaned taxi trip dataset and taxi zone lookup dataset were imported into MySQL under the database:

`taxi_data_analytics`

**Tables Used:**

- `taxi_trip_cleaned`
- `taxi_zone_geo`

SQL was used to answer business-related questions through aggregations, joins, filtering, sorting, and window functions.

**Business Queries Performed:**

1. What is the total number of taxi trips?
2. What is the total recorded revenue?
3. What are the average, minimum, and maximum trip distances?
4. Which payment method is most commonly used?
5. How does revenue vary by payment method?
6. What are the yearly and monthly trip trends?
7. Which is the busiest pickup hour?
8. Which day of the week has the highest trip volume?
9. How does vendor performance vary?
10. What are the top 10 pickup and drop-off zones?
11. Which borough generates the highest pickup volume?
12. How does revenue vary across different hours?
13. How does revenue efficiency vary by hour?
14. How do trip distance categories compare?
15. How do passenger counts relate to trip characteristics?
16. How does tip amount vary by payment method?
17. How can pickup zones be ranked by trip volume?

**Advanced SQL Concepts Used:**

- Common Table Expressions (CTEs).
- Window Functions.
- RANK().
- CASE WHEN.
- INNER JOIN.
- Aggregate Functions.
- GROUP BY and ORDER BY.

### 3. Interactive Dashboard Development – Power BI

An interactive **NYC Taxi Trip Analytics Dashboard** was developed in Power BI to present the key findings in a visually accessible format.

**Key Performance Indicators (KPIs):**

- Total Trips
- Total Revenue
- Average Trip Distance
- Average Trip Duration

**Dashboard Visualizations:**

- **Trips & Revenue Trend:** Understand changes in trip volume and recorded revenue.
- **Payment Type Distribution:** Analyze payment method preferences.
- **Day of Pickup Zones:** Compare trip demand across pickup zones and weekdays.
- **Top 10 Pickup Zones:** Identify the most popular pickup locations.
- **Trip Volume by Zone:** Compare trip activity across geographical zones.
- **Day of Week:** Identify the busiest days.
- **Route Flow (Top 5):** Analyze frequently travelled pickup and drop-off routes.
- **Route Map:** Explore geographical trip information.
- **Top Routes:** Identify popular pickup-to-drop-off combinations.

**Interactive Filters / Slicers:**

- Year
- Month
- Day
- Payment Type
- Vendor
- Borough

These filters allow users to explore taxi trip performance across different time periods, payment categories, vendors, and geographical locations.

---

## 📊 Key Business Insights

Based on the SQL analysis and Power BI dashboard:

### 1. Trip Demand Analysis

- 10 PM was identified as the busiest pickup hour, with approximately 581,568 trips.
- Thursday recorded the highest trip volume, with approximately 1,660,773 trips.

**Business Recommendation:** Evaluate vehicle availability during peak demand periods, particularly around 10 PM and Thursdays, to support better operational planning.

### 2. Payment Method Analysis

- Credit card was identified as the most commonly used payment method.
- Payment distribution helps understand how customers prefer to pay for taxi services.

**Business Recommendation:** Maintain reliable digital payment facilities and investigate payment-related issues to improve the customer experience.

### 3. Geographical Analysis

- LaGuardia Airport was identified as the leading pickup and drop-off zone.
- Manhattan recorded the highest pickup trip volume.

**Business Recommendation:** Focus on high-demand geographical locations when evaluating vehicle allocation and operational resources.

### 4. Route Analysis

- LaGuardia Airport to Times Sq/Theatre District was identified as the most frequently travelled route.
- Route analysis helps understand travel patterns between important locations.

**Business Recommendation:** Further analyze frequently travelled routes based on trip distance, duration, and recorded revenue to identify opportunities for better route planning.

### 5. Revenue Analysis

- The dashboard reports approximately 160.65M in total recorded revenue.
- Revenue analysis helps understand financial activity across trips and payment categories.

**Business Recommendation:** Compare revenue across vendors, time periods, and locations to identify high-performing segments and investigate differences in average revenue per trip.

*Note: These are historical observations from the analyzed dataset. They should be validated against the final cleaned data and selected dashboard filters before being used for operational decisions.*

---

## 📈 Business Value

This project demonstrates how raw taxi trip records can be transformed into meaningful business information.

The analysis supports:

- Monitoring overall taxi trip performance.
- Identifying peak demand periods.
- Understanding payment preferences.
- Identifying high-demand geographical locations.
- Analyzing frequently travelled routes.
- Understanding recorded revenue patterns.
- Supporting operational planning through historical data.
- Improving reporting through interactive dashboards.

---

## 💡 Skills Demonstrated

- Data Cleaning & Preprocessing.
- Exploratory Data Analysis (EDA).
- Data Manipulation using Pandas and NumPy.
- Python Data Visualization.
- SQL Query Writing.
- SQL Joins and Aggregations.
- Common Table Expressions (CTEs).
- Window Functions.
- Business KPI Analysis.
- Power BI Dashboard Development.
- Business Insight Generation.
- Analytical Problem Solving.

---

## 🚀 Future Enhancements

Potential improvements to extend the project:

- Develop taxi demand forecasting using machine learning.
- Analyze hourly and location-based demand patterns.
- Incorporate operational costs to calculate profitability.
- Perform deeper route-level revenue analysis.
- Automate data cleaning and dashboard refresh.
- Analyze seasonal changes in taxi demand.
- Integrate additional data to evaluate vehicle availability and waiting times.

---

## 👩‍💻 Author

**Lekshmi I S**

Associate Consultant – EY GDS

B.Tech – Computer Science and Engineering

**Project Domain:** Transportation Analytics

**Project Type:** End-to-End Data Analytics

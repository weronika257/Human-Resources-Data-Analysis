# HR Data Analysis

![alt text](<HR Employee Report.png>)
![alt text](<HR Employee Report - page 2.png>)

## Project Overview

The goal of this project is to conduct a comprehensive analysis of human resources data to provide insights into various aspects of the company's workforce. Through SQL queries and Power BI visualization, the project aims to answer specific questions about employee demographics, distribution across departments and locations, turnover rates and tenure distribution. The ultimate goal is to provide practical information to support strategic decision-making within the organization.

## Data

The dataset used for this project is "Human Resources.csv". This file contains over 22,000 rows of HR Data from the year 2000 to 2020.

## Tools

- MySQL - data cleaning and analysis
- Power BI - creating report

## Questions

1. What is the gender breakdown of employees in the company?
2. What is the race/ethnicity breakdown of employees in the company?
3. What is the age distribution of employees in the company?
4. How many employees work at headquarters versus remote locations?
5. What is the average length of employment for employees who have been terminated?
6. How does the gender distribution vary across departments?
7. What is the distribution of job titles across the company?
8. Which department has the highest termination rate?
9. What is the distribution of employees across locations by state?
10. How has the company's employee count changed over time based on hire and term dates?
11. What is the tenure distribution for each department?

## Key Findings

- The majority of employees are male.
- The most represented race/ethnicity among the employees is White, while the least represented is Native Hawaiian or Other Pacific Islander.
- The age of employees was classified according to the following age groups: 18-24, 25-34, 35-44, 45-54, and 55-64. It was observed that the largest number of employees belong to the age groups 25-34, 35-44, and 45-54.
- Most of the employees work in headquarters (almost 75%).
- Average length of employment for terminated employees is 8 years.
- The gender distribution across departments is fairly balanced with minor variations observed among individual departments.
- The distribution of positions within the company is diverse and different roles are represented. Among the most popular positions are Research Assistant, Business Analyst, Human Resources Analyst, Account Executive, Software Engineer and Programmer.
- The highest termination rate is in Auditing department and the lowest in Marketing.
- The majority of employees are located in Ohio (14144), followed by Pennsylvania (892) and Illinois (698), with Wisconsin having the fewest employees among the listed states (306).
- The company's employee count has increased over the years.
- The average tenure for most depatments varies between 7-8 years.

## Limitations

- Negative ages were detected among some records and were consequently excluded during querying, resulting in the removal of 967 records. Age considered for analysis was limited to 18 years and above.
- Certain end dates were too far into the future and were left out of the analysis (1461 records). End dates considered were those occurring on or before the current date.

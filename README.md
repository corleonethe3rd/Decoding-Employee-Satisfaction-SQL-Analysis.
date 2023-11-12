# Decoding-Employee-Satisfaction-SQL-Analysis.   

## Introduction

In this documentation, we will guide you through the process of analyzing insights from the 'Employee_review' table. The goal is to answer specific questions using SQL queries and present the results in a clear and structured format.

## Project Objectives and Goals

1. **Find Software Development Job Titles:**
    - Identify job titles in the "Software Development" department with a work-life balance rating greater than 4 and a salary and benefits rating greater than 4.5.
    - Check for null values in the 'work_life_balance' and 'salary_and_benefit' columns and fill them with the average values.

2. **Classify Ratings Using Case Statement:**
    - Create a new column that categorizes overall ratings based on certain conditions. For example, classify as 'Excellent' if everything is greater than 4, 'Good' if at least two qualities are greater than 3, 
      and 'Poor' otherwise.

## Project Structure and Organization

The project is organized into two main tasks: finding specific job titles in the "Software Development" department and classifying ratings using a case statement.

### Core Functional Modules:

1. **Data Analysis:**
    - Use SQL queries to perform data analysis on the 'Employee_review' table.
    - Address null values in specified columns.

2. **Data Classification:**
    - Utilize a case statement to categorize ratings based on predefined conditions.

### Data Source

The data used for this project is sourced from the 'Employee_review' table.

### Tool Used

SQL (Structured Query Language)

### Skills/Concepts Demonstrated

- SQL Query Writing
- Data Cleaning
- Case Statement Implementation

## Steps Implemented on Project

### Data Analysis:

1. Open your preferred SQL environment and connect to the database containing the 'Employee_review' table.

2. Write SQL queries to find job titles in the "Software Development" department with specific ratings.
   ![Screenshot 2023-11-12 113404](https://github.com/corleonethe3rd/Decoding-Employee-Satisfaction-SQL-Analysis./assets/73728752/68dd70f4-83dd-43b8-90e2-07821bccc47a)


4. Check for null values in the 'work_life_balance' and 'salary_and_benefit' columns and fill them with average values.
   ![Screenshot 2023-11-12 111742](https://github.com/corleonethe3rd/Decoding-Employee-Satisfaction-SQL-Analysis./assets/73728752/2a62a0f2-0d01-47d5-9026-f5dfcfe00d4b)

### Data Classification:

1. Using SQL, implement a case statement to create a new column that classifies overall ratings based on defined conditions.
   ![Screenshot 2023-11-12 113545](https://github.com/corleonethe3rd/Decoding-Employee-Satisfaction-SQL-Analysis./assets/73728752/e3eb1a02-c299-4b98-90be-5d5165d5babb)

## Conclusion

This documentation provides a step-by-step guide to analyze and classify data from the 'Employee_review' table. By following these steps, you can derive valuable insights and make informed decisions based on the data.





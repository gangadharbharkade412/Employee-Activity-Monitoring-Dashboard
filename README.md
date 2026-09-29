# HR Attrition Analysis: SQL + Power BI
 
> End-to-end HR attrition analysis using MySQL for data cleaning and feature engineering, and Power BI for an interactive dashboard on employee turnover drivers.
 
![SQL](https://img.shields.io/badge/MySQL-Data%20Cleaning-4479A1?logo=mysql&logoColor=white)
![Power BI](https://img.shields.io/badge/Power%20BI-Dashboard-F2C811?logo=powerbi&logoColor=black)
![Status](https://img.shields.io/badge/Status-Completed-brightgreen)
 
## Overview
 
Employee attrition is costly for any organization. This project analyzes an HR employee dataset to identify the factors driving attrition. Data is cleaned and prepared in **MySQL**, then visualized in an interactive **Power BI** dashboard to help HR teams spot at-risk groups and take action.
 
## Tools & Technologies
 
- **MySQL**: data cleaning, validation, feature engineering
- **Power BI**: data modeling, DAX measures, interactive dashboard
## Dataset
 
The dataset contains employee records with 35 attributes, including:
 
| Category | Columns |
|---|---|
| **Demographics** | Age, Gender, Marital Status, Education, Education Field |
| **Job details** | Department, Job Role, Job Level, Business Travel, Overtime |
| **Compensation** | Monthly Income, Daily/Hourly/Monthly Rate, Percent Salary Hike, Stock Option Level |
| **Satisfaction** | Environment, Job, Relationship, Work-Life Balance, Job Involvement |
| **Tenure** | Years at Company, Years in Current Role, Years Since Last Promotion, Years with Current Manager |
| **Target** | Attrition (Yes/No) |
 
## Data Preparation (SQL)
 
The `HR_Project.sql` script performs the following steps:
 
1. **Database and table creation** for the `hr_employees` table.
2. **Data exploration** using row counts and preview queries.
3. **Removal of redundant columns** (`Over18`, `EmployeeCount`, `StandardHours`), which hold a single constant value and add no analytical value.
4. **Data quality checks**: duplicate detection on `EmployeeNumber` and a null-value check across all columns.
5. **Feature engineering:**
   - `TenureBucket`: 0-1 yr, 1-3 yr, 3-5 yr, 5+ yr
   - `AgeGroup`: 18-24, 25-34, 35-44, 45-54, 55+
## Dashboard (Power BI)
 
The `HR_Attrition_Dashboard.pbix` file presents:
 
- Overall attrition rate and headcount KPIs
- Attrition breakdown by department, job role, age group, and tenure
- Impact of overtime, business travel, and marital status on attrition
- Relationship between income, satisfaction, and attrition
<!-- Edit this list to match the visuals in your dashboard. -->
 
## Key Insights
 
<!-- Add your findings here, for example: -->
 
- Which department or job role has the highest attrition
- Whether overtime employees leave more often
- Which tenure and age groups are most at risk
## Repository Structure
 
```
├── HR_Project.sql                # Data cleaning & feature engineering
├── HR_Attrition_Dashboard.pbix   # Power BI dashboard
└── README.md
```
 
## How to Use
 
1. Import the raw HR dataset (CSV) into MySQL and run `HR_Project.sql` to create and prepare the `hr_employees` table.
2. Open `HR_Attrition_Dashboard.pbix` in Power BI Desktop.
3. Refresh the data source if needed and explore the dashboard.
## Author
 
**[Gangadhar Bharkade]** | [LinkedIn](https://www.linkedin.com/in/gangadhar01/) | [Email](gangadharbharkade412@gmail.com)
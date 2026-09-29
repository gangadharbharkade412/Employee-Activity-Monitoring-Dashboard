create database Hr_projects;
use hr_projects;

create table hr_employees (
    Age INT,
    Attrition VARCHAR(5),
    BusinessTravel VARCHAR(30),
    DailyRate INT,
    Department VARCHAR(50),
    DistanceFromHome INT,
    Education INT,
    EducationField VARCHAR(50),
    EmployeeCount INT,
    EmployeeNumber INT,
    EnvironmentSatisfaction INT,
    Gender VARCHAR(10),
    HourlyRate INT,
    JobInvolvement INT,
    JobLevel INT,
    JobRole VARCHAR(50),
    JobSatisfaction INT,
    MaritalStatus VARCHAR(20),
    MonthlyIncome INT,
    MonthlyRate INT,
    NumCompaniesWorked INT,
    Over18 VARCHAR(2),
    OverTime VARCHAR(5),
    PercentSalaryHike INT,
    PerformanceRating INT,
    RelationshipSatisfaction INT,
    StandardHours INT,
    StockOptionLevel INT,
    TotalWorkingYears INT,
    TrainingTimesLastYear INT,
    WorkLifeBalance INT,
    YearsAtCompany INT,
    YearsInCurrentRole INT,
    YearsSinceLastPromotion INT,
    YearsWithCurrManager INT
);

Show tables;

describe hr_employees;

select count(*) from hr_employees;

select * from hr_employees 
limit 20;

SELECT DISTINCT Over18 FROM hr_employees;
SELECT DISTINCT EmployeeCount FROM hr_employees;
SELECT DISTINCT StandardHours FROM hr_employees;

alter table hr_employees drop column over18;
alter table hr_employees drop column EmployeeCount;
alter table hr_employees drop column StandardHours;

describe hr_employees;

select employeeNumber
from hr_employees 
group by employeeNumber
having count(*) > 1;

SELECT COUNT(*) AS rows_with_any_null
FROM hr_employees
WHERE Age IS NULL
   OR Attrition IS NULL
   OR BusinessTravel IS NULL
   OR DailyRate IS NULL
   OR Department IS NULL
   OR DistanceFromHome IS NULL
   OR Education IS NULL
   OR EducationField IS NULL
   OR EmployeeNumber IS NULL
   OR EnvironmentSatisfaction IS NULL
   OR Gender IS NULL
   OR HourlyRate IS NULL
   OR JobInvolvement IS NULL
   OR JobLevel IS NULL
   OR JobRole IS NULL
   OR JobSatisfaction IS NULL
   OR MaritalStatus IS NULL
   OR MonthlyIncome IS NULL
   OR MonthlyRate IS NULL
   OR NumCompaniesWorked IS NULL
   OR OverTime IS NULL
   OR PercentSalaryHike IS NULL
   OR PerformanceRating IS NULL
   OR RelationshipSatisfaction IS NULL
   OR StockOptionLevel IS NULL
   OR TotalWorkingYears IS NULL
   OR TrainingTimesLastYear IS NULL
   OR WorkLifeBalance IS NULL
   OR YearsAtCompany IS NULL
   OR YearsInCurrentRole IS NULL
   OR YearsSinceLastPromotion IS NULL
   OR YearsWithCurrManager IS NULL;
   
   ALTER TABLE hr_employees ADD COLUMN TenureBucket VARCHAR(20);
   
   UPDATE hr_employees 
SET TenureBucket = CASE 
    WHEN YearsAtCompany < 1 THEN '0-1 yr'
    WHEN YearsAtCompany BETWEEN 1 AND 3 THEN '1-3 yr'
    WHEN YearsAtCompany BETWEEN 3 AND 5 THEN '3-5 yr'
    ELSE '5+ yr'
END;

ALTER TABLE hr_employees ADD COLUMN AgeGroup VARCHAR(20);

UPDATE hr_employees 
SET AgeGroup = CASE 
    WHEN Age < 25 THEN '18-24'
    WHEN Age BETWEEN 25 AND 34 THEN '25-34'
    WHEN Age BETWEEN 35 AND 44 THEN '35-44'
    WHEN Age BETWEEN 45 AND 54 THEN '45-54'
    ELSE '55+'
END;

describe hr_employees;


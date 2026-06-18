select * from employee;

######### WORKFORCE OVERVIEW (SECTION - A) ##########

## Total Employee Count

select count(*) as total_count
from employee;

## Total Active Employees

select Attrition,count(*) as total_active_emp
from employee
where Attrition = 'No';

## Total Employees Left

select count(*) as total_emp_left
from employee
where Attrition = 'Yes';

## Overall Attrition Rate

select 
	round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee;

## Department wise Worforce distribution

select 
	Department,
	count(*) as emp_count, 
    round(count(*) * 100.0 / (select count(*) from employee),2) as workforce_per
from employee
group by Department
order by emp_count desc;

## Gender Distribution (Male/Female)

select 
	Gender,
	count(*) as emp_count, 
    round(count(*) * 100.0 / (select count(*) from employee),2) as percentage
from employee
group by Gender
order by emp_count desc;

######### ATTRITION ANALYSIS (SECTION - B) ##########

## Which Department experience Higher attrition

select 
	Department,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by Department
order by attrition_rate desc;

## Which Job role experience the highest attrition

select 
	JobRole,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by JobRole
order by attrition_rate desc;

## Which age group leave most frequent

select 
	case
		when age between 18 and 25 then '18-25'
        when age between 26 and 35 then '26-35'
        when age between 36 and 45 then '36-45'
        when age between 46 and 55 then '46-55'
        else '55+'
	end as age_group,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
	round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by age_group
order by attrition_rate desc;

## Is Attrition higher among male or female

select 
	Gender,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by Gender
order by attrition_rate desc;

## Does Marital status influence Attrition

select 
	MaritalStatus,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by MaritalStatus
order by attrition_rate desc;

############ EXPERIENCE & TENURE (SECTION - C) ###########

## Attrition by Years At Company

select
	case
		when YearsAtCompany <= 2 then '0-2 Years'
        when YearsAtCompany <= 5 then '3-5 Years'
        when YearsAtCompany <= 10 then '6-10 Years'
        else '10+ Years' end as tenure_group,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by tenure_group
order by attrition_rate desc;

## Attrition by total working years

select
	case
		when TotalWorkingYears <= 2 then '0-2 Years'
        when TotalWorkingYears <= 5 then '3-5 Years'
        when TotalWorkingYears <= 10 then '6-10 Years'
        else '10+ Years' end as experience_group,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by experience_group
order by attrition_rate desc;

## Attrition by Joblevel

select
	JobLevel,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by JobLevel
order by JobLevel;

## attririon by years in current role

select 
	case
		when YearsInCurrentRole <= 2 then '0-2 Years'
        when YearsInCurrentRole <= 5 then '3-5 Years'
        when YearsInCurrentRole <= 10 then '6-10 Years'
        else '10+ Years' end as currentrole_group,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by currentrole_group
order by attrition_rate desc;

########### SALARY ANALYSIS (SECTION - D) #########

## Monthly income distribution

select 
	case
		when MonthlyIncome <= 3000 then 'Below 3k'
        when MonthlyIncome <= 6000 then '3K - 6K'
        when MonthlyIncome <= 10000 then '6K - 10K'
        else 'Above 10K' end as salary_band, 
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by salary_band
order by attrition_rate desc;

## Income by Department

select
	Department,
    count(*) as emp_count,
    min(MonthlyIncome) as min_salary,
    max(MonthlyIncome) as max_salary,
    round(avg(MonthlyIncome),2) as avg_salary
from employee
group by Department
order by avg_salary desc;

## Income by Jobrole

select
	JobRole,
    count(*) as emp_count,
    min(MonthlyIncome) as min_salary,
    max(MonthlyIncome) as max_salary,
    round(avg(MonthlyIncome),2) as avg_salary
from employee
group by JobRole
order by avg_salary desc;

## Attrition across Salary groups 

select 
	case 
		when MonthlyIncome < 5000 then 'Below 5K'
        when MonthlyIncome < 10000 then '5K-10K'
        when MonthlyIncome < 15000 then '10K-15K'
        when MonthlyIncome < 20000 then '15K-20K'
        else '20K+' end as salary_group,
	count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by salary_group
order by attrition_rate desc;

######### WORKLIFE BALANCE (SECTION - E) ###########

## Worklife Balance

select
	WorkLifeBalance,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by WorkLifeBalance
order by WorkLifeBalance;

## Overtime

select 
	OverTime,
    count(*) as emp_count
from employee
group by OverTime;
    
## Relationship between overtime and attrition

select
	OverTime,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by OverTime
order by attrition_rate desc;

############ EMPLOYEE SATISFACTION (SECTION - F) ###########

## Job satisfaction

select
	JobSatisfaction,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by JobSatisfaction
order by JobSatisfaction;

## Environment Satisfaction

select
	EnvironmentSatisfaction,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by EnvironmentSatisfaction
order by EnvironmentSatisfaction;

## Relationship Satisfication

select
	RelationshipSatisfaction,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by RelationshipSatisfaction
order by RelationshipSatisfaction;

################# CAREER GROWTH ANALYSIS (SECTION-F) ##########

## years since last promotion,Training times last years and joblevel

select
	YearsSinceLastPromotion,
    TrainingTimesLastYear,
    JobLevel,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by YearsSinceLastPromotion,TrainingTimesLastYear,JobLevel
order by TrainingTimesLastYear desc;

############## PERFORMANCE ANALYSIS (SECTION - I) ################

## Performace Rating

select
	PerformanceRating,
    count(*) as total_emp,
    sum(case when Attrition = 'Yes' then 1 else 0 end) as employee_left,
    round(100.0 * sum(case 
    when Attrition = 'Yes' then 1 else 0 end) / count(*),2) 
    as attrition_rate
from employee
group by PerformanceRating
order by PerformanceRating;
🏥 Healthcare Operations & Financial Analytics (60K Patients)

📋 Project Overview
This project provides a comprehensive end-to-end analysis of a healthcare dataset containing 60,000 patient records. The goal was to transform raw, messy data into actionable insights regarding hospital efficiency, patient demographics, and financial performance.
🛠 Tech Stack
•	Python (Pandas/NumPy): Data cleaning, outlier handling, and feature engineering.
•	MySQL: Advanced data querying and database management.
•	Power BI: Interactive dashboarding and KPI tracking.
•	Matplotlib/Seaborn: Exploratory Data Analysis (EDA).
________________________________________
📈 Key Insights & Results
•	Financial Impact: Analyzed over $145M+ in total billing across multiple facilities.
•	Operational Efficiency: Identified the top 5 most efficient doctors based on average length of stay and billing costs.
•	Patient Demographics: Segmented patients into age groups (Seniors, Adults, Youth) to identify specialized care needs.
•	Readmission Trends: Tracked repeat patient IDs to calculate a baseline readmission rate for the hospital network.
________________________________________
📂 Project Workflow
1. Data Cleaning (Python)
•	Handled missing values and standardized column naming conventions.
•	Engineered new features: Length of Stay (Discharge Date - Admission Date) and Age Group.
•	Exported cleaned data to CSV for database ingestion.

📊 Exploratory Data Analysis (EDA)
•	Before migrating the data to SQL and Power BI, I conducted a deep-dive EDA using Matplotlib and Seaborn to understand the distribution and relationships within the 60,000 patient records.

Key Visualizations & Findings

•	1. Age Distribution (Histogram)
 <img width="500" height="300" alt="image" src="https://github.com/user-attachments/assets/d413ba17-d9e7-42e3-aa42-3070945392f7" />

•	2. Top 10 Diseases (Bar Chart)
 <img width="500" height="300" alt="image" src="https://github.com/user-attachments/assets/386f9299-ad2a-41bc-8aad-179ade3b8501" />

•	3. Doctor Workload (Pie Chart)
<img width="500" height="300" alt="image" src="https://github.com/user-attachments/assets/a68c4afc-70ab-42ea-b3ae-58dacbe58db1" />

 
2. Database Management (SQL)
Designed and executed 10 complex business queries, including:
•	Total Revenue by Hospital: Summing billing for emergency cases.
•	Provider Analytics: Ranking doctors by patient volume and treatment costs.
•	Clinical Mapping: Identifying unique medications prescribed for chronic conditions like Diabetes.

3. Interactive Dashboard (Power BI)
<img width="800" height="400" alt="image" src="https://github.com/user-attachments/assets/8f9f1b0f-8d4b-48f0-a035-7c03000cbdbe" />


Developed a professional executive dashboard featuring:

•	KPI Cards: Real-time tracking of Total Patients, Avg Revenue, and Avg Stay.

•	Treemaps: Visualizing billing distribution by Medical Condition.

•	Trend Analysis: Line charts showing admission spikes over time.

•	Dynamic Slicers: Ability to filter the entire report by Hospital, Insurance Provider, or Gender.
 
________________________________________

🚀 How to Run
1.	Python: Run exploratory_data_analysis.ipynb to generate the cleaned_data.csv.
2.	SQL: Import the CSV into MySQL and run the queries provided in analysis_queries.sql.
3.	Power BI: Open healthcare dashboard.pbix and refresh the data source connections.





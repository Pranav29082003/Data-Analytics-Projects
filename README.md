 📊 Customer Shopping Behavior Analysis

 🎯 Project Overview
This project analyzes transactional data from 3,900 purchases to uncover deep insights into customer spending patterns, demographics, and subscription behavior. The ultimate goal is to provide data-driven recommendations for strategic business decisions involving product preferences and customer segmentation.

 📋 Dataset Summary
Total Records: 3,900 rows.
Features: 18 columns including Age, Gender, Item Purchased, Category, Purchase Amount, and Subscription Status.
Key Performance Indicators (KPIs):
Average Purchase Amount: $59.76.
Average Review Rating: 3.75.
Total Revenue (Female): $75,191.
Total Revenue (Male): $157,890.

 🛠️ Technical Stack
Python (Pandas): Used for data cleaning, missing value imputation, and feature engineering.
PostgreSQL: Utilized for structured data analysis to answer complex business questions.
Power BI: Built an interactive dashboard to visualize key trends and metrics.

 💡 Key Insights & Analysis
 1. 🧼 Data Cleaning & Engineering
Missing Values: Imputed 37 missing values in the `Review Rating` column using the median rating of each product category.
Segmentation: Categorized customers into Loyal (3,116), Returning (701), and New (83) segments based on purchase history.


 2. 🔍 SQL Business Analysis
💳 Subscription Impact: 27% of customers are subscribers. Interestingly, non-subscribers spend slightly more on average ($59.87) than subscribers ($59.49).
⭐ Top Products: The highest-rated products include Gloves (3.86) and Sandals (3.84).
🏷️ Discount Dependency: Certain items like Hats (50%) and Sneakers (49.66%) have the highest percentage of discounted purchases.
🎂 Demographic Revenue: Young Adults are the highest revenue-contributing age group, bringing in $62,143.

 3. 🚚 Shipping Preferences
Standard Shipping: Average spend of $58.46.
Express Shipping: Average spend of $60.48.

 🚀 Business Recommendations
✨ Boost Subscriptions: Promote exclusive benefits to convert the 73% of customers who are currently non-subscribers.
🏅 Loyalty Programs: Focus on rewarding repeat buyers to move "Returning" customers into the "Loyal" segment.
🎯 Targeted Marketing: Focus marketing efforts on high-revenue age groups (Young Adults) and express-shipping users.
⚖️ Review Discount Policy: Balance sales boosts with margin control, especially for discount-dependent products.

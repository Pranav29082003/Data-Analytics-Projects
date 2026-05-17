# Blinkit Operations & Sales Performance Analytics Dashboard

![Power BI](https://img.shields.io/badge/Power_BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![DAX](https://img.shields.io/badge/DAX-Data_Analysis_Expressions-orange?style=for-the-badge)
![Data Modeling](https://img.shields.io/badge/Data_Modeling-Star_Schema-blue?style=for-the-badge)

<img width="800" height="400" alt="sales Dashboard image" src="https://github.com/user-attachments/assets/08ade46d-deee-410d-8394-1b5dd1632d0d" />


An end-to-end business intelligence project modeling and analyzing the operational logistics and sales performance of **Blinkit** (India's Last Minute App). This project transforms disparate relational datasets into an interactive, executive-ready Power BI dashboard aligned with Blinkit’s native corporate branding.

---

## 📌 Project Overview
In the highly competitive Quick Commerce (q-commerce) sector, operational viability depends on thin margins, localized inventory density, and rapid delivery logistics. This project simulates an enterprise-level data pipeline to track **Sales Performance**, **Fulfillment Mechanics**, and **Customer Segments** simultaneously.

### Key Business Questions Addressed:
* **Revenue Drivers:** Which product categories generate the highest financial yield vs. moving the most unit volume?
* **Logistics Efficiency:** What is the average last-mile delivery performance across different regions?
* **Customer Lifetime Value:** How are orders distributed across new, regular, premium, and inactive user cohorts?

---

## 🛠️ Tech Stack & Skills Highlighted
* **Business Intelligence:** Power BI Desktop
* **Data Integration & ETL:** Power Query (M-Language)
* **Analytical Modeling:** Data Model Relationships (1:Many Star Schema)
* **Advanced Analytics:** Custom DAX Measures
* **UI/UX Design:** User-centric dashboard hierarchy matching official brand design systems

---

## 🗂️ Data Architecture & Relational Model
Instead of working with a single, flat Excel file, this project leverages an interconnected **Relational Schema** utilizing 5 specific operational domains:
1. **`Customers`**: Demographic details and localization keys (City, Customer Segment).
2. **`Orders`**: Transaction headers tracking timestamps, dates, and baseline parameters.
3. **`Order_Items`**: Detailed transactional tables tracking product units, prices, and quantities per order string.
4. **`Products`**: Stock keeping unit (SKU) details, category definitions, and product catalogs.
5. **`Delivery_Performance`**: Logistics timestamps evaluating fulfillment success rates and durations.

### Schema Relationships
The model uses a **Star/Snowflake hybrid architecture** connected via primary/foreign key pairings to minimize structural redundancy and maximize engine compute performance:
* `Customers[customer_id]` $\to$ `Orders[customer_id]` *(1 to Many)*
* `Products[product_id]` $\to$ `Order_Items[product_id]` *(1 to Many)*
* `Orders[order_id]` $\to$ `Order_Items[order_id]` *(1 to Many)*
* `Orders[order_id]` $\to$ `Delivery_Performance[order_id]` *(1 to 1 Relationship)*

---

## 🧮 Key DAX Measures Formulated
To provide robust metrics on the dashboard cards, specific explicit DAX formulas were designed:

* **Total Revenue:** Calculated dynamically row-by-row to reflect unit price scales against actual transaction quantifiers.
  ```dax
  Total Revenue = SUMX(Order_Items, Order_Items[Quantity] * Order_Items[Unit_Price])

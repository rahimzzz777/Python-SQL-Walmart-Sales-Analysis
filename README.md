# Python-SQL-Walmart-Sales-Analysis

## Project Overview

This project focuses on analyzing Walmart retail sales data to uncover meaningful business insights using **Python** and **SQL**. The workflow begins with cleaning and preparing raw sales data in Python, followed by SQL-based business analysis to answer real-world business questions related to customer behavior, branch performance, product categories, payment methods, and revenue trends.

The project demonstrates an end-to-end data analytics workflow, transforming raw transactional data into actionable business insights that support data-driven decision-making.

---

## Business Problem

Retail organizations generate thousands of sales transactions daily. Without proper analysis, it is difficult to identify sales trends, customer preferences, branch performance, and product profitability.

This project aims to answer key business questions that help management make informed decisions regarding inventory planning, customer experience, payment preferences, staffing, and revenue growth.

---

## Project Objectives

- Clean and preprocess raw sales data.
- Improve data quality for accurate analysis.
- Perform SQL-based business analysis.
- Understand customer purchasing behavior.
- Evaluate branch performance.
- Analyze product category performance.
- Compare revenue trends.
- Generate actionable business insights.

---

## Dataset Information

| Attribute | Details |
|-----------|---------|
| Source | Kaggle |
| Domain | Retail Sales |
| Raw Records | 10,051 |
| Cleaned Records | 9,969 |
| Features | 12 |

---

## Tools & Technologies

- Python
- Pandas
- PostgreSQL
- SQL
- Jupyter Notebook

---

## Project Workflow

```text
Raw Dataset
      │
      ▼
Data Cleaning using Python
      │
      ▼
Cleaned Dataset
      │
      ▼
PostgreSQL Database
      │
      ▼
SQL Analysis
      │
      ▼
Business Insights
```

![Project Workflow](images/project_workflow.png)

---

## Data Preparation

The dataset was cleaned and prepared before analysis to improve data quality and ensure accurate business insights.

The following preprocessing steps were performed:

- Removed duplicate records
- Handled missing values
- Standardized column names
- Corrected data types
- Created additional calculated columns
- Validated the dataset
- Exported the cleaned dataset for SQL analysis

---

## Python Data Cleaning

![Python Data Cleaning](images/python_data_cleaning.png)

---

## Business Questions

This project answers the following business questions:

1. Which payment method is preferred by customers?
2. Which product category receives the highest average rating in each branch?
3. Which day of the week is busiest for each branch?
4. Which payment method is associated with the highest quantity of products sold?
5. Which product categories receive the highest ratings in each city?
6. Which product categories generate the highest profit?
7. Which payment method is most preferred in each branch?
8. Which sales shift (Morning, Afternoon, Evening) generates the highest sales?
9. How has revenue changed between 2022 and 2023?

---

## SQL Analysis

![SQL Analysis](images/sql_analysis.png)

---

## Key Insights

- Customer payment preferences vary across branches.
- Product category performance differs between cities.
- Customer ratings help identify high-performing product categories.
- Sales activity varies across weekdays.
- Product profitability differs among categories.
- Customer purchasing behavior changes based on payment methods.
- Sales shifts reveal peak shopping hours.
- Revenue comparison highlights business growth trends.

---

## Business Value

The insights generated from this project help businesses:

- Understand customer purchasing behavior.
- Improve inventory planning.
- Evaluate branch performance.
- Identify profitable product categories.
- Optimize staff allocation during peak hours.
- Improve payment service availability.
- Monitor revenue performance.
- Support strategic business decision-making.

---

## Repository Structure

```text
Python-SQL-Walmart-Sales-Analysis/
│
├── data/
│   ├── Walmart.csv
│   └── walmart_clean_data.csv
│
├── notebook/
│   └── walmart.ipynb
│
├── sql/
│   └── walmart.sql
│
├── images/
│   ├── project_workflow.png
│   ├── python_data_cleaning.png
│   └── sql_analysis.png
│
└── README.md
```

---

## Skills Demonstrated

### Data Preparation

- Data Cleaning
- Data Validation
- Data Transformation
- Feature Engineering

### Data Analysis

- SQL
- Aggregation
- Window Functions
- Common Table Expressions (CTEs)
- Business Analytics

### Business Analysis

- Customer Behavior Analysis
- Branch Performance Analysis
- Product Category Analysis
- Sales Trend Analysis
- Revenue Analysis

---

## Future Improvements

- Develop an interactive Power BI dashboard.
- Perform customer segmentation.
- Build sales forecasting models.
- Analyze seasonal sales trends.
- Implement inventory optimization techniques.

---

## Author

**Abdul Rahim**

Data Analyst | Python | SQL | Data Analytics

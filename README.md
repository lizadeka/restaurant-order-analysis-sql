# 🍽️ Restaurant Order Analysis Using SQL

## 📌 Project Overview

This project analyzes restaurant order data from the **Maven Analytics Restaurant Orders SQL Challenge** using **MySQL**. The objective is to explore menu performance, understand customer ordering behavior, identify high-value orders, and generate meaningful business insights through SQL queries.

---

## 🎯 Objectives

- Explore the restaurant menu and pricing
- Analyze customer ordering patterns
- Identify the most and least ordered menu items
- Discover the highest-spending customer orders
- Compare menu categories based on popularity and pricing
- Generate actionable business insights using SQL

---

## 📂 Dataset

The project consists of two relational tables:

### **menu_items**

| Column |
|----------|
| menu_item_id |
| item_name |
| category |
| price |

### **order_details**

| Column |
|----------|
| order_details_id |
| order_id |
| order_date |
| order_time |
| item_id |

---

## 🛠️ SQL Concepts Used

- SELECT
- WHERE
- GROUP BY
- ORDER BY
- Aggregate Functions
- INNER JOIN
- Common Table Expressions (CTEs)
- Window Functions (`DENSE_RANK`)
- Subqueries
- LIMIT

---

## 📊 Analysis Performed

### 📋 Menu Analysis

- Counted the total number of menu items
- Identified the least and most expensive dishes
- Analyzed Italian menu pricing
- Calculated the average price within each category
- Counted the number of dishes available in each category

---

### 🧾 Order Analysis

- Determined the order date range
- Calculated total orders and total items ordered
- Identified orders containing the highest number of items
- Found orders with more than 12 items

---

### 👥 Customer Behavior Analysis

- Combined menu and order datasets using SQL joins
- Identified the highest-spending customer orders
- Examined purchased items within top-value orders
- Calculated the highest order value in the dataset

---

## 💡 Key Business Insights

- Premium-priced menu items contribute significantly to order value.
- Menu categories vary considerably in average pricing.
- A small number of orders account for the highest revenue.
- Understanding ordering behavior can help optimize menu offerings and inventory planning.

---

## 🚀 Technologies Used

- MySQL
- SQL
- Maven Analytics Dataset

---

## 🎓 Learning Outcomes

Through this project, I strengthened my understanding of:

- Writing analytical SQL queries
- Working with relational databases
- Using JOINs, CTEs, and Window Functions
- Performing exploratory data analysis (EDA)
- Translating data into business insights

---

## 📈 Future Enhancements

- Create an interactive Power BI dashboard
- Analyze revenue trends over time
- Perform customer segmentation
- Explore peak ordering hours
- Build reusable SQL views for reporting

---

## 🙏 Acknowledgements

This project was completed as part of the **Maven Analytics Restaurant Orders SQL Challenge**, providing hands-on experience in SQL-based data analysis and business problem-solving.

---
⭐ If you found this project helpful or interesting, feel free to star the repository!

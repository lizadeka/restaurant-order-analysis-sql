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

## 🚀 Technologies Used

- MySQL
- SQL
- Maven Analytics Dataset
---

# 📊 Analysis & Results

## 1️⃣ Menu Analysis

### Total Menu Items

| Metric | Result |
|---------|-------:|
| Total Menu Items | **32** |

---

### Least & Most Expensive Menu Items

| Item | Category | Price |
|------|----------|------:|
| Edamame | Asian | **$5.00** |
| Shrimp Scampi | Italian | **$19.95** |

---

### Italian Menu Analysis

| Metric | Result |
|---------|-------:|
| Total Italian Dishes | **9** |
| Cheapest Italian Dish | **$14.50** |
| Most Expensive Italian Dish | **$19.95** |

---

### Average Price by Category

| Category | No. of Dishes | Average Price |
|-----------|--------------:|--------------:|
| Italian | 9 | **$16.75** |
| Asian | 8 | **$13.48** |
| Mexican | 9 | **$11.80** |
| American | 6 | **$10.07** |

---

## 2️⃣ Order Analysis

### Order Date Range

| First Order | Last Order |
|--------------|------------|
| **2023-01-01** | **2023-03-31** |

---

### Total Orders & Items Ordered

| Metric | Result |
|---------|-------:|
| Order Records | **12,234** |
| Items Ordered | **12,097** |

---

### Orders with the Most Items

| Order ID | Items Ordered |
|-----------|--------------:|
| 2675 | 14 |
| 443 | 14 |
| 1957 | 14 |
| 3473 | 14 |
| 330 | 14 |
| 440 | 14 |
| 4305 | 14 |

---

### Orders with More Than 12 Items

**20 Orders**

---

## 3️⃣ Customer Behavior Analysis

### Top 5 Highest-Spending Orders

| Rank | Order ID | Total Amount |
|------|----------|-------------:|
| 1 | 440 | **$192.15** |
| 2 | 2075 | **$191.05** |
| 3 | 1957 | **$190.10** |
| 4 | 330 | **$189.70** |
| 5 | 2675 | **$185.10** |

---

### Items Purchased in the Highest-Spending Order (Order #440)

- Steak Tacos
- Hot Dog
- Spaghetti
- Spaghetti & Meatballs (2)
- Fettuccine Alfredo (2)
- Korean Beef Bowl
- Meat Lasagna
- Edamame
- Chips & Salsa
- Chicken Parmesan
- French Fries
- Eggplant Parmesan

**Total Order Value:** **$192.15**

---

### Highest Individual Order Value

**$192.15**

---

# 💡 Business Insights

- The restaurant offers **32 menu items** across four food categories.
- **Italian cuisine has the highest average menu price**, making it the premium category.
- **American dishes are the most affordable** on average, making them attractive for budget-conscious customers.
- Only **20 orders contained more than 12 items**, indicating that very large group orders are relatively uncommon.
- The highest-value orders include a mix of dishes from different categories, suggesting customers enjoy combining different cuisines in a single order.
- Premium Italian dishes appear multiple times in the highest-spending orders, indicating they contribute significantly to overall revenue.
- Understanding customer ordering patterns can help restaurants optimize menu offerings, pricing strategies, and inventory planning.

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

# Supply Chain Resilience & Disruption Risk Intelligence System

## 📌 Project Overview
This project analyzes procurement data to identify **vendor reliability, delivery risk, quality issues, and supplier dependency**.  
The goal is to help procurement teams make **data-driven vendor management decisions** instead of relying on intuition.

The analysis follows a complete analytics lifecycle:
- Exploratory Data Analysis (EDA)
- SQL-based business querying
- Interactive dashboards in Power BI

---

## 🧠 Business Problems Addressed
- Which vendors are consistently delayed in deliveries?
- Which product categories show higher defect risk?
- Are we overly dependent on a small set of vendors?
- Which vendors pose the highest operational risk?

---

## 🗂️ Datasets Used
The project uses **6 interrelated datasets** simulating a real procurement system:

| Dataset | Description |
|------|------------|
| vendors | Vendor master data |
| products | Product and category details |
| orders | Order transactions and delivery timelines |
| quality_inspections | Defect and quality outcomes |
| backup_suppliers | Vendor backup relationships |
| regions | Geographic vendor coverage |

All datasets are connected using **primary and foreign keys**, enabling relational analysis.

---

## 🔍 Exploratory Data Analysis (EDA)
EDA was performed in Python to:
- Validate data quality (nulls, duplicates, invalid values)
- Verify foreign key integrity across datasets
- Understand distributions of delays, defects, and order volumes
- Identify early risk signals before formal querying

📂 Notebook: `riskanalysis_eda.ipynb`

---

## 🧮 SQL Analysis
SQL was used to answer **business-driven questions**, such as:
- Average delivery delay per vendor
- Vendor-wise defect rates by product category
- Vendor dependency and backup risk
- Order concentration across vendors

Each query was written with a **clear business question → logic → result** structure.

📂 SQL Scripts: `/sql/`

---

## 📊 Power BI Dashboard
Power BI dashboards were built to:
- Visualize vendor performance KPIs
- Highlight high-risk vendors and categories
- Enable filtering by region, vendor, and product category
- Support procurement decision-making

📂 Power BI File: `/powerbi/`

---

## 💡 Key Insights
- A small number of vendors contribute disproportionately to delivery delays
- Certain product categories show consistently higher defect rates
- Vendor dependency risk exists where backups are missing or weak
- Combining delay + defect metrics provides a stronger vendor risk score

---

## 🛠️ Tools & Technologies
- **Python** (Pandas, Matplotlib) – EDA
- **SQL (MySQL)** – Relational analysis & querying
- **Power BI** – Interactive dashboards
- **Excel** – Data preparation & validation

---

## 🎯 Skills Demonstrated
- Business-oriented analytical thinking
- Data cleaning and validation
- Writing optimized SQL queries
- Translating data into actionable insights
- End-to-end analytics workflow

---

## 📁 Repository Structure

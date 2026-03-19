# 📦 Supply Chain Resilience & Disruption Risk Intelligence System

An end-to-end analytics project designed to monitor vendor performance, identify supply chain risk exposure, and enable data-driven procurement decisions.

**Tools Used:**
SQL | Python (Pandas, EDA) | Power BI | DAX

Live Dashboard - https://bit.ly/4qUgkle

---

## 📌 Business Problem

Modern supply chains face disruptions due to:

* Vendor delivery delays
* High defect rates
* Over-dependency on specific suppliers
* Lack of centralized performance benchmarking

Organizations often struggle to identify high-risk vendors and quantify operational exposure.

This project builds an interactive analytics solution to provide visibility, risk segmentation, and performance benchmarking across vendors, categories, and cities.

---

## 🎯 Project Objectives

* Analyze vendor delivery performance and defect rates
* Identify high dependency risk suppliers
* Benchmark vendor performance across categories and locations
* Develop a composite performance score for ranking vendors
* Deliver actionable insights for operational improvement

---

## 📊 Data Overview

The project integrates **6 structured datasets**, including:

* Vendor master data
* Category classification
* City-level operations
* Delivery delay records
* Defect rate data
* Dependency risk indicators

### Key Metrics

* Average Delivery Delay (Days)
* Defect Rate (%)
* Dependency Risk Level (Low / Medium / High)
* Vendor Performance Score (Composite)

---

## 🔄 Project Workflow

Data Collection
→ Data Cleaning & Validation (Python)
→ SQL Aggregations & Business Queries
→ Exploratory Data Analysis (EDA)
→ Data Modeling in Power BI
→ DAX Calculations & Dashboard Design
→ Insight Generation

This structured pipeline ensures accuracy, reproducibility, and business relevance.

---

## 📈 Dashboard Overview

### 🟢 Page 1: Vendor Performance & Dependency Overview

* Vendor Distribution by Category
* Vendor-wise Average Delivery Delay
* Dependency Concentration Analysis
* KPI Cards for operational monitoring

Purpose: Identify performance variation and supplier concentration risk.

---

### 🟡 Page 2: Risk & Dependency Assessment

* Vendor Distribution by Dependency Risk Level
* Risk Distribution Across Categories
* Scatter Plot: Defect Rate vs Delivery Delay
* Vendor Risk & Performance Summary Matrix

Purpose: Detect high-risk vendors contributing to operational instability.

---

### 🔵 Page 3: Vendor Performance Benchmarking

* Vendor Performance Ranking (Composite Score)
* Category-level Defect Comparison
* City-wise Delivery Performance
* Best & Worst Performing Vendors

Purpose: Benchmark suppliers and support performance-driven sourcing decisions.

---

## ⚙️ Technical Implementation

### SQL

* Aggregation queries for delay and defect calculations
* Risk classification logic
* Category-level vendor analysis

### Python (EDA)

* Data cleaning and validation
* Outlier detection
* Distribution analysis
* Feature preparation for reporting

### Power BI & DAX

* Data modeling with relationships
* Interactive slicers and drill-down functionality
* KPI Cards for executive summary
* DAX Measures:

  * Vendor Performance Score
  * Vendor Ranking
  * Risk Segmentation

---

## 🧠 Performance Score Logic

A composite performance score was developed using a weighted combination of:

* Average Delivery Delay
* Defect Rate

The score enables standardized vendor comparison and ranking for procurement decision-making.

---

## 🔎 Key Insights

* A small subset of vendors contributes disproportionately to total delay exposure
* High dependency suppliers exhibit greater performance variability
* Certain categories show consistently higher defect rates
* City-level analysis reveals geographic performance differences
* Vendor ranking highlights clear separation between top-tier and underperforming suppliers

---

## 💡 Business Recommendations

* Diversify sourcing from high dependency vendors
* Monitor suppliers with elevated defect rates
* Prioritize partnerships with consistently high-performing vendors
* Optimize logistics in high-delay regions
* Implement periodic performance score monitoring

---

## 📂 Repository Structure

```
├── README.md
├── presentation.pdf
├── dashboard.pbix
├── sql/
│   └── queries.sql
├── eda/
│   └── analysis.ipynb
├── dataset/
│   └── cleaned_data.csv
```

---

## 📎 Live Dashboard

https://bit.ly/4qUgkle

---

## 📌 Project Type

End-to-end Data Analytics Project
Focus: Supply Chain Risk & Vendor Performance Benchmarking




# SQL Business Insights – Procurement Risk & Vendor Reliability

This document outlines the key business questions addressed using SQL
and the insights derived to support procurement decision-making.

---

## Vendor Delivery Performance Risk

### Business Question
Which vendors experience consistent delivery delays, indicating
potential operational and logistics risk?

### Tables Used
- orders
- vendors

### Analytical Logic
- Calculate delivery delay as the difference between actual and expected delivery dates
- Consider only delayed orders (delay > 0)
- Aggregate average delay at the vendor level

### Key Insight
Vendors with higher average delivery delays represent a risk to
supply chain reliability and may require corrective actions,
contract renegotiation, or alternate sourcing strategies.

---

## Vendor Quality Risk by Product Category

### Business Question
Which product categories show higher defect risk, and how does this
impact procurement quality?

### Tables Used
- orders
- products
- quality_inspections

### Analytical Logic
- Aggregate total defective quantities
- Normalize defects by total orders to compute defect rate
- Group results by product category

### Key Insight
Certain product categories exhibit higher defect concentration,
suggesting the need for stricter quality inspections or improved
vendor quality controls in those categories.

---

## Vendor Dependency Risk

### Business Question
Are there vendors with high order dependency but insufficient
backup suppliers?

### Tables Used
- vendors
- orders
- backup_suppliers

### Analytical Logic
- Count total orders per vendor
- Count distinct backup suppliers per primary vendor
- Compare dependency volume against backup coverage

### Key Insight
Vendors with high order volume and limited or no backup suppliers
pose a single-point-of-failure risk in procurement operations.

---

## High-Risk Vendor Identification

### Business Question
Which vendors pose the highest overall risk when considering both
delivery delays and quality defects?

### Tables Used
- vendors
- orders
- quality_inspections

### Analytical Logic
- Combine delivery delay metrics with defect indicators
- Rank vendors based on multi-dimensional risk factors

### Key Insight
Vendors consistently appearing across multiple risk dimensions
should be prioritized for performance audits, quality reviews,
or supplier diversification initiatives.

---

## Summary
SQL analysis enabled structured, repeatable evaluation of vendor
performance across delivery, quality, and dependency dimensions.
These insights form the analytical foundation for the Power BI
dashboards used in the final stage of this project.



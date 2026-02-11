/* ============================================================
   Procurement Risk & Vendor Reliability
   SQL Business Analysis Queries
   ============================================================ */


/* ============================================================
   1. Vendor Delivery Performance Risk
   Objective: Identify vendors with higher average delivery delays
   ============================================================ */

SELECT
    v.vendor_id,
    v.vendor_name,
    COUNT(o.order_id) AS total_orders,
    ROUND(AVG(DATEDIFF(o.actual_delivery_date, o.expected_delivery_date)), 2) AS avg_delivery_delay_days
FROM orders o
JOIN vendors v
    ON o.vendor_id = v.vendor_id
WHERE DATEDIFF(o.actual_delivery_date, o.expected_delivery_date) > 0
GROUP BY v.vendor_id, v.vendor_name
ORDER BY avg_delivery_delay_days DESC;


/* ============================================================
   2. Vendor Quality Risk by Product Category
   Objective: Analyze defect rate across product categories
   ============================================================ */

SELECT
    p.category,
    COUNT(o.order_id) AS total_orders,
    SUM(q.defective_quantity) AS total_defective_units,
    ROUND(SUM(q.defective_quantity) / COUNT(o.order_id), 2) AS defect_rate
FROM orders o
JOIN products p
    ON o.product_id = p.product_id
JOIN quality_inspections q
    ON o.order_id = q.order_id
GROUP BY p.category
ORDER BY defect_rate DESC;


/* ============================================================
   3. Vendor Dependency Risk
   Objective: Identify vendors with high order dependency
              and limited backup suppliers
   ============================================================ */

SELECT
    v.vendor_id,
    v.vendor_name,
    COUNT(o.order_id) AS total_orders,
    COUNT(DISTINCT b.backup_vendor_id) AS backup_vendor_count
FROM vendors v
LEFT JOIN orders o
    ON v.vendor_id = o.vendor_id
LEFT JOIN backup_suppliers b
    ON v.vendor_id = b.primary_vendor_id
GROUP BY v.vendor_id, v.vendor_name
ORDER BY total_orders DESC;


/* ============================================================
   4. High-Risk Vendor Identification
   Objective: Combine delivery delay and defect indicators
   ============================================================ */

SELECT
    v.vendor_id,
    v.vendor_name,
    COUNT(o.order_id) AS total_orders,
    ROUND(AVG(DATEDIFF(o.actual_delivery_date, o.expected_delivery_date)), 2) AS avg_delivery_delay,
    ROUND(SUM(q.defective_quantity) / COUNT(o.order_id), 2) AS defect_rate
FROM vendors v
JOIN orders o
    ON v.vendor_id = o.vendor_id
JOIN quality_inspections q
    ON o.order_id = q.order_id
GROUP BY v.vendor_id, v.vendor_name
HAVING avg_delivery_delay > 0 OR defect_rate > 0
ORDER BY avg_delivery_delay DESC, defect_rate DESC;


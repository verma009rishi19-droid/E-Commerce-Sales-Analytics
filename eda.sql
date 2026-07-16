
-- Total number of records
SELECT COUNT(*) AS total_records
FROM orders;

-- Total number of columns
SELECT COUNT(*) AS total_columns
FROM information_schema.columns
WHERE table_name = 'orders';

-- First and last order date
SELECT
MIN(order_date) AS first_order,
MAX(order_date) AS last_order
FROM orders;

-- Total sales
SELECT ROUND(SUM(sales),2) AS total_sales
FROM orders;

-- Total profit
SELECT ROUND(SUM(profit),2) AS total_profit
FROM orders;

-- Average sales per order
SELECT ROUND(AVG(sales),2) AS avg_sales
FROM orders;

--Unique customers
SELECT COUNT(DISTINCT customer_id)as Unique_customers
FROM orders;

--Unique products 
SELECT COUNT(DISTINCT product_id) as Unique_products
FROM orders;

-- Category
SELECT DISTINCT category
FROM orders;

--Region
SELECT DISTINCT region
FROM orders;
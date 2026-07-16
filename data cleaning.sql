-- Check total number of records
SELECT COUNT(*) AS total_records
FROM orders;

-- Check NULL values in important columns
SELECT
COUNT(*) FILTER (WHERE order_id IS NULL) AS order_id_null,
COUNT(*) FILTER (WHERE customer_id IS NULL) AS customer_id_null,
COUNT(*) FILTER (WHERE customer_name IS NULL) AS customer_name_null,
COUNT(*) FILTER (WHERE product_id IS NULL) AS product_id_null,
COUNT(*) FILTER (WHERE product_name IS NULL) AS product_name_null,
COUNT(*) FILTER (WHERE sales IS NULL) AS sales_null,
COUNT(*) FILTER (WHERE quantity IS NULL) AS quantity_null,
COUNT(*) FILTER (WHERE profit IS NULL) AS profit_null
FROM orders;

-- Check duplicate row IDs
SELECT row_id, COUNT(*)
FROM orders
GROUP BY row_id
HAVING COUNT(*) > 1;

-- Check duplicate order and product combinations
SELECT order_id, product_id, COUNT(*)
FROM orders
GROUP BY order_id, product_id
HAVING COUNT(*) > 1;

-- Check invalid sales
SELECT *
FROM orders
WHERE sales < 0;

-- Check discount outside valid range
SELECT *
FROM orders
WHERE discount < 0
   OR discount > 1;

-- Ship date should not be before order date
SELECT *
FROM orders
WHERE ship_date < order_date;

-- Check orders with negative profit
SELECT *
FROM orders
WHERE profit < 0;

-- Check blank customer or product names
SELECT *
FROM orders
WHERE TRIM(customer_name) = ''
   OR TRIM(product_name) = '';

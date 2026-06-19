-- View all sales
SELECT * FROM sales;

-- Total sales amount
SELECT SUM(sales_finaltotal) AS total_sales
FROM sales;

-- Sales with customer details
SELECT s.sales_id,
       c.cust_name,
       s.sales_finaltotal
FROM sales s
JOIN customer c ON s.cust_id = c.cust_id;

-- Sales handled by employees
SELECT s.sales_id,
       e.emp_name,
       s.sales_finaltotal
FROM sales s
JOIN employee e ON s.emp_id = e.emp_id;
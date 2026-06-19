-- Total revenue
SELECT SUM(sales_finaltotal) AS revenue
FROM sales;

-- Total expenses
SELECT SUM(exp_amount) AS expenses
FROM expense;

-- Revenue vs Expenses
SELECT
    (SELECT SUM(sales_finaltotal) FROM sales) AS revenue,
    (SELECT SUM(exp_amount) FROM expense) AS expenses;

-- Product profit margins
SELECT prod_name,
       prod_costprice,
       prod_sellprice,
       (prod_sellprice - prod_costprice) AS profit
FROM product;

-- Customer purchase history
SELECT c.cust_name,
       s.sales_datetime,
       s.sales_finaltotal
FROM sales s
JOIN customer c ON s.cust_id = c.cust_id;
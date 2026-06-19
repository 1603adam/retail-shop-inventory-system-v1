-- Current stock levels
SELECT *
FROM stock;

-- Stock with product names
SELECT p.prod_name,
       s.stock_quantity,
       s.stock_status
FROM stock s
JOIN product p ON s.prod_id = p.prod_id;

-- Low stock items
SELECT p.prod_name,
       s.stock_quantity
FROM stock s
JOIN product p ON s.prod_id = p.prod_id
WHERE s.stock_quantity < 10;

-- Inventory value
SELECT SUM(stock_totalcost) AS inventory_value
FROM stock;
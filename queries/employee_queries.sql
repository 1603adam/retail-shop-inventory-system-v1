-- View employees
SELECT * FROM employee;

-- Employees and expenses
SELECT e.emp_name,
       ex.exp_type,
       ex.exp_amount
FROM expense ex
JOIN employee e ON ex.emp_id = e.emp_id;

-- Total salary expense
SELECT SUM(emp_salary) AS total_salary
FROM employee;
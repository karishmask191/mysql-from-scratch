-- 01_select_where.sql
- Basic SELECT and WHERE queries

-- 1. Select all data from a table
SELECT * FROM employees;

-- 2. Select specific columns
SELECT name, department FROM employees;

-- 3. WHERE clause
SELECT * FROM employees WHERE department = 'HR';

-- 4. WHERE with multiple conditions
SELECT * FROM employees WHERE age > 25 AND city = 'Hyderabad';

-- 5. WHERE with OR
SELECT * FROM employees WHERE city = 'Hyderabad' OR city = 'Mumbai';

-- 6. WHERE with NOT
SELECT * FROM employees WHERE NOT department = 'HR';

-- 7. Sorting results
SELECT * FROM employees ORDER BY age DESC;

-- 8. Limiting results
SELECT * FROM employees LIMIT 5;

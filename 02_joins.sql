=> JOIN operations in MySQL

-- 1. INNER JOIN: returns matching rows from both tables
SELECT e.name, d.department_name
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;

-- 2. LEFT JOIN: returns all from left table + matched from right table
SELECT e.name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.id;

-- 3. RIGHT JOIN: returns all from right table + matched from left
SELECT e.name, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.id;

-- 4. FULL OUTER JOIN workaround (MySQL doesn't support it directly)
SELECT e.name, d.department_name
FROM employees e
LEFT JOIN departments d ON e.department_id = d.id

# UNION
SELECT e.name, d.department_name
FROM employees e
RIGHT JOIN departments d ON e.department_id = d.id;

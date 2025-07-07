=> GROUP BY and HAVING examples

-- 1. Count number of employees in each department
SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;

-- 2. Sum of salaries in each department
SELECT department_id, SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;

-- 3. Average age in each city
SELECT city, AVG(age) AS average_age
FROM employees
GROUP BY city;

-- 4. Use HAVING to filter groups (departments with more than 2 employees)
SELECT department_id, COUNT(*) AS total
FROM employees
GROUP BY department_id
HAVING total > 2;

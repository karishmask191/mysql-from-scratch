=> Subqueries inside SELECT, WHERE, and FROM

-- 1. Subquery in SELECT: Show employee name and department name
SELECT name, 
       (SELECT department_name 
        FROM departments d 
        WHERE d.id = e.department_id) AS dept_name
FROM employees e;

-- 2. Subquery in WHERE: Get employees from departments in Hyderabad
SELECT * 
FROM employees 
WHERE department_id IN (
    SELECT id 
    FROM departments 
    WHERE location = 'Hyderabad'
);

-- 3. Subquery in FROM: Get average salary per department
SELECT avg_salary 
FROM (
    SELECT department_id, AVG(salary) AS avg_salary
    FROM employees
    GROUP BY department_id
) AS dept_avg;

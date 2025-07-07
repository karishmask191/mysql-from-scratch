=> DDL Commands: CREATE, ALTER, DROP

-- 1. Create 'employees' table
CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    city VARCHAR(100),
    department_id INT,
    salary DECIMAL(10, 2)
);

-- 2. Alter table: add a new column
ALTER TABLE employees 
ADD gender VARCHAR(10);

-- 3. Alter table: remove a column
ALTER TABLE employees 
DROP COLUMN gender;

-- 4. Drop table (permanently deletes table and data)
DROP TABLE employees;

=> Common Constraints in MySQL

-- 1. Create 'departments' table with PRIMARY KEY
CREATE TABLE departments (
    id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL
);

-- 2. Add FOREIGN KEY to 'employees' table
ALTER TABLE employees
ADD CONSTRAINT fk_dept
FOREIGN KEY (department_id)
REFERENCES departments(id);

-- 3. Set NOT NULL constraint (cannot be empty)
ALTER TABLE employees 
MODIFY name VARCHAR(100) NOT NULL;

-- 4. Add UNIQUE constraint (no duplicate names)
ALTER TABLE employees 
ADD CONSTRAINT unique_name UNIQUE(name);

-- 5. Set DEFAULT value for joining_date
ALTER TABLE employees 
ADD joining_date DATE DEFAULT CURRENT_DATE;

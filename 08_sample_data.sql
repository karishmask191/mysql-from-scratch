=> Sample INSERT data for testing queries

-- Insert into departments table
INSERT INTO departments (id, department_name)
VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Sales'),
(4, 'Finance');

-- Insert into employees table
INSERT INTO employees (id, name, age, city, department_id, salary)
VALUES
(1, 'Karishma', 22, 'Hyderabad', 1, 50000),
(2, 'Rahul', 28, 'Mumbai', 2, 60000),
(3, 'Ayesha', 25, 'Hyderabad', 2, 62000),
(4, 'Siddharth', 30, 'Chennai', 3, 58000),
(5, 'Pooja', 27, 'Delhi', 4, 67000),
(6, 'Vikram', 24, 'Mumbai', 3, 54000);

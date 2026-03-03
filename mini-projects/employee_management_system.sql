-- ==========================================
-- Employee Management System
-- Database: PostgreSQL
-- ==========================================

-- Create Departments Table
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50)
);

-- Create Jobs Table
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(50),
    min_salary INT,
    max_salary INT
);

-- Create Employees Table
CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT,
    department_id INT,
    job_id INT,
    hire_date DATE,
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

-- ==========================================
-- Insert Data into Departments
-- ==========================================

INSERT INTO departments VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- ==========================================
-- Insert Data into Jobs
-- ==========================================

INSERT INTO jobs VALUES
(1, 'Software Developer', 40000, 100000),
(2, 'HR Manager', 30000, 80000),
(3, 'Accountant', 35000, 90000);

-- ==========================================
-- Insert Data into Employees
-- ==========================================

INSERT INTO employees VALUES
(1, 'Amit', 75000, 1, 1, '2022-01-15'),
(2, 'Priya', 60000, 2, 2, '2021-06-10'),
(3, 'Rahul', 85000, 1, 1, '2020-03-20'),
(4, 'Sneha', 50000, 3, 3, '2023-02-05');

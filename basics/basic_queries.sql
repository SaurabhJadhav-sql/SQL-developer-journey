-- Basic SQL Practice

-- 1. Select all columns
SELECT * FROM employees;

-- 2. Select specific columns
SELECT name, salary FROM employees;

-- 3. Filter using WHERE
SELECT * FROM employees
WHERE salary > 50000;

-- 4. Order results
SELECT * FROM employees
ORDER BY salary DESC;

-- 5. Group By example
SELECT department, COUNT(*)
FROM employees
GROUP BY department;

-- =====================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- AGGREGATE FUNCTIONS
-- Author: Sanskar Jadhav
-- =====================================

USE company_db;


-- 1. Count total employees

SELECT COUNT(*) AS total_employees
FROM employees;


-- 2. Calculate total salary expenditure

SELECT SUM(salary) AS total_salary
FROM employees;


-- 3. Calculate average salary

SELECT AVG(salary) AS average_salary
FROM employees;


-- 4. Find highest salary

SELECT MAX(salary) AS highest_salary
FROM employees;


-- 5. Find lowest salary

SELECT MIN(salary) AS lowest_salary
FROM employees;


-- 6. Department-wise employee count

SELECT
    department_id,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;


-- 7. Department-wise average salary

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id;


-- 8. Department-wise total salary

SELECT
    department_id,
    SUM(salary) AS total_salary
FROM employees
GROUP BY department_id;


-- 9. Departments having average salary above 35000

SELECT
    department_id,
    AVG(salary) AS average_salary
FROM employees
GROUP BY department_id
HAVING AVG(salary) > 35000;


-- 10. Count employees earning above 35000

SELECT COUNT(*) AS employees_above_35000
FROM employees
WHERE salary > 35000;

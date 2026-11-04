-- =====================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- BASIC SQL QUERIES
-- Author: Sanskar Jadhav
-- =====================================

USE company_db;


-- 1. Display all employees

SELECT * FROM employees;


-- 2. Display employee names and salaries

SELECT employee_name, salary
FROM employees;


-- 3. Find employees earning more than 40000

SELECT *
FROM employees
WHERE salary > 40000;


-- 4. Find employees between age 25 and 30

SELECT *
FROM employees
WHERE age BETWEEN 25 AND 30;


-- 5. Display employees in descending salary order

SELECT *
FROM employees
ORDER BY salary DESC;


-- 6. Find the top 5 highest-paid employees

SELECT *
FROM employees
ORDER BY salary DESC
LIMIT 5;


-- 7. Count total employees

SELECT COUNT(*) AS total_employees
FROM employees;


-- 8. Calculate average employee salary

SELECT AVG(salary) AS average_salary
FROM employees;


-- 9. Find department-wise employee count

SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id;


-- 10. Find departments having more than 1 employee

SELECT department_id, COUNT(*) AS total_employees
FROM employees
GROUP BY department_id
HAVING COUNT(*) > 1;

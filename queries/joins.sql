-- =====================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- SQL JOINS
-- Author: Sanskar Jadhav
-- =====================================

USE company_db;


-- 1. INNER JOIN
-- Employees having matching departments

SELECT
    e.employee_id,
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;


-- 2. LEFT JOIN
-- All employees, including unmatched records

SELECT
    e.employee_name,
    d.department_name
FROM employees e
LEFT JOIN departments d
ON e.department_id = d.department_id;


-- 3. RIGHT JOIN
-- All departments, including departments without employees

SELECT
    e.employee_name,
    d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.department_id = d.department_id;


-- 4. Department-wise salary analysis

SELECT
    d.department_name,
    COUNT(e.employee_id) AS total_employees,
    AVG(e.salary) AS average_salary
FROM departments d
LEFT JOIN employees e
ON d.department_id = e.department_id
GROUP BY d.department_name;


-- 5. Find employees working in IT department

SELECT
    e.employee_name,
    e.salary,
    d.department_name
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id
WHERE d.department_name = 'IT';

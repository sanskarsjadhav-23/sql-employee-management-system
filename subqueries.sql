-- =====================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- SQL SUBQUERIES
-- Author: Sanskar Jadhav
-- =====================================

USE company_db;


-- 1. Employees earning more than average salary

SELECT *
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);


-- 2. Find the highest-paid employee

SELECT *
FROM employees
WHERE salary = (
    SELECT MAX(salary)
    FROM employees
);


-- 3. Find the second-highest distinct salary

SELECT MAX(salary) AS second_highest_salary
FROM employees
WHERE salary < (
    SELECT MAX(salary)
    FROM employees
);


-- 4. Employees working in the IT department

SELECT *
FROM employees
WHERE department_id = (
    SELECT department_id
    FROM departments
    WHERE department_name = 'IT'
);


-- 5. Employees earning more than Rahul

SELECT *
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE employee_name = 'Rahul Sharma'
);


-- 6. Employees working in departments having more than one employee

SELECT *
FROM employees
WHERE department_id IN (
    SELECT department_id
    FROM employees
    GROUP BY department_id
    HAVING COUNT(*) > 1
);


-- 7. Find departments without employees

SELECT *
FROM departments d
WHERE NOT EXISTS (
    SELECT 1
    FROM employees e
    WHERE e.department_id = d.department_id
);

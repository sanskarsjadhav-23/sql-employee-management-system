-- =====================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- CASE STATEMENTS
-- Author: Sanskar Jadhav
-- =====================================

USE company_db;


-- 1. Categorize employees based on salary

SELECT
    employee_name,
    salary,
    CASE
        WHEN salary < 30000 THEN 'Low Salary'
        WHEN salary BETWEEN 30000 AND 40000 THEN 'Medium Salary'
        WHEN salary > 40000 THEN 'High Salary'
        ELSE 'Not Classified'
    END AS salary_category
FROM employees;


-- 2. Categorize employees based on age

SELECT
    employee_name,
    age,
    CASE
        WHEN age < 25 THEN 'Young'
        WHEN age BETWEEN 25 AND 28 THEN 'Middle'
        ELSE 'Senior'
    END AS age_category
FROM employees;


-- 3. Identify employees eligible for a bonus

SELECT
    employee_name,
    salary,
    CASE
        WHEN salary >= 45000 THEN 'Eligible for Bonus'
        ELSE 'Not Eligible'
    END AS bonus_status
FROM employees;


-- 4. Display salary grades

SELECT
    employee_name,
    salary,
    CASE
        WHEN salary >= 50000 THEN 'Grade A'
        WHEN salary >= 40000 THEN 'Grade B'
        WHEN salary >= 30000 THEN 'Grade C'
        ELSE 'Grade D'
    END AS salary_grade
FROM employees;


-- 5. Department-wise employee classification

SELECT
    d.department_name,
    e.employee_name,
    e.salary,
    CASE
        WHEN e.salary >= 40000 THEN 'Above 40000'
        ELSE 'Below 40000'
    END AS salary_status
FROM employees e
INNER JOIN departments d
ON e.department_id = d.department_id;

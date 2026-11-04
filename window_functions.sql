-- =====================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- WINDOW FUNCTIONS
-- Author: Sanskar Jadhav
-- =====================================

USE company_db;


-- 1. ROW_NUMBER()
-- Assign unique numbers to employees

SELECT
    employee_name,
    salary,
    ROW_NUMBER() OVER (
        ORDER BY salary DESC
    ) AS row_num
FROM employees;


-- 2. RANK()
-- Rank employees according to salary

SELECT
    employee_name,
    salary,
    RANK() OVER (
        ORDER BY salary DESC
    ) AS salary_rank
FROM employees;


-- 3. DENSE_RANK()
-- Rank without skipping numbers after ties

SELECT
    employee_name,
    salary,
    DENSE_RANK() OVER (
        ORDER BY salary DESC
    ) AS dense_salary_rank
FROM employees;


-- 4. PARTITION BY
-- Rank employees within each department

SELECT
    employee_name,
    department_id,
    salary,
    RANK() OVER (
        PARTITION BY department_id
        ORDER BY salary DESC
    ) AS department_rank
FROM employees;


-- 5. Find the top 3 employees in each department

SELECT *
FROM (
    SELECT
        employee_name,
        department_id,
        salary,
        DENSE_RANK() OVER (
            PARTITION BY department_id
            ORDER BY salary DESC
        ) AS salary_rank
    FROM employees
) ranked_employees
WHERE salary_rank <= 3;


-- 6. LAG()
-- Compare salary with the previous employee

SELECT
    employee_name,
    salary,
    LAG(salary) OVER (
        ORDER BY salary
    ) AS previous_salary
FROM employees;


-- 7. LEAD()
-- Compare salary with the next employee

SELECT
    employee_name,
    salary,
    LEAD(salary) OVER (
        ORDER BY salary
    ) AS next_salary
FROM employees;


-- 8. Running total of salaries

SELECT
    employee_name,
    salary,
    SUM(salary) OVER (
        ORDER BY employee_id
    ) AS running_total
FROM employees;


-- 9. Department-wise average salary

SELECT
    employee_name,
    department_id,
    salary,
    AVG(salary) OVER (
        PARTITION BY department_id
    ) AS department_average
FROM employees;


-- 10. Compare employee salary with department average

SELECT *
FROM (
    SELECT
        employee_name,
        department_id,
        salary,
        AVG(salary) OVER (
            PARTITION BY department_id
        ) AS department_average
    FROM employees
) salary_analysis
WHERE salary > department_average;

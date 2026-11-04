-- =====================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- DATE FUNCTIONS
-- Author: Sanskar Jadhav
-- =====================================

USE company_db;


-- 1. Display current date

SELECT CURDATE() AS current_date;


-- 2. Display current date and time

SELECT NOW() AS current_datetime;


-- 3. Display employee joining dates

SELECT
    employee_name,
    hire_date
FROM employees;


-- 4. Extract year from joining date

SELECT
    employee_name,
    YEAR(hire_date) AS joining_year
FROM employees;


-- 5. Extract month from joining date

SELECT
    employee_name,
    MONTH(hire_date) AS joining_month
FROM employees;


-- 6. Calculate days since joining

SELECT
    employee_name,
    hire_date,
    DATEDIFF(CURDATE(), hire_date) AS days_worked
FROM employees;


-- 7. Find employees who joined in 2025

SELECT *
FROM employees
WHERE YEAR(hire_date) = 2025;


-- 8. Find employees who joined in the last 30 days

SELECT *
FROM employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 30 DAY);


-- 9. Add one year to joining date

SELECT
    employee_name,
    hire_date,
    DATE_ADD(hire_date, INTERVAL 1 YEAR) AS one_year_later
FROM employees;


-- 10. Format joining date

SELECT
    employee_name,
    DATE_FORMAT(hire_date, '%d-%m-%Y') AS formatted_date
FROM employees;


-- 11. Calculate expected joining anniversary

SELECT
    employee_name,
    hire_date,
    DATE_ADD(hire_date, INTERVAL 1 YEAR) AS first_anniversary
FROM employees;

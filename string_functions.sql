-- =====================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- STRING FUNCTIONS
-- Author: Sanskar Jadhav
-- =====================================

USE company_db;


-- 1. Convert employee names into uppercase

SELECT UPPER(employee_name) AS uppercase_name
FROM employees;


-- 2. Convert employee names into lowercase

SELECT LOWER(employee_name) AS lowercase_name
FROM employees;


-- 3. Count characters in employee names

SELECT
    employee_name,
    LENGTH(employee_name) AS name_length
FROM employees;


-- 4. Extract first 5 characters

SELECT
    employee_name,
    SUBSTRING(employee_name, 1, 5) AS short_name
FROM employees;


-- 5. Combine employee name and salary

SELECT
    CONCAT(employee_name, ' earns ', salary) AS employee_details
FROM employees;


-- 6. Remove unnecessary spaces

SELECT TRIM('   Sanskar Jadhav   ') AS cleaned_name;


-- 7. Replace a word in a string

SELECT
    REPLACE(employee_name, 'Rahul', 'Rohit') AS modified_name
FROM employees;


-- 8. Find employee names starting with A

SELECT *
FROM employees
WHERE employee_name LIKE 'A%';


-- 9. Find employee names ending with a

SELECT *
FROM employees
WHERE employee_name LIKE '%a';


-- 10. Find names containing 'sh'

SELECT *
FROM employees
WHERE employee_name LIKE '%sh%';

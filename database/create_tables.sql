-- =====================================
-- EMPLOYEE MANAGEMENT SYSTEM
-- Author: Sanskar Jadhav
-- Database: MySQL
-- =====================================

-- Step 1: Create Database

CREATE DATABASE company_db;

USE company_db;


-- Step 2: Create Departments Table

CREATE TABLE departments (
    department_id INT PRIMARY KEY AUTO_INCREMENT,
    department_name VARCHAR(100) NOT NULL
);


-- Step 3: Create Employees Table

CREATE TABLE employees (
    employee_id INT PRIMARY KEY AUTO_INCREMENT,
    employee_name VARCHAR(100) NOT NULL,
    age INT,
    salary DECIMAL(10,2),
    department_id INT,
    hire_date DATE,

    FOREIGN KEY (department_id)
    REFERENCES departments(department_id)
);

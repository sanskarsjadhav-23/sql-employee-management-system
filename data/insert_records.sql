-- Employee Management System
-- Insert Sample Records

USE company_db;


-- Insert Department Records

INSERT INTO departments (department_name)
VALUES
('IT'),
('HR'),
('Finance'),
('Marketing'),
('Sales');


-- Insert Employee Records

INSERT INTO employees
(employee_name, age, salary, department_id, hire_date)
VALUES
('Rahul Sharma', 25, 35000, 1, '2025-01-10'),
('Priya Patel', 27, 42000, 2, '2024-11-15'),
('Amit Verma', 24, 30000, 1, '2025-03-20'),
('Sneha Joshi', 29, 50000, 3, '2023-08-12'),
('Karan Mehta', 26, 38000, 4, '2024-06-05'),
('Neha Singh', 28, 45000, 5, '2023-12-18'),
('Rohit Kumar', 23, 28000, 1, '2025-04-01'),
('Pooja Desai', 30, 55000, 3, '2022-09-25'),
('Vikas Shah', 27, 40000, 4, '2024-02-14'),
('Anjali Rao', 25, 32000, 2, '2025-02-11');


-- Verify Inserted Records

SELECT * FROM departments;

SELECT * FROM employees;

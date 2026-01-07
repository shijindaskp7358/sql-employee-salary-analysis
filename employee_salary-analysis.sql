CREATE DATABASE  COMPANY;
USE COMPANY ;
SELECT DATABASE ();
CREATE TABLE employees (
emp_id INT PRIMARY KEY,emp_name VARCHAR(50),
department VARCHAR(50),
salary INT,joining_date DATE
);
SHOW TABLES ;
INSERT INTO employees VALUES 
(1, 'Arun', 'IT', 45000, '2022-01-10'),
(2, 'Rahul', 'HR', 30000, '2021-03-15'),
(3, 'Sneha', 'IT', 55000, '2020-07-20'),
(4, 'Anjali', 'Finance', 40000, '2022-11-05'),
(5, 'Vishnu', 'HR', 28000, '2023-02-01'),
(6, 'Meera', 'Finance', 48000, '2021-06-18'),
(7, 'Akhil', 'IT', 60000, '2019-09-25');
SELECT * FROM employees;
SELECT * FROM employees 
WHERE department = 'IT';
SELECT department, COUNT(*) AS emp_count
FROM employees
GROUP BY department ;
SELECT department, AVG(salary) AS 
avg_salary
FROM employees 
GROUP BY department ;
USE COMPANY;
SELECT * 
FROM employees;
SELECT *
FROM employees
ORDER BY salary DESC;
SELECT department, COUNT(*) AS emp_count
FROM employees
GROUP BY department
HAVING COUNT(*) > 2;
SELECT department, AVG(salary) 
as avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 45000;
SELECT department, COUNT(*) AS emp_count
FROM employees 
GROUP BY department
HAVING COUNT(*) >= 2;

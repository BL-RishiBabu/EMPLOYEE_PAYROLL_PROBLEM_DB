-- Step 1: Create a database named payroll_service.

create database payroll_service;

-- Step 2: Create a table named employee_payroll with the following columns:

use payroll_services;

create table employee_payroll(
    id int not null auto_increment,
    name varchar(50) not null,
    salary decimal(10,2) not null,
    start date not null,
    primary key(id)
);

-- Step 3: Insert employee payroll data into the employee_payroll table (CRUD - Create Operation)

INSERT INTO employee_payroll (name, salary, start) VALUES 
('Bill', 1000000.00, '2018-01-03'),
('Terisa', 2000000.00, '2019-11-13'),
('Charlie', 3000000.00, '2020-05-21');

-- Step 4: Retrieve all employee payroll data from the table (CRUD - Read Operation)

SELECT * FROM employee_payroll;

-- Step 5: Retrieve specific salary data and filter records by date range using WHERE clause

SELECT salary FROM employee_payroll WHERE name = 'Bill';

SELECT * FROM employee_payroll WHERE start BETWEEN CAST('2018-01-01' AS DATE) AND DATE(NOW());

-- Step 6: Alter table structure to add gender column and update rows (CRUD - Update Operation)

ALTER TABLE employee_payroll ADD gender CHAR(1) AFTER name;

UPDATE employee_payroll SET gender = 'M' WHERE name = 'Bill' OR name = 'Charlie';

UPDATE employee_payroll SET gender = 'F' WHERE name = 'Terisa';

-- Step 7: Use aggregate functions grouped by gender to analyze payroll metrics

SELECT gender, SUM(salary) FROM employee_payroll GROUP BY gender;

SELECT gender, AVG(salary) FROM employee_payroll GROUP BY gender;

SELECT gender, MIN(salary) FROM employee_payroll GROUP BY gender;

SELECT gender, MAX(salary) FROM employee_payroll GROUP BY gender;

SELECT gender, COUNT(*) AS count FROM employee_payroll GROUP BY gender;
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


use payroll_services;

create table employee_payroll(
    id int not null auto_increment,
    name varchar(50) not null,
    salary decimal(10,2) not null,
    start date not null,
    primary key(id)
);
CREATE DATABASE company_db;
USE company_db;

CREATE TABLE employees(
employee_id INT,
full_name VARCHAR(50),
email VARCHAR(100),
phone VARCHAR(20),
gender VARCHAR(10),
hire_date DATE,
salary DECIMAL(10,2),
department VARCHAR(30)
);

CREATE TABLE departments(
department_id INT,
department_name VARCHAR(50),
location VARCHAR(50)
);

CREATE TABLE projects(
project_id INT,
project_name VARCHAR(50),
start_date DATE,
end_date DATE,
budget DECIMAL(12,2)
);

ALTER TABLE employees ADD status VARCHAR(20);

ALTER TABLE employees Modify department VARCHAR(50);

ALTER TABLE projects RENAME column budget to project_budget;

CREATE TABLE temp_employees(
id INT,
name VARCHAR(50)
);

TRUNCATE TABLE temp_employees;
DROP TABLE temp_employees;

INSERT INTO employees
VALUES
(1,'Amit sharma','amit@gmail.com','2345322412','Male','2012-02-12',35000.00,'IT','Active'),
(2,'Sneha kadam','sneha@gmail.com','7857392210','Female','2023-04-01',45000.00,'HR','Active'),
(3,'Sumit verma','sumit@gmail.com','9803206930','Male','2020-07-22',30000.00,'DATA ANALYST','Active'),
(4,'Anjali nayak','anjali@gmail.com','9033104855','Female','2022-03-30',50000.00,'DATA SCIENTIST','active'),
(5,'Ankita bhosle','ankita@gmail.com','7890342277','Female','2024-01-17',35000.00,'IT','Active'),
(6,'Shivam kumar','shivam@gmail.com','7644883320','Male','2016-05-04',55000.00,'FINANCE','Active');

SELECT * FROM employees;

INSERT INTO Departments
VALUES
(1,'IT','Pune'),
(2,'HR','Remote'),
(3,'DATA ANALYST','Mumbai'),
(4,'DATA SCIENTIST','Remote');

INSERT INTO projects
VALUES
(1,'Software Developer','2022-01-22','2023-12-30',250000.00),
(2,'Human Resoures','2023-01-02','2024-12-31',1000000.00),
(3,'Data analyser','2020-10-22','2021-11-20',800000.00),
(4,'AI','2022-01-22','2023-12-30',300000.00),
(5,'Markating','2017-02-23','2019-12-09',150000.00);

UPDATE employees
SET status = 'Active';

UPDATE employees
SET salary = salary + 10000
WHERE employee_id = 1;

DELETE FROM employees
WHERE employee_id = 1;

DELETE FROM projects;

SELECT * FROM employees;

SELECT * FROM departments;

SELECT full_name,email,salary
FROM employees;

SELECT department_name,location
FROM departments;

SELECT * FROM employees
WHERE gender = 'Female';

SELECT * FROM employees
WHERE salary = 50000.00;

SELECT * FROM employees
WHERE hire_date = 2021-01-01;

SELECT * FROM employees
WHERE department = 'IT'
AND status = 'Active';

SELECT * FROM projects
WHERE project_budget = 1000000.00
AND end_date = '2024-12-31';

UPDATE employees
SET status = 'Inactive'
WHERE salary = 30000.00;

DELETE FROM departments
WHERE location = 'Remote';

SELECT * FROM projects;





 

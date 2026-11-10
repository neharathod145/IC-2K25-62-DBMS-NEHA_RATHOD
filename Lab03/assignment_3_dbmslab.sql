Show databases;
use dbms_lab;
Show tables;
Desc lab;
desc lab1;
select * From lab1;
CREATE TABLE employee (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    email VARCHAR(50),
    phone_number VARCHAR(10),
    hire_date DATE,
    job_id VARCHAR(20),
    salary DECIMAL(10,2),
    commission_pct DECIMAL(5,2),
    manager_id INT,
    department_id INT
);
drop table employees;
Insert into employee 
VALUES
  (1, 'Anushka', 'Sharma' , 'anushka123@gmail.com', '99891187281' ,'2026-12-23',  '101' , 40000.00 , 2.30 , 1001 , 001),
        (2,'Deepika','Padukon' , 'deepika99@gmail.com' , '9877716271',  '2024-04-24' , '102' , 60000.00 ,4.50, 1002 , 001 );
INSERT INTO employee
(employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, commission_pct, manager_id, department_id)
VALUES
(3, 'Robert', 'Blake', 'robert@gmail.com', '9876543210', '1987-06-15', 'IT_PROG', 9000, 2.00, 1001, 30),
(4, 'Rebecca', 'Scott', 'rebecca@gmail.com', '9876543211', '1987-09-20', 'SH_CLERK', 12000, 1.50, 1002, 100),
(5, 'Michael', 'King', 'michael@gmail.com', '9876543212', '2020-03-10', 'IT_PROG', 18000, 3.00, 1001, 30),
(6, 'Bruce', 'Ford', 'bruce@gmail.com', '9876543213', '2019-07-12', 'SH_CLERK', 4500, 1.00, 1002, 100),
(7, 'David', 'Taylor', 'david@gmail.com', '9876543214', '1987-11-25', 'IT_PROG', 15000, 2.50, 1001, 50),
(8, 'Charles', 'Miller', 'charles@gmail.com', '9876543215', '2021-05-18', 'SA_REP', 8000, 1.00, 1003, 30),
(9, 'Brian', 'Green', 'brian@gmail.com', '9876543216', '2022-08-22', 'SH_CLERK', 16000, 2.00, 1002, 100),
(10, 'Alice', 'Reed', 'alice@gmail.com', '9876543217', '2023-01-14', 'IT_PROG', 11000, 1.50, 1001, 40),
(11, 'Catherine', 'Martin', 'catherine@gmail.com', '9876543218', '1987-04-16', 'SA_REP', 7000, 2.00, 1003, 30),
(12, 'Steve', 'Wilson', 'steve@gmail.com', '9876543219', '2020-12-05', 'SH_CLERK', 20000, 1.00, 1002, 100);

/* Q1. Write a query to display the name (first_name, last_name) and salary for all employees whose
 salary is not in the range $10,000 through $15,000. */
SELECT first_name, last_name, salary
FROM employee
WHERE salary NOT BETWEEN 10000 AND 15000;

/* Q2. Write a query to display the name (first_name, last_name) and department ID of all employees 
in departments 30 or 100 in ascending order. */
SELECT first_name, last_name , department_id
From employee
where department_id= 30 OR  department_id= 100
order by department_id Asc;

/* Q3. Write a query to display the name (first_name, last_name)and salary for all 
employees whose salary is not in the range $10,000 through $15,000 and are in department 30 or 100. */
SELECT first_name, last_name, salary
FROM employee
WHERE salary NOT BETWEEN 10000 AND 15000
AND department_id IN (30,100); 

/* Q4. Write a query to display the name (first_name, last_name)
 and hire date for all employees who were hired in 1987. */
SELECT first_name, last_name, hire_date 
FROM employee 
where YEAR (hire_date) = 1987;

/* Q5. Write a query to display the first_name of all employees who have both "b" 
and "c" in their first name. */
SELECT first_name 
FROM employee 
where first_name LIKE '%b%' AND 
first_name LIKE '%c%';

/* Q6. Write a query to display the last name, job, and salary for all employees whose job is that of a 
Programmer or a Shipping Clerk, and whose salary is not equal to $4,500, $10,000, or $15,000. */
SELECT last_name, job_id, salary
FROM employee
WHERE job_id IN ('IT_PROG', 'SH_CLERK')
AND salary NOT IN (4500, 10000, 15000);

/* Q7. Write a query to display the last name of employees whose names have exactly 6 characters. */
SELECT last_name
FROM employee
WHERE last_name LIKE '______';

/* Q8. Write a query to display the last name of employees having 'e' as the third character. */
Select last_name 
From employee
Where last_name like '__e%';

/* Q9. Write a query to display the jobs/designations available in the employees table. */
SELECT DISTINCT job_id
FROM employee;

/* Q10. Write a query to display the name (first_name, last_name), salary and 
PF (15% of salary) of all employees. */
SELECT first_name, last_name, salary,
       salary * 0.15 AS PF
FROM employee;

/* Q11. Write a query to select all record from employees where last name in
 'BLAKE', 'SCOTT', 'KING' and 'FORD'. */
SELECT *
FROM employee
WHERE last_name IN ('BLAKE', 'SCOTT', 'KING', 'FORD');

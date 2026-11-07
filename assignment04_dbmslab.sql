Use dbms_lab;
Show tables;

/* Q1. Write a query to list the number of jobs available in the employees table. */
Select COUNT(DISTINCT job_id) AS total_jobs
FROM employee;

/* Q2. Write a query to get the total salaries payable to employees. */
Select SUM(salary) AS total_salary
FROM employee;

/* Q3. Write a query to get the minimum salary from employees table. */
SELECT min(salary) AS Minimum_salary
FROM employee;

/* Q4. Write a query to get the maximum salary of an employee working as a Programmer. */
SELECT max(salary) AS Maximum_saalry
FROM employee;

/* Q5. Write a query to get the average salary and number of employees working the department 90. */
SELECT AVG(salary) AS average_salary,COUNT(*) AS total_employees
FROM employee
WHERE department_id = 90;

/* Q6. Write a query to get the highest, lowest, sum, and average salary of all employees. */
SELECT max(salary) AS Highest_salary, min(salary) AS Lowest_salary, 
SUM(salary) AS Total_salary, avg(salary) As Average_salary
FROM employee;

/* Q7. Write a query to get the number of employees with the same job. */
SELECT job_id, COUNT(*) AS No_of_employees
FROM employee
GROUP BY job_id;

/* Q8. Write a query to get the difference between the highest and lowest salaries. */
SELECT MAX(salary) - MIN(salary)
FROM employee;

/* Q9. Write a query to find the manager ID and the salary of the lowest-paid employee for that manager. */
SELECT manager_id, MIN(salary) AS lowest_salary
FROM employee
GROUP BY manager_id;

/* Q10. Write a query to get the department ID and the total salary payable in each department. */
SELECT department_id, SUM(salary) AS Total_salary
FROM employee
GROUP BY department_id;

/* Q11. Write a query to get the average salary for each job ID excluding programmer. */
SELECT job_id, AVG(salary) AS average_salary
FROM employee
WHERE job_id <> 'IT_PROG'
GROUP BY job_id;

/* Q12. Write a query to get the total salary, maximum, minimum, average salary of 
employees (job ID wise), for department ID 90 only. */
SELECT job_id, SUM(salary) AS total_salary, MAX(salary) AS maximum_salary,
MIN(salary) AS minimum_salary, AVG(salary) AS average_salary
FROM employee
WHERE department_id=90
GROUP BY job_id;

/* Q13. Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000. */
SELECT job_id, MAX(salary) AS maximum_salary
FROM employee
GROUP BY job_id
HAVING MAX(salary) >= 4000;

/* Q14. Write a query to get the average salary for all departments employing more than 10 employees. */
SELECT department_id, AVG(salary) AS average_salary
FROM employee
GROUP BY department_id
HAVING COUNT(*) > 10;


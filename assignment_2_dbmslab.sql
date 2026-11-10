USE dbms_lab;
/* Q1. Display names using aliases */

SELECT FIRST_NAME AS `First Name`,
       LAST_NAME AS `Last Name`
FROM EMPLOYEEs;

/* Q2. Display unique department IDs */

SELECT DISTINCT DEPARTMENT_ID
FROM EMPLOYEES;

/* Q3. Display all employee details in descending order */

SELECT * FROM EMPLOYEES
ORDER BY FIRST_NAME DESC;

/* Q4. Calculate PF as 15 percent of salary */

SELECT FIRST_NAME, LAST_NAME, SALARY,
SALARY * 0.15 AS PF FROM EMPLOYEES;

/* Q5. Display employee details in ascending order of salary */
SELECT EMPLOYEE_ID, FIRST_NAME, LAST_NAME, SALARY
FROM EMPLOYEES
ORDER BY SALARY ASC;

/* Q6. Calculate total salary */
SELECT SUM(SALARY) AS TOTAL_SALARY
FROM EMPLOYEES;

/* Q7. Find maximum and minimum salary */
SELECT MAX(SALARY) AS MAX_SALARY, MIN(SALARY) AS MIN_SALARY
FROM EMPLOYEES;

/* Q8. Calculate average salary and employee count */
SELECT AVG(SALARY) AS AVERAGE_SALARY,
       COUNT(*) AS NUMBER_OF_EMPLOYEES
FROM EMPLOYEES;

/* Q9. Count total employees */
SELECT COUNT(*) AS TOTAL_EMPLOYEES
FROM EMPLOYEES;

/* Q10. Count unique jobs */
SELECT COUNT(DISTINCT JOB_ID) AS NUMBER_OF_JOBS
FROM EMPLOYEES;

/* Q11. Display first names in uppercase */
SELECT UPPER(FIRST_NAME) AS FIRST_NAME
FROM EMPLOYEES;

/* Q12. Extract first 3 characters */

SELECT LEFT(FIRST_NAME, 3) AS FIRST_THREE_CHARACTERS
FROM EMPLOYEES;

/* Q13. Perform arithmetic calculation */
SELECT 171 * 214 + 625 AS RESULT;

/* Q14. Display complete employee names */
SELECT CONCAT(FIRST_NAME, ' ', LAST_NAME) AS EMPLOYEE_NAME
FROM EMPLOYEES;

/* Q15. Remove leading and trailing spaces */
SELECT TRIM(FIRST_NAME) AS FIRST_NAME
FROM EMPLOYEES;

/* Q16. Calculate the length of first and last names */
SELECT FIRST_NAME,
LENGTH(FIRST_NAME) AS FIRST_NAME_LENGTH, LAST_NAME, LENGTH(LAST_NAME) AS LAST_NAME_LENGTH
FROM EMPLOYEES;

/* Q17. Find first names containing numbers */
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME REGEXP '[0-9]';

/* Q18. Display first 10 employee records */
SELECT * FROM EMPLOYEES
LIMIT 10;

/* Q19. Calculate monthly salary rounded to 2 decimal places */
SELECT FIRST_NAME, LAST_NAME, SALARY, ROUND(SALARY / 12, 2) AS MONTHLY_SALARY
FROM EMPLOYEES;
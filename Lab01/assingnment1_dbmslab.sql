USE dbms_lab;
/*Q1. Write a SQL statement to create a simple table countries including columns country_id, country_name and region_id.*/
CREATE TABLE Countries
(
  country_id int(5),
  country_name VARCHAR(15),
  region_id INT(5)
);
/* Q2. Write a SQL statement to create a simple table countries including columns country_id, 
country_name and region_id which is already exists. */
CREATE TABLE IF NOT EXISTS countries (
    country_id INT,
    country_name VARCHAR(15),
    region_id INT
);

/* Q3. Write a SQL statement to create the structure of a table dup_countries similar to countries. */
CREATE TABLE dup_countries LIKE countries;
DROP TABLE IF EXISTS dup_countries;

/* Q4. Write a SQL statement to create a duplicate copy of countries table
 including structure and data by named dup_countries. */
 CREATE TABLE IF NOT EXISTS dup_countries AS
SELECT * FROM countries;

DROP TABLE countries;
/* Q5. Write a SQL statement to create a table countries set a constraint NULL. */
CREATE TABLE COUNTRIES
(
  country_id INT,
  country_name VARCHAR(20),
  region_id INT NULL
);

/* Q6. Write a SQL statement to create a table named jobs including columns
 job_id, job_title, min_salary, max_salary and check whether the max_salary amount exceeding the upper limit 25000. */
 CREATE TABLE Jobs
 (
   job_id VARCHAR(10),
   job_title VARCHAR(10),
   min_salary DECIMAL(6,0),
   max_salary DECIMAL(6,0)
   CHECK (max_salary <= 25000)
);
  DROP TABLE COUNTRIES; 
/* Q7. Write a SQL statement to create a table named countries including columns country_id, country_name and
  region_id and makes sure that no countries except Italy, India and China will be entered in the table. */
CREATE TABLE countries (
    country_id INT,
    country_name VARCHAR(50),
    region_id INT,
    CHECK (country_name IN ('Italy', 'India', 'China'))
);

/* Q8. Write a SQL statement to create a table named job_histry including columns employee_id, start_date, 
end_date, job_id and department_id and make sure that the value against column end_date will be entered at 
the time of insertion to the format like '--/--/----'. */
CREATE TABLE Job_history
(
  employee_id INT,
  start_date DATE,
  end_date DATE,
  job_id VARCHAR(10),
  department_id VARCHAR(10)
);

DROP TABLE IF EXISTS COUNTRIES;
/* Q9. Write a SQL statement to create a table named countries including columns country_id, country_name and 
region_id and make sure that no duplicate data against column country_id will be allowed at the time of insertion. */
CREATE TABLE COUNTRIES
(
  country_id INT UNIQUE,
  country_name VARCHAR(20),
  region_id INT
);

DROP TABLE jobs;
/* Q10. Write a SQL statement to create a table named jobs including columns job_id, job_title, min_salary and max_salary,
 and makes sure that the default value for job_title is blank and min_salary is 8000 and max_salary is NULL will be entered 
 automatically at the time of insertion if no value assigned for the specified columns. */
 
   CREATE TABLE jobs (
    job_id VARCHAR(10) PRIMARY KEY,
    job_title VARCHAR(35) NOT NULL DEFAULT '',
    min_salary DECIMAL(6,0) DEFAULT 8000,
    max_salary DECIMAL(6,0) DEFAULT NULL
);

DROP TABLE COUNTRIES;
/* Q11. Write a SQL statement to create a table named countries including columns country_id, country_name and region_id
 and makes sure that the country_id column will be a key field which will not contain any duplicate data at the time of insertion. */
 CREATE TABLE COUNTRIES
 (
   country_id INT PRIMARY KEY,
   country_name VARCHAR(20),
   region_id int
);

DROP TABLE COUNTRIES;   
/* Q12. Write a SQL statement to create a table countries including columns country_id, country_name and region_id and make sure
 that the column country_id will be unique and store an auto incremented value. */
 CREATE TABLE COUNTRIES
 (
   country_id INT UNIQUE AUTO_INCREMENT,
   country_name VARCHAR(20),
   region_id INT
);

DROP TABLE COUNTRIES;   
/* Q13. Write a SQL statement to create a table countries including columns country_id, country_name and region_id and 
make sure that the combination of columns country_id and region_id will be unique. */
 CREATE TABLE COUNTRIES
 (
   country_id INT,
   country_name VARCHAR(20),
   region_id int,
   UNIQUE(country_id,region_id)
);

DROP TABLE job_history;
/* Q14. Write a SQL statement to create a table job_history including columns employee_id, start_date, end_date, job_id 
and department_id and make sure that the employee_id column does not contain any duplicate value at the time of insertion
 and the foreign key column job_id contain only those values which are exists in the jobs table. */
 CREATE TABLE JOB_HISTORY
 (
   employee_id INT UNIQUE,
   start_date  DATE,
   end_date  DATE,
   job_id VARCHAR(10),
   department_id VARCHAR(10),
   FOREIGN KEY (job_id) REFERENCES jobs(job_id)
 );   
 
 DROP TABLE departments;
 CREATE TABLE departments (
    department_id VARCHAR(10) PRIMARY KEY,
    department_name VARCHAR(30) NOT NULL,
    manager_id VARCHAR(10),
    location_id VARCHAR(10)
);
ALTER TABLE departments
ADD UNIQUE (department_id, manager_id);
 /* Q15. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email,phone_number, hire_date,job_id, salary, 
 commission, manager_id and department_id, and makes sure that the employee_id column does not contain any duplicate value at the time of insertion and the
 foreign key columns combined by department_idand manager_id columns contain only those unique combinations, which combinations exist in the departments table. */
  CREATE TABLE EMPLOYEES
 (
   employee_id INT UNIQUE,
   first_name VARCHAR(10), last_name  VARCHAR(10), email VARCHAR(20),
   phone_number INT(10), hire_date DATE, job_id VARCHAR(10), 
   salary DECIMAL(6,0),  commission DECIMAL(4,0),  
   manager_id VARCHAR(10), department_id VARCHAR(10),
   FOREIGN KEY (department_id, manager_id)
    REFERENCES departments(department_id, manager_id)
);
   DROP TABLE EMPLOYEES;
   /* Q16. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary,
   commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion and the foreign key
   column department_id, referenced by the column department_id of departments table, can contain only those values which are exists in the departments table and another 
   foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine have 
   been used to create the tables. */
  CREATE TABLE EMPLOYEES
  ( employee_id INT UNIQUE,  first_name VARCHAR(10),  last_name VARCHAR(10),  email VARCHAR(20), phone_number INT(10), hire_date DATE,  
    job_id VARCHAR(10), salary DECIMAL(6,0),  commission DECIMAL(4,2), manager_id VARCHAR(10), department_id VARCHAR(10),
    FOREIGN KEY (department_id)  REFERENCES departments(department_id),
    FOREIGN KEY (job_id)  REFERENCES jobs(job_id)
)ENGINE=InnoDB;

DROP TABLE EMPLOYEES;
/* Q17. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id 
column does not contain any duplicate value at the time of insertion and the foreign key column job_id, referenced by the column job_id of jobs table, can contain 
only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, the ON UPDATE 
CASCADE action allows you to perform cross-table update and ON DELETE RESTRICT action reject the deletion. The default action is ON DELETE RESTRICT. */
CREATE TABLE EMPLOYEE 
( employee_id INT UNIQUE, first_name VARCHAR(10), last_name VARCHAR(10), job_id VARCHAR(10), salary DECIMAL(6,0), 
  FOREIGN KEY (job_id) REFERENCES jobs(job_id), 
  ON UPDATE CASCADE
  ON DELETE RESTRICT
) ENGINE=InnoDB;
DROP TABLE EMPLOYEE;
/* Q18. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id 
column does not contain any duplicate value at the time of insertion and the foreign key column job_id, referenced by the column job_id of jobs table, can contain
 only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, the ON DELETE 
 CASCADE action lets you allow to delete records in the employees (child) table that refer to a record in the jobs (parent) table when the record in the parent table
 is deleted and the ON UPDATE RESTRICT action rejects any updates. */
CREATE TABLE employees (
    employee_id INT UNIQUE, first_name VARCHAR(20), last_name VARCHAR(25),
    job_id VARCHAR(10), salary DECIMAL(8,2),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
    ON DELETE CASCADE
    ON UPDATE RESTRICT
) ENGINE=InnoDB;

DROP TABLE employees;
/* Q19. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id 
column does not contain any duplicate value at the time of insertion and the foreign key column job_id, referenced by the column job_id of jobs table, can contain 
only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, the ON DELETE 
SET NULL action will set the foreign key column values in the child table (employees) to NULL when the record in the parent table (jobs) is deleted, with a condition 
that the foreign key column in the child table must accept NULL values and the ON UPDATE SET NULL action resets the values in the rows in the child table (employees) 
to NULL values when the rows in the parent table (jobs) are updated. */
CREATE TABLE employees
 ( employee_id INT UNIQUE,  first_name VARCHAR(20),  last_name VARCHAR(25),
    job_id VARCHAR(10),  salary DECIMAL(8,2),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
    ON DELETE SET NULL
    ON UPDATE SET NULL
) ENGINE=InnoDB;

DROP TABLE EMPLOYEES;
/* Q20. Write a SQL statement to create a table employees including columns employee_id, first_name, last_name, job_id, salary and make sure that, the employee_id
 column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, referenced by the column job_id of jobs table, can 
 contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, 
 the ON DELETE NO ACTION and the ON UPDATE NO ACTION actions will reject the deletion and any updates. */
 CREATE TABLE employees 
 ( employee_id INT UNIQUE, first_name VARCHAR(20),  last_name VARCHAR(25),
    job_id VARCHAR(10),  salary DECIMAL(8,2),
    FOREIGN KEY (job_id) REFERENCES jobs(job_id)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION
) ENGINE=InnoDB;




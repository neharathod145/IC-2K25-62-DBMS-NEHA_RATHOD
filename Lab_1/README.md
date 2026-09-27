# DBMS Assignment

## Introduction

This assignment contains 20 SQL problems based on Database Management System concepts. The questions mainly focus on table creation, table structure, constraints, keys, default values, auto-increment, foreign keys, and referential integrity.

The SQL source code for all the questions is provided in the `Assignment` file, and the output screenshots of each question are provided separately.

---

## Objective

The main objectives of this assignment are:

- To understand the `CREATE TABLE` statement.
- To learn how to define table structures and data types.
- To understand and implement different SQL constraints.
- To use `PRIMARY KEY` and `UNIQUE` constraints.
- To implement `NOT NULL`, `CHECK`, and `DEFAULT` constraints.
- To understand `AUTO_INCREMENT`.
- To create and use `FOREIGN KEY` constraints.
- To understand referential integrity.
- To implement referential actions such as `CASCADE`, `RESTRICT`, `SET NULL`, and `NO ACTION`.
- To gain practical experience in writing and executing SQL statements.

---

# Questions, Approach and Outputs

## Question 1

### Problem Statement

Create a simple table named `countries` with the columns `country_id`, `country_name`, and `region_id`.

### Approach / Algorithm

1. Use the `CREATE TABLE` statement.
2. Define the required columns.
3. Assign suitable data types to the columns.
4. Execute the SQL statement and verify the table structure.

### Time & Space Complexity

The query is a DDL operation. Standard algorithmic Big-O time and space complexity is not directly applicable. Actual execution cost depends on the DBMS implementation and storage system.

### Output

![Question 1 Output](Question%201.png)

---

## Question 2

### Problem Statement

Create a simple table named `countries` with the columns `country_id`, `country_name`, and `region_id`, according to the given table structure.

### Approach / Algorithm

1. Use the `CREATE TABLE` statement.
2. Define the required columns and their data types.
3. Apply the required column definition for `region_id`.
4. Execute the statement and verify the table structure.

### Time & Space Complexity

This is a DDL operation and standard Big-O complexity is not directly applicable. Execution depends on the DBMS implementation.

### Output

![Question 2 Output](Question%202.png)

---

## Question 3

### Problem Statement

Create the structure of a table named `dup_countries` similar to the existing `countries` table.

### Approach / Algorithm

1. Refer to the structure of the existing `countries` table.
2. Create a new table named `dup_countries`.
3. Reproduce the required column structure.
4. Verify the structure of the new table.

### Time & Space Complexity

The operation is DBMS-dependent and standard algorithmic Big-O complexity is not applicable.

### Output

![Question 3 Output](Question%203.png)

---

## Question 4

### Problem Statement

Create a duplicate copy of the `countries` table including its structure and data, with the new table name `dup_countries`.

### Approach / Algorithm

1. Use the appropriate SQL table-copying technique.
2. Create the new table `dup_countries`.
3. Copy the structure and data from the `countries` table.
4. Verify the contents of the new table.

### Time & Space Complexity

The execution cost depends on the number of records and the DBMS implementation. Space usage depends on the amount of copied table data.

### Output

![Question 4 Output](Question%204.png)

---

## Question 5

### Problem Statement

Create a table named `countries` and set the required column to `NOT NULL`.

### Approach / Algorithm

1. Use the `CREATE TABLE` statement.
2. Define the required columns.
3. Apply the `NOT NULL` constraint to the specified column.
4. Execute the statement and verify the table structure.

### Time & Space Complexity

This is a DDL operation. Standard algorithmic Big-O complexity is not directly applicable.

### Output

![Question 5 Output](Question%205.png)

---

## Question 6

### Problem Statement

Create a table named `jobs` with the columns `job_id`, `job_title`, `min_salary`, and `max_salary`, and ensure that `max_salary` does not exceed 25000.

### Approach / Algorithm

1. Create the `jobs` table.
2. Define the required columns and data types.
3. Apply a `CHECK` constraint to `max_salary`.
4. Set the condition so that `max_salary` cannot exceed 25000.
5. Execute and verify the table definition.

### Time & Space Complexity

This is a DDL constraint-definition operation. Standard algorithmic Big-O complexity is not directly applicable.

### Output

![Question 6 Output](Question%206.png)

---

## Question 7

### Problem Statement

Create a table named `countries` with the columns `country_id`, `country_name`, and `region_id`, and ensure that the specified countries are excluded according to the given condition.

### Approach / Algorithm

1. Create the required table structure.
2. Define the required columns.
3. Apply the specified condition using the appropriate SQL constraint or condition.
4. Execute and verify the result.

### Time & Space Complexity

The execution cost is DBMS-dependent and standard algorithmic Big-O complexity is not directly applicable.

### Output

![Question 7 Output](Question%207.png)

---

## Question 8

### Problem Statement

Create a table named `job_history` with the columns `employee_id`, `start_date`, `end_date`, `job_id`, and `department_id`, and ensure that `start_date` is earlier than `end_date`.

### Approach / Algorithm

1. Create the `job_history` table.
2. Define all required columns.
3. Apply a `CHECK` constraint to compare `start_date` and `end_date`.
4. Ensure that the start date is earlier than the end date.
5. Execute and verify the table structure.

### Time & Space Complexity

This is a DDL constraint operation. Standard algorithmic Big-O complexity is not directly applicable.

### Output

![Question 8 Output](Question%208.png)

---

## Question 9

### Problem Statement

Create a table named `countries` with the columns `country_id`, `country_name`, and `region_id`, and ensure that duplicate data is not allowed according to the given condition.

### Approach / Algorithm

1. Create the required table.
2. Define the required columns.
3. Apply the appropriate `UNIQUE` constraint.
4. Execute the statement and verify the constraint.

### Time & Space Complexity

The execution and storage requirements depend on the DBMS and the indexes used for enforcing uniqueness.

### Output

![Question 9 Output](Question%209.png)

---

## Question 10

### Problem Statement

Create a table named `jobs` with the columns `job_id`, `job_title`, `min_salary`, and `max_salary`. Set the default value of `job_title` as blank, `min_salary` as 8000, and `max_salary` as NULL.

### Approach / Algorithm

1. Create the `jobs` table.
2. Define the required columns and data types.
3. Apply the required `DEFAULT` values.
4. Set `job_title` to a blank value by default.
5. Set `min_salary` to 8000 by default.
6. Set `max_salary` to NULL by default.
7. Verify the resulting table structure.

### Time & Space Complexity

This is a DDL operation. Standard algorithmic Big-O complexity is not directly applicable.

### Output

![Question 10 Output](Question%2010.png)

---

## Question 11

### Problem Statement

Create a table named `countries` with the columns `country_id`, `country_name`, and `region_id`, and make `country_id` a key field that does not allow duplicate values.

### Approach / Algorithm

1. Create the `countries` table.
2. Define the required columns.
3. Declare `country_id` as the `PRIMARY KEY`.
4. Execute the statement and verify the table structure.

### Time & Space Complexity

The primary key may require index maintenance. Exact execution and storage cost depends on the DBMS and indexing implementation.

### Output

![Question 11 Output](Question%2011.png)

---

## Question 12

### Problem Statement

Create a table named `countries` with the columns `country_id`, `country_name`, and `region_id`, and make `country_id` unique and automatically incremented.

### Approach / Algorithm

1. Create the `countries` table.
2. Define the required columns.
3. Apply the `UNIQUE` constraint to `country_id`.
4. Apply `AUTO_INCREMENT` to automatically generate values.
5. Execute and verify the table structure.

### Time & Space Complexity

The operation is DBMS-dependent. Standard algorithmic Big-O complexity is not directly applicable.

### Output

![Question 12 Output](Question%2012.png)

---

## Question 13

### Problem Statement

Create a table named `countries` with the columns `country_id`, `country_name`, and `region_id`, and make the combination of `country_id` and `region_id` unique.

### Approach / Algorithm

1. Create the `countries` table.
2. Define the required columns.
3. Create a composite `UNIQUE` constraint using `country_id` and `region_id`.
4. Execute and verify the table structure.

### Time & Space Complexity

The execution and storage requirements depend on the DBMS and the composite index used to enforce uniqueness.

### Output

![Question 13 Output](Question%2013.png)

---

## Question 14

### Problem Statement

Create a table named `job_history` with the columns `employee_id`, `start_date`, `end_date`, `job_id`, and `department_id`. Ensure that an employee does not have duplicate values and create the required foreign key relationships.

### Approach / Algorithm

1. Create the `job_history` table.
2. Define all required columns.
3. Apply the required uniqueness constraint.
4. Define the required foreign key constraints.
5. Reference the appropriate parent tables.
6. Execute and verify the table structure.

### Time & Space Complexity

The execution cost is DBMS-dependent. Foreign key and unique constraints may require indexes for efficient constraint checking.

### Output

![Question 14 Output](Question%2014.png)

---

## Question 15

### Problem Statement

Create an `employees` table containing the specified employee information and ensure that the required employee and department-related combination satisfies the specified uniqueness condition.

### Approach / Algorithm

1. Create the `employees` table.
2. Define all specified employee-related columns.
3. Apply the required `UNIQUE` constraint.
4. Ensure that the specified combination of columns contains only valid unique combinations.
5. Execute and verify the table structure.

### Time & Space Complexity

The execution and storage cost depends on the DBMS and indexes used for enforcing the constraints.

### Output

![Question 15 Output](Question%2015.png)

---

## Question 16

### Problem Statement

Create an `employees` table with the specified columns and establish foreign key relationships with the `departments` and `jobs` tables.

### Approach / Algorithm

1. Create the `employees` table.
2. Define the required employee columns.
3. Define the `job_id` foreign key referencing the `jobs` table.
4. Define the `department_id` foreign key referencing the `departments` table.
5. Execute the statement and verify the foreign key relationships.

### Time & Space Complexity

Foreign key constraint creation and checking are DBMS-dependent and may involve indexes on the referenced columns.

### Output

![Question 16 Output](Question%2016.png)

---

## Question 17

### Problem Statement

Create an `employees` table with a foreign key referencing the `jobs` table and use `ON DELETE CASCADE` and `ON UPDATE RESTRICT` referential actions.

### Approach / Algorithm

1. Create the `employees` table.
2. Define the required employee columns.
3. Create the foreign key referencing `jobs`.
4. Apply `ON DELETE CASCADE`.
5. Apply `ON UPDATE RESTRICT`.
6. Execute and verify the foreign key definition.

### Time & Space Complexity

The exact execution cost depends on the DBMS implementation and the indexes used for foreign key checking.

### Output

![Question 17 Output](Question%2017.png)

---

## Question 18

### Problem Statement

Create an `employees` table with a foreign key referencing the `jobs` table and apply the specified `ON DELETE CASCADE` and `ON UPDATE RESTRICT` actions.

### Approach / Algorithm

1. Create the `employees` table.
2. Define the required columns.
3. Create the foreign key referencing `jobs`.
4. Apply the specified referential actions.
5. Execute and verify the resulting table structure.

### Time & Space Complexity

This is DBMS-dependent because foreign key and referential action processing depends on the storage engine and indexes.

### Output

![Question 18 Output](Question%2018.png)

---

## Question 19

### Problem Statement

Create an `employees` table with a foreign key referencing the `jobs` table and use `ON DELETE SET NULL` and `ON UPDATE SET NULL`.

### Approach / Algorithm

1. Create the `employees` table.
2. Define the required columns.
3. Create the foreign key referencing the `jobs` table.
4. Apply `ON DELETE SET NULL`.
5. Apply `ON UPDATE SET NULL`.
6. Execute and verify the foreign key definition.

### Time & Space Complexity

The execution cost depends on the DBMS implementation and the indexes used for maintaining referential integrity.

### Output

![Question 19 Output](Question%2019.png)

---

## Question 20

### Problem Statement

Create an `employees` table with a foreign key referencing the `jobs` table and use `ON DELETE NO ACTION` and `ON UPDATE NO ACTION`.

### Approach / Algorithm

1. Create the `employees` table.
2. Define the required columns.
3. Create the foreign key referencing the `jobs` table.
4. Apply `ON DELETE NO ACTION`.
5. Apply `ON UPDATE NO ACTION`.
6. Execute and verify the table structure.

### Time & Space Complexity

The execution cost is DBMS-dependent. Standard algorithmic Big-O complexity is not directly applicable to this DDL operation.

### Output

![Question 20 Output](Question%2020.png)

---

# Time and Space Complexity Analysis

These questions mainly involve SQL Data Definition Language (DDL) statements and database constraints rather than conventional algorithms.

Therefore, standard algorithmic Big-O time and space complexity cannot be assigned directly to most of these queries.

The actual execution time and storage requirements depend on factors such as:

- DBMS implementation
- Storage engine
- Number of records
- Indexes
- Primary and unique constraints
- Foreign key constraints
- Database size and system resources

For table creation and constraint-definition queries, the complexity is therefore considered **DBMS-dependent rather than a fixed Big-O complexity**.

---

# Sample Output

The output of each SQL statement was verified using the DBMS environment. Screenshots of the outputs are provided with the corresponding questions from Question 1 to Question 20.

---

# Learning Outcomes

After completing this assignment, the following concepts were learned and practiced:

- Creation of database tables using SQL.
- Use of the `CREATE TABLE` statement.
- Selection of appropriate data types.
- Use of `NOT NULL` constraints.
- Use of `CHECK` constraints.
- Use of `UNIQUE` constraints.
- Use of `PRIMARY KEY`.
- Use of `DEFAULT` values.
- Use of `AUTO_INCREMENT`.
- Creation of composite constraints.
- Creation and implementation of `FOREIGN KEY` constraints.
- Understanding of referential integrity.
- Understanding of foreign key relationships.
- Understanding of `CASCADE` actions.
- Understanding of `RESTRICT` actions.
- Understanding of `SET NULL` actions.
- Understanding of `NO ACTION`.
- Practical execution and verification of SQL queries.

---

# Conclusion

This assignment provided practical experience in creating and defining database tables using SQL. It helped in understanding different SQL constraints, keys, default values, auto-increment, foreign key relationships, and referential integrity.

The practical execution of these 20 questions improved the understanding of database table design and the implementation of constraints in a DBMS.

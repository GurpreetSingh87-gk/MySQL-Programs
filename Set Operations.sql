# CREATE SCHEMA EMPLOYEE_DATABASE;

# USE EMPLOYEE_DATABASE;

# CREATE TABLE EMPLOYEES_INFO
# (EMP_ID INT NOT NULL,
# EMP_NAME VARCHAR (60) NOT NULL,
# DEPARTMENT VARCHAR (60) NOT NULL;
# SALARY INT NOT NULL);

/*
INSERT INTO EMPLOYEES_INFO (EMP_ID, EMP_NAME, DEPARTMENT, SALARY) VALUES
(101, 'William', 'Finance', 25000),
(102, 'Devon', 'Electronics', 35000),
(103, 'Sarbia', 'Accounts', 22000),
(104, 'Ethan', 'Sales', 40000),
(105, 'Jemmy', 'Health', 55000);
*/

# ===================================================================================================================

# ======= Set Operations =======

-- Union:- This operator allows us to combine two table's record into one table. This operator has default feature 
--         to remove duplicate records. To apply Union operator we have to follow certain rules:-

# Rules:-
-- 1. Table must have Same Number of columns.
-- 2. Table's record must have Same Data types.
-- 3. Table columns must have Same Order.

# Syntax:-
-- Select column1 From table1
-- Union 
-- Select column2 From table2;

# Creating Two Tables Employee and Student Table:-

-- Employee Table:-

 # CREATE TABLE EMPLOYEE_TABLE
 # (EMP_ID INT NOT NULL,
 # EMP_NAME VARCHAR (60) NOT NULL);

-- Student Table:- 

 # CREATE TABLE STUDENT_TABLE
 # (STU_ID INT NOT NULL,
 # STU_NAME VARCHAR (60) NOT NULL);
 
-- Inserting Data in Employee Table:-

# INSERT INTO EMPLOYEE_TABLE VALUES 
# (101, 'Albert'),
# (102, 'Steve'),
# (103, 'Wolton'),
# (104, 'Tomson'),
# (105, 'Yansen');
 
-- Inserting Data in Student Table:-

# INSERT INTO STUDENT_TABLE VALUES
# (101, 'Matthew'),
# (102, 'Kenneth'),
# (103, 'Yansen'),
# (104, 'Tomson'),
# (105, 'Oval');

-- Applying Union command:-

# SELECT EMP_ID, EMP_NAME FROM EMPLOYEE_TABLE;
# SELECT STU_ID, STU_NAME FROM STUDENT_TABLE;

 # SELECT * FROM EMPLOYEE_TABLE, STUDENT_TABLE;
 
-- Union All:- This operator will combine two table's results in one with keeping duplicate values.

# Rule:- 
-- It will keep duplicate values.

# Syntax:-
-- Select column1 From table1
-- Union All
-- Select column2 From table2;

# SELECT EMP_ID, EMP_NAME FROM EMPLOYEE_TABLE
# UNION ALL
# SELECT STU_ID, STU_NAME FROM STUDENT_TABLE;

-- Intersect:- Usually Inersect command does not support but we can use Inner Join command instead of it.

# --> With Intersect Command:-

# Syntax for Intersect:-
-- Select column1, column2 From table1
-- Intersect
-- Select column2, column2 From table2

# SELECT EMP_ID, EMP_NAME FROM EMPLOYEE_TABLE
# INTERSECT
# SELECT STU_ID, STU_NAME FROM STUDENT_TABLE;

# --> With Inner Join Command:-

# Syntax for Inner Join:- 
-- Select Distinct table1.column1, table1.column2
-- From table1
-- Inner Join table2
-- 		On table1.column1 = table2.column1
-- 		And table1.column2 = table2.column2

# SELECT E1.EMP_ID,  E1.EMP_NAME 
# FROM EMPLOYEE_TABLE E1 
# INNER JOIN STUDENT_TABLE E2
#	 ON E1.EMP_ID = E2.STU_ID
#    AND E1.EMP_NAME = E2.STU_NAME;

-- Except:- This operator will return first table's records out of two tables (which user will give it will return that)

# Syntax:- 
-- Select column1, column2 From table1
-- Except
-- Select column1, column2 From table2

# SELECT EMP_ID, EMP_NAME FROM EMPLOYEE_TABLE
# EXCEPT 
# SELECT STU_ID, STU_NAME FROM STUDENT_TABLE;

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

# ======= Joins =======

-- Join:- It is used to combine rows of two or more tables based on related columns.

# Syntax for Inner Join:- 
-- Select table1.column1, table1.column2
-- From table1
-- Join table2
-- 		On table1.column1 = table2.column1
-- 		And table1.column2 = table2.column2

# SELECT E1.EMP_ID, E1.EMP_NAME
# FROM EMPLOYEE_TABLE E1
# JOIN STUDENT_TABLE E2
#	ON E1.EMP_ID = E2.STU_ID
#   AND E1.EMP_NAME = E2.STU_NAME;

-- Inner Join:- It will combine the result which will be same bwteen both tables. like "Tomson" 

# Syntax for Inner Join:- 
-- Select table1.column1, table1.column2
-- From table1
-- Inner Join table2
-- 		On table1.column1 = table2.column1
-- 		And table1.column2 = table2.column2

# SELECT EMP_ID, EMP_NAME
# FROM EMPLOYEE_TABLE 
# INNER JOIN STUDENT_TABLE 
#	ON EMP_ID = STU_ID
#   AND EMP_NAME = STU_NAME;
	
-- Equi Inner Join:- It is used to combine two or more table's result based on matching condition using Equal Operator (=)

# SELECT EMP_NAME, STU_NAME
# FROM EMPLOYEE_TABLE
# JOIN STUDENT_TABLE 
#	ON EMPLOYEE_TABLE.EMP_ID = STUDENT_TABLE.STU_ID;
    


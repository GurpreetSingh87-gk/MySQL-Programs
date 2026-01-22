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

# ======= Sorting and Limiting Data =======

-- Order By:- It used to sort result in ascending or descending order.

# Syntax:-
-- Select column_name 
-- From table_name
-- Order By column_name (Which want to be ordered) like (Salary)

# --> For Ascending Order:-

# SELECT * FROM EMPLOYEES_INFO
# ORDER BY SALARY;

# --> For Descending Order:-

# SELECT * FROM EMPLOYEES_INFO
# ORDER BY SALARY DESC;

# --> To Sort Multiple Columns:-

# SELECT * FROM EMPLOYEES_INFO
# ORDER BY DEPARTMENT ASC, SALARY DESC;

-- Limit:- It will limit (ristrict) number of rows returned.

# Syntax:-
-- SELECT * FROM table_name
-- LIMIT NUMBER;

# SELECT * FROM EMPLOYEES_INFO
# ORDER BY SALARY ASC
# LIMIT 2, 3;

-- Distinct:- It is used to remove duplicates records.

# Syntax:-
-- Select Distinct column_name
-- From table_name;

# SELECT DISTINCT DEPARTMENT  # Unique department will show.
# FROM EMPLOYEES_INFO;

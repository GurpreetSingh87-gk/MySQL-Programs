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

# ======= Data Modification ======= 

-- Where:- It is used to filter rows.

# SELECT * FROM EMPLOYEES_INFO
# WHERE EMP_ID = 105;

-- In:- It is use for checking multiple possible values.

# SELECT * FROM EMPLOYEES_INFO
# WHERE DEPARTMENT IN ('Health', 'Finance', 'Accounts');
  
-- Between:- It is used find data from particular range.

# SELECT * FROM EMPLOYEES_INFO
# WHERE EMP_ID BETWEEN 103 AND 105;  

-- Like:- It is use for searching or find a specific character from table pattern matching (Text Filtering).

# SELECT * FROM EMPLOYEES_INFO
# WHERE EMP_NAME LIKE 'D%';     # Find Employee Name starts from D.
# WHERE EMP_NAME LIKE '%T';     # Find Employee Name where last alphabet is T.

-- Is Null:- It is used to find empty values from table.

# SELECT * FROM EMPLOYEES_INFO
# WHERE DEPARTMENT IS NULL;

-- Is Not Null:- It is used to find value which is not empty.

# SELECT * FROM EMPLOYEES_INFO
# WHERE EMP_NAME IS NOT NULL;

-- Exists:- It is used to check if subquery returns rows.

# SELECT EMP_NAME, SALARY
# FROM EMPLOYEES_INFO E
# WHERE EXISTS (
#	SELECT 1
#	FROM EMPLOYEES_INFO
#	WHERE SALARY > E.SALARY);

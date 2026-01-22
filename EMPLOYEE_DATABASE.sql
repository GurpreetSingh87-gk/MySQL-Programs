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

# ======= Comparison Operators ========

-- Greater than (>):-

# SELECT * FROM EMPLOYEES_INFO
# WHERE SALARY > 35000;

-- Less than (<):-

# SELECT * FROM EMPLOYEES_INFO
# WHERE SALARY < 24000;

-- Greater than Equal (>=):-

# SELECT * FROM EMPLOYEES_INFO 
# WHERE SALARY >= 35000;

-- Less than Equal (<=):-

# SELECT * FROM EMPLOYEES_INFO
# WHERE SALARY <= 25000;

-- Not Equal:-

# SELECT * FROM EMPLOYEES_INFO
# WHERE SALARY != 22000;

# ===================================================================================================================

# ======= Logical Operators =======

-- And:- This operator returns only when all conditions are true.

# SELECT * FROM EMPLOYEES_INFO
# WHERE EMP_NAME = 'Devon'
# AND DEPARTMENT = 'Electronics';

-- Or:- This operator returns a value/record if at least one condition is true.

 # SELECT * FROM EMPLOYEES_INFO
 # WHERE EMP_NAME = 'Ethan' OR EMP_NAME = 'Anderson';

-- Not:- This operator returns missing record or when you want all records except for ex:- 'Finanace'

# SELECT * FROM EMPLOYEES_INFO
# WHERE NOT DEPARTMENT = 'finanace';  # Here that data will not show which you write in query like Department = 'Finanace'
# WHERE NOT DEPARTMENT = 'Water Resources';  # Here that data will not show which is not in table.

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

# ===================================================================================================================

# ======= Aggregating Data =======

-- Count():- It will return total number of rows (For Instance:- Employees)

# --> To Count Total Number of Employees in table:-

# SELECT COUNT(*) AS TOTAL_EMPLOYEES
# FROM EMPLOYEES_INFO;

# --> To Count Total Number of Departments in Department Column:-

# SELECT COUNT(*) AS TOTAL_ACCOUNTS_DEPT
# FROM EMPLOYEES_INFO
# WHERE DEPARTMENT = 'Accounts';

-- Sum():- It will return sum of rows (For Instance:- Total Salary)

# SELECT SUM(SALARY) AS TOTAL_SALARY
# FROM EMPLOYEES_INFO;

-- Average():- It will return average salary from table.

# SELECT AVG(SALARY) AS AVERAGE_SALARY
# FROM EMPLOYEES_INFO;

-- Minimum():- It will return minimum salary from table. 

# SELECT MIN(SALARY) AS LOWEST_SALARY
# FROM EMPLOYEES_INFO;

-- Maximum():- It will return maximum salary from table.

# SELECT MAX(SALARY) AS HIGHEST_SALARY
# FROM EMPLOYEES_INFO;

-- Group By():- It is use for to get same records and collect them together (group by) and apply  aggregate functions.

# --> To Count Total number of Department and Group by them:-

# SELECT DEPARTMENT, COUNT(*) AS TOTAL_EMPLYEES
# FROM EMPLOYEES_INFO
# GROUP BY DEPARTMENT;

# --> To Count total number Departments and Group by them from Department Column:-

# SELECT DEPARTMENT, COUNT(*) AS TOTAL_FINANCE_DEPT
# FROM EMPLOYEES_INFO
# WHERE DEPARTMENT = 'Finance'
# GROUP BY DEPARTMENT;

-- Having():- It is used after group by function to filter results like (Grouping those department whose employees are more than 1.

# SELECT DEPARTMENT, COUNT(*) AS TOTAL_EMPLOYEES
# FROM EMPLOYEES_INFO
# GROUP BY DEPARTMENT 
# HAVING COUNT(*) > 1;

# ===================================================================================================================

# ======= Filtering Data =======

-- Insert:- It is used to insert values or data in table.

# INSERT INTO EMPLOYEES_INFO (EMP_ID, EMP_NAME, DEPARTMENT, SALARY) VALUES
# (106, 'Anderson', 'Computer', 65000),
# (107, 'Phillip', 'Human Resources', 80000),
# (108, 'Andrew', 'Marketing', 15000),
# (109, 'George', 'Information Technology', 95000),
# (110, 'Qurtalib', 'Management', 20000),
# (111, 'Serbia', 'Health', 41000);

-- Update:- It used to update values from table.

# UPDATE EMPLOYEES_INFO
# SET EMP_NAME = 'Jemmy'
# WHERE EMP_ID = 105;

-- Delete:- It is used to remove values from table.

# DELETE FROM EMPLOYEES_INFO
# WHERE EMP_ID = 111;

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

# ===================================================================================================================

# ======= Date and Time Functions =======

-- 1. Curdate(Year-Month-Day):- This function will return Current Date.

# SELECT CURDATE();

-- 2. Curtime(Hour:Minute:Second):- This function will return Current Time.

# SELECT CURTIME();

-- 3. Now():- This function will return date and time both.

# SELECT NOW();

-- 4. Extracting Date into Year, Month, Date:-

-- (A) Year(Now()):- It will return Year only from date.

# SELECT YEAR(NOW());

-- (B) Month(Now()):- It will return Month only from date.

# SELECT MONTH(NOW());

-- (C) Date(Now()):- It will return Full Date.

# SELECT DATE(NOW());

-- 5. Extracting Time into Hour, Minute, Second:-

-- (A) Hour(Now()):- It will return Hour only from time.

# SELECT HOUR(NOW());

-- (B) Minute(Now()):- It will return Minute only from time.

# SELECT MINUTE(NOW());

-- (C) Second(Now()):- It will return Second only from time.

# SELECT SECOND(NOW());

-- 6. Day and Month By Names:-

-- (A) Dayname(Now()):- It will return Name of the Day like 'Sunday'.

# SELECT DAYNAME(NOW()); 

-- (B) Dayofmonth(Now()):- It will return Date only from full Date 21-12-2025 in Numbers like '21' December.

# SELECT DAYOFMONTH(NOW());

-- (C) Dayofyear(Now()):- It will return Total number of days in a year like '365'

# SELECT DAYOFYEAR(NOW());

# 7. Sysdate():- This function will return date and time both.

# SELECT SYSDATE();

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
    
-- Cross Join:-


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

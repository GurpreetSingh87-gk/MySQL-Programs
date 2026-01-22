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

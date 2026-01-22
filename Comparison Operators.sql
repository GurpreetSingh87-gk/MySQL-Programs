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


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

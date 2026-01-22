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

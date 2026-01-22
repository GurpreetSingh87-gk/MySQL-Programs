# ===== To Create Schema =====

# CREATE SCHEMA Student_Data;

# ===== To Create a Table =====

# USE Student_Data;
# CREATE TABLE Student_Data.Students(
# STUDENT_ID INT NOT NULL,
# STUDENT_NAME VARCHAR (60) NOT NULL,
# CLASS VARCHAR (60) NOT NULL,
# SECTION VARCHAR (60) NOT NULL
# );

# ===================================================================================================================

-- Basic SQL Queries :-

# To Insert Data into Table:-

# INSERT INTO Student_Data.Students (STUDENT_ID, STUDENT_NAME, CLASS, SECTION) VALUES 
# (101, 'Andrew', '12th', 'A'),
# (102, 'Jonny', '11th', 'B'),
# (103, 'Roger', '10th', 'C'),
# (104, 'Wilton', '9th', 'D');

# ===================================================================================================================

# To Add a New Column in Table:-

# ALTER TABLE Student_Data.Students ADD COLUMN ADDMISSION_YEAR INT NOT NULL;

# ===================================================================================================================

# To Fill Same Data in All Rows:-

# UPDATE Student_Data.Students
# SET ADDMISSION_YEAR = '2025'
# WHERE STUDENT_ID IN (101, 102, 103, 104);

# ===================================================================================================================

# To Select Perticular Column From Table:-

# SELECT STUDENT_ID, STUDENT_NAME, CLASS FROM Student_Data.Students;

# ===================================================================================================================

# To Delete a Column from Table:-

# ALTER TABLE student_data.students DROP COLUMN DOB;

# ===================================================================================================================

# To Select Whole Table:-

# SELECT * FROM Student_Data.Students;

# ===================================================================================================================

# To Update data from table:-

# UPDATE Student_Data.Students
# SET CLASS = '12th'
# WHERE STUDENT_ID = 104;

# ===================================================================================================================

# To Delete Particular Data from table:-

# DELETE FROM Student_Data.Students
# WHERE STUDENT_ID = 104;

# ===================================================================================================================

# To Insert Data Seperatly:-

# INSERT INTO Student_Data.Students (STUDENT_ID, STUDENT_NAME, CLASS, SECTION, ADDMISSION_YEAR) VALUES
# (104, 'Alisha Joe', '11th', 'E', 2025);

# ===================================================================================================================

# To Move a Column Position:-

# ALTER TABLE Students MODIFY COLUMN SECTION VARCHAR (60) NOT NULL AFTER CLASS;

# ===================================================================================================================

# To Delete Whole Table:-

# DROP DATABASE Student_Data;
-- 1. Table Creation (CREATE): Write the SQL statements to create a database named
-- “employee” and the following tables based on the provided schema:
-- ⦿ Departments
-- ⦿ Location
-- ⦿ Employees   


CREATE DATABASE employee ;
USE employee;
CREATE TABLE Departments (
department_id INT PRIMARY KEY,
 department_name Varchar(100)
);

CREATE TABLE Location ( 
location_id INT PRIMARY KEY,
Location Varchar(30)
);

CREATE TABLE Employees ( 
employee_id INT PRIMARY KEY, 
employee_name Varchar(50),
gender ENUM('M', 'F'),
Age INT, 
hire_date DATE,
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10, 2)
);  


-- 2. Table Alteration (ALTER): Consider the following scenarios and write the SQL
-- statements to alter the structure of the tables accordingly: 
-- Add a new column named "email" to the Employees table to store
-- employee email addresses.   

USE employee; 
ALTER TABLE Employees ADD COLUMN email Varchar(100); 


-- Modify the data type of the "designation" column in the Employees
-- table to support a wider range of values. 

USE employee; 
ALTER TABLE Employees MODIFY COLUMN designation Varchar(200);  

-- Drop the “age” column from the Employees table.

USE employee;
ALTER TABLE Employees 
DROP COLUMN age; 


-- Rename the “hire_date” column to “date_of_joining”.

USE employee;
ALTER TABLE Employees 
RENAME COLUMN hire_date TO date_of_joining; 

-- 3. Table Renaming (RENAME): Rewrite the SQL statements to rename the
-- following tables:
-- ⦿ Rename the "Departments" table to "Departments_Info". 

USE employee; 
RENAME TABLE Departments TO Departments_Info;

-- ⦿ Rename the "Location" table to "Locations".

USE employee;
RENAME TABLE Location TO Locations; 

-- 4. Table Truncation (TRUNCATE): Write an SQL statement to truncate the
-- Employees table. 

TRUNCATE TABLE Employees;  

-- 5. Database & Table Dropping (DROP): Write the SQL statements to drop the
-- Employees table and then the “employee” database.  

DROP TABLE Employees; 
DROP DATABASE employee; 


-- 1. Database Recreation:

-- ⦿ Drop the 'employee' database if it exists and recreate it using the
-- provided schema, ensuring that all tables are created with the
-- appropriate constraints as instructed.  

CREATE DATABASE employee;

-- 2. Departments Table:

-- ⦿ Ensure that the "department_id" uniquely identifies each department.
-- ⦿ Set up constraints on the "department_name" to avoid duplicate and null
-- entries.

USE employee; 
CREATE TABLE Departments ( 
department_id INT PRIMARY KEY,
department_name Varchar(100) NOT NULL UNIQUE
);

-- 3. Location Table:

-- ⦿ Establish a mechanism to automatically generate unique identifiers for
-- each location, ensuring that they are incremented sequentially.
-- ⦿ Implement constraints to prevent the insertion of null and duplicate
-- Locations. 

USE employee;
CREATE TABLE Location ( 
location_id INT AUTO_INCREMENT PRIMARY KEY,
locations Varchar(30) NOT NULL UNIQUE
);


-- 4. Employees Table:

-- ⦿ Guarantee that each employee has a distinct identifier.
-- ⦿ Create a restriction to ensure that the employee's name is always
-- provided.
-- ⦿ Limit the acceptable values for the "gender" field to only 'M' or 'F'.
-- ⦿ Enforce a condition to ensure that the employee's age is 18 or above.
-- ⦿ Automatically assign the current date to the "hire_date" field if not
-- Specified.

USE employee; 
CREATE TABLE Employees ( 
employee_id INT PRIMARY KEY, 
employee_name Varchar(50) NOT NULL, 
gender ENUM('M', 'F'), 
age INT CHECK(age >= 18),
hire_date DATE DEFAULT (CURRENT_DATE),
designation VARCHAR(100),
department_id INT,
location_id INT,
salary DECIMAL(10, 2)
);





  


 

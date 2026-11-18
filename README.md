# MYSQL---Assignment_1
Assignment submission 
MySQL Assignment 1: DDL Commands & Constraints

This repository contains the SQL solutions for MySQL Assignment 1, focusing on Data Definition Language (DDL) commands and database integrity constraints. The project models an employee management database comprising Departments, Location, and Employees tables.

📋 Table of Contents

Overview

Database Schema

Assignment Structure

Part 1: DDL Commands

Part 2: Constraints

Prerequisites & Setup

Usage

🔍 Overview

The goal of this assignment is to practice creating, modifying, and managing relational database schemas in MySQL, followed by enforcing data integrity rules using primary keys, foreign keys, unique constraints, check constraints, and default values.

🗄️ Database Schema

The database consists of three core entities:

Departments: Stores organizational department IDs and unique department names.

Location: Stores office/branch locations with auto-incrementing IDs.

Employees: Stores employee details, demographics, salary, hire dates, and relational mappings to departments and locations.

🛠️ Assignment Structure

Part 1: DDL Commands

Demonstrates fundamental schema manipulation operations:

CREATE: Initializes the employee database and creates the Departments, Location, and Employees tables.

ALTER: Modifies the Employees table by:

Adding an email column (VARCHAR(100)).

Expanding the designation column length to VARCHAR(255).

Dropping the age column.

Renaming hire_date to date_of_joining.

RENAME: Renames Departments to Departments_Info and Location to Locations.

TRUNCATE: Clears all records from Employees while preserving the table schema.

DROP: Removes the Employees table and drops the employee database.

Part 2: Constraints

Rebuilds the employee database with strict data integrity rules:

PRIMARY KEY & AUTO_INCREMENT: Ensures unique identification across all tables (department_id, location_id, employee_id).

NOT NULL & UNIQUE: Prevents duplicate or empty entries for department_name, location, and employee_name.

ENUM: Restricts gender values strictly to 'M' or 'F'.

CHECK: Enforces a minimum age requirement (age >= 18).

DEFAULT: Automatically populates hire_date with the current system date (DEFAULT (CURRENT_DATE)) if omitted.

FOREIGN KEY: Establishes referential integrity linking Employees to Departments and Location.

⚙️ Prerequisites & Setup

MySQL Server: Version 8.0.13 or higher is recommended.

Note: MySQL 8.0.13+ is required to support dynamic expressions like DEFAULT (CURRENT_DATE) on DATE columns.

SQL Client: MySQL Workbench, DBeaver, DataGrip, or the MySQL Command-Line Client.

🚀 Usage

Clone this repository to your local machine:

git clone https://github.com/your-username/your-repo-name.git


Open the .sql script file in your preferred MySQL client (e.g., MySQL Workbench).

Execute the queries sequentially from Part 1 through Part 2 to observe schema alterations and constraint enforcement.

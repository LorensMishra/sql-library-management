**Library Management System**


<img width="219" height="148" alt="image" src="https://github.com/user-attachments/assets/7b9bb0c7-b26e-4db2-a4e5-b39651600848" />


📚 Project Overview

A comprehensive Library Management System designed to efficiently manage library operations including book cataloging, member management, employee records, and tracking book issuances and returns. This system uses a PostgreSQL database to store and manage all library operations.

🗃️ Database Structure

**Tables Overview**

The database consists of 6 main tables:

BRANCH - Stores library branch information

EMPLOYEES - Contains library staff details

BOOKS - Maintains book inventory and details

MEMBERS - Stores library member information

ISSUED_STATUS - Tracks book issuance records

RETURN_STATUS - Records book return transactions

Entity Relationship Diagram

Refer to erd of project.jpg for the complete database schema and relationships between tables.

![erd of project](https://github.com/user-attachments/assets/36185740-37ee-47f3-ad7c-4e5bd077c4b6)


📊 Data Files

The system uses the following CSV files for data import:

books.csv - Book catalog with ISBN, titles, authors, and rental information

branch.csv - Library branch locations and details

employees.csv - Library staff records

members.csv - Library member information

issued_status.csv - Records of books issued to members

return_status.csv - Records of books returned by members

🛠️ Installation and Setup

Prerequisites

PostgreSQL database system

pgAdmin or similar database management tool

Database Setup

Create a new PostgreSQL database named library_management

Execute the SQL commands from structure of tables.sql to create all tables

Run the SQL commands from import data manually.sql to import CSV data

Alternative Data Import

You can also import CSV files manually using pgAdmin's import utility:

Right-click on each table

Select Import/Export

Choose the corresponding CSV file

Set format to CSV and enable header option

📋 SQL Files

structure of tables.sql - Contains DDL commands for creating all tables

import data manually.sql - Contains commands for importing CSV data

library data record.sql - Sample queries for data retrieval

project questions and answers.sql - Business queries with solutions

🔍 Key Features

Book Management: Complete cataloging system with rental pricing

Member Management: Comprehensive member database with tracking

Transaction Tracking: Complete history of book issuances and returns

Multi-branch Support: Manage multiple library locations

Employee Management: Staff assignment and management

📝 Sample Queries

How to create all necessary tables for a library system?
1. Creating BRANCH, EMPLOYEES, BOOKS, MEMBERS, ISSUED_STATUS, RETURN_STATUS tables
2. What are the appropriate data types for each field?
3. Using VARCHAR for IDs and text, FLOAT for prices, DATE for dates

How to handle primary keys?

1. Defining primary keys for all main tables (branch_id, emp_id, isbn, member_id, issued_id, return_id)


🖼️ Visual Documentation

image of tables.jpg - Screenshot of database table structures
![members](https://github.com/user-attachments/assets/d7778cc0-e53c-46a8-9fd2-fb6dfff5c9ca)
![members](https://github.com/user-attachments/assets/8956fbe2-1671-4d3c-8baa-6d083b451f66)
![branch](https://github.com/user-attachments/assets/79f75748-ba41-4946-a4a8-93643b689fda)
![employees](https://github.com/user-attachments/assets/75ba3ce5-4be6-4812-9d49-54f2cc74d52f)
![return_status](https://github.com/user-attachments/assets/3914770c-4142-4467-a35f-1774074f180c)
![issued Status](https://github.com/user-attachments/assets/86d9f32d-bead-4122-b405-14598dea75ba)


erd of project.jpg - Entity Relationship Diagram of the database

![erd of project](https://github.com/user-attachments/assets/57b3f089-b439-467a-bd6f-c17cd09628f4)


🚀 Usage
After setting up the database, you can:


Data of your existing table check

      1. -- View all books in the library
      SELECT * FROM books;
      2. -- View all library branches/locations
      SELECT * FROM branch;
      3. -- View all library employees/staff
      SELECT * FROM employees;
      4. -- View currently issued books (active rentals)
      SELECT * FROM issued_status;
      5. -- View all library members
      SELECT * FROM members;
      6. -- View returned books history
      SELECT * FROM return_status;

Execute queries from project questions and answers.sql for common operations

Here are the questions exactly as they appear in your SQL script:

      1. **Q 1. Create a New Book Record -- "978-1-60129-456-2', 'To Kill a Mockingbird', 'Classic', 6.00, 'yes', 'Harper Lee', 'J.B. Lippincott & Co.')"**
      
      2. **Q 2: Update an Existing Member's Address**
      
      3. **Q 3: Delete a Record from the Issued Status Table -- Objective: Delete the record with issued_id = 'IS121' from the issued_status table.**
      
      4. **Q 4: Retrieve All Books Issued by a Specific Employee -- Objective: Select all books issued by the employee with emp_id = 'E101'.**
      
      5. **Q 5: List Members Who Have Issued More Than One Book -- Objective: Use GROUP BY to find members who have issued more than one book.**
      
      6. **Q 6: Create Summary Tables: Used CTAS to generate new tables based on query results - each book and total book_issued_cnt**
      
      7. **Q 7. Retrieve All Books in a Specific Category:**
      
      8. **Q 8: Find Total Rental Income by Category:**
      
      9. **Q 9: List Members Who Registered in the Last 180 Days:**
      
      10. **Q 10 List Employees with Their Branch Manager's Name and their branch details:**
      
      11. **Q 11. Create a Table of Books with Rental Price Above a Certain Threshold 7USD:**
      
      12. **Q 12: Retrieve the List of Books Not Yet Returned**



Use library data record.sql for sample data retrieval

Modify the schema as needed in structure of tables.sql

📞 Support
For assistance with this Library Management System, refer to the SQL files provided or consult the database administrator.
mishralorens212303@gmail.com
for help also conect linkdin 
**
@lorens-mishra
**
📄 License
This project is created for educational and library management purposes.

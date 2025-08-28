-- Libraary Management System

-- Create branch table if exist then firstly remove it then after create 
CREATE TABLE BRANCH
	(
		branch_id varchar(10) PRIMARY KEY,
		manager_id varchar(12),
		branch_address varchar(30),
		contact_no varchar(34)
	);

CREATE TABLE employees
	(
		emp_id varchar(10),
		emp_name varchar(20),
		position varchar(21),
		salary float,
		branch_id varchar(21)
	);

drop table employees;
CREATE TABLE employees
	(
		emp_id varchar(10) PRIMARY KEY,
		emp_name varchar(20),
		position varchar(21),
		salary float,
		branch_id varchar(21) --FK
	);


DROP TABLE books CASCADE;
CREATE TABLE books
	(
		isbn varchar(23) PRIMARY KEY,
		book_title varchar(100),
		category VARCHAR(30),
		rental_price int,
		status varchar(60),
		author varchar(66),
		publisher varchar(45)
	);

ALTER TABLE books 
ALTER COLUMN rental_price TYPE float;


CREATE TABLE members
	(
		member_id varchar(20) primary key,
		member_name varchar(30),
		member_address varchar(45),
		reg_date date
	);

CREATE TABLE issued_status
	(
		issued_id varchar(10) PRIMARY KEY,
		issued_member_id varchar(12), --FK
		issued_book_name varchar(35),
		issued_date DATE,
		issued_book_isbn varchar(50) -- FK
		issued_emp_id varchar(65) --FK
	);

ALTER TABLE issued_status 
ALTER COLUMN issued_member_id TYPE VARCHAR(60);


ALTER TABLE issued_status 
ALTER COLUMN issued_book_name TYPE VARCHAR(100);


CREATE TABLE return_status
	(
		return_id varchar(10) primary key,
		issued_id varchar(10),
		return_book_name varchar(55),
		return_date DATE,
		return_book_isbn varchar(20)
	);

-- FOREIGN KEY
ALTER TABLE issued_status 
DROP CONSTRAINT IF EXISTS issued_status;

ALTER TABLE issued_status 
ADD CONSTRAINT fk_members
FOREIGN KEY (issued_member_id)
REFERENCES members(member_id);

-- FOREIGN KEY
ALTER TABLE issued_status 
DROP CONSTRAINT IF EXISTS fk_books;
ALTER TABLE issued_status 
ADD CONSTRAINT fk_books
FOREIGN KEY (issued_book_isbn)
REFERENCES books(isbn);


-- FOREIGN KEY
ALTER TABLE issued_status 
DROP CONSTRAINT IF EXISTS fk_employees;
ALTER TABLE issued_status 
ADD CONSTRAINT fk_employees
FOREIGN KEY (issued_emp_id)
REFERENCES employees(emp_id);

ALTER TABLE employees
ADD CONSTRAINT fk_branch
FOREIGN KEY (branch_id)
REFERENCES branch(branch_id);

ALTER TABLE return_status
ADD CONSTRAINT fk_issued_status
FOREIGN KEY	(issued_id)
REFERENCES issued_status(issued_id);





/*
-- Create a temporary table
CREATE TEMP TABLE temp_books AS 
SELECT * FROM books WHERE false;

-- Copy data into temporary table
COPY temp_books (isbn, book_title, category, rental_price, status, author, publisher) 
FROM 'D:/SQL/Library-System-Management---P2-main/books.csv' WITH CSV HEADER;

-- Insert or update from temporary table
INSERT INTO books (isbn, book_title, category, rental_price, status, author, publisher)
SELECT isbn, book_title, category, rental_price, status, author, publisher
FROM temp_books
ON CONFLICT (isbn) DO NOTHING;  -- Skip duplicates

-- Or update existing records:
-- ON CONFLICT (isbn) DO UPDATE SET
--     book_title = EXCLUDED.book_title,
--     category = EXCLUDED.category,
--     rental_price = EXCLUDED.rental_price,
--     status = EXCLUDED.status,
--     author = EXCLUDED.author,
--     publisher = EXCLUDED.publisher;

-- Clean up
DROP TABLE temp_books;

SELECT * FROM BOOKS;

*/

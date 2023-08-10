-----------------------------CREATE TABLES-----------------------------------------

ALTER DATABASE "Challenge 9" SET datestyle TO "ISO, MDY";
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS departments;

-- 1. Create a Titles table
CREATE TABLE Titles (
    title_id VARCHAR(10) NOT NULL,
    Title VARCHAR(25) NOT NULL,
    PRIMARY KEY (title_id)
);
-- 2. Create a Departments table
CREATE TABLE Departments (
    dept_no VARCHAR(10) NOT NULL,
    dept_name VARCHAR(25) NOT NULL,
    PRIMARY KEY (dept_no)
);
-- 3. Create a Employees table
CREATE TABLE Employees (
    emp_no INTEGER NOT NULL,
	emp_title_id VARCHAR(10) NOT NULL,
    birth_date DATE NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	sex VARCHAR(5) NOT NULL,
	hire_date DATE NOT NULL,
    PRIMARY KEY (emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);
-- 4. Create a Dept_emp table
CREATE TABLE Dept_emp (
    emp_no INTEGER NOT NULL,
	dept_no VARCHAR(10) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);
-- 5. Create a Salaries table
CREATE TABLE Salaries (
    emp_no INTEGER NOT NULL,
	salary INTEGER NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
-- 6. Create a Dept_manager table
CREATE TABLE Dept_manager (
    dept_no VARCHAR(10) NOT NULL,
	emp_no INTEGER NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
SELECT * FROM employees

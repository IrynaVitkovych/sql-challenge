--- create departments table
CREATE TABLE departments (
		dept_no Varchar (5) PRIMARY KEY,
		dept_name Varchar (20)
);
SELECT * FROM departments;

--- create titles table 
CREATE TABLE titles (
		title_id VARCHAR (5) PRIMARY KEY,
	    title VARCHAR (20) NOT NULL
);
SELECT * FROM titles;

--- create employees table
CREATE TABLE employees (
		emp_no INT PRIMARY KEY,
		emp_title_id VARCHAR (5) NOT NULL,
		birth_date DATE NOT NULL,
		first_name VARCHAR (20) NOT NULL,
		last_name VARCHAR (20) NOT NULL,
		sex VARCHAR (1) NOT NULL,
		hire_date DATE NOT NULL,
		FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)	
);
SELECT * FROM employees;	

--- create departments employees table
CREATE TABLE dept_emp (
		emp_no INT,
		dept_no VARCHAR (5) NOT NULL,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no), 
		PRIMARY KEY	(emp_no, dept_no)
);
SELECT * FROM dept_emp;	

--- create department manager table
CREATE TABLE dept_manager (
		dept_no VARCHAR (5) NOT NULL,
		emp_no INT,
		FOREIGN KEY (dept_no) REFERENCES departments(dept_no), 
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
		PRIMARY KEY	(dept_no,emp_no)
);
SELECT * FROM dept_manager;	

--- create salaries table
CREATE TABLE salaries (
		emp_no INT PRIMARY KEY,
		salary INT,
		FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
SELECT * FROM salaries;







	
	
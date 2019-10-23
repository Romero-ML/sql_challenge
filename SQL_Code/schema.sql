create table departments (
	dept_no varchar,
	dept_name varchar
	);

create table dept_emp (
	emp_no varchar,
	dept_no varchar,
	from_date varchar,
	to_date varchar,
	);

create table dept_manager (
	dept_no varchar,
	emp_no varchar,
	from_date varchar,
	to_date varchar,
	);

create table employees (
	emp_no INT,
	birth_date varchar,
	first_name varchar,
	last_name varchar,
	gender varchar,
	hire_date varchar,
	);
	
create table salaries (
	emp_no varchar,
	salary INT,
	from_date varchar,
	to_date varchar,
	);

create table titles (
	emp_no INT,
	title varchar,
	from_date varchar,
	to_date varchar,
	);

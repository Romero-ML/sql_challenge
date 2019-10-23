--Question 1
SELECT salaries.emp_no, first_name, last_name, gender,salary FROM employees
INNER JOIN salaries ON employees.emp_no = salaries.emp_no
--Question 2
SELECT emp_no, first_name, last_name, hire_date FROM employees
WHERE left(hire_date, 4) = '1986'
-- Question 3
SELECT departments.dept_no, dept_name, employees.emp_no, last_name, first_name, from_date, to_date FROM departments
INNER JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;
--Question 4
SELECT employees.emp_no, last_name, first_name, dept_name FROM departments
INNER JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no;
-- Question 5
select * FROM employees
WHERE left(last_name, 1) = 'B'
AND first_name ='Hercules'
--Question 6
SELECT dept_name, last_name, first_name, dept_emp.emp_no FROM departments
INNER JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales'
--Question 7
SELECT dept_name, last_name, first_name, dept_emp.emp_no FROM departments
INNER JOIN dept_emp ON departments.dept_no = dept_emp.dept_no
INNER JOIN employees ON dept_emp.emp_no = employees.emp_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development'
--Question 8
SELECT last_name, count(last_name) FROM employees
group by last_name 
order by count desc

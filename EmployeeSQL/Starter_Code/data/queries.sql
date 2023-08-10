----------------1.List the employee number, last name, first name, sex, and salary of each employee.----
/*
SELECT employees.emp_no, last_name, first_name, sex, salary
FROM employees
JOIN salaries
ON (employees.emp_no = salaries.emp_no);
*/
---------------2.List the first name, last name, and hire date for the employees who were hired in 1986.---
/*
SELECT first_name,last_name,hire_date 
FROM employees 
WHERE hire_date >= '1986-01-01'
AND hire_date < '1986-12-31'
*/
---------------3.List the manager of each department along with their department number, department name, employee number, last name, and first name.--------------
/*
SELECT dm.dept_no,ds.dept_name,e.emp_no,e.last_name,e.first_name 
FROM dept_manager AS dm
	JOIN departments AS ds
	ON (dm.dept_no=ds.dept_no)
		JOIN employees AS e
		ON (e.emp_no=dm.emp_no)
*/
----------------4.List the department number for each employee along with that employee’s employee number, last name, first name, and department name.---------
/*
SELECT ds.dept_no,e.emp_no,e.last_name,e.first_name,ds.dept_name
FROM employees AS e
	JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
		JOIN departments AS ds
		ON (de.dept_no = ds.dept_no)
*/
-------------5.List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
/*
SELECT first_name,last_name,sex FROM employees WHERE (first_name='Hercules') AND last_name LIKE 'B%'  
*/
-------------6.List each employee in the Sales department, including their employee number, last name, and first name.
/*
SELECT emp_no,last_name, first_name FROM employees
WHERE emp_no IN (SELECT emp_no FROM dept_emp WHERE dept_no='d007')
*/	
------------7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.---------
/*
SELECT ds.dept_no,e.emp_no,e.last_name,e.first_name,ds.dept_name
FROM employees AS e
	JOIN dept_emp AS de
	ON (e.emp_no = de.emp_no)
		JOIN departments AS ds
		ON (de.dept_no = ds.dept_no)
WHERE de.dept_no='d007' OR de.dept_no='d005'
*/
-----------8.List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
/*
SELECT last_name, COUNT(last_name) AS freq 
FROM employees
GROUP BY last_name
ORDER BY freq DESC
*/

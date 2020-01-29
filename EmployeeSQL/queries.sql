-- Query 1

SELECT emp.emp_no, emp.last_name, emp.first_name, emp.gender, sal.salary 
FROM employees AS emp
JOIN salaries AS sal
	ON emp.emp_no = sal.emp_no
	;

--Query 2

SELECT first_name, last_name
FROM employees
WHERE hire_date LIKE '1986%';

--Query 3

SELECT dep.dept_no, dep.dept_name, depma.emp_no, emp.last_name, emp.first_name, depma.from_date, depma.to_date
FROM departments AS dep
JOIN dept_manager AS depma 
	ON dep.dept_no = depma.dept_no
JOIN employees AS emp
	ON depma.emp_no = emp.emp_no;
	
--Query 4

SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
JOIN dept_emp AS depem
	ON emp.emp_no = depem.emp_no
JOIN departments AS dep
	ON depem.dept_no = dep.dept_no;
	
--Query 5

SELECT first_name, last_name
FROM employees
WHERE first_name LIKE 'Hercules' AND last_name LIKE 'B%';

--Query 6

SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
JOIN dept_emp AS depem
	ON emp.emp_no = depem.emp_no
JOIN departments AS dep
	ON depem.dept_no = dep.dept_no
WHERE dept_name = 'Sales';

--Query 7

SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name
FROM employees AS emp
JOIN dept_emp AS depem
	ON emp.emp_no = depem.emp_no
JOIN departments AS dep
	ON depem.dept_no = dep.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--Query 8 

SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;

--employee ID: 499942
SELECT emp.emp_no, emp.last_name, emp.first_name, dep.dept_name, tit.title
FROM employees AS emp
JOIN dept_emp AS depem
	ON emp.emp_no = depem.emp_no
JOIN departments AS dep
	ON depem.dept_no = dep.dept_no
JOIN titles AS tit
	ON emp.emp_no = tit.emp_no
WHERE emp.emp_no = '499942';
--CLEVER 
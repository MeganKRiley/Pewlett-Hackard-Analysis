SELECT emp_no, first_name, last_name
FROM employees

SELECT title, from_date, to_date
FROM titles

-- joining employees and titles
SELECT employees.emp_no,
	employees.first_name,
	employees.last_name,
	titles.title,
	titles.from_date,
	titles.to_date
INTO retirement_titles
FROM employees
INNER JOIN titles
ON employees.emp_no = titles.emp_no
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY employees.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (retirement_titles.emp_no) retirement_titles.emp_no,
retirement_titles.first_name,
retirement_titles.last_name,
retirement_titles.title

INTO unique_titles
FROM retirement_titles
ORDER BY retirement_titles.emp_no, retirement_titles.to_date DESC;

SELECT title,
	COUNT (emp_no)
INTO retiring_titles	
FROM unique_titles
GROUP BY unique_titles.title
ORDER BY count DESC;

SELECT emp_no, first_name, last_name, birth_date
FROM employees

SELECT from_date, to_date
FROM dept_emp

SELECT title
FROM titles

-- Creating a list of employees eligible for potential mentorship program
SELECT DISTINCT ON (e.emp_no) e.emp_no,
 e.first_name,
 e.last_name,
 e.birth_date,
 de.from_date,
 de.to_date,
 ti.title
INTO mentorship
FROM employees as e
INNER JOIN dept_emp as de
 ON (e.emp_no = de.emp_no)
INNER JOIN titles as ti
 ON (e.emp_no = ti.emp_no)
WHERE (de.to_date = '9999-01-01')
AND (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY e.emp_no;
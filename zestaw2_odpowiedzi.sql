SELECT * FROM departments;
SELECT * FROM employees;
SELECT * FROM jobs;
SELECT * FROM locations;

-- 26
SELECT * FROM jobs WHERE title LIKE 'HR%';
-- 27
SELECT * FROM jobs WHERE title LIKE 'Software%' 
OR title LIKE '%Software%'
OR title LIKE '%Software';
-- 28
SELECT AVG(min_salary) AS average_min_salary_sales FROM jobs
WHERE title LIKE 'Sales%';
-- 29
SELECT * FROM jobs WHERE title LIKE '_u%';
-- 30
SELECT * FROM employees WHERE first_name LIKE 'A%'
AND LENGTH(first_name) >= 5; 
-- 31
SELECT * FROM employees WHERE first_name LIKE 'E%a';
-- 32
SELECT * FROM employees WHERE email NOT LIKE '%gmail.com'
ORDER BY email ASC;
-- 33
SELECT * FROM employees WHERE first_name IN ("Adam", "Alice", "Tom");
-- 34
SELECT * FROM employees WHERE department_id NOT IN (2,3,5);
-- 35
SELECT * FROM jobs WHERE min_salary < 3000 OR min_salary > 8000;
-- 36
SELECT * FROM employees WHERE department_id NOT IN (2,3)
AND hire_date BETWEEN '2015-01-01 00:00:00' AND '2016-12-31 00:00:00';
-- 37
SELECT * FROM employees WHERE birth_date LIKE '1990%'
ORDER BY birth_date ASC;
-- 38
SELECT CONCAT(first_name, " ", last_name, " - ", birth_date) AS employee
FROM employees WHERE job_id = 3;
-- 39
SELECT e.first_name, e.last_name, d.department_name
FROM employees AS e
INNER JOIN departments AS d
ON e.department_id = d.id;
-- 40
SELECT l.city, d.department_name
FROM locations AS l
LEFT JOIN departments AS d
ON d.location_id = l.id
ORDER BY l.city;
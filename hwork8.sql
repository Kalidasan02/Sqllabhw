SELECT e.id, e.name, d.department_name
FROM employees e
LEFT JOIN departments d
ON e.id = d.emp_id;
SELECT e.id, e.name, d.department_name
FROM employees e
INNER JOIN departments d
ON e.id = d.emp_id;
SELECT e.id, e.name, d.department_name
FROM employees e
RIGHT JOIN departments d
ON e.id = d.emp_id;

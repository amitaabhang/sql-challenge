--4. List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

select
E.emp_id,
E.first_name,
E.last_name,
D.dept_name 
from employees E
JOIN department_employee DE
on E.emp_id = DE.emp_no
JOIN departments D 
on DE.dept_num =D.dept_no
order by E.emp_id
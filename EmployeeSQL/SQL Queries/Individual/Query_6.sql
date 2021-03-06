--6. List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

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
where TRIM(D.dept_name)='Sales'
order by E.emp_id
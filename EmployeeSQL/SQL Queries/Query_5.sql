--5. List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."


select 
first_name,
last_name,
sex
from employees
where TRIM(first_name)='Hercules'
and last_name like 'B%'
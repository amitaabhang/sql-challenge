--2. List first name, last name, and hire date for employees who were hired in 1986.
select 
first_name AS FirstName,
last_name AS LastName,
hire_date AS HireDate
from employees 
where EXTRACT(YEAR FROM hire_date)=  '1986'
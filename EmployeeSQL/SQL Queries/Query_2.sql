select 
first_name AS FirstName,
last_name AS LastName,
hire_date AS HireDate
from employees 
where EXTRACT(YEAR FROM hire_date)=  '1986'
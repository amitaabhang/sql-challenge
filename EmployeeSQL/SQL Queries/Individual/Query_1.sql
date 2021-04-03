select 
Emp.emp_id As EmployeeNumber,
Emp.last_name AS LastName,
Emp.first_name AS FirstName,
Emp.sex AS Sex,
Emp_sal.salary  AS Salary
from 
employees Emp 
Left Join employee_salary Emp_Sal
on Emp.emp_id = Emp_Sal.emp_no
order by Emp.emp_id
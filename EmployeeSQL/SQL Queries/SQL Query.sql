
--1. List the following details of each employee: 
--employee number, last name, first name, sex, and salary.

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

--2. List first name, last name, and hire date for employees who were hired in 1986.

select 
first_name AS FirstName,
last_name AS LastName,
hire_date AS HireDate
from employees 
where EXTRACT(YEAR FROM hire_date)=  '1986'

--3. List the manager of each department with the following information:
-- department number, department name, the manager's employee number, last name, first name.

select
D.dept_no,
D.dept_name,
E.emp_id,
E.first_name, 
E.last_name
from department_manager DM
JOIN  departments D on DM.dept_num = D.dept_no 
JOIN employees E on DM.dept_mgr = E.emp_id

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

--5. List first name, last name, and sex for employees whose first name is "Hercules" 
--and last names begin with "B."

select 
first_name,
last_name,
sex
from employees
where TRIM(first_name)='Hercules'
and last_name like 'B%'

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

--7. List all employees in the Sales and Development departments,
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
where TRIM(D.dept_name) in ('Sales','Development')
order by E.emp_id

--8. In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

select 
last_name,
count(*)
from employees 
group by last_name 
order by count(*) desc
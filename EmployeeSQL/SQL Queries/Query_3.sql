select
D.dept_no,
D.dept_name,
E.emp_id,
E.first_name, 
E.last_name
from department_manager DM
JOIN  departments D on DM.dept_num = D.dept_no 
JOIN employees E on DM.dept_mgr = E.emp_id

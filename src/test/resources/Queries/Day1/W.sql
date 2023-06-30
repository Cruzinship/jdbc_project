select FIRST_NAME, LAST_NAME from EMPLOYEES;

select * from EMPLOYEES;

select Employees.first_name, Employees.last_name, JOB_HISTORY.start_date
from EMPLOYEES, JOB_HISTORY;

select FIRST_NAME, SALARY from EMPLOYEES where FIRST_NAME = 'James';

SELECT * from EMPLOYEES
where SALARY<5000 and MANAGER_ID =114;

SELECT FIRST_NAME, LAST_NAME, SALARY from EMPLOYEES
where  SALARY <= 6000 and SALARY <= 4000;
SELECT * FROM EMPLOYEES;
-- display all information of where first name is david
SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'David';

-- '' --> Whatever is inside of this is case sensitive.

SELECT * FROM EMPLOYEES
WHERE FIRST_NAME = 'David' AND LAST_NAME = 'Lee';

--display firstname, lastname, salary where firstname is Peter
SELECT FIRST_NAME, LAST_NAME, SALARY
from EMPLOYEES
WHERE FIRST_NAME = 'Peter';

-- display all information from employee where salary is bigger than 6000
SELECT *
FROM EMPLOYEES
WHERE SALARY >= 6000;

-- Display email of who is making less than 5000
SELECT EMAIL
from EMPLOYEES
WHERE SALARY < 5000;

--display all info from employee who is making more than 7000 and department id is 60
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID = 60 and SALARY > 7000;

--display all info from employees where salary equals or more than 3000 and salary is equals or less than 7000
SELECT * FROM EMPLOYEES
WHERE SALARY >= 3000 AND SALARY <= 7000;

SELECT * FROM EMPLOYEES
WHERE SALARY BETWEEN 3000 AND 7000;

-- Display all information from employees who is working as IT_PROG on MK_Man
SELECT * FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG' OR JOB_ID = 'MK_MAN';

SELECT * FROM EMPLOYEES
    WHERE JOB_ID IN('IT_PROG','MK_MAN');

--display all info employee id 121, 142, 154, 165, 187

SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID = '121' OR EMPLOYEE_ID ='142' OR EMPLOYEE_ID = '154' OR EMPLOYEE_ID = '165' OR EMPLOYEE_ID = '187';

-- solution 2
SELECT * FROM EMPLOYEES
WHERE EMPLOYEE_ID IN  (121, 142, 154, 165, 187);

-- Display all information where country id is US and IT
SELECT * FROM COUNTRIES
WHERE COUNTRY_ID IN ('US', 'IT');

--display all information except where country id is US and IT
SELECT * FROM COUNTRIES
WHERE COUNTRY_ID NOT IN ('US', 'IT');

-- IS NULL
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NULL;

SELECT  * FROM  EMPLOYEES
WHERE MANAGER_ID IS NULL;

-- IS NOT NULL
SELECT * FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL;



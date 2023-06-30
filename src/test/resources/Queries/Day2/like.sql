/*
  - Percent % --> for matching any sequence of characters. (0 or more)
  - Underscore _ --> for matching any single characters

  -contains
  -startswith
  -endswith
 */

--display all employees where first_name startswith B
SELECT * FROM EMPLOYEES
where FIRST_NAME LIKE 'B%';

--display all employees where first_name startswith B but it has 5 characters
SELECT * FROM EMPLOYEES
where FIRST_NAME LIKE 'B____';

--display 5 letter firstname from employees where middle char is z
SELECT * FROM  EMPLOYEES
where FIRST_NAME LIKE '__z__';

--display firstname endswith 'e';
SELECT * FROM EMPLOYEES
where FIRST_NAME LIKE '%e';
--display all employees  where job id contains IT
SELECT * FROM EMPLOYEES where JOB_ID LIKE '%IT%';

--display all information where firstname startswith H and ending with l
SELECT * FROM EMPLOYEES WHERE FIRST_NAME like 'H%l';

SELECT * FROM COUNTRIES WHERE COUNTRY_NAME like 'A%a';

SELECT * FROM COUNTRIES WHERE COUNTRY_NAME like '%b%';

SELECT * FROM COUNTRIES WHERE COUNTRY_NAME like '____a%';

Select distinct city from LOCATIONS
where city like 'O%';
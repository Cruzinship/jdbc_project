--your manager is asking all jobs and their average salary
select * from EMPLOYEES;

select distinct JOB_ID from EMPLOYEES;

--get me average salary for IT_PROG

SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'IT_PROG';

--get me average salary for AC_ACCOUNT
SELECT AVG(SALARY) FROM EMPLOYEES
WHERE JOB_ID = 'AC_ACCOUNT';

--
SELECT JOB_ID, AVG(SALARY), COUNT(*), SUM(SALARY), MIN(SALARY),MAX(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID;

--Display how many departments we have in each location
SELECT * FROM DEPARTMENTS;
SELECT LOCATION_ID, count(*)
FROM DEPARTMENTS
GROUP BY LOCATION_ID
ORDER BY count(*) Desc;

SELECT LOCATION_ID, count(*)
FROM DEPARTMENTS
GROUP BY LOCATION_ID
ORDER BY 2 ASC ;

--Display how many countries we have in each regions
SELECT * FROM COUNTRIES;
SELECT * FROM REGIONS;

SELECT REGION_ID, count(*)
FROM COUNTRIES
GROUP BY REGION_ID;

--order them based on number of countries in desc
SELECT REGION_ID, count(*)
FROM COUNTRIES
GROUP BY REGION_ID
ORDER BY Count(*) desc ;

--get me total salary for each department from employees table.
SELECT DEPARTMENT_ID, sum(SALARY), count(*)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID;
--without null
SELECT DEPARTMENT_ID, sum(SALARY), count(*)
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID;

--display JobIds where their avg salary is more than 5k
-- Having works like where but after GroupBy statement
SELECT JOB_ID, AVG(SALARY)
FROM EMPLOYEES
GROUP BY JOB_ID
HAVING AVG(SALARY) > 5000;

-- display department where their average salary is more than 6k
SELECT DEPARTMENT_ID, ROUND(AVG(SALARY))
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > 6000
ORDER BY 2 ASC;

--IQ --> Display duplicate(more than one) firstname from employees table
SELECT FIRST_NAME
FROM EMPLOYEES
WHERE FIRST_NAME IS NOT NULL
GROUP BY FIRST_NAME
HAVING COUNT(*)>1;

--display department id where employees count is bigger than 5
SELECT DEPARTMENT_ID, COUNT(*)
FROM EMPLOYEES
GROUP BY DEPARTMENT_ID
HAVING Count(*) > 5
ORDER BY 2 DESC;

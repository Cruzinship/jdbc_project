/*
1.Column aliases --> it is temporary name to shwo in display

2. Table aliases which we will learn later
Employees -- E
 */


--the query below second column name is "ROUND(AVG(SALARY))" which is not nice.
SELECT DEPARTMENT_ID, ROUND(AVG(SALARY)) AS "Average salary"
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > 6000
ORDER BY 2 ASC;

SELECT DEPARTMENT_ID, ROUND(AVG(SALARY)) AS Average_salary
FROM EMPLOYEES
WHERE DEPARTMENT_ID IS NOT NULL
GROUP BY DEPARTMENT_ID
HAVING AVG(SALARY) > 6000
ORDER BY 2 ASC;

--manager is asking display annual salary for all employees as annual_salary
SELECT FIRST_NAME, SALARY*12 as Annual_salary
FROM EMPLOYEES;
--NOTE --> we are just displaying and nothing will change it DB

-------------------------STRING MANIPULATION-----------------

/*
 CONCAT
  --JAVA --> first_name + " " + last_name
  --SQL --> || first_name || ' ' || last_name
 */

SElECT FIRST_NAME || ' ' || LAST_NAME as full_name
FROM EMPLOYEES;

-- add @cydeo.com to all the emails in the employee table
SELECT EMAIL || '@cydeo.com' FROM EMPLOYEES;

SELECT concat(EMAIL, '@cydeo.com') FROM EMPLOYEES;
-- lowercase
SELECT lower(email|| '@cydeo.com') FROM EMPLOYEES;
-- upper
SELECT upper(email|| '@cydeo.com') FROM EMPLOYEES;
-- INITCAP
-- it makes the first letter uppercase
SELECT INITCAP(EMAIL|| '@cydeo.com') FROM EMPLOYEES;
--LENGTH --Counts the number of characters in name column
SELECT email, length(email) as email_length FROM EMPLOYEES;

--display all employee where first length equals 6
SELECT FIRST_NAME from EMPLOYEES
WHERE length(FIRST_NAME) = 6;

--another solution
SELECT FIRST_NAME From  EMPLOYEES
WHERE FIRST_NAME LIKE '------';
-- how many question ??
SELECT COUNT(*) FROM EMPLOYEES
WHERE FIRST_NAME like '______';
-- display initial from firstname and lastname --> S.K ----N.K

--SUBSTR(columName,beginningIndex,numberOfChar)
select * from EMPLOYEES;
select substr(FIRST_NAME,0,1)||'.'||substr(LAST_NAME,0,1)||'.' as initals From EMPLOYEES;


SELECT FIRST_NAME, substr(FIRST_NAME,-2,2) FROM EMPLOYEES;

select FIRST_NAME,substr(FIRST_NAME,-3) FROM EMPLOYEES;
/*
 - if beginning index is 0, it is treated as 2
 - if the beginning index negative, it will start from backwards
 - if we dont specify number of char it will work till the end
 */



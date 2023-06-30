
/*
 AGGREGATE FUNCTIONS - MULTI ROWS - GROUP FUNCTIONS
 - count ==> it will count rows
 - max --> it will max value
 - min --> it will min value
 - sum --> it will give total value
 -- avg --> it will give average value
 Aggregate functions takes multi row and return one result
 All of them ignore null values.
 */
 --how many departments are there?
 SELECT * FROM DEPARTMENTS;
SELECT COUNT(*) FROM DEPARTMENTS;

-- How many locations we have?
SELECT * FROM LOCATIONS;
SELECT  COUNT(*) FROM LOCATIONS;

SELECT * FROM EMPLOYEES;

SELECT COUNT(DEPARTMENT_ID)
FROM EMPLOYEES;

--TASK:
-- how many different firstname we have?
SELECT COUNT(distinct FIRST_NAME)
FROM EMPLOYEES;

--how many employees working as IT_PROG or SA_REP
SELECT COUNT(*)
FROM EMPLOYEES
where JOB_ID IN ('IT_PROG', 'SA_REP');

--max
SELECT MAX(SALARY * 12)
FROM EMPLOYEES;

--min
SELECT MIN(SALARY)
FROM EMPLOYEES;

--avg
SELECT AVG(SALARY)
FROM EMPLOYEES;

SELECT ROUND(AVG(SALARY)) FROM EMPLOYEES;
SELECT ROUND(AVG(SALARY),1) FROM EMPLOYEES;
SELECT ROUND(AVG(SALARY),2) FROM EMPLOYEES;
SELECT ROUND(AVG(SALARY),3)FROM EMPLOYEES;
SELECT ROUND(AVG(SALARY),4) FROM EMPLOYEES;
SELECT ROUND(AVG(SALARY),6) FROM  EMPLOYEES;

--Sum
SELECT SUM(SALARY) FROM EMPLOYEES;


SELECT count(COUNTRY_NAME) from COUNTRIES
where COUNTRY_NAME like 'r%';


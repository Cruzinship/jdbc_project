--Display all information who is making max salary
SELECT max(SALARY) from EMPLOYEES; --24000

-- if we know max salary can we find who is getting it?

SELECT *
FROM EMPLOYEES
WHERE SALARY = 24000;

-- dynamic result

SELECT *
FROM EMPLOYEES
WHERE SALARY = (SELECT max(SALARY) from EMPLOYEES);

-- Task: Give me all information who is getting min salary
 --min salary
SELECT MIN(SALARY)
FROM EMPLOYEES;

 --who i making min salary
 SELECT
     * FROM  EMPLOYEES
where SALARY = (Select MIN(SALARY) FROM EMPLOYEES);

Select MAX(SALARY) FROM EMPLOYEES where Salary <24000;

--display all information who is getting second highest salary?
Select *
FROM EMPLOYEES
where SALARY = (Select MAX(SALARY) FROM EMPLOYEES where Salary <24000);

-- Task: Display all information who is getting more than average?
SELECT ROUND(AVG(SALARY))
FROM EMPLOYEES;
-- Not dynamic
SELECT *
FROM EMPLOYEES
WHERE SALARY > 6462;
-- Dynamic
SELECT *
FROM EMPLOYEES
WHERE SALARY > (SELECT (AVG(SALARY))
                FROM EMPLOYEES);
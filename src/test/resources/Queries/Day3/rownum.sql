SELECT * FROM EMPLOYEES;

SELECT * FROM EMPLOYEES
WHERE ROWNUM<11;

-- Display all information from employees who is getting first 5 highest salary
-- BAD PRACTICE
-- IT is getting data before order them based on salary
--and cut the list from line 6 then it tries to order them between 5 rows
SELECT *
FROM EMPLOYEES
WHERE ROWNUM < 6
ORDER BY SALARY ASC;

--
SELECT * FROM EMPLOYEES ORDER BY SALARY DESC;
-- Correct answer
-- Using ordered by salary desc employees table as an input.
-- after FROM keyword then cutting fist 5 rowNum
SELECT *
FROM (SELECT * FROM EMLPOYEES ORDER BY SALARY DESC)
Where ROWNUM < 6;

-- display all information of who is getting the 5th highest salary
SELECT Distinct SALARY FROM EMPLOYEES ORDER BY SALARY DESC;
--first we need to find what is the 5th highest salary
SELECT MIN(SALARY) From (SELECT Distinct SALARY FROM EMPLOYEES ORDER BY SALARY DESC)
where ROWNUM < 6; --13000
--who is making 5th highest salary?
SELECT * FROM EMPLOYEES
    WHERE SALARY = 13000;

--who is making 5th highest salary?
SELECT * FROM EMPLOYEES
  WHERE SALARY = (SELECT MIN(SALARY) From (SELECT Distinct SALARY FROM EMPLOYEES ORDER BY SALARY DESC) WHERE ROWNUM < 6);

-- IQ how do you find who is making 37th highest salary?
-- for the Nth highest salary formula it is RowNum < N+1
-- for the 37th highest salary RowNum < 37 + 1 = 38

SELECT * FROM EMPLOYEES
WHERE SALARY = (SELECT MIN(SALARY) From (SELECT Distinct SALARY FROM EMPLOYEES ORDER BY SALARY DESC) WHERE ROWNUM < 38);

-- HW display all information for who is getting 3rd lowest salary
Select DISTINCT SALARY FROM EMPLOYEES ORDER BY SALARY ASC;

SELECT  * FROM EMPLOYEES
WHERE SALARY =  (SELECT MAX(SALARY) From (SELECT Distinct SALARY FROM EMPLOYEES ORDER BY SALARY ASC) WHERE ROWNUM < 4);



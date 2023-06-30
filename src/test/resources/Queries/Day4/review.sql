--display all information who is getting 3rd lowest salary
SELECT *
FROM EMPLOYEES
ORDER BY SALARY asc;

SELECT * FROM (SELECT DISTINCT * FROM EMPLOYEES ORDER BY SALARY asc)
WHERE ROWNUM < 4;

SELECT *
FROM EMPLOYEES where SALARY = (SELECT max(SALARY) FROM (SELECT DISTINCT * FROM EMPLOYEES ORDER BY SALARY asc)
                      WHERE ROWNUM < 4);

--Who is making 46th lowest salary dynamically
SELECT Distinct SALARY FROM EMPLOYEES ORDER BY SALARY ASC;

SELECT MAX(SALARY) FROM (SELECT Distinct SALARY FROM EMPLOYEES ORDER BY SALARY Asc)
where ROWNUM < 47;

SELECT * FROM EMPLOYEES
where SALARY = (SELECT MAX(SALARY) FROM (SELECT Distinct SALARY FROM EMPLOYEES ORDER BY SALARY asc)
                where ROWNUM < 47);



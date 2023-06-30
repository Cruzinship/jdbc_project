SELECT * FROM EMPLOYEES;

/*
Select NAME from CITY
where POPULATION >= 120000 AND COUNTRYCODE = 'USA';

Select  * From city
where ID = 1661;

Select * From City
where COUNTRYCODE = 'JPN';

Select City, State from STATION;

The MOD() function returns the remainder of a number divided by another number.

Select Distinct City from Station
WHERE MOD(ID,2)=0 ORDER BY CITY ASC;

 */
Select length(FIRST_NAME) from (select Distinct FIRST_NAME from EMPLOYEES order by length(FIRST_NAME) desc);

select Distinct length(FIRST_NAME) from EMPLOYEES order by length(FIRST_NAME) desc;
--  gets the largest number
select  Distinct EMPLOYEE_ID, length(FIRST_NAME) from EMPLOYEES
where length(FIRST_NAME) = (Select Distinct length(FIRST_NAME) from (select distinct FIRST_NAME from EMPLOYEES order by length(FIRST_NAME) desc )where ROWNUM <= 1);

-- gets the largest
select  Distinct  EMPLOYEE_ID, length(FIRST_NAME) from EMPLOYEES
    WHERE length(FIRST_NAME) = (Select Distinct length(FIRST_NAME)from (select distinct FIRST_NAME from EMPLOYEES order by length(FIRST_NAME) asc ) where ROWNUM <=1)

Select count(EMPLOYEE_ID) from EMPLOYEES
GROUP BY DEPARTMENT_ID;

-- If using and or OR make sure to always put what you're relating it to once more Example below
Select distinct city from LOCATIONS
where city like 'A%' OR CITY like 'E%' or CITY like 'I%'or CITY like 'O%' or CITY like 'U%'
order by CITY asc;

Select distinct city from LOCATIONS
where city like 'E%';
Select distinct city from LOCATIONS
where city like 'I%';
Select distinct city from LOCATIONS
where city like 'O%';
Select distinct city from LOCATIONS
where city like 'U%';
-- one of the hardest things ive ever done
Select Distinct CITY from LOCATIONS
Where LOWER(SUBSTR(City,length(CITY),  1)) NOT IN ('a', 'e', 'i', 'o', 'u');

SELECT DISTINCT CITY FROM LOCATIONS
WHERE UPPER(SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('A','E','I','O','U');
SELECT DISTINCT CITY FROM LOCATIONS
WHERE (SUBSTR(city,1,1)) NOT IN ('A','E','I','O','U') and (SUBSTR(CITY, LENGTH(CITY), 1)) NOT IN ('a','e','i','o','u');
/*
 Select Distinct City From Station
where (City like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or city like 'U%')
       AND (city like '%a' or city like '%e' or city like '%i' or city like '%o' or city like '%u');

 Select Distinct City From Station
WHERE upper(SUBSTR(CITY,1,1)) NOT IN ('A','E','I','O','U');


Employee Salaries
Select name
from Employee
where salary > 2000 and months < 10
order by employee_id Asc;

Placements
 Select S.name
from Students S
Join Friends F on S.ID = F.ID
Join Packages P1 on S.ID = P1.ID
Join Packages P2 on F.Friend_ID = P2.ID
where P2.Salary > P1.Salary
Order by P2.Salary;

Higher Than 75 Marks
Select Name from Students
where  Marks > 75
order By substr(name,-3),ID;

avg Population
Select Round(Avg(Population)) From City;

japan population
Select Sum(Population) from City
where CountryCode = 'JPN';

Population Density Difference
 Select Max(Population)- Min(Population)
from City;

 Select Distinct City
from Station
where City like '%a' or City like '%e' or City like '%i' or City like '%o' or City like '%u';


Select Case when( A + B <= C or A + C <= B or B + C <= A) then 'Not A Triangle'
when(A=B And B=C ) then 'Equilateral'
when(A=B or B=C or A=C) then 'Isosceles'
when(A!=B or B!=C or B!=C) then 'Scalene'
End
From Triangles;

 The WHEN keyword is used liked the If statement in java but with different reason. The WHEN keyword seems to need to be within a body Defined by the
 CASE keyword,  And within here you will set condition for whatever data you are looking to retrieve. Once retrieved you can then use the THEN keyword to
 print this data in the console and also give it a new value to be printed as. Dont forget when using Case you must include End at the end of it all
 and this occurs before you list where the data is From. There is also an Else you can use if you wish to print rest of data as a less unsorted Category


select concat(concat(Name,'('),concat(SUBSTR(Occupation,1,1),')'))
from OCCUPATIONS
order by Name;

select Concat('There are a total of ',Concat(count(Occupation),concat(' ',concat (LOWER(Occupation),'s.'))))
from OCCUPATIONS
group by Occupation
order by count(Occupation),Occupation;

 Concat at least in oracle syntax is pretty insane. Concat is used exactly how it sounds. Its used to add String to number or number to number or
 string to string.

 Select Max(Salary * Months), count(*)
From Employee
where (Salary * Months) = (Select Max(Salary * Months) from Employee);


Select round(sum(LAT_N),2), round(sum (LONG_W),2)
from Station;

Select round(sum(LAT_N),4) from Station
where LAT_N > 38.7880 And LAT_N < 137.2345;

Select Sum(Population)
from  City
where District like 'California';

Select Avg(Population)
from City
where District like 'California';

Select count(*)// this star is used to count the amount of Cities their are
from City
where Population > 100000;

Select Round(Max(LAT_N),4)
from Station
where LAT_N < 137.2345;

 SELECT ROUND(LONG_W,4)
FROM STATION
WHERE LAT_N = (SELECT MAX(LAT_N) FROM STATION WHERE LAT_N < 137.2345);

Aggreagate functions are simple being full of Keywords such as Max, Count, Min, Sum and some more

 */
Select round(Sum(SALARY),1) from Employees
where Salary > 3870 And Salary < 17887;

SELECT Count(DEPARTMENT_ID)
from EMPLOYEES
group by DEPARTMENT_ID;

SELECT * from EMPLOYEES;

SELECT FIRST_NAME, LAST_NAME, J.JOB_TITLE, E.SALARY
from EMPLOYEES E join JOBS J on J.JOB_ID = E.JOB_ID
where SALARY > 10;
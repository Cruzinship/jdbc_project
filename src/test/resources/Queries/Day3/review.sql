select * from EMPLOYEES;

--Task: how many locations we have in for each country

select COUNTRY_ID, count(*)
from LOCATIONS
group by COUNTRY_ID;

-- order them based country_id adc

select COUNTRY_ID, count(*)
from LOCATIONS
group by COUNTRY_ID
order by COUNTRY_ID ASC;

-- what if i want to see only US, UK and CA
select COUNTRY_ID, count(*)
from LOCATIONS
where COUNTRY_ID in ('US', 'UK', 'CA')
group by COUNTRY_ID
order by COUNTRY_ID ASC;

--display where location count is bigger than 2

select COUNTRY_ID, count(*)
from LOCATIONS
where COUNTRY_ID in ('US', 'UK', 'CA')
group by COUNTRY_ID
having count(*) > 2
order by COUNTRY_ID ASC;

--Task2: Display all employees salary in following format as column name Employees_salary
SELECT FIRST_NAME || ' makes ' || SALARY AS Employees_salary
FROM EMPLOYEES


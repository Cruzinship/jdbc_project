-- SELECT * FROM EMPLOYEES;
/*
 it show different values from query result based provided column
 */
SELECT FIRST_NAME FROM EMPLOYEES;
-- It removes duplicates and returns remaining results
SELECT Distinct FIRST_NAME From EMPLOYEES;

-- it will check each row to filter different columns --> * --> all columns
SELECT DISTINCT  * FROM EMPLOYEES;

select job_id from JOBS;
-- since primary key cannot be duplicate it gives the same result with distinct
select distinct JOB_ID from JOBS;

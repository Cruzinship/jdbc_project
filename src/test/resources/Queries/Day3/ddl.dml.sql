-- DDL -- CREATE DROP ALTER TRUNCATE

/*
 create table syntax
  create table TableName(
 colName1 DataType Constrains,
 colName2 DataType Constrains(optional)
 colName3 DataType Constraints,
 ...
 );
 */
--- CREATE TABLE ---
CREATE TABLE scrumTeam(
    emp_id INTEGER PRIMARY KEY,
    first_name varchar(30) not null,
    last_name varchar(20) not null,
    job_title varchar(20),
    salary integer
);
SELECT * FROM SCRUMTEAM;

--- DML --- = SELECT INSERT UPDATE DELETE
/*
 INSERT INTO tableName(column1, column2,...)
 VALUES(value1,value2...)
 */
 INSERT into SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
 VALUES (1,'Severus','Snape', 'Tester', 130000);

INSERT into SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (2,'Harold','Finch', 'Developer', 140000);

INSERT into SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (3,'Phoebe','Buffay', 'Scrum Master', 90000);

INSERT into SCRUMTEAM(emp_id, first_name, last_name, job_title, salary)
VALUES (4,'Michael','Scofield', 'PO', 150000);

-- save changes so that other people, connections can get the updates
commit;

/*
 UPDATE table_name
 SET column1 = value1
 column2 = value 2, ...
 WHERE condition;
 */

UPDATE scrumTeam
SET SALARY = SALARY+5000;

UPDATE scrumTeam
SET SALARY = 110000
WHERE EMP_ID = 3;

commit work;
/*
 DELETE FROM table_name
 WHERE condition
 */

DELETE FROM scrumTeam
WHERE EMP_ID = 4;

commit;
-- CRUD
--CREATE (INSERT)
--READ(SELECT)
--UPDATE(UPDATE)
--DELETE(DELETE)

-- AlTER

--ADD NEW COLUMN
ALTER TABLE SCRUMTEAM ADD GENDER varchar(10);

Select * From SCRUMTEAM;

UPDATE SCRUMTEAM SET GENDER = 'male'
where EMP_ID = 1;

UPDATE SCRUMTEAM set gender = 'male'
where EMP_ID = 2;

UPDATE SCRUMTEAM set gender = 'female'
where EMP_ID = 3;
--RENAME THE COLUMN
ALTER table scrumTeam RENAME COLUMN salary TO annual_salary;

--Drop Column

ALTER TABLE SCRUMTEAM DROP COLUMN GENDER;

-- Rename Table
ALTER TABLE SCRUMTEAM RENAME to agileteam;

SELECT  * from AGILETEAM;

-- TRUNCATE
Truncate TABLE agileteam;

-- DROP TABLE
DROP TABLE AGILETEAM;
/*
 IQ -- What is the difference between TRUNCATE and DROP
 Truncate = It will delete table content, but keep around the table unlike Drop
 DROP - it will delete all content and table itself or row
 */

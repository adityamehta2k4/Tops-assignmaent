USE companyDB;

DROP TABLE IF EXISTS Worker;

CREATE TABLE Worker (
    WORKER_ID INT PRIMARY KEY,
    FIRST_NAME VARCHAR(50),
    LAST_NAME VARCHAR(50),
    SALARY INT,
    JOINING_DATE DATETIME,
    DEPARTMENT VARCHAR(50)
);

INSERT INTO Worker (WORKER_ID, FIRST_NAME, LAST_NAME, SALARY, JOINING_DATE, DEPARTMENT)
VALUES
(1, 'Monika', 'Arora', 100000, '2014-02-20 09:00:00', 'HR'),
(2, 'Niharika', 'Verma', 80000, '2014-06-11 09:00:00', 'Admin'),
(3, 'Vishal', 'Singhal', 300000, '2014-02-20 09:00:00', 'HR'),
(4, 'Amitabh', 'Singh', 500000, '2014-02-20 09:00:00', 'Admin'),
(5, 'Vivek', 'Bhati', 500000, '2014-06-11 09:00:00', 'Admin'),
(6, 'Vipul', 'Diwan', 200000, '2014-06-11 09:00:00', 'Account'),
(7, 'Satish', 'Kumar', 75000, '2014-01-20 09:00:00', 'Account'),
(8, 'Geetika', 'Chauhan', 90000, '2014-04-11 09:00:00', 'Admin');

SELECT * FROM Worker;

USE companyDB;

-- 1. Print all Worker details ordered by FIRST_NAME (ASC) and DEPARTMENT (DESC)
SELECT *
FROM Worker
ORDER BY FIRST_NAME ASC, DEPARTMENT DESC;

-- 2. Print details for Workers with first names “Vipul” and “Satish”
SELECT *
FROM Worker
WHERE FIRST_NAME IN ('Vipul', 'Satish');

-- 3. Print details of Workers whose FIRST_NAME ends with 'h' and has 6 alphabets
SELECT *
FROM Worker
WHERE FIRST_NAME LIKE '_____h';   -- 5 underscores + 'h' = 6 characters

-- 4. Print details of Workers whose SALARY lies between 100000 and 300000
SELECT *
FROM Worker
WHERE SALARY BETWEEN 100000 AND 300000;

-- 5. Fetch duplicate records (matching some fields, e.g., SALARY)
SELECT SALARY, COUNT(*) AS dup_count
FROM Worker
GROUP BY SALARY
HAVING COUNT(*) > 1;

-- 6. Show the top 6 records of the table
SELECT *
FROM Worker
LIMIT 6;   -- For MySQL / PostgreSQL
-- For SQL Server: SELECT TOP 6 * FROM Worker;

-- 7. Fetch departments that have less than 5 people
SELECT DEPARTMENT, COUNT(*) AS headcount
FROM Worker
GROUP BY DEPARTMENT
HAVING COUNT(*) < 5;

--  8. Show all departments with the number of people in them
SELECT DEPARTMENT, COUNT(*) AS headcount
FROM Worker
GROUP BY DEPARTMENT;

-- 9. Print the employees having the highest salary in each department
SELECT w.*
FROM Worker w
JOIN (
  SELECT DEPARTMENT, MAX(SALARY) AS max_salary
  FROM Worker
  GROUP BY DEPARTMENT
) m
  ON w.DEPARTMENT = m.DEPARTMENT
 AND w.SALARY = m.max_salary;

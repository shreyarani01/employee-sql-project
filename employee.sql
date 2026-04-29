CREATE DATABASE IF NOT EXISTS employee_table;
USE employee_table;
CREATE TABLE employee(
EmpId int PRIMARY KEY,
FirstName varchar(50),
LastName varchar(50),
Department varchar(50),
Salary int,
HireDate date
);
INSERT INTO employee
(EmpId,FirstName,LastName ,Department,Salary,HireDate)
VALUES
(101,"Alice","Johnson","IT",6500,'2020-03-15'),
(102,"Mark","Riveria","HR",4800,'2019-07-22'),
(103,"Sophia","Lee","Finance",7200,'2021-01-10'),
(104,"Daniel","Kim","IT",5800,'2018-11-05'),
(105,"Emma","Brown","Marketing",5300,'2022-04-18'),
(106,"Liam","Patel","Finance",6900,'2020-09-29'),
(107,"Olivia","Gracia","HR",4600,'2017-06-30'),
(108,"Noah","Thompsun","IT",7500,'2023-02-12'),
(109,"Ava","Martinez","Marketing",5100,'2019-12-02'),
(110,"Ethan","Davis","Finance",8000,'2016-05-04');
SELECT* FROM employee;

SELECT FirstName,LastName,Salary FROM employee;

SELECT *FROM employee
where Department = "IT";

SELECT *FROM employee
where Salary > 6000;

SELECT *FROM employee
ORDER BY Hiredate DESC;

SELECT DISTINCT Department
FROM employee;

SELECT *FROM employee
where FirstName like 'A%';

SELECT * FROM employee
WHERE Salary > 4000 AND Salary < 7000;

SELECT avg(salary)
FROM employee;

SELECT Department, Count(*) AS NumberofEmployees
FROM employee
Group by Department
HAVING Count(*)>3;

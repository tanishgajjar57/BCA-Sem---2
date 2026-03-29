Select * from student_marks

--Part – A 

--1. Find the total number of students. 
select count(sname) from student_marks;

--2. Find the total marks scored by all students. 
select sum(marks) from student_marks;

--3. Find the average marks of all students. 
select avg(marks) from student_marks;

--4. Find the minimum marks scored by any student. 
select min(marks) from student_marks;

--5. Find the maximum marks scored by any student. 
select max(marks) from student_marks;


--Part – B 
--Aggregate Functions with GROUP BY and GROUP BY Having Clause 
--Perform the following queries on the above-given table: 
select * from employee2;

--1. Display the Highest, Lowest, Total, and Average salary of all employees & label the columns Maximum, 
   --Minimum, Total_Sal and Average_Sal, respectively.
   SELECT MAX(SALARY) AS MAXIMUM , MIN(SALARY) AS MINIMUM, SUM(SALARY) AS TOTAL_SAL,AVG(SALARY) AS AVERAGE_SAL FROM EMPLOYEE2;

--2. Find total number of employees of EMPLOYEE table. 
    SELECT COUNT(EID) FROM EMPLOYEE2;

--3. Retrieve maximum salary from IT department. 
    SELECT MAX(SALARY) FROM EMPLOYEE2 GROUP BY DEPARTMENT HAVING DEPARTMENT='IT';

--4. Count total number of cities of employee without duplication. 
    SELECT COUNT(DISTINCT CITY) FROM EMPLOYEE2;

--5. Display city with the total number of employees belonging to each city. 
    SELECT COUNT(ENAME),CITY FROM EMPLOYEE2 GROUP BY CITY;

--6. Display city having more than one employee. 
    SELECT CITY,COUNT(CITY) FROM EMPLOYEE2 GROUP BY CITY HAVING COUNT(CITY)>1;

--7. Give total salary of each department of EMPLOYEE table. 
    SELECT DEPARTMENT,SUM(SALARY) FROM EMPLOYEE2 GROUP BY DEPARTMENT;

--8. Give average salary of each department of EMPLOYEE table without displaying the respective department name. 
    SELECT AVG(SALARY) FROM EMPLOYEE2 GROUP BY DEPARTMENT;

--9. Give minimum salary of employee who belongs to Ahmedabad. 
    SELECT MIN(SALARY) FROM EMPLOYEE2 GROUP BY CITY HAVING CITY='AHMEDABAD';

--10.  List the departments having total salaries more than 50000 and located in city Rajkot. 
    SELECT DEPARTMENT , SUM(SALARY) FROM EMPLOYEE2 GROUP BY CITY,DEPARTMENT HAVING SUM(SALARY)>50000 AND CITY='RAJKOT';


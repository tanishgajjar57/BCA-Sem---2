
SELECT * FROM EMPLOYEES;

SELECT * FROM EMPMASTER;

--Perform the following queries on the above-given table:

--1. Display all the employees whose name starts with “m” and 4th character is “h”. 
SELECT * FROM EMPLOYEES WHERE ENAME LIKE 'M__H%';

--2. Find the value of 3 raised to 5. Label the column as output. 
SELECT POWER(5,3) ;

--3. Write a query to subtract 20 days from the current date. 
SELECT DATEADD(DAY,-20,GETDATE());

--4. Write a query to display name of employees whose name starts with “j” and contains “n” in their  name. 
SELECT * FROM EMPLOYEES WHERE ENAME LIKE 'J%N%';

--5. Display 2nd to 9th character of the given string “SQL Programming”. 
SELECT SUBSTRING('SQL PROGRAMMING',2,9);

--6. Display name of the employees whose city name ends with “ney” &contains six characters. 
SELECT ENAME FROM EMPLOYEES WHERE CITY LIKE '%NEY' AND CITY LIKE '______';

--7. Write a query to convert value 15 to string. 
SELECT CHAR('15');

--8. Add department column with varchar(20) to Employees table. 
ALTER TABLE EMPLOYEES ADD DEPARTMENT VARCHAR(20);

--9. Set the value of department to Marketing who belongs to London city. 
UPDATE EMPLOYEES SET DEPARTMENT='MARKETING' WHERE CITY='LONDON';

--10. Display all the employees whose name ends with either “n” or “y”. 
SELECT * FROM EMPLOYEES WHERE ENAME LIKE '%[NY]';

--11. Find smallest integer value that is greater than or equal to 63.1, 63.8 and -63.2. 
SELECT FLOOR(63.1),FLOOR(63.8),FLOOR(-63.2);

--12. Display all employees whose joining date is not available. 
SELECT * FROM EMPLOYEES WHERE JOININGDATE IS NULL;

--13. Display name of the employees in capital letters and city in small letters. 
SELECT UPPER(ENAME),LOWER(CITY) FROM EMPLOYEES;

--14. Change the data type of Ename from varchar(30) to char(30). 
ALTER TABLE EMPLOYEES ALTER COLUMN ENAME CHAR(30);

--15. Display city wise maximum salary. 
SELECT CITY,MAX(SALARY) FROM EMPLOYEES GROUP BY CITY;

--16. Produce output like <Ename> works at <city> and earns <salary>. 
SELECT ENAME,CITY,SALARY FROM EMPLOYEES;

--17. Find total number of employees whose salary is more than 5000. 
SELECT COUNT(FIRSTNAME) FROM EMPLOYEES WHERE SALARY > 5000;

--18. Write a query to display first 4 & last 3 characters of all the employees. 
SELECT SUBSTRING(ENAME,1,4) FROM EMPLOYEES

--19. List the city having total salaries more than 15000 and employees joined after 1st January, 2014. 
SELECT CITY FROM EMPLOYEES GROUP BY CITY,SALARY,JOININGDATE HAVING SUM(SALARY)>15000 AND JOININGDATE > '01-JANUARY-2024';

--20. Write a query to replace “u” with “oo” in Ename. 
SELECT REPLACE(ENAME,'U','OO') FROM EMPLOYEES;

--21. Display city with average salaries and total number of employees belongs to each city. 
SELECT CITY,AVG(SALARY),COUNT(*) FROM EMPLOYEES GROUP BY CITY;

--22. Display total salaries paid to female employees. 
SELECT SUM(SALARY) FROM EMPLOYEES GROUP BY GENDER HAVING GENDER='FEMALE';

--23. Display name of the employees and their experience in years. 
SELECT ENAME,DATEDIFF(YEAR,JOININGDATE,GETDATE()) FROM EMPLOYEES;

--24. Remove column department from employees table. 
ALTER TABLE EMPLOYEES DROP COLUMN DEPARTMENT;

--25. Update the value of city from sydney to null. 
UPDATE EMPLOYEES SET CITY = NULL WHERE CITY='SYDNEY';

--26. Retrieve all the Employee’s Name, Salary & Joining date. 
SELECT ENAME,SALARY,JOININGDATE FROM EMPLOYEES;

--27. Find out combine length of Ename & Gender. 
SELECT LEN(ENAME),LEN(GENDER) FROM EMPLOYEES;

--28. Find the difference between highest & lowest salary. 
SELECT (MAX(SALARY)-MIN(SALARY)) FROM EMPLOYEES;

--29. Rename a column from Ename to FirstName. 
SP_RENAME 'EMPLOYEES.ENAME','FIRSTNAME','COLUMN';

--30. Rename a table from Employees to EmpMaster.
SP_RENAME 'EMPLOYEES','EMPMASTER';
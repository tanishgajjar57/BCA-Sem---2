SELECT * FROM STUDENT_DATA;

--Part – A 


--1. Display the Highest, Lowest SPI of all students & label the columns Maximum, Minimum respectively. 
SELECT MAX(SPI) AS MAXIMUM,MIN(SPI) AS MINIMUM FROM STUDENT_DATA;

--2. Find total number of students of student table. 
SELECT COUNT(SNAME) FROM STUDENT_DATA;

--3. Retrieve maximum SPI from BCA department. 
SELECT DEPARTMENT,MAX(SPI) FROM STUDENT_DATA GROUP BY DEPARTMENT HAVING DEPARTMENT='BCA';

--4. Count total number of cities of students without duplication. 
SELECT COUNT(DISTINCT CITY) FROM STUDENT_DATA;

--5. Display city with the total number of students belonging to each city. 
SELECT CITY,COUNT(SNAME) FROM STUDENT_DATA GROUP BY CITY;

--Part – B 


--6. Display city having more than one student. 
select city,count(sid) from STUDENT_data 
group by city
having count(sid) > 1;

--7. Give total SPI of each department of student table. 
select department,sum(spi) as total_SPI from student_data
group by department


--8. Give average SPI of each department of student table without displaying the respective department name. 
select department,avg(spi) as total_SPI from student_data
group by department

--9. Give minimum SPI of student who belongs to Ahmedabad. 
select min(spi) from student_data
group by city
having city='ahmedabad';

--10. List the departments having total SPI more than 15. 
select department,sum(spi) from student_data
group by department 
having sum(spi) >15;

--Part – C 


--11. Display department having more than one student. 
select department ,count(*) from student_data
group by department
having count(*) >1;

--12. Find total number of students from MCA department. 
select department ,count(*) from student_data
group by department
having department='mca';

--13. Retrieve maximum SPI from BBA department. 
select department ,max(spi) from student_data
group by department
having department='bba';

--14. Count total number of department of students table without duplication. 
select department ,count(*) from student_data
group by department;

--15. List the departments having total number of students more than one. 
select department ,count(*) from student_data
group by department
having count(*) >1;


CREATE TABLE Student
(
    Rno INT PRIMARY KEY,
    Name VARCHAR(20),
    Branch VARCHAR(10)
);

INSERT INTO Student (Rno, Name, Branch) VALUES
(101, 'Raju', 'CE'),
(102, 'Amit', 'CE'),
(103, 'Sanjay', 'ME'),
(104, 'Neha', 'EC'),
(105, 'Meera', 'EE'),
(106, 'Mahesh', 'ME');


CREATE TABLE Result
(
    Rno INT,
    SPI DECIMAL(3,1)
);

INSERT INTO Result (Rno, SPI) VALUES
(101, 8.8),
(102, 9.2),
(103, 7.6),
(104, 8.2),
(105, 7.0),
(107, 8.9);


CREATE TABLE Employee1
(
    EmployeeNo VARCHAR(5) PRIMARY KEY,
    Name VARCHAR(20),
    ManagerNo VARCHAR(5)
);

INSERT INTO Employee1 (EmployeeNo, Name, ManagerNo) VALUES
('E01', 'Tarun', NULL),
('E02', 'Rohan', 'E02'),
('E03', 'Priya', 'E01'),
('E04', 'Milan', 'E03'),
('E05', 'Jay', 'E01'),
('E06', 'Anjana', 'E04');

--Part – A 


--1. Combine information from student and result table using cross join or Cartesian product. 
select student.rno, student.name, student.Branch, result.SPI
from student cross join result;

--2. Display Rno, Name, Branch and SPI of CE branch’s student only. 
select student.rno, student.name, student.Branch, result.SPI
from student inner join result
on student.rno = result.rno
where branch='ce';

--3. Display Rno, Name, Branch and SPI of other than EC branch’s student only. 
select student.rno, student.name, student.Branch, result.SPI
from student inner join result
on student.rno = result.rno
where branch!='ec';

--4. Display average result of each branch. 
select student.branch,avg(result.spi) as AVGSPI
from student inner join result
on student.rno = result.rno
group by branch;

--5. Display average result of each branch and sort them in ascending order by SPI. 
select student.branch,avg(result.spi) as AVGSPI
from student inner join result
on student.rno = result.rno
group by branch
order by avg(result.spi) asc

--Part – B 


--6. Display average result of CE and ME branch. 
select student.branch,avg(result.spi) as AVGSPI
from student inner join result
on student.rno = result.rno
group by branch
having student.branch='ce' or student.branch='me';

--7. Perform the left outer join on Student and Result tables. 
select student.rno, student.name, student.Branch, result.SPI
from student left outer join result
on  student.rno = result.rno

--8. Perform the right outer join on Student and Result tables. 
select student.rno, student.name, student.Branch, result.SPI
from student right outer join result
on  student.rno = result.rno

--9. Perform the full outer join on Student and Result tables.  
select student.rno, student.name, student.Branch, result.SPI
from student full outer join result
on  student.rno = result.rno

--10. Retrieve the names of employee along with their manager’s name from the Employee table. 
select e.name as employee ,m.name as manager
from Employee1 e inner join Employee1 m
on e.ManagerNo=m.EmployeeNo;
    

--Part – C 


--11. Display maximum result of each branch. 
select student.branch,max(result.spi) as MAXSPI
from student inner join result
on student.rno = result.rno
group by branch;

--12. Display minimum result of each branch. 
select student.branch,min(result.spi) as MINSPI
from student inner join result
on student.rno = result.rno
group by branch;

--13. Display name of student whose result is not generated. 
select student.rno, student.name, student.Branch, result.SPI
from student left outer join result
on student.rno = result.rno
where result.SPI is null;

--14. Display overall average result. 
select avg(spi) from result

--15. Display Rno, Name, Branch and SPI of those students whose SPI greater than 8.
select student.rno, student.name, student.Branch, result.SPI
from student inner join result
on student.rno = result.rno
where result.spi>8
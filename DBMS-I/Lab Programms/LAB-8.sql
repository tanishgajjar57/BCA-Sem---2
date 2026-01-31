select * from student_master


--Part – A 


--1. Add two more columns City VARCHAR (20) NULL and Backlog INT NOT NULL. 
alter table student
add city varchar(20) null , backlog int not null;

--2. Change the size of NAME column of student from VARCHAR (25) to VARCHAR (35). 
alter table student
alter column name varchar(35);

--3. Change the data type DECIMAL to INT in CPI Column. 
alter table student
alter column cpi int;

--4. Rename Column Enrollment No to ENO. 
exec sp_rename 'student.student' , 'ENO';

--5. Delete Column City from the STUDENT table. 
alter table student
drop column city;

--6. Change name of table STUDENT to STUDENT_MASTER.
exec sp_rename 'student' , 'STUDENT_MASTER';



---Part – B 


--7. Remove Column Backlog from the table. 
alter table student_master
drop column backlog;

--8. Change Constraint of Name Column from NULL to NOT NULL. 
alter table student_master
alter column name varchar(35) not null;

--Part – C 


--9. Rename Column Birthdate to BDate. 
exec sp_rename 'student_master.birthdate' , 'bdate';

--10. Change the datatype of ENO Column from VARCHAR (20) to VARCHAR (12).
alter table student_master
alter column eno varchar(12);


CREATE TABLE Employee (
    EmpId INT,
    EmpName VARCHAR(30),
    Salary DECIMAL(10,2),
    JoinDate DATETIME
);

-- Part A – ALTER TABLE (ADD Columns):

-- Add a column Department of type VARCHAR(20) to the Employee table.
alter table employee
add department varchar(20);

-- Add a column Email of type VARCHAR(40).
alter table employee
add Email varchar(40);

-- Add two columns City VARCHAR(20) and State VARCHAR(20) in a single query.
alter table employee
add City varchar(20) , state varchar(20);

-- Add a column Experience of type INT.
alter table employee
add Experience int;

-- Add a column Gender of type VARCHAR(10).
alter table employee
add Gender varchar(10);

select * from employee


-- Part B – ALTER TABLE (MODIFY / CHANGE Data Type):

-- Change the datatype of EmpName from VARCHAR(30) to VARCHAR(50).
alter table employee
alter column empname varchar(50);

-- Change the datatype of Salary from DECIMAL(10,2) to DECIMAL(12,2).
alter table employee
alter column salary decimal(12,2);

-- Change the datatype of JoinDate from DATETIME to DATE.
alter table employee
alter column joindate date;

-- Change the datatype of Department from VARCHAR(20) to VARCHAR(30).
alter table employee
alter column department varchar(30);

-- Change the datatype of Email from VARCHAR(40) to VARCHAR(60).
alter table employee
alter column email varchar(60);


-- Part C – ALTER TABLE (RENAME Column):

-- Rename column EmpId to EmployeeId.
exec sp_rename 'employee.empid' , 'EmployeeId';

-- Rename column EmpName to EmployeeName.
exec sp_rename 'employee.empname' , 'EmployeeName';

-- Rename column JoinDate to JoiningDate.
exec sp_rename 'employee.joindate' , 'JoiningDate';

-- Rename column Salary to MonthlySalary.
exec sp_rename 'employee.Salary' , 'MonthlySalary';

-- Rename column Experience to TotalExperience.
exec sp_rename 'employee.Experience' , 'TotalExperience';

-----------bye byeeeee------------------------
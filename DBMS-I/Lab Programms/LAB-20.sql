
-- --------------------------------------PART-A--------------------------------------

CREATE TABLE Computer(
    RollNo INT,
    Name VARCHAR(20)
);

CREATE TABLE Electrical(
    RollNo INT,
    Name VARCHAR(20)
);

INSERT INTO Computer VALUES
(101,'Ajay'),
(105,'Haresh'),
(107,'Mahesh'),
(115,'Manish');

INSERT INTO Electrical VALUES
(109,'Ajay'),
(115,'Manish');

-- --------------------------------------PART-B--------------------------------------


--1. Display the name of students who is either in Computer or in Electrical. 
select name from Computer
union 
select name from Electrical

--2. Display the name of students who is either in Computer or in Electrical including duplicate data. 
select name from Computer
union all
select name from Electrical

--3. Display name of students who is in both Computer and Electrical. 
select name from Computer
intersect 
select name from Electrical

--4. Display name of students who are in Computer but not in Electrical. 
select name from Computer
except 
select name from Electrical

--5. Display name of students who are in Electrical but not in Computer. 
select name from Electrical
except 
select name from Computer

--6. Display all the details of students who are either in Computer or in Electrical. 
select * from Computer
union 
select * from Electrical

--7. Display all the details of students who are in both Computer and Electrical.
select * from Computer
intersect 
select * from Electrical




CREATE TABLE Employee_A(
    EmpID INT,
    EName VARCHAR(20),
    Department VARCHAR(20)
);

CREATE TABLE Employee_B(
    EmpID INT,
    EName VARCHAR(20),
    Department VARCHAR(20)
);

INSERT INTO Employee_A VALUES
(101,'Amar','Sales'),
(102,'Boby','IT'),
(103,'Charlie','HR'),
(104,'Denish','Sales');

INSERT INTO Employee_B VALUES
(101,'Amar','Sales'),
(103,'Charlie','HR'),
(105,'Isha','Finance'),
(106,'Fatima','IT');


--1. Find all unique employees present in either Employees_A OR Employees_B. 
select * from Employee_A
union
select * from Employee_B

--2. Find ALL employees from both tables, including duplicates. 
select * from Employee_A
union all
select * from Employee_B

--3. Find employees who are present in BOTH Employees_A AND Employees_B. 
select * from Employee_A
intersect
select * from Employee_B

--4. Find employees present in Employees_A BUT NOT in Employees_B. 
select * from Employee_A
except
select * from Employee_B

--5. Find employees present in Employees_B BUT NOT in Employees_A.
select * from Employee_B
except
select * from Employee_A  

--6. Find unique employees belonging to the 'IT' department in either table. 
select * from Employee_B where Department='it'
union
select * from Employee_A where Department='it'

--7. Find employees who are in 'Sales' AND appear in both tables. 
select * from Employee_B where Department='sales'
intersect
select * from Employee_A where Department='sales'

--8. List all names from both tables, retaining all duplicates. 
select * from Employee_A
union all
select * from Employee_B

--9. Find employees in A with EmployeeID > 102, who are NOT in B.
select * from employee_A where EmpID > 102
except
select * from Employee_B

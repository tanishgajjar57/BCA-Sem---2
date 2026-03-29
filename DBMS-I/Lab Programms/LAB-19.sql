CREATE TABLE DU_Students (
    StuID INT PRIMARY KEY,
    Name VARCHAR(20),
    EnrollmentNo VARCHAR(12),
    Division VARCHAR(10),
    Sem INT,
    Email VARCHAR(100),
    ContactNo VARCHAR(10)
);


INSERT INTO DU_Students
(StuID, Name, EnrollmentNo, Division, Sem, Email, ContactNo)
VALUES
(101, 'Naimish Patel', '90200107051', 'BCX-3', 3,  'naimishp49@gmail.com', '8866205253'),

(102, 'Firoz A. S.', '90200107090', 'BCY-3', 3,  'firoz.me@yahoo.com', '8885999922'),

(103, 'Krunal Vyas', '90243107101', 'BCZ-5', 5,  'krunal.vyas@gmail.com', '9990888877'),

(104, 'Vijay Patel', '90200107102', 'BCX-5', 5,  'vijay.patel123@gmail.com', '8787878787'),

(105, 'Vimal Trivedi', '90200107103', 'BCY-3', 3,  'vimal123@yahoo.com', '8789564512');


--1. Display all the records of DU_Students table.
select * from DU_Students

--2. Display students studying in BCY-3. 
select * from DU_Students
where division='BCY-3';

--3. Display 5th semester students. 
select * from DU_Students
where sem=5;

--4. Display contact number of all students. 
select ContactNo from DU_Students

--5. Display name and division of all students. 
select name,division from DU_Students

--6. Extract last 3 digits of ContactNo. 
select right(contactno,3) from DU_Students


--7. Display students sorted by Name in ascending order. 
select * from DU_Students
order by name asc

--8. Display Name of Student who belongs to either Semester 3 or 5. (Use IN & OR) 
 select * from DU_Students
 where sem in (3 , 5)

--9. Find Student Name & Enrollment No in which Student Id between 103 to 105. 
select name , EnrollmentNo from DU_Students
where StuID between 103 and 105

--10. Find Student Name & Enrollment No with their Email Who belongs to 5th Semester. 
select name , EnrollmentNo ,email from DU_Students
where sem=5

--11. Display All the Details of first three students. 
select top 3 * from DU_Students

--12. Display length of each student name. 
select name,len(name) from DU_Students

--13. Update semester to 5 and Contact number to 98984477 whose id is 101. 
update  du_students
set sem=5 , ContactNo=98984477
where StuID=101;

--14. Display Name & Enrollment no of first 30% Students. 
select top 30 percent name,EnrollmentNo from DU_Students


--15. Display current date with student name. 
select name ,getdate() from DU_Students

--16. Display Unique Semesters. 
select distinct sem from DU_Students

--17. Display semester 5 student’s division and Enrollment No. 
select division ,enrollmentno from DU_Students
where sem=5;

--18. Retrieve All the Students who have no Enrollment No. 
select * from DU_Students
where enrollmentno=null

--19. Display students whose email ends with 'gmail.com'. 
select * from DU_Students
where email like '%gmail.com';

--------------------------------------------------------------

--21. Modify ContactNo data type to VARCHAR(15). 
alter table du_students
alter column ContactNo varchar(15);

--22. Display students whose name contains 'Patel'. 
select * from DU_Students
where name like '%patel%'

--23. Display student name in uppercase. 
select name ,upper(name) from DU_Students 

--24. Rename column Name to StudentName 
exec sp_rename 'du_students.name' , 'StudentName'

--25. Update Division BCX-3 to BCX-4.  
update DU_Students
set Division ='BCX-4'
where division='BCX-3';

--26. Update Division to BCX-5 & Semester to 5 whose Student Id Is 102. 
update DU_Students
set division='BCX-5' , sem =5
where StuID=102

--27. Add one more Column City Varchar (50) in DU_Students table. 
alter table du_students
add City varchar(50);

--28. Remove All BCX-4 Division Students. 
delete DU_Students
where division='BCX-4'

--29. Truncate the table (removes all data). 
truncate table du_students

--30. Remove table DU_Students from the database.
drop table DU_Students
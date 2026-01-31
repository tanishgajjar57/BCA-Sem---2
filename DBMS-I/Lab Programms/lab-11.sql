--Part – A 


--1. Find the length of following. (I) NULL    (II) ‘   hello     ’   (III)  Blank 
select len(null);
select len('  hello  ');
select len('');

--2. Display your name in lower & upper case. 
select upper('tanish');
select lower('Tanish');

--3. Display first three characters of your name. 
select substring('tanish' ,1,3);

--4. Display 3rd to 10th character of your name. 
select substring('tanishgajjar' ,3,10);

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE. 
select replace('abc123efg' ,123,'ZXY');
select replace('abcabcabc' ,'c',5);

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9. 
select ascii('a') , ascii('A') , ascii('z') , ascii('Z') , ascii(0) , ascii(9);

--7. Write a query to display character based on number 97, 65,122,90,48,57. 
select char(97) ,char(65) ,char(122) ,char(90) ,char(48) ,char(57) ;

--Part – B 


--8. Write a query to remove spaces from left of a given string ‘ hello world  ‘. 
select ltrim('  hello world  ');

--9. Write a query to remove spaces from right of a given string ‘ hello world  ‘. 
select rtrim('  hello world  ');

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’. 
select left('SQL Server' ,4);
select right('SQL Server' ,5);

--11. Write a query to convert a string ‘1234.56’ to number (Use CAST()). 
select cast(1234.56 as int);

--12. Write a query to convert a float 10.58 to integer (UseCONVERT()). 
select convert(int,10.58);

--13. Put 10 space before your name using function. 
select space(10)+ 'tanish'; 

--14. Combine two strings (Your name & Surname) using + sign as well as CONCAT (). 
select concat('tanish' ,' ','gajjar')

--Part – C 


--15. Find reverse of “Darshan”. 
select reverse('darshan');

--16. Repeat your name 3 times. 
select replicate('tanish' ,3);

--17. Write a query to display first 3 & Last 3 characters of ‘your name’. 
select left('tanish' ,3) , right('tanish' ,3);

--18. From Data, returns the first non-null value in a list. (Use COALESCE()) 
select coalesce(null ,null ,'tanish');

--19. Tests whether the expression is numeric. (Use ISNUMERIC()) 
select isnumeric(1542); select ISNUMERIC('abc');

--20. Search for "t" in string "Customer", and return its position. (Use CHARINDEX())
select charindex('t' , 'customer');
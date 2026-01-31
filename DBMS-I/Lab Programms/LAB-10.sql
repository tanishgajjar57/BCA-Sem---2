--Part – A 


--1. Display the result of 5 multiply by 30. 
select 5*30;

--2. Find out the absolute value of -25, 25, -50 and 50. 
select abs(-25), abs(25), abs(-50), abs(50);

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2. 
select ceiling(25.2), ceiling(25.7), ceiling(-25.2);

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2. 
select floor(25.2), floor(25.7), floor(-25.2);

--5. Find out remainder of 5 divided 2 and 5 divided by 3. 
select 5%2 ,5%3;

----------------------------------------Part – B 


--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power. 
select power(2,3) , power(3,4);

--7. Find out the square root of 25, 30 and 50. 
select sqrt(25), sqrt(30), sqrt(50);

--8. Find out the square of 5, 15, and 25. 
select square(5), square(15),square(25);

--9. Find out the value of PI. 
select pi();

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points. 
select round(157.732 ,2), round(157.732,0), round(157.732,-2);

----------------------------------------Part – C 


--11. Find out exponential value of 2 and 3.
select exp(2) ,exp(3);

--12. Find out logarithm having base b having value 10 of 5 and 100. 
select log10(5) ,log10(100);

--13. Find sine, cosine and tangent of 3.1415. 
select sin(3.1415) ,cos(3.1415) ,tan(3.1415);

--14. Find sign of -25, 0 and 25. 
select sign(-25),sign(0),sign(25);

--15. Generate random number using function.
select rand() as random_num;


----------------------------------------------------------------------------------------------------

---- EASY-----------------------------------------------------------------------------------------------

-- Display the sum of 10 and 5.
select 10+5 as sum;

-- Display the subtraction of 8 from 20.
select 20-8 as subraction;

-- Display the multiplication of 6 and 7.
select 6*7 as multiplication;

-- Display the division of 40 by 5.
select 40/5 as division;

-- Find the absolute value of −15.
select abs(-15) as absolute_;

-- Find the square of 9.
select square(9) as square_;

-- Find the square root of 16.
select sqrt(16) as squareroot;

-- Find the value of 2 raised to the power 3.
select power(3,2) as powerr;

-- Find the remainder when 9 is divided by 2.
select 9%2 as remainder;

-- Round the number 45.678 to 2 decimal places.
select round(45.678 ,2) as roundd;

-- Find the ceiling value of 12.3.
select ceiling(12.3) as ceilingg;

-- Find the floor value of 12.9.
select floor(12.9) as floorr;

-- Display the value of PI.
select pi() as pi_value;

-- Generate a random number.
select rand() as random_num;

-- Find the sign of −25.
select sign(-25) as signn;

--HARD



-- Find the difference between the CEILING and FLOOR of 27.8.
select ceiling(27.8) - floor(27.8) as ceilingg;

-- Generate a random integer between 1 and 50.
select rand()*50+1 as random_int;

-- Find the absolute difference between –250 and 175.
select abs(-250-175) as absolutee;
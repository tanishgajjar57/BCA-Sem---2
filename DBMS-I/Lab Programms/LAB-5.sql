--    PART-A....

SELECT * FROM DEPOSIT
SELECT * FROM BORROW
SELECT * FROM CUSTOMERS
SELECT * FROM BRANCH

--1. Update deposit amount of all customers from 3000 to 5000. 
update deposit
set amount=5000
where amount =3000;

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)  
update BORROW
set BNAME='C.G. ROAD.'
where BNAME='VRCE';

--3. Update Account No of SANDIP to 111 & Amount to 5000.  
update deposit
set ACTNO=111 
where ACTNO=106;
UPDATE DEPOSIT
SET AMOUNT=5000
WHERE AMOUNT=2000;

--4. Give 10% Increment in Loan Amount. 
UPDATE BORROW
SET AMOUNT=AMOUNT+(AMOUNT*0.10);

--5. Update deposit amount of all depositors to 5000 whose account no between 103 & 107.
UPDATE DEPOSIT
SET AMOUNT=5000
WHERE ACTNO BETWEEN 103 AND 107;

--   PART -B....

--6. Update amount of loan no 321 to NULL. 
UPDATE BORROW
SET AMOUNT=NULL
WHERE LOANNO=321;

--7. Change Loan number from 201 to 401 & also change branch name from VRCE to AJNI. 
UPDATE BORROW
SET LOANNO=401,BNAME='AJNI'
WHERE LOANNO=20 AND BNAME='C.G. ROAD.';


--8. Modify customer name ANIL to ANIL JAIN. 
UPDATE CUSTOMERS
SET CNAME='ANIL JAIN'
WHERE CNAME='ANIL';

--9. Give an increment of ₹1000 in the Loan Amount. 
UPDATE BORROW
SET AMOUNT=AMOUNT+1000;

--10. Update the customer’s name from MINU to SINU and change the amount to ₹10,000. 
UPDATE deposit
SET CNAME='SINU',AMOUNT=10000
WHERE CNAME='MINU' AND AMOUNT=7000;


--   PART -C ....


--11. Change Name to Ramesh, Branch Name to VRCE & Amount to 5500, Whose Account Number is 102. 
UPDATE DEPOSIT
SET CNAME='RAMESH',BNAME='VRCE',AMOUNT=5500
WHERE ACTNO=102;

--12. Make Branch Name & Amount NULL, Whose Loan Number is 481 & Name is KRANTI. 
UPDATE BORROW
SET BNAME=NULL,AMOUNT=NULL
WHERE LOANNO=481 AND CNAME='KRANTI';

--13. Give 5% Increment in Loan Amount whose loan no less then 321. 
UPDATE BORROW
SET AMOUNT=AMOUNT+(AMOUNT*0.5)
WHERE LOANNO<321;

--14. Update the customer city from BOMBAY to MUMBAI. 
UPDATE CUSTOMERS
SET CITY='MUMBAI'
WHERE CITY='BOMBAY';

--15. Update the branch name to VRCE where the Loan number is 375. 
UPDATE BORROW
SET BNAME='VRCE'
WHERE LOANNO=375;


-- EXTRA/////

SELECT * FROM DEPOSIT
SELECT * FROM BORROW
SELECT * FROM CUSTOMERS
SELECT * FROM BRANCH
-- Part- D (Basic UPDATE Practice)

-- Update the deposit amount of customer SUNIL to 6000.
UPDATE BORROW
SET AMOUNT=6000
WHERE CNAME='SUNIL';

-- Change branch name of account number 110 to POWAI.
UPDATE DEPOSIT
SET BNAME='POWAI'
WHERE ACTNO=110;

-- Update deposit amount to NULL where customer name is KRANTI.
UPDATE DEPOSIT
SET AMOUNT=NULL
WHERE CNAME='KRANTI';

-- Modify account number 108 to 208.
UPDATE DEPOSIT
SET ACTNO=208
WHERE ACTNO=108;

-- Change branch name ANDHERI to ANDHERI WEST in DEPOSIT table.
UPDATE DEPOSIT
SET BNAME='ANDHERI WEST'
WHERE BNAME='ANDHERI';

-------------------------------------------------------------------------------------------------
-- Part- E (Conditional UPDATE)

-- Increase deposit amount by ₹500 for customers whose deposit amount is less than 3000.
UPDATE DEPOSIT
SET AMOUNT=AMOUNT+500
WHERE AMOUNT<3000;

-- Update deposit amount to 8000 where branch name is POWAI.
UPDATE DEPOSIT
SET AMOUNT=8000
WHERE BNAME='POWAI';

-- Change branch name to AJNI where account number is greater than 105.
UPDATE deposit
SET BNAME='AJNI'
WHERE ACTNO>105;

-- Update deposit date to 01-JAN-96 where branch name is VRCE.
UPDATE deposit
SET ADATE='1996-JAN-01'
WHERE BNAME='VRCE';


-------------------------------------------------------------------------------


-- Part- F (Multiple Column UPDATE)
SELECT * FROM DEPOSIT
SELECT * FROM BORROW
SELECT * FROM CUSTOMERS
SELECT * FROM BRANCH

-- Update branch name to DHARAMPETH and amount to 6500 where account number is 109.
UPDATE DEPOSIT
SET BNAME='DHARAMPETH',AMOUNT=6500
WHERE ACTNO=109;

-- Change customer name MEHUL to MEHUL PATEL and amount to 4500.
UPDATE DEPOSIT
SET CNAME='MEHUL PATEL',AMOUNT=4500
WHERE CNAME='MEHUL';

-- Modify branch name to NEHRU PLACE and deposit date to 15-AUG-95 where amount is 5000.
UPDATE DEPOSIT
SET BNAME='NEHRU PLACE',ADATE='15-AUG-95'
WHERE AMOUNT=5000;

-- Update amount = 9000 and branch name = VIRAR where customer name is MINU.
UPDATE DEPOSIT
SET AMOUNT=9000,BNAME='VIRAR'
WHERE CNAME='SINU';

-- Change account number to 999 and amount to 3000 where branch name is BANDRA.
UPDATE DEPOSIT
SET ACTNO=999,AMOUNT=3000
WHERE BNAME='BANDRA';
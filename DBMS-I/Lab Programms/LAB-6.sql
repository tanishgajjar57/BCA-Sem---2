--    Part – A..........

SELECT * FROM DEPOSIT
SELECT * FROM BORROW
SELECT * FROM CUSTOMERS
SELECT * FROM BRANCH


--1. Delete records of Customer table that belongs to BOMBAY City. 
delete from CUSTOMERS
where CITY='bombay';

--2. Delete all account numbers whose amount less than equals to 1000. 
DELETE FROM DEPOSIT
WHERE AMOUNT<=1000;

--3. Delete borrowers whose branch name is ‘AJNI’.
DELETE FROM BORROW
WHERE BNAME='AJNI';

--4. Delete all the borrowers whose loan number between 201 to 210. 
DELETE FROM BORROW
WHERE LOANNO BETWEEN 201 AND 210;

--5. Delete customers who opened account after date '01-DEC-96'. (Use DEPOSIT table) 
DELETE FROM deposit
WHERE ADATE>'01-DEC-96';

--Part – B 


--6. Delete all the records of Customers table. (Use TRUNCATE) 
TRUNCATE TABLE CUSTOMERS


--7. Remove all customers whose name is ANIL & Account Number is 101. 
DELETE FROM DEPOSIT
WHERE CNAME='ANIL' AND ACTNO=101;

--8. Delete all the depositors who do not belongs to ‘ANDHERI’ branch. 
DELETE FROM BRANCH
WHERE BNAME!='ANDHERI';

--9. Delete loan details of customers whose amount is less than 3000. 
DELETE FROM BORROW
WHERE AMOUNT<3000;

--10. Delete customers who opened account before date '01-JAN-96'. (Use DEPOSIT table)
DELETE FROM DEPOSIT
WHERE ADATE<'01-JAN-96';

--   Part – C....


--11. Delete all the borrowers whose loan amount is less than 2000 and does not belong to VRCE branch. 
DELETE FROM BORROW
WHERE AMOUNT<2000 AND BNAME!='VRCE';

--12. Delete all the records of Deposit table. (Use TRUNCATE) 
TRUNCATE TABLE DEPOSIT;

--13. Delete all the records of Branch table. (Use TRUNCATE) 
TRUNCATE TABLE BRANCH;

--14. Remove Deposit table. (Use DROP) 
DROP TABLE DEPOSIT;

--15. Remove Branch table. (Use DROP)
DROP TABLE BRANCH;

-------------------------------------------------------------------------------------------------------------------

------  EXTRAA  ------  

CREATE TABLE ACCOUNT (
    AccountNo INT PRIMARY KEY,
    CustomerName VARCHAR(50) NOT NULL,
    AccountType VARCHAR(20),
    Balance DECIMAL(10,2),
    OpenDate DATE
);

INSERT INTO ACCOUNT VALUES
(201, 'ANIL', 'SAVING', 5000, '2020-01-15'),
(202, 'SUNIL', 'CURRENT', 12000, '2019-03-10'),
(203, 'MEHUL', 'SAVING', 3000, '2021-07-20'),
(204, 'MADHURI', 'SAVING', 8000, '2018-11-05'),
(205, 'KRANTI', 'CURRENT', 15000, '2022-02-18');

DELETE FROM ACCOUNT;
-- table-2
CREATE TABLE TRANSACTION_DETAILS (
    TransactionID INT,
    AccountNo INT,
    TransactionType VARCHAR(10),   -- CREDIT / DEBIT
    Amount DECIMAL(10,2),
    TransactionDate DATE
);

INSERT INTO TRANSACTION_DETAILS VALUES
(1, 201, 'CREDIT', 2000, '2024-01-05'),
(2, 201, 'DEBIT', 1000, '2024-01-10'),
(3, 202, 'DEBIT', 3000, '2024-02-15'),
(4, 203, 'CREDIT', 1500, '2024-03-20'),
(5, 205, 'DEBIT', 5000, '2024-04-25');

SELECT * FROM TRANSACTION_DETAILS;
SELECT * FROM ACCOUNT;

-- Delete account record where AccountNo = 203.
DELETE FROM ACCOUNT
WHERE ACCOUNTNO=203;

-- Delete all accounts whose Balance < 5000.
DELETE FROM ACCOUNT
WHERE Balance<5000;

-- Delete account of customer KRANTI.
DELETE FROM ACCOUNT
WHERE CustomerName='KRANTI';

-- Delete accounts opened before 01-JAN-2019.
DELETE FROM ACCOUNT
WHERE OpenDate<'01-JAN-2019';

-- Delete all CURRENT type accounts.
DELETE FROM ACCOUNT
WHERE AccountType='CURRENT';

-- Delete transaction where TransactionID = 2.
DELETE FROM TRANSACTION_DETAILS
WHERE TransactionID=2;

-- Delete all DEBIT transactions.
DELETE FROM TRANSACTION_DETAILS
WHERE TransactionType='DEBIT';

-- Delete transactions where Amount > 4000.
DELETE FROM TRANSACTION_DETAILS
WHERE Amount>4000;

-- Delete transactions done before 01-FEB-2024.
DELETE FROM TRANSACTION_DETAILS
WHERE TransactionDate<'01-FEB-2024';

-- Delete transactions of AccountNo = 201.
DELETE FROM TRANSACTION_DETAILS
WHERE AccountNo=201;



-- Delete transactions of customers whose Balance < 6000.
DELETE FROM TRANSACTION_DETAILS
WHERE AMOUNT<6000;
-- Delete accounts whose AccountType is SAVING and Balance < 7000.
DELETE FROM ACCOUNT
WHERE Balance<7000 AND AccountType='SAVING';



-- Drop the TRANSACTION_DETAILS table completely.
DROP TABLE TRANSACTION_DETAILS;

-- Drop the ACCOUNT table completely.
DROP TABLE ACCOUNT;


--------------- BYE BYEEEEE ----------------------
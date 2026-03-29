CREATE TABLE Cricket (
    Name VARCHAR(50),
    City VARCHAR(50),
    Age INT
);

INSERT INTO Cricket (Name, City, Age) VALUES
('Sachin Tendulkar', 'Mumbai', 30),
('Rahul Dravid', 'Bombay', 35),
('M. S. Dhoni', 'Jharkhand', 31),
('Suresh Raina', 'Gujarat', 30);


CREATE TABLE SalesOrders (
    OrderID INT PRIMARY KEY,
    ProductID INT,
    ProductName VARCHAR(50),
    Qty INT,
    SaleDate DATE,
    Region VARCHAR(50)
);


INSERT INTO SalesOrders (OrderID, ProductID, ProductName, Qty, SaleDate, Region) VALUES
(1, 10, 'Laptop', 25, '2025-10-01', 'North'),
(2, 20, 'Monitor', 60, '2025-10-05', 'South'),
(3, 30, 'Keyboard', 150, '2025-10-10', 'East'),
(4, 10, 'Laptop', 10, '2025-10-15', 'West'),
(5, 40, 'Mouse', 45, '2025-10-20', 'North'),
(6, 50, 'Webcam', 55, '2025-10-25', 'South'),
(7, 60, 'Speaker', 20, '2025-10-30', 'East'),
(8, 20, 'Monitor', 70, '2025-11-01', 'West');


--1. Create table World cup from cricket with all the columns.  
select * into world_cup from Cricket

--2. Create table T20 from cricket with first two columns with no data. 
select name ,city into T20 from Cricket 
where 1=2


--3. Create table IPL From Cricket with No Data. 
select * into IPL from cricket
where 1=2

--4. Insert the Data into IPL from Cricket Whose Second Character Should Be ‘A’ And String Should Have At least 7 Characters in Cricket Name Field. 
select * into IPL_2 from Cricket
where name like '_a_____%' ;

--5. Delete All the Rows From IPL. 
truncate table ipl

--6. Delete the Detail of Cricketer Whose City is Jharkhand. 
delete from Cricket
where city='jharkhand'

--7. Rename the Table IPL to IPL2018. 
exec sp_rename 'ipl' , 'ipl2018'

--8. Destroy table T20 with All the Data.
drop table t20;

--part-B
select* from SalesOrders


--1. Create a full backup of the SalesRecords table and name it SalesRecords_Backup_Full as a new table. 
select * into SalesRecords_Backup_Full
from SalesOrders;

--2. Create a table SalesInfo from the SalesRecords table with only the OrderID, ProductName, and Quantity columns. 
select orderid ,productname,qty into SalesInfo
from SalesOrders

--3. Create a new empty table with the same schema as SalesRecords and name it SalesRecords_Empty. 
select * into SalesRecords_Empty
from SalesOrders
where 1=2

-------Part – C 


--4. Create a table Sales_North_West from the SalesRecords table containing only the sales records for the North and West regions. 
select * into Sales_North_West
from SalesOrders
where region in ('north' , 'west' )

--5. Create a table Product_Summary from the SalesRecords table that summarizes the total quantity sold for each product. 
select productname , sum(qty) as sumproduct into Product_Summary
from SalesOrders
group by productname

--6. Create an archive table for all sales made before Oct 15, 2025. 
select *  into archive from SalesOrders
where saledate < '2025-10-15';
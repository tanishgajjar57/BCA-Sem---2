CREATE TABLE ProductInventory (
    ProductID INT IDENTITY(1,1) PRIMARY KEY,
    ProductName VARCHAR(100) NOT NULL,
    CatalogNumber VARCHAR(20) UNIQUE,
    UnitPrice DECIMAL(10,2) NOT NULL 
        CHECK (UnitPrice >= 0.50 AND UnitPrice <= 5000.00),
    QuantityInStock INT NOT NULL 
        CHECK (QuantityInStock >= 0),
    IsActive BIT NOT NULL DEFAULT 1
);

CREATE TABLE DepartmentData (
  Deptid int primary key,
  DepName varchar(50) not null unique
);
CREATE TABLE EmployeeData (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50) NOT NULL,
    Salary DECIMAL(10,2) NOT NULL CHECK (Salary > 30000),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES DepartmentData(DeptID)
);

create table members(
    MemberID int IDENTITY(1,1) PRIMARY KEY,
    MemberName VARCHAR(50) not null,
    Email VARCHAR(100) not null unique,
    Phone VARCHAR(15) unique,
    JoinDate datetime not null default getdate(),
    City VARCHAR(50) not null default 'rajkot',
    );





CREATE TABLE Books (
    BookID INT IDENTITY(100,1) PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    Category VARCHAR(30) NOT NULL,
    Price DECIMAL(7,2) NOT NULL CHECK (Price > 0),
    Stock INT NOT NULL CHECK (Stock >= 0)
);

create table Issue_Return (
    IssueID int  IDENTITY(500,1) PRIMARY KEY, 
    MemberID int not null,
    foreign key (MemberID) references members (MemberID),
    BookID  int not null,
    foreign key (BookID) references Books (BookID),
    IssueDate date not null default getdate(),
    ReturnDate date null
    );

    

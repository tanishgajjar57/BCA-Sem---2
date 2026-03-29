create table Student_Info (
	studentID int identity(1,1) primary key,
	Enrollment_no varchar(20) not null unique,
	Name VARCHAR(25) Not Null,
	CPI DECIMAL(5,2) check (CPI<=10),
	JoiningDate DATETIME not null default getdate(),
	Bklog int not null check (Bklog>=0),
	StateName VARCHAR(50) default 'gujarat'
	);

create table state(
	StateID int identity(1,1) primary key,
	StateName varchar(20) not null unique,
);

create table city(
	CityID int not null identity(1,1) primary key,
	CityName varchar(20) not null unique,
	PinCode varchar(10) not null,
	StateID int,
	Foreign key (StateID) references state(StateID)
	);

	insert into Student_Info
	(enrollment_no,Name,CPI,Bklog)
	values
	('101','raj',8.52,0);
	select * from Student_Info
	drop table Student_Info

	-------------------------------------------------------------------------------------------------------------------------------

select * from state1
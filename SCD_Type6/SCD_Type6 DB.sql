CREATE TABLE Employees_SCD(
	Emp_key int identity(1,1) primary key,
	ID int not null,
	Name varchar(50),
	Current_City varchar(50),
	Previous_City varchar(50),
	Current_Email varchar(50),
	Previous_Email varchar(50),
	Start_Date Datetime,
	End_Data Datetime,
	Active_Flag bit
);

CREATE TABLE Employees(
	ID int identity(1001,1) primary key,
	Name varchar(50),
	City varchar(50),
	Email varchar(50),
	Update_Date Datetime
);

insert into Employees(Name, City, Email, Update_Date) values('Ahmed','Giza','ahmed@mail.com','2023-06-22 09:28:27.130');
insert into Employees(Name, City, Email, Update_Date) values('Alaa','Giza','alaa@mail.com','2023-06-22 09:28:27.130');
insert into Employees(Name, City, Email, Update_Date) values('Samy','Cairo','samy@mail.com','2023-06-22 09:28:27.130');

update Employees set City = 'Cairo', Update_Date = getDate() where ID = 1001
update Employees set City = 'Alex', Email = 'alaa123@mail.com', Update_Date = getDate() where ID = 1002


select * from Employees
select * from Employees_SCD

/*
Example of the result set(executing query 'select * from Employees'):

 ID     Name    City      Email                Update_Date
1001	Ahmed	Cairo	ahmed@mail.com	   2023-06-22 09:28:27.130
1002	Alaa	Alex	alaa123@mail.com   2023-06-22 09:28:27.130
1003	Samy	Cairo	samy@mail.com	   2023-05-18 09:04:23.473

Example of the result set(executing query 'select * from Employees_SCD'):

Emp_key	      ID	Name	Current_City	Previous_City	Current_Email	     Previous_Email	         Start_Date	                   End_Data	         Active_Flag
1	     1001	Ahmed	   Cairo	   Giza	        ahmed@mail.com	     ahmed@mail.com	    2023-06-19 09:27:59.350	    2023-06-22 09:28:41.847	      0
2	     1002	Alaa	   Alex	           Giza	        alaa123@mail.com     alaa@mail.com	    2023-06-19 09:27:59.350	    2023-06-22 09:28:41.850	      0
3	     1003	Samy	   Cairo	   Cairo	samy@mail.com	     samy@mail.com	    2023-06-19 09:27:59.350	    NULL	                      1
4	     1001	Ahmed	   Cairo	   Cairo	ahmed@mail.com	     ahmed@mail.com	    2023-06-22 09:28:41.903	    NULL	                      1
5	     1002	Alaa	   Alex	           Alex	        alaa123@mail.com     alaa123@mail.com	    2023-06-22 09:28:41.903	    NULL	                      1
*/

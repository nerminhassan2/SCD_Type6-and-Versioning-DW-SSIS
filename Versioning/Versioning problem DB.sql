CREATE TABLE Employees_versions(
	Emp_key int identity(1,1) primary key,
	ID int not null,
	Name varchar(50),
	City varchar(50),
	Email varchar(50),
	Insert_Date Date,
	Active_Flag bit,
	Version_No int 
);

CREATE TABLE Employees_Q3(
	ID int identity(1001,1) primary key,
	Name varchar(50),
	City varchar(50),
	Email varchar(50),
	Schedule_Date Date
);

insert into Employees_Q3(Name, City, Email, Schedule_Date) values('Ahmed','Giza','ahmed@mail.com','2023-05-18');
insert into Employees_Q3(Name, City, Email, Schedule_Date) values('Alaa','Giza','alaa@mail.com','2023-05-18');
insert into Employees_Q3(Name, City, Email, Schedule_Date) values('Samy','Cairo','samy@mail.com','2023-05-18');

select * from Employees_Q3
select * from Employees_versions


/*
Example of the result set(executing query 'select * from Employees_Q3'):

ID	 Name	City	   Email	Schedule_Date
1001	Ahmed	Giza	ahmed@mail.com	2023-05-18
1002	Alaa	Giza	alaa@mail.com	2023-05-18
1003	Samy	Cairo	samy@mail.com	2023-05-18

Example of the result set(executing query 'select * from Employees_versions'):

Emp_key      ID         Name    City       Email         Insert_Date      Active_Flag    Version_No
1	    1001	Ahmed	Giza	ahmed@mail.com	 2023-05-18	      0	             1
2	    1002	Alaa	Giza	alaa@mail.com	 2023-05-18	      0	             1
3	    1003	Samy	Cairo	samy@mail.com	 2023-05-18	      0	             1
4	    1001	Ahmed	Giza	ahmed@mail.com	 2023-05-18	      0	             2
5	    1002	Alaa	Giza	alaa@mail.com	 2023-05-18	      0	             2
6	    1003	Samy	Cairo	samy@mail.com	 2023-05-18	      0	             2
6	    1003	Samy	Cairo	samy@mail.com	 2023-05-18	      0	             2
7	    1001	Ahmed	Giza	ahmed@mail.com	 2023-05-18	      0	             3
8	    1002	Alaa	Giza	alaa@mail.com	 2023-05-18	      0	             3
9	    1003	Samy	Cairo	samy@mail.com	 2023-05-18	      0	             3
10	    1001	Ahmed	Giza	ahmed@mail.com	 2023-06-22	      0	             1
11	    1002	Alaa	Giza	alaa@mail.com	 2023-06-22	      0	             1
12	    1003	Samy	Cairo	samy@mail.com	 2023-06-22	      0	             1
13	    1001	Ahmed	Giza	ahmed@mail.com	 2023-06-22	      1	             2
14	    1002	Alaa	Giza	alaa@mail.com	 2023-06-22	      1	             2
15	    1003	Samy	Cairo	samy@mail.com	 2023-06-22	      1	             2
*/

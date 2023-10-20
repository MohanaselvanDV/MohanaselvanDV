create database happend;

use happend;

create table A (
id int,
name varchar(20),
primary key (id)
);

insert into A values(1, 'cat');
insert into A values(2, '');


drop table A;
select * from A;


drop table B;


create table B(
id_b int,
e_name varchar(20),
primary key(id_b)
);

Create table Employees
(
 ID int primary key identity,
 FirstName nvarchar(50),
 LastName nvarchar(50),
 Gender nvarchar(50),
 Salary int
)


Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000)
Insert into Employees values ('Mark', 'Hastings', 'Male', 60000)
Insert into Employees values ('Steve', 'Pound', 'Male', 45000)
Insert into Employees values ('Ben', 'Hoskins', 'Male', 70000)
Insert into Employees values ('Philip', 'Hastings', 'Male', 45000)
Insert into Employees values ('Mary', 'Lambeth', 'Female', 30000)
Insert into Employees values ('Valarie', 'Vikings', 'Female', 35000)
Insert into Employees values ('John', 'Stanmore', 'Male', 80000)
Insert into Employees values ('John', 'Stanmore', 'FeMale', 80000)

select * from Employees;

select * from Employees
order by Salary desc

select max(Salary) from Employees
where Salary< (select max(Salary) from Employees);

select top 1 Salary from
(select distinct top 2 Salary from Employees
order by salary desc)Result
order by Salary


select * , ROW_NUMBER() over(partition by Gender order by Salary desc) as rn
from Employees


create table emp1(
empid integer primary key ,
empaddress varchar(250)
);

create table emp2(
empid integer primary key ,
empaddress varchar(250),
empsalary integer
);

insert into emp1 values(1, 'no514, chennai');
insert into emp1 values(2, 'mathur');
insert into emp1 values(3, 'namakkal');


insert into emp2 values(1, 'no514, chennai', 70000);
insert into emp2 values(2, 'mathur', 8000);
insert into emp2 values(3, 'namakkal', 9000);
insert into emp2 values(4, 'madurai', 6000);

select * from emp1 
union
select * from emp2


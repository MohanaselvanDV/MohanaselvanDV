create database adminin;
use adminin;

create table odba(
id integer primary key identity(101,2),
firstname varchar(50),
lastname varchar(50),
phonenumber bigint,
age int
);

select * from odba 
drop table odba

update odba
set phonenumber = 8999328176
where id = 107;

insert into odba values('mohan','selvan',9942815076,14);
insert into odba values('Ram','S',9942812819,15);
insert into odba values('Ravi','R',9942815076,14);
insert into odba values('Jacky','U',994255002,14);
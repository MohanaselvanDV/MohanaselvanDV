create database newtable11;
use newtable11



 

create table Products(
PRODUCTID varchar(25),
TYPECODE varchar(20),
PRODCATEGORYID varchar(200),
CREATEDBY varchar(250),
CREATEDAT DATE,
CHANGEDBY varchar(250),
CHANGEDAT DATE,
SUPPLIER_PARTNERID bigint,
WEIGHTMEASURE decimal,
WEIGHTUNIT varchar(50),
CURRENCY varchar(50),
PRICE integer,
WIDTH varchar(50),
DEPTH varchar(50),
HEIGHT varchar(50),
DIMENSIONUNIT varchar(50),
LANGUAGES varchar(250),
SHORT_DESCR varchar(250),
MEDIUM_DESCR varchar(250),
foreign key (PRODCATEGORYID) references ProductCategories(PRODCATEGORYID),
foreign key (SUPPLIER_PARTNERID) references BusinessPartners(PARTNERID)
);

 
select * from Products
 drop table Products

create table ProductCategories(
PRODCATEGORYID varchar(200) primary key,
CREATEDBY  integer,
CREATEDAT DATE,
LANGUAGES varchar(100),
SHORT_DESCR varchar(100),
MEDIUM_DESCR varchar(100)
);

alter table ProductCategories
drop column MEDIUM_DESCR; 


SELECT * FROM ProductCategories1

create table Employees(
EMPLOYEEID int primary key,
NAME_FIRST varchar(100),
NAME_LAST varchar(100),
NAME_INITIALS varchar(20),
SEX varchar(10),
LANGUAGES Varchar(150),
PHONENUMBER varchar(70),
MAIL_ID varchar(150),
LOGIN_NAME varchar(100),
ADDRESSID  bigint,
VALIDITY_STARTDATE date,
VALIDITY_ENDDATE date,
foreign key (ADDRESSID) references Addresses(ADDRESSID),
check(SEX in ('Male', 'Female', 'Unknown'))
);

alter table Employees
drop column NAME_INITIALS; 

select * from Employees

select EmployeeID,( NAME_FIRST+ ' '+NAME_LAST ) as FULL_NAME from Employees;

create table BusinessPartners(
PARTNERID bigint primary key,
PARTNERROLE int,
EMAILADDRESS varchar(150),
PHONENUMBER varchar(50),
ADDRESSID bigint,
COMPANYNAME varchar(250),
LEGALFORM varchar(100),
CREATEDBY integer,
CREATEDAT Date,
CHANGEDBY integer,
CHANGEDAT Date,
CURRENCY  varchar(150),
foreign key (ADDRESSID) references Addresses(ADDRESSID)
);
SELECT * FROM BusinessPartners1


create table Addresses(
ADDRESSID bigint primary key,
CITY varchar(100),
POSTALCODE integer,
STREET varchar(100),
BUILDING integer,
COUNTRY varchar(20),
REGION varchar(50),
ADDRESSTYPE int,
VALIDITY_STARTDATE Date,
VALIDITY_ENDDATE Date,
LATITUDE Decimal,
LONGITUDE Decimal
);
 select * from Addresses

 alter table Addresses
 alter column POSTALCODE varchar(100)
 alter table Addresses
 alter column BUILDING varchar(100)

drop table BusinessPartners

create table ProductCategories1(
PRODCATEGORYID varchar(200) primary key,
CREATEDBY_NAME  varchar(150),
CREATEDAT DATE,
LANGUAGES varchar(100),
SHORT_DESCR varchar(100)
);

select * from ProductCategories1

create table BusinessPartners1(
PARTNERID bigint primary key,
PARTNERROLE int,
EMAILADDRESS varchar(150),
PHONENUMBER varchar(50),
ADDRESSID bigint,
COMPANYNAME varchar(250),
LEGALFORM varchar(100),
CREATEDBY_NAME varchar(150),
CREATEDAT Date,
CHANGEDAT Date,
CURRENCY  varchar(150),
foreign key (ADDRESSID) references Addresses(ADDRESSID)
);



create table Products1(
PRODUCTID varchar(25),
TYPECODE varchar(20),
PRODCATEGORYID varchar(200),
CREATEDBY_NAME varchar(250),
CREATEDAT DATE,
CHANGEDAT DATE,
SUPPLIER_PARTNERID bigint,
WEIGHTMEASURE decimal,
WEIGHTUNIT varchar(50),
CURRENCY varchar(50),
PRICE integer,
WIDTH varchar(50),
DEPTH varchar(50),
HEIGHT varchar(50),
DIMENSIONUNIT varchar(50),
LANGUAGES varchar(250),
SHORT_DESCR varchar(250),
MEDIUM_DESCR varchar(250),
foreign key (PRODCATEGORYID) references ProductCategories1(PRODCATEGORYID),
foreign key (SUPPLIER_PARTNERID) references BusinessPartners1(PARTNERID)
);

select * from Products1





create table SalesOrders(
SALES_ORDERID bigint primary key not null,
CREATEDBY int,
CREATDAT date,
CHANGEDBY int,
CHANGEDDATE date,
NOTEID int,
PARTNERID bigint,
SALESORG varchar(20),
CURRENCY varchar(20),
GROSSAMOUNT bigint,
NETAMOUNT decimal,
TAXAMOUNT decimal,
LIFE_CYCLE_STATUS varchar(5),
BILLING_STATUS varchar(5),
DELIVERY_STATUS varchar(5)
);

DROP TABLE SalesOrders

select * from SalesOrders


create table SalesOrders1(
SALES_ORDERID bigint primary key not null,
CREATEDBY_NAME varchar(150),
CREATDAT date,
CHANGEDDATE date,
NOTEID int,
PARTNERID bigint,
SALESORG varchar(20),
CURRENCY varchar(20),
GROSSAMOUNT bigint,
NETAMOUNT decimal,
TAXAMOUNT decimal,
LIFE_CYCLE_STATUS varchar(5),
BILLING_STATUS varchar(5),
DELIVERY_STATUS varchar(5)
);

select * from SalesOrders1;

create table SalesOrderItems(
SALES_ORDER_ID bigint,
SALES_ORDERITEM int,
PRODUCTID varchar(255),
CURRENCY varchar(10),
GROSSAMOUNT int,
NETAMOUNT decimal,
TAXAMOUNT decimal,
QUANTITY int,
QUANTITY_UNIT varchar(20),
DELIVERY_DATE date
);

select * from SalesOrderItems;
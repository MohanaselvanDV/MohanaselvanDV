create database newtable;
use newtable

create table Products(
PRODUCTID varchar(25) primary key,
TYPECODE varchar(20),
PRODCATEGORYID varchar(20),
CREATEDBY varchar(250),
CREATEDAT DATE,
CHANGEDBY varchar(250),
CHANGEDAT DATE,
SUPPLIER_PARTNERID integer,
WEIGHTMEASURE decimal,
WEIGHTUNIT varchar(50),
CURRENCY varchar(50),
PRICE integer,
WIDTH int,
DEPTH int,
HEIGHT int,
DIMENSIONUNIT int,
LANGUAGES varchar(250),
SHORT_DESCR varchar(250),
MEDIUM_DESCR varchar(250),
foreign key (PRODCATEGORYID) references ProductCategories(PRODCATEGORYID),
foreign key (SUPPLIER_PARTNERID) references BusinessPartners(PARTNERID)
);



create table ProductCategories(
PRODCATEGORYID integer,
CREATEDBY  integer,
CREATEDAT DATE,
LANGUAGES varchar(100),
SHORT_DESCR varchar(100),
MEDIUM_DESCR varchar(100)
);

create table Employees(
EMPLOYEEID int primary key,
NAME_FIRST varchar(100),
NAME_LAST varchar(100),
NAME_INITIALS varchar(20),
SEX varchar(10),
LANGUAGES Varchar(150),
PHONENUMBER bigint,
MAIL_ID varchar(150),
LOGIN_NAME varchar(100),
ADDRESSID  varchar(255),
VALIDITY_STARTDATE date,
VALIDITY_ENDDATE date,
check(SEX in ('Male', 'Female', 'Unknown'))
);



create database produt1;

use produt1

create table Customers(
CustomerID integer primary key identity,
CustomerName varchar(100),
ContactName varchar(100),
Address varchar(250),
City varchar(100),
Postalcode integer,
Country varchar(100)
);

create table Products(
ProductID integer primary key,
ProductName varchar(100),
SupplierID integer not null default 1,
CategoryID integer not null default 1,
Unit varchar(100),
Price integer
);

drop table Products

create table Orders(
OrderID integer primary key,
CustomerID int FOREIGN KEY REFERENCES Customers(CustomerID),
OrderDate datetime default getdate()
);
 
drop table Orders

create table OrderDetails(
Orderdetails int primary key,
OrderID integer not null default 1 ,
ProductID integer  FOREIGN KEY REFERENCES Products(ProductID),
Quantity integer
);

drop table OrderDetails


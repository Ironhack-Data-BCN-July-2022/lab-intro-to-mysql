drop database if exists lab_mysql;
create database lab_mysql;
use lab_mysql;

create table cars(
ID int primary key,
VIN varchar(20) not null,
Manufacturer varchar(20) not null,
Madoel varchar(20) not null,
`Year` int,
Color varchar (20) not null
);

create table customer(
ID int primary key,
Customer_id int unique,
`Name` varchar(20) not null,
Phone varchar(20),
Email varchar(20),
Adress varchar(40),
City varchar(40),
State_Province varchar(40),
country varchar(40),
Postal varchar(5)
);

create table Sales_Person(
ID int primary key,
Staff_Id int unique,
`Name` varchar(20) not null,
store varchar(20) not null
);

create table Invoice(
ID int primary key,
Invoice_Number int unique,
`Date` Date,
Car int,
Customer int,
Sales_Person int
);

alter table Invoice
add foreign key(Car)
references cars(ID)
on delete set null;

alter table Invoice
add foreign key(customer)
references customer(ID)
on delete set null;

alter table Invoice
add foreign key(Sales_Person)
references Sales_Person(ID)
on delete set null;

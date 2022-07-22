DROP DATABASE IF EXISTS Dealership;
CREATE DATABASE Dealership;
USE Dealership;
CREATE TABLE Cars(
Car_ID INT PRIMARY KEY,
VIN VARCHAR(40),
Manu VARCHAR(40),
Model VARCHAR(40),
`Year` YEAR,
Color VARCHAR(40)
);
CREATE TABLE Customers(
Cx_id INT PRIMARY KEY,
`Name` VARCHAR(40),
City VARCHAR(40),
State VARCHAR(40),
Address VARCHAR(40),
Phone_no VARCHAR(40),
Email VARCHAR(40),country VARCHAR(40),
Postal VARCHAR(40)
);
CREATE TABLE Salespersons(
Staff_id INT PRIMARY KEY,
`name` VARCHAR(40),
Store VARCHAR(40)
);
CREATE TABLE Invoices(
Invoice_no INT PRIMARY KEY,
`Date` DATE,
Car INT,
Customer INT,
Salesperson INT
);


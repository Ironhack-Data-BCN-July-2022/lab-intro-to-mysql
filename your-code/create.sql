DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

###################################
#         CREATE THE TABLES       #
###################################

CREATE TABLE Cars(
ID INT PRIMARY KEY,
VIN VARCHAR(45) NOT NULL,
manufacturer VARCHAR(45) NOT NULL,
model VARCHAR(45) NOT NULL,
`Year` INT NOT NULL,
color VARCHAR(45)
);

CREATE TABLE Salesperson(
ID INT PRIMARY KEY,
staff_ID INT NOT NULL,
`Name` VARCHAR(45) NOT NULL,
store VARCHAR(45) NOT NULL
);

CREATE TABLE Customers(
ID INT PRIMARY KEY,
customer_ID INT NOT NULL,
`Name` VARCHAR(45) NOT NULL,
phone_no VARCHAR(45) NOT NULL,
email VARCHAR(45),
address VARCHAR(45) NOT NULL,
city VARCHAR(45) NOT NULL,
`State/Province` VARCHAR(45) NOT NULL,
country VARCHAR(45) NOT NULL,
`Zip/Postal Code` INT NOT NULL
);

CREATE TABLE Invoices(
ID INT PRIMARY KEY,
invoice_no INT NOT NULL,
date VARCHAR(45) NOT NULL,
car INT,
customer INT,
salesperson INT
);

###################################
#      CREATE THE RELATIONHIPS    #
###################################

ALTER TABLE Invoices
ADD FOREIGN KEY (car)
REFERENCES Cars(ID)
ON DELETE SET NULL; 

ALTER TABLE Invoices
ADD FOREIGN KEY (customer)
REFERENCES Customers(ID)
ON DELETE SET NULL; 

ALTER TABLE Invoices
ADD FOREIGN KEY (salesperson)
REFERENCES Salesperson(ID)
ON DELETE SET NULL;



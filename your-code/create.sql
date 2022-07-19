DROP DATABASE IF EXISTS dealership;
CREATE DATABASE dealership;
USE dealership;

CREATE TABLE cars(
car_id INT PRIMARY KEY,
vin VARCHAR(40),
manufacturer VARCHAR(40),
model VARCHAR(40),
`year` YEAR,
color VARCHAR(40)
);

CREATE TABLE customers(
cus_id INT PRIMARY KEY,
`name` VARCHAR(40),
phone_no VARCHAR(40),
email VARCHAR(40),
address VARCHAR(40),
city VARCHAR(40),
state_province VARCHAR(40),
country VARCHAR(40),
zip_postal_code VARCHAR(40)
);

CREATE TABLE salespersons(
staff_id INT PRIMARY KEY,
`name` VARCHAR(40),
store VARCHAR(40)
);

CREATE TABLE invoices(
in_number INT PRIMARY KEY,
`date` DATE,
car INT,
customer INT,
salesperson INT
);
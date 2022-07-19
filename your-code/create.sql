DROP DATABASE IF EXISTS dealership;
CREATE DATABASE dealership;
USE dealership;

CREATE TABLE cars(
car_id INT PRIMARY KEY,
vin VARCHAR(60),
manufacturer VARCHAR(60),
model VARCHAR(60),
year YEAR,
color VARCHAR(60)
);

CREATE TABLE customers(
customer_id INT PRIMARY KEY,
`name` VARCHAR(40),
phone_number VARCHAR(40),
email VARCHAR(40),
address VARCHAR(40),
city VARCHAR(40),
state VARCHAR(40),
country VARCHAR(40),
zip VARCHAR(40)
);

CREATE TABLE salespersons(
staff_id INT PRIMARY KEY,
`name` VARCHAR(40),
store VARCHAR(40)
);

CREATE TABLE invoices(
invoice_number INT PRIMARY KEY,
`date` DATE,
car INT,
customer INT,
sales_person INT
);
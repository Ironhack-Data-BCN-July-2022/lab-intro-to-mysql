-- mysql
-- USE lab_msql;

DROP DATABASE IF EXISTS car_sales;
CREATE DATABASE car_sales;
USE car_sales;

CREATE TABLE car(
id INT,
VIN VARCHAR(40) PRIMARY KEY,
Manufacturer VARCHAR(40) NOT NULL,
Model VARCHAR(20) NOT NULL,
`year` YEAR,
Color VARCHAR(20)
);

CREATE TABLE customers(
id INT,
customer_id INT PRIMARY KEY,
name VARCHAR(20) NOT NULL,
phone VARCHAR(40) NOT NULL,
email VARCHAR(40) NOT NULL,
address VARCHAR(40),
city VARCHAR(40),
state_province VARCHAR(40),
country VARCHAR(40) NOT NULL,
zip_code VARCHAR(40)
);

CREATE TABLE salespersons(
id INT,
staff_id INT PRIMARY KEY,
name VARCHAR(40) NOT NULL,
store VARCHAR(40) NOT NULL
);

CREATE TABLE invoices(
id INT,
invoice_number INT PRIMARY KEY,
`date` DATE  NOT NULL,
car INT NOT NULL,
customer INT NOT NULL,
sales_person NOT NULL
);






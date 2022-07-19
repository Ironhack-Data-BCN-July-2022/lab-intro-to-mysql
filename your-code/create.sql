DROP DATABASE IF EXISTS lab_mysql;
CREATE DATABASE lab_mysql;
USE lab_mysql;

CREATE TABLE car(
VIN VARCHAR(20) PRIMARY KEY,
manufacturer VARCHAR(20),
model VARCHAR(20),
year YEAR,
color VARCHAR(10)
);

CREATE TABLE customer(
customer_id INT PRIMARY KEY,
name VARCHAR(20),
phone_no VARCHAR(20),
email VARCHAR(20),
address VARCHAR(30),
city VARCHAR(30),
state_province VARCHAR(30),
country VARCHAR(30),
zip INT
);

CREATE TABLE salesperson(
staff_id VARCHAR(20) PRIMARY KEY,
name VARCHAR(20),
store VARCHAR(20)
);

CREATE TABLE invoice(
invoice_no INT PRIMARY KEY,
date DATE,
car VARCHAR(20) NOT NULL,
customer VARCHAR(20) NOT NULL,
salesperson VARCHAR(20) NOT NULL
);
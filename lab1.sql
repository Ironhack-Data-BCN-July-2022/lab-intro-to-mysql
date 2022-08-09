DROP DATABASE IF EXISTS deal;
CREATE DATABASE deal;
USE deal;

CREATE TABLE car(
vin_number VARCHAR(40) PRIMARY KEY,
manufacturer VARCHAR(40) NOT NULL,
model VARCHAR(20) NOT NULL,
year INT,
color VARCHAR(20)
);

CREATE TABLE customer (
customer_id INT PRIMARY KEY,
name_ VARCHAR(40) NOT NULL,
phone_number VARCHAR(20) NOT NULL,
e_mail VARCHAR(30),
address VARCHAR(30),
city VARCHAR(10) NOT NULL,
state_province VARCHAR(30) NOT NULL,
country VARCHAR(30) NOT NULL,
zip INT
);

CREATE TABLE salesperson (
staff_id INT PRIMARY KEY,
name_ VARCHAR(30) NOT NULL,
store_location VARCHAR(40) NOT NULL
);

CREATE TABLE invoices (
invoice_number VARCHAR(40) PRIMARY KEY,
date_ DATE,
vin_number VARCHAR(40),
customer INT,
salesperson INT
);


ALTER TABLE invoices
ADD FOREIGN KEY(vin_number)  
REFERENCES car(vin_number) 
ON DELETE SET NULL;


ALTER TABLE invoices
ADD FOREIGN KEY (customer) 
REFERENCES customer(customer_id) 
ON DELETE SET NULL;


ALTER TABLE invoices
ADD FOREIGN KEY (salesperson)
REFERENCES salesperson(staff_id) 
ON DELETE SET NULL;



#######################

INSERT INTO car(vin_number, manufacturer, model, year, color) VALUES
('3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', '2019', 'Blue'),
('ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', '2019', 'Red'),
('RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', '2018', 'White'),
('HKNDGS7CU31E9Z7JW', 'Toyota', 'Raft', '2018', 'Silver'),
('DAM41UDN3CHU2WVF6', 'Volvo', 'V60 ', '2019', 'Gray');

# checked 
INSERT INTO customer(customer_id, name_, phone_number, e_mail, address, city, state_province, country, zip) VALUES
(10001, 'Pablo Picasso', '+34 636 17 63 82', 'asdf', 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
(20001, 'Abraham Lincoln', '+1 305 907 7086', 'adsf', '120 SW 8th St', 'Miami', 'United States', 'Madrid', '33130'),
(30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', 'sdfs', '40 Rue du Colisée', 'paris', 'France', 'Madrid', '75008');
#checked
INSERT INTO salesperson(staff_id, name_, store_locator) VALUES
(50, 'sfdgsd', '00001'),
(15, 'jamvbdfgnes', '00002'),
(51, 'jamvbzxfbses', '00003'),
(14, 'jamrygeses', '00004'),
(52, 'jamsdfghses', '00005'),
(13, 'jamebdfgssdzs', '00006'),
(53, 'jambdcxes', '00007'),
(12, 'jamxnbfes', '00008');
#checked
INSERT INTO invoices() VALUES
(852399038, '2018-08-22', 0, 1, 3),
(731166526, '2018-12-31', 3, 0, 5),
(271135104, '2019-01-22', 2, 2, 7);
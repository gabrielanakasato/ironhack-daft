-- Create table 'car'
CREATE TABLE car (
	car_id smallint,
	car_vin char(17),
	car_manufacturer varchar(15),
	car_model varchar(15),
	car_year smallint,
	car_color varchar(10)
);

-- Create table 'customer'
CREATE TABLE customer (
	customer_id smallint,
	customer_ident int,
	customer_name varchar(50),
	phone_number varchar(15),
	email varchar(30),
	address text,
	city varchar(30),
	state_province varchar(30),
	country varchar(30),
	zip_code varchar(10)
);

-- Create table 'salesperson'
CREATE TABLE salesperson (
	salesperson_id smallint,
	saff_id char(5),
	staff_name varchar(50),
	staff_store varchar(30)
);

-- Create table 'invoice'
CREATE TABLE invoice (
	invoice_id smallint,
	invoice_number int,
	invoice_date date,
	invoice_car smallint,
	invoice_customer smallint,
	invoice_salesperson smallint
);
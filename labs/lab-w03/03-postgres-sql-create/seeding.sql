-- Add information in the table 'car'
INSERT INTO car (car_id, car_vin, car_manufacturer, car_model, car_year, car_color) VALUES
	(0, '3K096I98581DHSNUP', 'Volkswagen', 'Tiguan', 2019, 'Blue'),
    (1, 'ZM8G7BEUQZ97IH46V', 'Peugeot', 'Rifter', 2019, 'Red'),
	(2, 'RKXVNNIHLVVZOUB4M', 'Ford', 'Fusion', 2018, 'White'),
	(3, 'HKNDGS7CU31E9Z7JW', 'Toyota', 'RAV4', 2018, 'Silver'),
	(4, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60', 2019, 'Gray'),
	(5, 'DAM41UDN3CHU2WVF6', 'Volvo', 'V60 Cross Country', 2019, 'Gray');

-- Add information in the table 'customer'
INSERT INTO customer VALUES 
	(0, 10001, 'Pablo Picasso', '+34 636 17 63 82', NULL, 'Paseo de la Chopera, 14', 'Madrid', 'Madrid', 'Spain', '28045'),
	(1, 20001, 'Abraham Lincoln', '+1 305 907 7086', NULL, '120 SW 8th St', 'Miami', 'Florida', 'United States', '33130'),
	(3, 30001, 'Napoléon Bonaparte', '+33 1 79 75 40 00', NULL, '40 Rue du Colisée', 'Paris', 'Île-de-France', 'France', '75008');

-- Add information in the table 'salesperson'
INSERT INTO salesperson VALUES
	(0, '00001', 'Petey Cruiser', 'Madrid'),
	(1, '00002', 'Anna Sthesia', 'Barcenlona'),
	(2, '00003', 'Paul Molive', 'Berlin'),
	(3, '00004', 'Gail Forcewind', 'Paris'),
	(4, '00005', 'Paige Turner', 'Mimia'),
	(5, '00006', 'Bob Frapples', 'Mexico City'),
	(6, '00007', 'Walter Melon', 'Amsterdam'),
	(7, '00008', 'Shonda Leer', 'São Paulo');

-- Add information in the table 'invoice'
INSERT INTO invoice VALUES
	(0, 852399038, date '22-Aug-2018', 0, 1, 3),
	(1, 731166526, date '31-Dec-2018', 3, 0, 5),
	(2, 271135104, date '22-Jan-2019', 2, 2, 7);
-- Correct city name 'Mimia' to 'Miami'
UPDATE salesperson SET staff_store = 'Miami' WHERE staff_store = 'Mimia';

-- Update customers' email
UPDATE customer SET email = 'ppicasso@gmail.com' WHERE customer_name = 'Pablo Picasso';
UPDATE customer SET email = 'lincoln@us.gov' WHERE customer_name = 'Abraham Lincoln';
UPDATE customer SET email = 'hello@napoleon.me' WHERE customer_name = 'Napoléon Bonaparte';
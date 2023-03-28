-- Create candystore database:
CREATE DATABASE candystore; 

-- Switch to candystore database
  USE candystore; 

-- Create the customers table:
CREATE TABLE customers (
  customerId INT AUTO_INCREMENT PRIMARY KEY,
  firstName VARCHAR(20) NOT NULL,
  lastName VARCHAR(20) NOT NULL,
  email VARCHAR(30),
  phone VARCHAR(20),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Add our first customer:
INSERT INTO customers ( firstName, lastName, email, phone) 
VALUES ('Damian','Montero','damian@bocacode.com','976-CODE');

-- Let's get ALL of the customers:
SELECT * FROM customers;

INSERT INTO customers ( firstName, lastName, email,phone)
VALUES ('Cassandra','Curcio','cassandra@bocacode.com','954-CATS')

DELETE FROM customers WHERE firstName = 'Cassandra';

CREATE TABLE orders (
  orderId INT AUTO_INCREMENT PRIMARY KEY,
  customerId INT NOT NULL FOREIGN KEY,
  total DECIMAL(6,2),
  tax DECIMAL(7,2),
  createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
);

-- now let's add an order to our order table:
INSERT INTO orders(customerId,total,tax) 
VALUES (1,19.48,0.18), (2,49.26,3.44);

-- INSERT INTO customers(firstName,lastName,email,phone)
-- VALUES('Bridgette','Lemus',)

SELECT * FROM customers
JOIN orders ON orders.customerId = customers.customerId
WHERE firstName = 'Damian';


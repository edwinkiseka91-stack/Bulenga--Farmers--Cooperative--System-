CREATE DATABASE IF NOT EXISTS bulenga_coop CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE bulenga_coop;
CREATE TABLE farmers (farmer_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(120) NOT NULL, contact VARCHAR(50), location VARCHAR(150));
CREATE TABLE produce (produce_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(80) NOT NULL UNIQUE, unit VARCHAR(20) NOT NULL DEFAULT 'kg', category VARCHAR(80));
CREATE TABLE stock (stock_id INT AUTO_INCREMENT PRIMARY KEY, produce_id INT NOT NULL UNIQUE, quantity_available DECIMAL(12,2) NOT NULL DEFAULT 0, last_updated TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP, FOREIGN KEY (produce_id) REFERENCES produce(produce_id));
CREATE TABLE deliveries (delivery_id INT AUTO_INCREMENT PRIMARY KEY, farmer_id INT NOT NULL, produce_id INT NOT NULL, quantity DECIMAL(12,2) NOT NULL, delivery_date DATE NOT NULL, FOREIGN KEY (farmer_id) REFERENCES farmers(farmer_id), FOREIGN KEY (produce_id) REFERENCES produce(produce_id));
CREATE TABLE buyers (buyer_id INT AUTO_INCREMENT PRIMARY KEY, name VARCHAR(120) NOT NULL, contact VARCHAR(50));
CREATE TABLE orders (order_id INT AUTO_INCREMENT PRIMARY KEY, buyer_id INT NOT NULL, produce_id INT NOT NULL, quantity DECIMAL(12,2) NOT NULL, status VARCHAR(30) NOT NULL DEFAULT 'Pending', order_date DATE NOT NULL, FOREIGN KEY (buyer_id) REFERENCES buyers(buyer_id), FOREIGN KEY (produce_id) REFERENCES produce(produce_id));
CREATE TABLE dispatches (dispatch_id INT AUTO_INCREMENT PRIMARY KEY, order_id INT NOT NULL, dispatch_date DATE NOT NULL, status VARCHAR(30) NOT NULL, FOREIGN KEY (order_id) REFERENCES orders(order_id));
INSERT INTO produce(name,unit,category) VALUES ('Maize','kg','Grain'),('Beans','kg','Legume'),('Tomatoes','kg','Vegetable'),('Onions','kg','Vegetable');
INSERT INTO stock(produce_id,quantity_available) SELECT produce_id,0 FROM produce;
-- Optional fictional demo data. Clearly identify as test/demo data if you use it.
INSERT INTO farmers(name,contact,location) VALUES ('Demo Farmer One','0000000000','Demo Location');
INSERT INTO buyers(name,contact) VALUES ('Demo Buyer One','0000000000');

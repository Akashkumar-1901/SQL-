create database product1;
use product1;
create table product(
product_id INT PRIMARY KEY,
product_name VARCHAR(100),
category VARCHAR(50),
unit_price DECIMAL(10, 2));
INSERT INTO Product(product_id, product_name, category, unit_price) VALUES
(101,'Laptop','Electronics', 500.00),
(102,'Smartphone','Electronics', 300.00),
(103,'Headphones','Electronics', 30.00),
(104,'Keyboard','Electronics', 20.00),
(105,'Mouse','Electronics', 15.00);
SELECT * FROM product;
SELECT product_name, unit_price FROM product;
SELECT product_name as Electronics from product;
SELECT * FROM product WHERE category = 'Electronics';
SELECT product_id, product_name FROM product WHERE unit_price > 100;
SELECT avg(unit_price) as Average_price from product;
SELECT product_name, unit_price FROM product WHERE unit_price = (SELECT MAX(unit_price) FROM product);
SELECT MAX(unit_price)as max_price FROM product;
SELECT product_name, unit_price FROM product ORDER BY unit_price DESC;
SELECT product_name, unit_price FROM product WHERE unit_price BETWEEN 20 AND 600;
SELECT product_name, category FROM product ORDER BY category ASC;



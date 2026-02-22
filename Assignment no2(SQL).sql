CREATE DATABASE RetailMartDB;
USE RetailMartDB;

CREATE TABLE customers (
customer_id INT,
full_name VARCHAR(50),
phone VARCHAR(20),
email VARCHAR(100),
city VARCHAR(50),
created_at DATE
);

CREATE TABLE products (
product_id INT,
product_name VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
unit_price DECIMAL(10,2),
stock_qty INT
);

CREATE TABLE orders (
order_id INT,
customer_id INT,
order_date DATE,
order_status VARCHAR(30),
channel VARCHAR(30),
city VARCHAR(50)
);


CREATE TABLE order_items (
order_item_id INT,
order_id INT,
product_id INT,
quantity INT,
unit_price DECIMAL(10,2),
discount_pct DECIMAL(5,2)
);

ALTER TABLE customers
ADD gender VARCHAR(10);

ALTER TABLE customers
RENAME column phone to mobile_no;

ALTER TABLE customers
MODIFY email VARCHAR(150);

ALTER TABLE products
DROP column stock_qty;

RENAME TABLE orders TO customer_orders;

DROP TABLE order_items;

DROP DATABASE RetailMartDB;

CREATE DATABASE RetailMartDB;
USE RetailMartDB;

CREATE TABLE customers (
customer_id INT,
full_name VARCHAR(50),
phone VARCHAR(20),
email VARCHAR(100),
city VARCHAR(50),
created_at DATE
);

CREATE TABLE products (
product_id INT,
product_name VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
unit_price DECIMAL(10,2),
stock_qty INT
);


CREATE TABLE orders (
order_id INT,
customer_id INT,
order_date DATE,
order_status VARCHAR(30),
channel VARCHAR(30),
city VARCHAR(50)
);

CREATE TABLE order_items (
order_item_id INT,
order_id INT,
product_id INT,
quantity INT,
unit_price DECIMAL(10,2),
discount_pct DECIMAL(5,2)
);

SELECT * FROM customers;

RENAME TABLE orders TO customer_orders;

INSERT INTO customers 
VALUES
(1,'Amit Sharma','9876543210','amit@gmail.com','Mumbai','2024-01-10'),
(2,'Neha Patil','9876543211','neha@gmail.com','Pune','2024-02-15'),
(3,'Rahul Verma','9876543212','rahul@gmail.com','Delhi','2024-03-12'),
(4,'Sneha Iyer','9876543213','sneha@gmail.com','Chennai','2024-01-20'),
(5,'Vikram Singh','9876543214','vikram@gmail.com','Jaipur','2024-02-18'),
(6,'Pooja Mehta','9876543215','pooja@gmail.com','Ahmedabad','2024-03-05'),
(7,'Arjun Nair','9876543216','arjun@gmail.com','Kochi','2024-01-28'),
(8,'Kajal Joshi','9876543217','kajal@gmail.com','Nagpur','2024-02-25'),
(9,'Rohan Das','9876543218','rohan@gmail.com','Kolkata','2024-03-08'),
(10,'Anita Rao','9876543219','anita@gmail.com','Hyderabad','2024-03-15');

INSERT INTO products 
VALUES
(1,'iPhone 14','Electronics','Apple',75000,25),
(2,'Galaxy S23','Electronics','Samsung',65000,34),
(3,'Air Conditioner','Appliances','LG',40000,30),
(4,'Refrigerator','Appliances','Samsung',30000,15),
(5,'Running Shoes','Fashion','Nike',5000,12),
(6,'T-shirt','Fashion','Adidas',1500,18),
(7,'Laptop','Electronics','Dell',60000,16),
(8,'Microwave','Appliances','LG',12000,20),
(9,'Watch','Accessories','Fossil',8000,60),
(10,'Headphones','Electronics','Sony',7000,35),
(11,'Backpack','Accessories','Wildcraft',2500,22),
(12,'Jeans','Fashion','Levis',3000,28);

SELECT * FROM customer_orders;

INSERT INTO customer_orders 
VALUES
(1,011,'2024-04-01','Delivered','Online','Mumbai'),
(2,022,'2024-04-02','Shipped','Store','Pune'),
(3,033,'2024-04-03','Cancelled','Online','Delhi'),
(4,044,'2024-04-04','Delivered','App','Chennai'),
(5,055,'2024-04-05','Processing','Online','Jaipur'),
(6,066,'2024-04-06','Delivered','Store','Ahmedabad'),
(7,077,'2024-04-07','Shipped','App','Kochi'),
(8,088,'2024-04-08','Processing','Online','Nagpur'),
(9,099,'2024-04-09','Delivered','Store','Kolkata'),
(10,100,'2024-04-10','Cancelled','Online','Hyderabad'),
(11,101,'2024-04-11','Delivered','App','Mumbai'),
(12,102,'2024-04-12','Processing','Online','Pune'),
(13,103,'2024-04-13','Delivered','Store','Delhi'),
(14,104,'2024-04-14','Shipped','Online','Chennai'),
(15,105,'2024-04-15','Delivered','App','Jaipur');

SELECT * FROM order_items;

ALTER TABLE order_items DROP order_item_id;

SELECT * FROM order_items;

INSERT INTO order_items  
VALUES
(1,1,1,75000.00,5.00),
(1,5,2,5000.00,10.00),
(2,2,1,65000.00,5.00),
(2,6,3,1500.00,0.00),
(3,3,1,40000.00,8.00),
(3,7,1,60000.00,5.00),
(4,4,1,30000.00,7.00),
(4,8,2,12000.00,5.00),
(5,9,1,8000.00,0.00),
(5,10,2,7000.00,10.00),
(11,5,1,31000.00,5.00),
(11,8,2,1500.00,0.00),
(12,3,1,55000.00,4.00),
(12,10,1,8500.00,2.00),
(13,6,2,12000.00,5.00),
(13,9,1,3200.00,0.00),
(14,1,1,75000.00,6.00),
(14,12,3,2500.00,8.00),
(15,2,1,68000.00,5.00),
(15,7,2,5000.00,10.00),
(1,4,1,42000.00,7.00),
(2,11,1,7000.00,3.00),
(3,5,1,31000.00,4.00),
(4,6,1,12000.00,0.00),
(5,9,2,3200.00,5.00),
(6,10,1,8500.00,2.00),
(7,3,1,55000.00,6.00),
(8,12,2,2500.00,5.00),
(9,8,3,1500.00,0.00),
(10,1,1,75000.00,5.00),
(11,2,1,68000.00,4.00),
(12,7,2,5000.00,8.00),
(13,4,1,42000.00,6.00),
(14,9,2,3200.00,3.00),
(15,11,1,7000.00,5.00),
(1,6,1,12000.00,0.00),
(2,5,1,31000.00,7.00),
(3,10,1,8500.00,2.00),
(4,12,2,2500.00,5.00),
(5,8,3,1500.00,0.00);

UPDATE customers
SET city = 'Bangalore'
WHERE customer_id = 3;

UPDATE products
SET unit_price = unit_price * 1.08
WHERE category = 'Electronics';

UPDATE products
SET stock_qty = stock_qty - 5
WHERE product_id = 3;

DELETE FROM customer_orders
WHERE order_status = 'Cancelled';

DELETE FROM customers
WHERE customer_id = 5;

SELECT *
FROM customers
WHERE city = 'Pune';

SELECT *
FROM products
WHERE unit_price > 2000;

SELECT *
FROM customer_orders
WHERE channel = 'Online';

SELECT *
FROM customer_orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-01-31';

SELECT *
FROM products
WHERE unit_price BETWEEN 500 AND 1500;

SELECT *
FROM order_items
WHERE quantity BETWEEN 2 AND 6;

SELECT DISTINCT city
FROM customers;

SELECT *
FROM products
ORDER BY unit_price DESC;

SELECT *
FROM customer_orders
ORDER BY order_date ASC, order_status ASC;

SELECT city, COUNT(*) AS total_orders
FROM customer_orders
GROUP BY city;

SELECT city, COUNT(*) AS total_customers
FROM customers
GROUP BY city;

SELECT category, AVG(unit_price) AS avg_price
FROM products
GROUP BY category;

SELECT 
    order_id,
    SUM(quantity * unit_price * (1 - discount_pct/100)) AS total_revenue
FROM order_items
GROUP BY order_id;

ALTER TABLE order_items
ADD category VARCHAR(50);

SELECT 
    category,
    SUM(quantity * unit_price * (1 - discount_pct/100)) AS total_revenue
FROM order_items
GROUP BY category;

SELECT 
    product_id,
    SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id;

SELECT 
    product_id,
    SUM(quantity) AS total_quantity_sold
FROM order_items
GROUP BY product_id;

SELECT city, COUNT(*) AS total_orders
FROM customer_orders
GROUP BY city
HAVING COUNT(*) > 5;

SELECT category, AVG(unit_price) AS avg_price
FROM products
GROUP BY category
HAVING AVG(unit_price) > 2500;



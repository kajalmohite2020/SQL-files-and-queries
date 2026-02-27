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


INSERT INTO customers VALUES
(101,'Amit Sharma','9876543210','amit@gmail.com','Mumbai','2024-01-10'),
(102,'Neha Patil','9876543211','neha@gmail.com','Pune','2024-02-15'),
(103,'Rahul Verma','9876543212','rahul@gmail.com','Delhi','2024-03-12'),
(104,'Sneha Iyer','9876543213','sneha@gmail.com','Chennai','2024-01-20'),
(105,'Vikram Singh','9876543214','vikram@gmail.com','Jaipur','2024-02-18'),
(106,'Pooja Mehta','9876543215','pooja@gmail.com','Ahmedabad','2024-03-05'),
(107,'Arjun Nair','9876543216','arjun@gmail.com','Kochi','2024-01-28'),
(108,'Kajal Joshi','9876543217','kajal@gmail.com','Nagpur','2024-02-25'),
(109,'Rohan Das','9876543218','rohan@gmail.com','Kolkata','2024-03-08'),
(110,'Anita Rao','9876543219','anita@gmail.com','Hyderabad','2024-03-15');

INSERT INTO products VALUES
(101,'iPhone 14','Electronics','Apple',75000.00,25),
(102,'Galaxy S23','Electronics','Samsung',65000.00,34),
(103,'Air Conditioner','Appliances','LG',40000.00,30),
(104,'Refrigerator','Appliances','Samsung',30000.00,15),
(105,'Running Shoes','Fashion','Nike',5000.00,12),
(106,'T-shirt','Fashion','Adidas',1500.00,18),
(107,'Laptop','Electronics','Dell',60000.00,16),
(108,'Microwave','Appliances','LG',12000.00,20),
(109,'Watch','Accessories','Fossil',8000.00,60),
(110,'Headphones','Electronics','Sony',7000.00,35),
(111,'Backpack','Accessories','Wildcraft',2500.00,22),
(112,'Jeans','Fashion','Levis',3000.00,28);

RENAME TABLE customer_orders TO orders;

INSERT INTO orders VALUES
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

SELECT *FROM  order_items;

ALTER TABLE order_items DROP category;

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


-- 1. Display all customers whose city is not between Delhi and Pune (use alphabetical logic on city).
SELECT * FROM customers
WHERE city NOT BETWEEN 'Delhi' AND 'pune';

-- 2. Display all orders whose order_date is not between 2026-01-05 and 2026-01-20.
SELECT * FROM  orders
WHERE order_date NOT BETWEEN 2026-01-05 AND 2026-01-20;

-- 3. Display all products whose unit_price is not between 500 and 2000.
SELECT * FROM  products
WHERE unit_price NOT BETWEEN 500 and 2000;

-- 4. Display all customers whose customer_id is in (101, 104, 108, 110).
SELECT * FROM  customers
WHERE customer_id IN (101, 104, 108, 110);

-- 5. Display all products whose category is in ('Electronics','Fitness','Stationery').
SELECT * FROM  products
WHERE category IN ('Electronics','Fitness','Stationery');

-- 6. Display all orders whose order_status is in ('PLACED','DELIVERED').
SELECT * FROM  customer_orders
WHERE order_status IN ('PLACED','DELIVERED');

-- 7. Display all customers whose city is not in ('Pune','Mumbai').
SELECT * FROM  customers
WHERE city NOT IN ('Pune','Mumbai');

-- 8. Display all products whose brand is not in ('Sony','Nike','Boat').
SELECT * FROM  products
WHERE brand NOT IN ('Sony','Nike','Boat');

-- 9. Display all orders whose channel is not in ('ONLINE').
SELECT * FROM  orders
WHERE channel NOT IN ('ONLINE');

-- 10. Insert 5 new customers where email is NULL for at least 2 customers.
INSERT INTO customers VALUES 
(111,'Rahul Verma','9876543212',NULL,'Delhi','2024-03-12'),
(112, 'Rohit Patil', '9123456780', 'rohit@gmail.com', 'Mumbai','2023-03-10'),
(113, 'Meena Joshi', '9988776655', NULL, 'Pune','2022-07-02'),
(114, 'Kunal Verma', '9012345678', 'kunal@gmail.com', 'Nagpur','2025-05-23'),
(115, 'Sneha More', '9090909090', 'sneha@gmail.com', 'Surat','2025-11-10');

-- 11. Display all customers where email is null.
SELECT * FROM customers
WHERE email IS NULL;

-- 12. Display all customers where email is not null.
SELECT * FROM customers
WHERE email IS NOT NULL;

-- 13. Insert 6 new products where brand is NULL for at least 2 products.
INSERT INTO products VALUES
(116, 'Laptop', 'Electronics','HP', 65000.00,23),
(117, 'Headphones', 'Electronics',NULL, 2000.00,123),
(118, 'Smartphone', 'Electronics','Samsung', 45000.00,230),
(119, 'Keyboard', 'Accessories',NULL, 1500.00,341),
(120, 'Mouse', 'Accessories','Logitech',800.00,450),
(121, 'Monitor', 'Electronics','Dell', 12000.00, 19);

-- 14. Display all products where brand is null.
SELECT * FROM products
WHERE brand IS NOT NULL;

-- 15. Display all products where brand is not null.
SELECT * FROM products
WHERE brand IS NULL;

-- 17. Display the next 5 customers after skipping the first 5 customers based on created_at (oldest first).
SELECT * FROM customers
ORDER BY created_at ASC 
LIMIT 5 OFFSET 5;

-- 18. Display the top 3 most expensive products.
SELECT * FROM products 
ORDER BY unit_price DESC LIMIT 3;

-- 19. Display 5 products starting from the 6th most expensive product.
SELECT * FROM products
ORDER BY unit_price DESC 
LIMIT 5 OFFSET 5;

-- 20. Display 7 orders starting from the 4th most recent order (latest orders first).
SELECT * FROM orders
ORDER BY order_date DESC 
LIMIT 7 OFFSET 4;


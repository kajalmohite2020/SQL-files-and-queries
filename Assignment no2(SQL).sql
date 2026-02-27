-- 1. Create a database named RetailMartDB.
CREATE DATABASE RetailMartDB;
USE RetailMartDB;

-- 2. Create a table customers with: customer_id, full_name, phone, email, city, created_at.
CREATE TABLE customers (
customer_id INT,
full_name VARCHAR(50),
phone VARCHAR(20),
email VARCHAR(100),
city VARCHAR(50),
created_at DATE
);

-- 3. Create a table products with: product_id, product_name, category, brand, unit_price, stock_qty.
CREATE TABLE products (
product_id INT,
product_name VARCHAR(100),
category VARCHAR(50),
brand VARCHAR(50),
unit_price DECIMAL(10,2),
stock_qty INT
);

-- 4. Create a table orders with: order_id, customer_id, order_date, order_status, channel, city.
CREATE TABLE orders (
order_id INT,
customer_id INT,
order_date DATE,
order_status VARCHAR(30),
channel VARCHAR(30),
city VARCHAR(50)
);

-- 5. Create a table order_items with: order_item_id, order_id, product_id, quantity, unit_price, discount_pct.
CREATE TABLE order_items (
order_item_id INT,
order_id INT,
product_id INT,
quantity INT,
unit_price DECIMAL(10,2),
discount_pct DECIMAL(5,2)
);

-- 6. Add a new column gender to the customers table.
ALTER TABLE customers
ADD gender VARCHAR(10);

-- 7. Rename the column phone in customers to mobile_no.
ALTER TABLE customers
RENAME column phone to mobile_no;

-- 8. Change the datatype of email in customers to allow longer email values.
ALTER TABLE customers
MODIFY email VARCHAR(150);

-- 9. Remove the column stock_qty from the products table.
ALTER TABLE products
DROP column stock_qty;

-- 10. Rename the table orders to customer_orders
RENAME TABLE orders TO customer_orders;

-- 11. Delete the table order_items
DROP TABLE order_items;

-- 12. Delete the database RetailMartDB
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

-- 13. Insert 10 sample rows into customers (use different cities and created dates).
INSERT INTO customers VALUES
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

-- 14.Insert 12 sample rows into products (use at least 4 categories and 3 brands)
INSERT INTO products VALUES
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

-- 15. Insert 15 sample rows into customer_orders (mix order status and channels).
INSERT INTO customer_orders VALUES
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

-- 16. Insert 40 sample rows into order_items (ensure quantities and prices look realistic).
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

-- 17. Update the city of a specific customer using customer_id.
UPDATE customers
SET city = 'Bangalore'
WHERE customer_id = 3;
SELECT * FROM customers;

-- 18. Increase unit_price by 8% for all products in a chosen category.
UPDATE products
SET unit_price = unit_price (unit_price * 1.08)
WHERE category = 'Electronics';
SELECT * FROM products;

-- 19. Reduce stock_qty by 5 for a specific product using product_id
UPDATE products
SET stock_qty = stock_qty - 5
WHERE product_id = 3;

-- 20. Delete all orders having order_status as CANCELLED.
DELETE FROM customer_orders
WHERE order_status = 'Cancelled';

-- 21. Delete a customer record using customer_id.
DELETE FROM customers
WHERE customer_id = 5;

-- 22. Display all customers from the city Pune.
SELECT * FROM customers
WHERE city ='Pune';
SELECT * FROM customers;

-- 23. Display all products where unit_price is greater than 2000.
SELECT * FROM products
WHERE unit_price > 2000;

-- 24. Display all orders placed using the ONLINE channel.
SELECT * FROM customer_orders
WHERE channel = 'Online';

-- 25. Display all orders placed between 2026-01-01 and 2026-01-31
SELECT * FROM customer_orders
WHERE order_date BETWEEN '2026-01-01' AND '2026-01-31';

-- 26. Display all products with unit price between 500 and 1500
SELECT * FROM products
WHERE unit_price BETWEEN 500 AND 1500;

-- 27. Display all order items where quantity is between 2 and 6.
SELECT * FROM order_items
WHERE quantity BETWEEN 2 AND 6;

-- 28. Display the unique list of cities from customers
SELECT DISTINCT city
FROM customers;

-- 29. Display the unique list of categories from products.
SELECT DISTINCT category
FROM products;

-- 30. Show all products sorted by unit_price from highest to lowest
SELECT *
FROM products
ORDER BY unit_price DESC;

-- 31. Show all customers sorted by created_at from newest to oldest
SELECT * FROM customers
 ORDER BY created_at desc;

-- 32. Show all orders sorted by order_date (oldest first) and then by order_status
SELECT *
FROM customer_orders
ORDER BY order_date , order_status ASC;
SELECT * FROM customer_orders;

-- 33. Show total number of orders per city.
SELECT city, COUNT(order_id)
FROM customer_orders
GROUP BY city;

-- 34. Show total number of customers per city.
SELECT city,COUNT(customer_id) 
FROM customers
GROUP BY city;

-- 35. Show average product price per category
SELECT category,AVG(unit_price)
FROM products
GROUP BY category;

-- 36. Show total revenue per order based on quantity * unit_price * (1 - discount_pct/100)
SELECT quantity, SUM(quantity * unit_price * (1 - discount_pct/100)) total_revenue
FROM order_items
GROUP BY quantity;

-- 37. Show total revenue per category.

-- 38. Show total quantity sold per product
SELECT product_id,SUM(quantity)
FROM order_items
GROUP BY product_id;

-- 39. Show cities where the total number of orders is more than 5.
SELECT city, COUNT(order_id) 
FROM customer_orders
GROUP BY city
HAVING COUNT(order_id) > 5;

-- 40. Show categories where average unit price is greater than 2500.
SELECT category, AVG(unit_price) 
FROM products
GROUP BY category
HAVING AVG(unit_price) > 2500;



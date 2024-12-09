-- CREATE A DATABASE SALES
create database Sales;
-- USE THE DATABASE SALES
use sales;
-- CREATE THE TABLE ORDERS
create table Orders(
Order_Id int auto_increment primary key ,
Customer_name varchar(50) not null, 
Product_Category varchar(50),
Ordered_item varchar(200),
Contact_No varchar(16));

-- alter the contact structure
alter table orders modify Contact_No varchar(16) not null unique; 

-- DISPLAY THE TABLE ORDERS STRUCTURE
desc orders;
-- ADD A NEW COLUMN NAMED ORDER_QUANTITY TO THE TABLE
alter table orders add order_quantity int default 0;
-- RENAME THE TABLE FROM ORDERS TO SALES_ORDERS
rename table orders to sales_orders;
-- DISPLAY THE TABLE SALES_ORDERS STRUCTURE
desc sales_orders;
-- INSERT DATA(10) INTO THE SALES_ORDERS TABLE
INSERT INTO sales_orders(Customer_name,Product_Category,Ordered_item,Contact_No,order_quantity)
VALUES
('Aditya','stationary','eraser','+91 9823454671',2 ),
('Roy','food','instant chapati','+91 9845673453',1),
('chetan','jewlery','necklaces set','+91 8745635245',1),
('Riya','Electronics','iphone 16 pro','+91 8234567803',1),
('Pavan','stationary','classic notebook A4 size','+91 9823456123',4),
('Cheriyan p','jewelery','gold 916 bangles set pair ','+91 8123456713',1),
('Mehra','home decor','3 seater sofa set with cushion pillow','+91 3498340845',1),
('Jothi','home decor', 'all in one dinner set with large plate,small plates,cup and soccer set','+91 3267895674',1),
('Jothi N','stationary','kids playing 3 in 1 set doctor kit','+91 3916234567',3 ),
('Riya mehra','Electronic','Apple AirPods Pro (2nd generation) with MagSafe Case (USB-C) Bluetooth  (White, True Wireless)','+91 9876543218',1 );

--  RETRIVE CUSTOMER NAME AND ORDERED ITEM FROM THE TABLE
select Customer_name,Ordered_item from sales_orders;

-- UPDATE THE PRODUCT NAME of any rows in the table
update sales_orders
set	Ordered_item = 'Apple AirPods Pro (2nd generation) with MagSafe Case (USB-C) Bluetooth  (Black, True Wireless) '
where Contact_No = '+91 9876543218';

-- DELETE THE TABLE
drop table sales_orders;

desc sales_orders;
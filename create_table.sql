CREATE TABLE orders(
Row_id integer primary key,
Order_id VARCHAR(20),
Order_date date,
Ship_date date,
ship_mode text,
Customer_id varchar(20),
Customer_name varchar(300) not null,
Segment text,
Country text,
City text,
State text,
Postal_code int,
Region text,
Product_id varchar(30),
Category text,
Sub_category text,
Product_name varchar(225),
Sales numeric (10,2),
Quantity int ,
Discount numeric(4,2),
Profit numeric(10,2)
);



select *from orders;
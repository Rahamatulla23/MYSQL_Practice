-- Create database
CREATE DATABASE calc_demo;
USE calc_demo;

-- Create table
CREATE TABLE sales (
    sale_id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(50),
    unit_price DECIMAL(10,2),
    quantity INT,
    discount_percent DECIMAL(5,2),   -- discount percentage
    sale_date DATE
);

-- Insert records
INSERT INTO sales 
(product_name, unit_price, quantity, discount_percent, sale_date)
VALUES
('Laptop',   55000, 2, 10, '2025-01-15'),
('Mouse',      500, 5,  0, '2025-01-16'),
('Keyboard',  1200, 3,  5, '2025-01-18'),
('Monitor',  15000, 1, 12, '2025-01-20'),
('USB Cable',  200,10,  0, '2025-01-25');

-- Total Amount = unit_price × quantity
select *,(unit_price*quantity) as "Total Amount" from sales;
-- Calculate Discount Amoun
select *, round((quantity*unit_price)*(discount_percent/100),2) as 'Discount' from sales ;
-- Calculate Final Amount After Discount
select *,
(unit_price*quantity) as "Total Amount",
round((quantity*unit_price)*(discount_percent/100),2) as 'Discount',
round((unit_price*quantity)-(unit_price*quantity)*(discount_percent/100),2) as "Final Amount" from sales ;
-- Calculate GST 18% (for Total Amount)
select *,
(unit_price*quantity) as "Total Amount",
round((quantity*unit_price)*(discount_percent/100),2) as 'Discount',
round((unit_price*quantity)-(unit_price*quantity)*(discount_percent/100),2) as "Final Amount" ,
round((unit_price*quantity)-(unit_price*quantity)*(discount_percent/100)*18/100,2) as "18%GST" from sales ;
-- Calculate Total Amount with GST
select *,
(unit_price*quantity) as "Total Amount",
round((quantity*unit_price)*(discount_percent/100),2) as 'Discount',
round((unit_price*quantity)-(unit_price*quantity)*(discount_percent/100),2) as "Final Amount" ,
round((unit_price*quantity)-(unit_price*quantity)*(discount_percent/100)*18/100,2) as "18%GST" ,
round((unit_price*quantity)+(unit_price*quantity)-(unit_price*quantity)*(discount_percent/100)*18/100,2) as "Amount With GST",
(unit_price > 1000) as "is_expensive" ,
(unit_price > 10000 and quantity >= 2) as "premium_deal"from sales ;
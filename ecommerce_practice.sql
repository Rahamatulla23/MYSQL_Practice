CREATE DATABASE ecommerce_practice;

USE ecommerce_practice;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    city VARCHAR(50),
    signup_date DATE
);

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(10,2)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10,2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);


INSERT INTO customers VALUES
(1, 'Rahul', 'Hyderabad', '2024-01-10'),
(2, 'Ayesha', 'Bangalore', '2024-02-15'),
(3, 'Kiran', 'Chennai', '2024-03-05'),
(4, 'Sneha', 'Mumbai', '2024-04-01');

INSERT INTO products VALUES
(101, 'Laptop', 'Electronics', 55000),
(102, 'Mouse', 'Electronics', 800),
(103, 'Keyboard', 'Electronics', 1500),
(104, 'Office Chair', 'Furniture', 7000),
(105, 'Water Bottle', 'Accessories', 500);

INSERT INTO orders VALUES
(1001, 1, '2025-01-10', 55800),
(1002, 2, '2025-01-15', 8500),
(1003, 1, '2025-02-01', 2000),
(1004, 3, '2025-02-20', 7000);

INSERT INTO order_items VALUES
(1, 1001, 101, 1),
(2, 1001, 102, 1),
(3, 1002, 104, 1),
(4, 1002, 105, 3),
(5, 1003, 103, 1),
(6, 1003, 102, 1),
(7, 1004, 104, 1);


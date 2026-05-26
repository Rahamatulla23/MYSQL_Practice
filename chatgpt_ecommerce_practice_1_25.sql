-- 1 Show all customers.
SELECT 
    *
FROM
    customers;
-- 2 Show only product names and prices.
SELECT 
    product_name, price
FROM
    products;
-- 3 Find products with price greater than 5000.
SELECT 
    product_name, price
FROM
    products
WHERE
    price > 5000;
-- 4 Find customers from Hyderabad.
SELECT 
    *
FROM
    customers
WHERE
    city = 'Hyderabad';
-- 5 Sort products by price descending.
SELECT 
    *
FROM
    products
ORDER BY price DESC;
-- 6 Count total customers.
SELECT 
    COUNT(*)
FROM
    customers;
-- 7 Find average product price.
SELECT 
    AVG(price)
FROM
    products;
-- 8 Find highest product price.
SELECT 
    product_name, price
FROM
    products
ORDER BY price DESC
LIMIT 1;
--  9 Show total orders made by each customer
SELECT 
    customer_id, COUNT(order_id) AS total_orders
FROM
    orders
GROUP BY customer_id;
-- 10 Find total sales amount.
SELECT 
    SUM(total_amount)
FROM
    orders;
-- 11 Show customer names with their order dates.
SELECT 
    c.customer_name, o.order_date
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id;
-- 12 Show product names ordered in each order
SELECT 
    p.product_name, ot.order_id
FROM
    products p
        JOIN
    order_items ot ON p.product_id = ot.product_id;

-- 13 Find total quantity sold for each product.
SELECT 
    p.product_name, SUM(quantity) AS 'Total Quantity'
FROM
    products p
        LEFT JOIN
    order_items ot ON p.product_id = ot.product_id
GROUP BY p.product_name;
-- 14 Find customers who never ordered
SELECT 
    c.customer_id, c.customer_name
FROM
    customers c
        LEFT JOIN
    orders o ON c.customer_id = o.customer_id
WHERE
    o.customer_id IS NULL;
-- 15 Find highest spending customer.
SELECT 
    c.customer_name, SUM(o.total_amount) AS total_spent
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spent DESC
LIMIT 1;
-- 16 Find customers who made more than 1 order.
SELECT 
    c.customer_name, COUNT(o.order_id) AS total_orders
FROM
    customers c
        RIGHT JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1
ORDER BY total_orders DESC;
-- 17 Find the most sold product
SELECT 
    p.product_name, SUM(ot.quantity) AS total_sold
FROM
    order_items ot
        JOIN
    products p ON p.product_id = ot.product_id
GROUP BY p.product_name
ORDER BY total_sold DESC;

-- 18 Show category-wise total sales.
SELECT 
    p.category, SUM(p.price * ot.quantity) AS total_sales
FROM
    products p
        JOIN
    order_items ot ON p.product_id = ot.product_id
GROUP BY p.category
ORDER BY total_sales DESC;


-- 19 Find orders placed in February 2025.
select * from orders;
SELECT 
    *
FROM
    orders
WHERE
    YEAR(order_date) = 2025
        AND MONTH(order_date) = 02;
-- 20 Show customer name and total quantity they purchased.
SELECT 
    c.customer_name, SUM(ot.quantity) AS 'Total_Qun_by_cus'
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
        JOIN
    order_items ot ON ot.order_id = o.order_id
GROUP BY c.customer_name;
-- 21 Find second highest spending customer.
SELECT 
    c.customer_name, o.total_amount
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
ORDER BY o.total_amount DESC
LIMIT 1 OFFSET 2;

-- 22 Find products never ordered.
SELECT 
    p.product_name
FROM
    products p
        LEFT JOIN
    order_items oi ON p.product_id = oi.product_id
WHERE
    oi.product_id IS NULL;
-- 23 Show customer spending category:
-- High → above 50000
-- Medium → between 10000 and 50000
-- Low → below 10000



-- 24 Find top 2 customers by spending.
SELECT 
    c.customer_name, o.total_amount
FROM
    customers c
        JOIN
    orders o ON c.customer_id = o.customer_id
ORDER BY o.total_amount DESC
LIMIT 2;


SELECT 
    c.customer_name,
    SUM(o.total_amount) AS total_spending
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
ORDER BY total_spending DESC
LIMIT 2;



-- 25 Find average order value for each customer
SELECT 
    c.customer_name, AVG(total_amount) AS 'Average_amount'
FROM
    customers c
         JOIN
    orders o ON c.customer_id = o.customer_id
GROUP BY customer_name;
SELECT * 
FROM customers;

SELECT *
FROM customers
WHERE city = 'Delhi';

SELECT *
FROM products
WHERE price > 3000;

SELECT COUNT(*) AS total_customers
FROM customers;

SELECT AVG(price) AS average_price
FROM products;

SELECT
    customers.name,
    orders.order_id,
    orders.order_date,
    orders.status
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id;

SELECT
    customers.name,
    orders.order_id,
    orders.order_date
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
WHERE orders.status = 'Completed';

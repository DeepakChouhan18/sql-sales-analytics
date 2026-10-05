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

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

SELECT
    customers.name,
    SUM(order_items.quantity * products.price) AS total_spent
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
JOIN order_items
    ON orders.order_id = order_items.order_id
JOIN products
    ON order_items.product_id = products.product_id
WHERE orders.status = 'Completed'
GROUP BY customers.name;
SELECT
    products.product_name,
    SUM(order_items.quantity * products.price) AS total_revenue
FROM products
JOIN order_items
    ON products.product_id = order_items.product_id
JOIN orders
    ON order_items.order_id = orders.order_id
WHERE orders.status = 'Completed'
GROUP BY products.product_name;
SELECT
    customers.name,
    COUNT(orders.order_id) AS total_orders
FROM customers
JOIN orders
    ON customers.customer_id = orders.customer_id
GROUP BY customers.name;

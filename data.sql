INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Rahul', 'Delhi'),
(2, 'Priya', 'Mumbai'),
(3, 'Amit', 'Bangalore'),
(4, 'Sneha', 'Chennai'),
(5, 'Arjun', 'Delhi');

INSERT INTO products (product_id, product_name, category, price) VALUES
(1, 'Laptop', 'Electronics', 60000),
(2, 'Mouse', 'Electronics', 1000),
(3, 'Keyboard', 'Electronics', 2000),
(4, 'Headphones', 'Electronics', 3000),
(5, 'Office Chair', 'Furniture', 8000);

INSERT INTO orders (order_id, customer_id, order_date, status) VALUES
(101, 1, '2026-09-01', 'Completed'),
(102, 2, '2026-09-03', 'Completed'),
(103, 1, '2026-09-10', 'Completed'),
(104, 3, '2026-09-12', 'Cancelled'),
(105, 4, '2026-09-15', 'Completed'),
(106, 5, '2026-09-18', 'Completed');

INSERT INTO order_items (order_id, product_id, quantity) VALUES
(101, 1, 1),
(101, 2, 2),
(102, 3, 1),
(103, 4, 2),
(104, 1, 1),
(105, 5, 1),
(106, 2, 3);

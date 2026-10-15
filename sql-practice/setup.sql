DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(50) NOT NULL,
    city VARCHAR(50) NOT NULL
);

CREATE TABLE orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL REFERENCES customers(customer_id),
    order_date DATE NOT NULL,
    amount INTEGER NOT NULL CHECK (amount > 0),
    status VARCHAR(15) NOT NULL CHECK (status IN ('completed', 'cancelled'))
);

INSERT INTO customers VALUES
    (1, 'Asha', 'Lucknow'), (2, 'Kabir', 'Delhi'),
    (3, 'Meera', 'Jaipur'), (4, 'Ravi', 'Delhi'),
    (5, 'Neha', 'Lucknow');

INSERT INTO orders VALUES
    (101, 1, '2025-01-05', 1200, 'completed'),
    (102, 2, '2025-01-09', 800, 'completed'),
    (103, 1, '2025-01-18', 500, 'cancelled'),
    (104, 3, '2025-02-04', 1800, 'completed'),
    (105, 1, '2025-02-11', 700, 'completed'),
    (106, 2, '2025-02-11', 350, 'completed'),
    (107, 3, '2025-02-11', 250, 'completed'),
    (108, 4, '2025-02-20', 900, 'cancelled'),
    (109, 2, '2025-03-02', 1500, 'completed'),
    (110, 3, '2025-03-10', 600, 'completed');

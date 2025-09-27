USE ecommerce_db;

-- Insert Users
INSERT INTO users (name, email, password, city, country)
VALUES 
('Azlan', 'azlan@example.com', 'hashed_password', 'Chennai', 'India'),
('ridha', 'ridha@example.com', 'hashed_password', 'Delhi', 'India');

-- Insert Categories
INSERT INTO categories (category_name, description)
VALUES ('Electronics', 'Gadgets and devices'), ('Clothing', 'Men and Women Apparel');

-- Insert Products
INSERT INTO products (category_id, name, description, price, stock)
VALUES 
(1, 'Smartphone', 'Android phone with 128GB storage', 19999.99, 50),
(2, 'T-Shirt', 'Cotton T-Shirt', 599.00, 200);

-- Insert Orders
INSERT INTO orders (user_id, status, total_amount)
VALUES (1, 'Pending', 20598.99);

-- Insert Order Items
INSERT INTO order_items (order_id, product_id, quantity, price)
VALUES (1, 1, 1, 19999.99), (1, 2, 1, 599.00);

-- Insert Payment
INSERT INTO payments (order_id, payment_method, payment_status)
VALUES (1, 'Credit Card', 'Completed');

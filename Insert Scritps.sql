INSERT INTO customers (name, email, address) VALUES 
('Alice Johnson', 'alice@example.com', '123 Main St, New York, NY'),
('Bob Smith', 'bob@example.com', '456 Oak St, Los Angeles, CA'),
('Charlie Brown', 'charlie@example.com', '789 Pine St, Chicago, IL'),
('David Miller', 'david@example.com', '321 Maple St, Miami, FL'),
('Emma Wilson', 'emma@example.com', '654 Cedar St, Seattle, WA'),
('Frank Harris', 'frank@example.com', '987 Birch St, Houston, TX'),
('Grace Lee', 'grace@example.com', '741 Spruce St, Denver, CO'),
('Henry Adams', 'henry@example.com', '159 Redwood St, Boston, MA'),
('Isla Scott', 'isla@example.com', '852 Elm St, San Francisco, CA'),
('Jack Robinson', 'jack@example.com', '369 Aspen St, Dallas, TX');

INSERT INTO products (name, price, description) VALUES 
('Laptop', 800, 'High-performance laptop with 16GB RAM'),
('Smartphone', 500, '5G smartphone with 128GB storage'),
('Headphones', 100, 'Wireless noise-canceling headphones'),
('Smartwatch', 250, 'Waterproof smartwatch with fitness tracking'),
('Tablet', 600, '10-inch tablet with stylus support'),
('Gaming Console', 400, 'Next-gen gaming console with 4K support'),
('Wireless Speaker', 150, 'Bluetooth speaker with deep bass'),
('Monitor', 300, '27-inch 144Hz gaming monitor'),
('Keyboard', 50, 'Mechanical keyboard with RGB lighting'),
('Mouse', 40, 'Ergonomic wireless mouse with customizable buttons');

INSERT INTO orders (customer_id, product_id, order_date, total_amount) VALUES 
(1, 2, '2025-01-18', 500),  
(4, 3, '2025-01-19', 200),  
(2, 1, '2025-01-20', 800),  
(4, 5, '2025-01-21', 600),  
(5, 6, '2025-01-22', 400),  
(2, 7, '2025-01-23', 150),  
(7, 8, '2025-01-24', 300),  
(5, 9, '2025-01-25', 200),  
(9, 10, '2025-01-26', 500), 
(10, 4, '2025-01-27', 450); 

INSERT INTO order_items (order_id, product_id, quantity, price, total_amount) VALUES 
(1, 2, 2, 250, 500),  
(2, 3, 1, 200, 200),  
(3, 1, 1, 800, 800),  
(4, 5, 1, 600, 600),  
(5, 6, 2, 200, 400);  



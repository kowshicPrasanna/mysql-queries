-- customers who have placed an order in the last 30 days.
SELECT DISTINCT c.*
FROM customers c
JOIN orders o ON c.id = o.customer_id
WHERE o.order_date >= CURDATE() - INTERVAL 30 DAY;

-- total amount of all orders placed by each customer
SELECT c.id AS customer_id, c.name, SUM(o.total_amount) AS total_spent
FROM customers c
JOIN orders o ON c.id = o.customer_id
GROUP BY c.id, c.name
ORDER BY total_spent DESC;

-- Update the price of Product C to 45.00
UPDATE products 
SET price = 45.00 
WHERE name = 'Mouse';

-- Add a new column discount to the products table.
ALTER TABLE products 
ADD COLUMN discount DECIMAL(5,2) DEFAULT 0.00;

-- top 3 products with the highest price.
select * from products order by price desc limit 3;

-- names of customers who have ordered Product A.
select c.name,p.name as product from customers c
inner join orders o
on o.customer_id = c.id
inner join products p 
on p.id = o.product_id
where p.name = 'Smartphone';

-- orders and customers tables to retrieve the customer's name and order date for each order. 
select c.name,o.order_date as date from customers c
inner join orders o
on o.customer_id = c.id;

-- orders with a total amount greater than 150.00
select * from orders where (total_amount > 150);

-- Average total of all orders
SELECT AVG(order_total) AS average_order_total
FROM (
    SELECT SUM(total_amount) AS order_total
    FROM order_items
    GROUP BY order_id
) AS order_totals;
